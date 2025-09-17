module coprocessor0(
  input         clk, reset,

  input   [7:0] interrupts,

  input         cop0write,          // pulso MTC0
  input   [4:0] cp0_readaddress, 
  input   [4:0] cp0_writeaddress,
  input   [31:0] writecop0,         // dado vindo da ULA
  input   [31:0] pc,
  input         syscall,  
  input         ri,                 // reserved instruction

  input         eret,               // return from exception
  input         activeexception,
  output reg [31:0] cop0readdata,
  output        pendingexception
);

  wire [31:0] statusreg, causereg, epc, count, compare;
  wire [4:0]  exccode;
  wire        iec; // Interrupt Enable do Status Reg

  //wire timer_interrupt = (count == compare);
  //wire [7:0] all_interrupts = {interrupts[6:0], timer_interrupt};


  // --- Unidade de exceção ---
  exceptionunit excu(
    .syscall(syscall),
    .ri(ri),
    .iec(iec),
    //.interrupts(all_interrupts),
    .interrupts(interrupts),
    .pendingexception(pendingexception),
    .exccode(exccode)
  );

  // --- EPC ---
  epcunit epcu(
    .clk(clk),
    .reset(reset),
    .activeexception(activeexception),
    .pc(pc),
    .epc(epc)
  );

  // --- STATUS ---
  statusregunit srunit(
    .clk(clk),
    .reset(reset),
    .writeenable(cop0write && (cp0_writeaddress == 5'b01100)), // Status = reg 12
    .activeexception(activeexception),
    .eret(eret),                     
    .writedata(writecop0),
    .statusreg(statusreg),
    .iec(iec)
  );

  // --- CAUSE ---
  causeregunit crunit(
    .clk(clk),
    .reset(reset),
    .activeexception(activeexception),
    .exccode(exccode),
    .causereg(causereg)
  );

  // --- COUNT ---
  countregunit count_reg(
    .clk(clk),
    .reset(reset),
    .writeenable(cop0write && (cp0_writeaddress == 5'b01001)), // Count = 9
    .writedata(writecop0),
    .count(count)
  );

  // --- COMPARE ---
  compareregunit compare_reg(
    .clk(clk),
    .reset(reset),
    .writeenable(cop0write && (cp0_writeaddress == 5'b01011)), // Compare = 11
    .writedata(writecop0),
    .compare(compare)
  );

  // --- MFC0 (leitura dos regs do CP0) ---
  always @(cp0_readaddress or statusreg or causereg or epc or count or compare) begin
    case (cp0_readaddress)
      5'b01100: cop0readdata = statusreg; // Status
      5'b01101: cop0readdata = causereg;  // Cause
      5'b01110: cop0readdata = epc;       // EPC
      5'b01001: cop0readdata = count;     // Count
      5'b01011: cop0readdata = compare;   // Compare
      default:  cop0readdata = 32'hxxxxxxxx;
    endcase
  end

endmodule


module exceptionunit(
  input        syscall,        // instrução SYSCALL detectada
  input        ri,             // instrução inválida (Reserved Instruction)
  input        iec,            // bit de enable de interrupção do Status
  input  [7:0] interrupts,     // linhas de interrupção externas + timer

  output reg   pendingexception,
  output reg [4:0] exccode
);

  // Interrupção válida somente se IEC=1
  wire interrupt = iec & (|interrupts);

  always @(*) begin
    // pendingexception = OR de todos os eventos
    pendingexception = interrupt | syscall | ri;

    // Prioridade: INT > SYSCALL > RI
    if (interrupt)
      exccode = 5'b00001;  // Interrupção
    else if (syscall)
      exccode = 5'b01000;  // Syscall
    else if (ri)
      exccode = 5'b01010;  // Reserved Instruction
    else
      exccode = 5'b00000;  // Sem exceção ativa
  end

endmodule


module epcunit (
  input        clk,             // clock principal
  input        reset,           // reset síncrono ou assíncrono (aqui síncrono)
  input        activeexception, // sinal de exceção detectada
  input [31:0] pc,              // PC da instrução que causou exceção
  output reg [31:0] epc         // registrador EPC
);

  always @(posedge clk) begin
    if (reset)
      epc <= 32'b0;      // zera EPC no reset
    else if (activeexception)
      epc <= pc;         // salva o PC no momento da exceção
  end

endmodule


module statusregunit (
  input        clk,
  input        reset,
  input        writeenable,      // habilita escrita via MTC0
  input        activeexception,  // exceção detectada -> zera IEC
  input        eret,             // ERET -> restaura IEC
  input  [31:0] writedata,       // dado escrito via MTC0

  output reg [31:0] statusreg,   // registrador completo
  output            iec          // bit IEC (Interrupt Enable)
);

  // Lógica síncrona para atualizar statusreg
  always @(posedge clk) begin
    if (reset) begin
      statusreg <= 32'b0;             // limpa tudo no reset
    end 
    else if (activeexception) begin
      statusreg[0] <= 1'b0;           // desabilita interrupções
    end
    else if (eret) begin
      statusreg[0] <= 1'b1;           // reabilita interrupções
    end
    else if (writeenable) begin
      statusreg <= writedata;         // escreve novo valor inteiro
    end
  end

  // IEC é simplesmente o bit 0 do statusreg
  assign iec = statusreg[0];

endmodule


module causeregunit (
  input        clk,
  input        reset,
  input        activeexception,  // sinal de exceção detectada
  input  [4:0] exccode,          // código da exceção vindo da exceptionunit
  input  [7:0] interrupts,       // estado atual das interrupções externas (opcional)
  
  output reg [31:0] causereg
);

  always @(posedge clk) begin
    if (reset) begin
      causereg <= 32'b0;
    end
    else if (activeexception) begin
      causereg <= {27'b0, exccode, 2'b00};
    end
  end

endmodule



module countregunit (
  input        clk,
  input        reset,
  input        writeenable,   // MTC0 para escrever em Count
  input  [31:0] writedata,
  output reg [31:0] count
);

  always @(posedge clk) begin
    if (reset)
      count <= 32'b0;
    else if (writeenable)
      count <= writedata;
    else
      count <= count + 1;
  end

endmodule

module compareregunit (
  input        clk,
  input        reset,
  input        writeenable,   // MTC0 para escrever em Compare
  input  [31:0] writedata,
  output reg [31:0] compare
);

  always @(posedge clk) begin
    if (reset)
      compare <= 32'b0;
    else if (writeenable)
      compare <= writedata;
  end

endmodule


//HWREna register.
//implementar para trabalhar junto com o count e compare
//cicle counting and enable user mode to read anything from the coprocessor 0

//terei que implementar algo em assembly?


