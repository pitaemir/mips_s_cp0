module coprocessor0(
  input clk, reset,
  input [7:0] interrupts,
  input cop0write,
  input [4:0] readaddress, writeaddress,
  input [31:0] writecop0,
  input [31:0] pc,
  input overflow, syscall, break_, ri,
  input adesable, adelable, misaligned,
  input rfe,
  input activeexception,
  output reg [31:0] cop0readdata,
  output pendingexception,
  output iec
);

  wire [31:0] statusreg, causereg, epc, cycle;
  wire [4:0] exccode;
  wire [7:0]mask_interrupts;

  exceptionunit excu(
    overflow, syscall, break_, ri,
    adesable, adelable, misaligned,
    iec, interrupts,
    pendingexception, exccode
  );

  epcunit epcu(clk, reset, activeexception, pc, epc);

  statusregunit srunit(clk, reset, cop0write && (writeaddress == 5'b01100), activeexception, rfe, writecop0, statusreg, iec);

  causeregunit crunit(clk, reset, activeexception, exccode, causereg);

  cyclecounterunit counter(clk, reset, cycle);

  always @(readaddress or statusreg or causereg or epc or cycle) begin
    case (readaddress)
      5'b01100: cop0readdata = statusreg; // Status
      5'b01101: cop0readdata = causereg;  // Cause
      5'b01110: cop0readdata = epc;       // EPC
      5'b01111: cop0readdata = cycle;     // Cycle counter
      default: cop0readdata = 32'hxxxxxxxx;
    endcase
  end

endmodule

module exceptionunit(
input overflow, syscall, break_, ri,
input adesable, adelable, misaligned,
input iec,
input [7:0] interrupts,
output reg pendingexception,
output reg [4:0] exccode
);
wire interrupt = iec & | interrupts;
wire adel = adelable | misaligned;
wire ades = adesable | misaligned;


always @(interrupt or overflow or syscall or break_ or ri or adel or ades) begin
pendingexception = interrupt | overflow | syscall | break_ | ri | adel | ades;
casex ({interrupt, overflow, adel, ades, syscall, break_, ri})
8'b1xxxxxxx: exccode = 5'b00001; // interrupt
8'b01xxxxxx: exccode = 5'b01100; // overflow
8'b001xxxxx: exccode = 5'b00100; // adel
8'b0001xxxx: exccode = 5'b00101; // ades
8'b00001xxx: exccode = 5'b01000; // syscall
8'b000001xx: exccode = 5'b01001; // break
8'b0000001x: exccode = 5'b01010; // reserved instruction
default: exccode = 5'b00000;
endcase
end
endmodule

module epcunit (
  input clk,                   
  input reset,                 
  input activeexception,       
  input [31:0] pc,             
  output reg [31:0] epc       
);

  always @(posedge clk) begin
    if (reset)
      epc <= 32'b0;
    else if (activeexception)
      epc <= pc;
  end

endmodule


module statusregunit (
  input clk,              
  input reset,            
  input writeenable,      // (mtc0)
  input activeexception,  // (zera IEC)
  input rfe,              // (restaura IEC)
  input [31:0] writedata, 
  output reg [31:0] statusreg, 
  output iec // Interrupt Enable
);

  wire new_iec;

  // Lógica para definir o novo valor de IEC
  assign new_iec = rfe     ? 1'b1 : // RFE restaura IEC
                   reset   ? 1'b0 : // Reset zera IEC
                   activeexception ? 1'b0 : // Exceção zera IEC
                   writeenable ? writedata[0] : statusreg[0]; // MTC0

  // Atualiza o registrador status
  always @(posedge clk) begin
    if (reset)
      statusreg <= 32'b0; // Zera tudo no reset
    else
      statusreg[0] <= new_iec; 
  end

  // Saída IEC direto do registrador
  assign iec = statusreg[0];

endmodule

module causeregunit (
  input clk,
  input reset,
  input activeexception,       // Grava nova exceção
  input [4:0] exccode,         // Código da exceção (exceptionunit)
  output reg [31:0] causereg   // Saída do registrador Cause
);

  always @(posedge clk) begin
    if (reset)
      causereg <= 32'b0;
    else if (activeexception)
      causereg <= {16'b0, 8'b0, exccode, 2'b00};
  end

endmodule

module cyclecounterunit (
  input clk,
  input reset,
  output reg [31:0] cycle
);

  always @(posedge clk) begin
    if (reset)
      cycle <= 32'b0;
    else
      cycle <= cycle + 1;
  end

endmodule


