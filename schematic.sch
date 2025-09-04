# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new coprocessor0 work:coprocessor0:NOFILE -nosplit
load symbol RTL_MUX7 work MUX pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [4:0] fillcolor 1
load symbol cyclecounterunit work:cyclecounterunit:NOFILE HIERBOX pin clk input.left pin reset input.left pinBus cycle output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol causeregunit work:causeregunit:NOFILE HIERBOX pin activeexception input.left pin clk input.left pin reset input.left pinBus causereg output.right [31:0] pinBus exccode input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol epcunit work:epcunit:NOFILE HIERBOX pin activeexception input.left pin clk input.left pin reset input.left pinBus epc output.right [31:0] pinBus pc input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol exceptionunit work:exceptionunit:NOFILE HIERBOX pin adelable input.left pin adesable input.left pin break_ input.left pin iec input.left pin misaligned input.left pin overflow input.left pin pendingexception output.right pin ri input.left pin syscall input.left pinBus exccode output.right [4:0] pinBus interrupts input.left [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol statusregunit work:statusregunit:NOFILE HIERBOX pin activeexception input.left pin clk input.left pin iec output.right pin reset input.left pin rfe input.left pin writeenable input.left pinBus statusreg output.right [31:0] pinBus writedata input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_AND work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_EQ work RTL(=) pin O output.right pinBus I0 input.left [4:0] pinBus I1 input.left [4:0] fillcolor 1
load port activeexception input -pg 1 -lvl 0 -x 0 -y 290
load port adelable input -pg 1 -lvl 0 -x 0 -y 70
load port adesable input -pg 1 -lvl 0 -x 0 -y 90
load port break_ input -pg 1 -lvl 0 -x 0 -y 110
load port clk input -pg 1 -lvl 0 -x 0 -y 310
load port cop0write input -pg 1 -lvl 0 -x 0 -y 630
load port iec output -pg 1 -lvl 5 -x 1300 -y 270
load port misaligned input -pg 1 -lvl 0 -x 0 -y 170
load port overflow input -pg 1 -lvl 0 -x 0 -y 190
load port pendingexception output -pg 1 -lvl 5 -x 1300 -y 150
load port reset input -pg 1 -lvl 0 -x 0 -y 770
load port rfe input -pg 1 -lvl 0 -x 0 -y 790
load port ri input -pg 1 -lvl 0 -x 0 -y 210
load port syscall input -pg 1 -lvl 0 -x 0 -y 230
load portBus cop0readdata output [31:0] -attr @name cop0readdata[31:0] -pg 1 -lvl 5 -x 1300 -y 570
load portBus interrupts input [7:0] -attr @name interrupts[7:0] -pg 1 -lvl 0 -x 0 -y 150
load portBus pc input [31:0] -attr @name pc[31:0] -pg 1 -lvl 0 -x 0 -y 590
load portBus readaddress input [4:0] -attr @name readaddress[4:0] -pg 1 -lvl 0 -x 0 -y 610
load portBus writeaddress input [4:0] -attr @name writeaddress[4:0] -pg 1 -lvl 0 -x 0 -y 690
load portBus writecop0 input [31:0] -attr @name writecop0[31:0] -pg 1 -lvl 0 -x 0 -y 810
load inst cop0readdata_i RTL_MUX7 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=5'b01100 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=5'b01101 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S=5'b01110 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S=5'b01111 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[4:0] -pg 1 -lvl 4 -x 1090 -y 570
load inst counter cyclecounterunit work:cyclecounterunit:NOFILE -autohide -attr @cell(#000000) cyclecounterunit -pinBusAttr cycle @name cycle[31:0] -pg 1 -lvl 3 -x 690 -y 430
load inst crunit causeregunit work:causeregunit:NOFILE -autohide -attr @cell(#000000) causeregunit -pinBusAttr causereg @name causereg[31:0] -pinBusAttr exccode @name exccode[4:0] -pg 1 -lvl 3 -x 690 -y 280
load inst epcu epcunit work:epcunit:NOFILE -autohide -attr @cell(#000000) epcunit -pinBusAttr epc @name epc[31:0] -pinBusAttr pc @name pc[31:0] -pg 1 -lvl 3 -x 690 -y 540
load inst excu exceptionunit work:exceptionunit:NOFILE -autohide -attr @cell(#000000) exceptionunit -pinBusAttr exccode @name exccode[4:0] -pinBusAttr interrupts @name interrupts[7:0] -pg 1 -lvl 4 -x 1090 -y 60
load inst srunit statusregunit work:statusregunit:NOFILE -autohide -attr @cell(#000000) statusregunit -pinBusAttr statusreg @name statusreg[31:0] -pinBusAttr writedata @name writedata[31:0] -pg 1 -lvl 3 -x 690 -y 720
load inst writeenable0_i RTL_AND work -attr @cell(#000000) RTL_AND -pg 1 -lvl 2 -x 360 -y 690
load inst writeenable1_i RTL_EQ work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[4:0] -pinBusAttr I1 @name I1[4:0] -pinBusAttr I1 @attr V=B\"01100\" -pg 1 -lvl 1 -x 160 -y 700
load net <const0> -ground -pin writeenable1_i I1[4] -pin writeenable1_i I1[1] -pin writeenable1_i I1[0]
load net <const1> -power -pin writeenable1_i I1[3] -pin writeenable1_i I1[2]
load net activeexception -port activeexception -pin crunit activeexception -pin epcu activeexception -pin srunit activeexception
netloc activeexception 1 0 3 NJ 290 NJ 290 550
load net adelable -port adelable -pin excu adelable
netloc adelable 1 0 4 NJ 70 NJ 70 NJ 70 NJ
load net adesable -port adesable -pin excu adesable
netloc adesable 1 0 4 NJ 90 NJ 90 NJ 90 NJ
load net break_ -port break_ -pin excu break_
netloc break_ 1 0 4 NJ 110 NJ 110 NJ 110 NJ
load net causereg[0] -attr @rip causereg[0] -pin cop0readdata_i I1[0] -pin crunit causereg[0]
load net causereg[10] -attr @rip causereg[10] -pin cop0readdata_i I1[10] -pin crunit causereg[10]
load net causereg[11] -attr @rip causereg[11] -pin cop0readdata_i I1[11] -pin crunit causereg[11]
load net causereg[12] -attr @rip causereg[12] -pin cop0readdata_i I1[12] -pin crunit causereg[12]
load net causereg[13] -attr @rip causereg[13] -pin cop0readdata_i I1[13] -pin crunit causereg[13]
load net causereg[14] -attr @rip causereg[14] -pin cop0readdata_i I1[14] -pin crunit causereg[14]
load net causereg[15] -attr @rip causereg[15] -pin cop0readdata_i I1[15] -pin crunit causereg[15]
load net causereg[16] -attr @rip causereg[16] -pin cop0readdata_i I1[16] -pin crunit causereg[16]
load net causereg[17] -attr @rip causereg[17] -pin cop0readdata_i I1[17] -pin crunit causereg[17]
load net causereg[18] -attr @rip causereg[18] -pin cop0readdata_i I1[18] -pin crunit causereg[18]
load net causereg[19] -attr @rip causereg[19] -pin cop0readdata_i I1[19] -pin crunit causereg[19]
load net causereg[1] -attr @rip causereg[1] -pin cop0readdata_i I1[1] -pin crunit causereg[1]
load net causereg[20] -attr @rip causereg[20] -pin cop0readdata_i I1[20] -pin crunit causereg[20]
load net causereg[21] -attr @rip causereg[21] -pin cop0readdata_i I1[21] -pin crunit causereg[21]
load net causereg[22] -attr @rip causereg[22] -pin cop0readdata_i I1[22] -pin crunit causereg[22]
load net causereg[23] -attr @rip causereg[23] -pin cop0readdata_i I1[23] -pin crunit causereg[23]
load net causereg[24] -attr @rip causereg[24] -pin cop0readdata_i I1[24] -pin crunit causereg[24]
load net causereg[25] -attr @rip causereg[25] -pin cop0readdata_i I1[25] -pin crunit causereg[25]
load net causereg[26] -attr @rip causereg[26] -pin cop0readdata_i I1[26] -pin crunit causereg[26]
load net causereg[27] -attr @rip causereg[27] -pin cop0readdata_i I1[27] -pin crunit causereg[27]
load net causereg[28] -attr @rip causereg[28] -pin cop0readdata_i I1[28] -pin crunit causereg[28]
load net causereg[29] -attr @rip causereg[29] -pin cop0readdata_i I1[29] -pin crunit causereg[29]
load net causereg[2] -attr @rip causereg[2] -pin cop0readdata_i I1[2] -pin crunit causereg[2]
load net causereg[30] -attr @rip causereg[30] -pin cop0readdata_i I1[30] -pin crunit causereg[30]
load net causereg[31] -attr @rip causereg[31] -pin cop0readdata_i I1[31] -pin crunit causereg[31]
load net causereg[3] -attr @rip causereg[3] -pin cop0readdata_i I1[3] -pin crunit causereg[3]
load net causereg[4] -attr @rip causereg[4] -pin cop0readdata_i I1[4] -pin crunit causereg[4]
load net causereg[5] -attr @rip causereg[5] -pin cop0readdata_i I1[5] -pin crunit causereg[5]
load net causereg[6] -attr @rip causereg[6] -pin cop0readdata_i I1[6] -pin crunit causereg[6]
load net causereg[7] -attr @rip causereg[7] -pin cop0readdata_i I1[7] -pin crunit causereg[7]
load net causereg[8] -attr @rip causereg[8] -pin cop0readdata_i I1[8] -pin crunit causereg[8]
load net causereg[9] -attr @rip causereg[9] -pin cop0readdata_i I1[9] -pin crunit causereg[9]
load net clk -port clk -pin counter clk -pin crunit clk -pin epcu clk -pin srunit clk
netloc clk 1 0 3 NJ 310 NJ 310 510
load net cop0readdata[0] -attr @rip O[0] -port cop0readdata[0] -pin cop0readdata_i O[0]
load net cop0readdata[10] -attr @rip O[10] -port cop0readdata[10] -pin cop0readdata_i O[10]
load net cop0readdata[11] -attr @rip O[11] -port cop0readdata[11] -pin cop0readdata_i O[11]
load net cop0readdata[12] -attr @rip O[12] -port cop0readdata[12] -pin cop0readdata_i O[12]
load net cop0readdata[13] -attr @rip O[13] -port cop0readdata[13] -pin cop0readdata_i O[13]
load net cop0readdata[14] -attr @rip O[14] -port cop0readdata[14] -pin cop0readdata_i O[14]
load net cop0readdata[15] -attr @rip O[15] -port cop0readdata[15] -pin cop0readdata_i O[15]
load net cop0readdata[16] -attr @rip O[16] -port cop0readdata[16] -pin cop0readdata_i O[16]
load net cop0readdata[17] -attr @rip O[17] -port cop0readdata[17] -pin cop0readdata_i O[17]
load net cop0readdata[18] -attr @rip O[18] -port cop0readdata[18] -pin cop0readdata_i O[18]
load net cop0readdata[19] -attr @rip O[19] -port cop0readdata[19] -pin cop0readdata_i O[19]
load net cop0readdata[1] -attr @rip O[1] -port cop0readdata[1] -pin cop0readdata_i O[1]
load net cop0readdata[20] -attr @rip O[20] -port cop0readdata[20] -pin cop0readdata_i O[20]
load net cop0readdata[21] -attr @rip O[21] -port cop0readdata[21] -pin cop0readdata_i O[21]
load net cop0readdata[22] -attr @rip O[22] -port cop0readdata[22] -pin cop0readdata_i O[22]
load net cop0readdata[23] -attr @rip O[23] -port cop0readdata[23] -pin cop0readdata_i O[23]
load net cop0readdata[24] -attr @rip O[24] -port cop0readdata[24] -pin cop0readdata_i O[24]
load net cop0readdata[25] -attr @rip O[25] -port cop0readdata[25] -pin cop0readdata_i O[25]
load net cop0readdata[26] -attr @rip O[26] -port cop0readdata[26] -pin cop0readdata_i O[26]
load net cop0readdata[27] -attr @rip O[27] -port cop0readdata[27] -pin cop0readdata_i O[27]
load net cop0readdata[28] -attr @rip O[28] -port cop0readdata[28] -pin cop0readdata_i O[28]
load net cop0readdata[29] -attr @rip O[29] -port cop0readdata[29] -pin cop0readdata_i O[29]
load net cop0readdata[2] -attr @rip O[2] -port cop0readdata[2] -pin cop0readdata_i O[2]
load net cop0readdata[30] -attr @rip O[30] -port cop0readdata[30] -pin cop0readdata_i O[30]
load net cop0readdata[31] -attr @rip O[31] -port cop0readdata[31] -pin cop0readdata_i O[31]
load net cop0readdata[3] -attr @rip O[3] -port cop0readdata[3] -pin cop0readdata_i O[3]
load net cop0readdata[4] -attr @rip O[4] -port cop0readdata[4] -pin cop0readdata_i O[4]
load net cop0readdata[5] -attr @rip O[5] -port cop0readdata[5] -pin cop0readdata_i O[5]
load net cop0readdata[6] -attr @rip O[6] -port cop0readdata[6] -pin cop0readdata_i O[6]
load net cop0readdata[7] -attr @rip O[7] -port cop0readdata[7] -pin cop0readdata_i O[7]
load net cop0readdata[8] -attr @rip O[8] -port cop0readdata[8] -pin cop0readdata_i O[8]
load net cop0readdata[9] -attr @rip O[9] -port cop0readdata[9] -pin cop0readdata_i O[9]
load net cop0write -port cop0write -pin writeenable0_i I0
netloc cop0write 1 0 2 NJ 630 310J
load net cycle[0] -attr @rip cycle[0] -pin cop0readdata_i I3[0] -pin counter cycle[0]
load net cycle[10] -attr @rip cycle[10] -pin cop0readdata_i I3[10] -pin counter cycle[10]
load net cycle[11] -attr @rip cycle[11] -pin cop0readdata_i I3[11] -pin counter cycle[11]
load net cycle[12] -attr @rip cycle[12] -pin cop0readdata_i I3[12] -pin counter cycle[12]
load net cycle[13] -attr @rip cycle[13] -pin cop0readdata_i I3[13] -pin counter cycle[13]
load net cycle[14] -attr @rip cycle[14] -pin cop0readdata_i I3[14] -pin counter cycle[14]
load net cycle[15] -attr @rip cycle[15] -pin cop0readdata_i I3[15] -pin counter cycle[15]
load net cycle[16] -attr @rip cycle[16] -pin cop0readdata_i I3[16] -pin counter cycle[16]
load net cycle[17] -attr @rip cycle[17] -pin cop0readdata_i I3[17] -pin counter cycle[17]
load net cycle[18] -attr @rip cycle[18] -pin cop0readdata_i I3[18] -pin counter cycle[18]
load net cycle[19] -attr @rip cycle[19] -pin cop0readdata_i I3[19] -pin counter cycle[19]
load net cycle[1] -attr @rip cycle[1] -pin cop0readdata_i I3[1] -pin counter cycle[1]
load net cycle[20] -attr @rip cycle[20] -pin cop0readdata_i I3[20] -pin counter cycle[20]
load net cycle[21] -attr @rip cycle[21] -pin cop0readdata_i I3[21] -pin counter cycle[21]
load net cycle[22] -attr @rip cycle[22] -pin cop0readdata_i I3[22] -pin counter cycle[22]
load net cycle[23] -attr @rip cycle[23] -pin cop0readdata_i I3[23] -pin counter cycle[23]
load net cycle[24] -attr @rip cycle[24] -pin cop0readdata_i I3[24] -pin counter cycle[24]
load net cycle[25] -attr @rip cycle[25] -pin cop0readdata_i I3[25] -pin counter cycle[25]
load net cycle[26] -attr @rip cycle[26] -pin cop0readdata_i I3[26] -pin counter cycle[26]
load net cycle[27] -attr @rip cycle[27] -pin cop0readdata_i I3[27] -pin counter cycle[27]
load net cycle[28] -attr @rip cycle[28] -pin cop0readdata_i I3[28] -pin counter cycle[28]
load net cycle[29] -attr @rip cycle[29] -pin cop0readdata_i I3[29] -pin counter cycle[29]
load net cycle[2] -attr @rip cycle[2] -pin cop0readdata_i I3[2] -pin counter cycle[2]
load net cycle[30] -attr @rip cycle[30] -pin cop0readdata_i I3[30] -pin counter cycle[30]
load net cycle[31] -attr @rip cycle[31] -pin cop0readdata_i I3[31] -pin counter cycle[31]
load net cycle[3] -attr @rip cycle[3] -pin cop0readdata_i I3[3] -pin counter cycle[3]
load net cycle[4] -attr @rip cycle[4] -pin cop0readdata_i I3[4] -pin counter cycle[4]
load net cycle[5] -attr @rip cycle[5] -pin cop0readdata_i I3[5] -pin counter cycle[5]
load net cycle[6] -attr @rip cycle[6] -pin cop0readdata_i I3[6] -pin counter cycle[6]
load net cycle[7] -attr @rip cycle[7] -pin cop0readdata_i I3[7] -pin counter cycle[7]
load net cycle[8] -attr @rip cycle[8] -pin cop0readdata_i I3[8] -pin counter cycle[8]
load net cycle[9] -attr @rip cycle[9] -pin cop0readdata_i I3[9] -pin counter cycle[9]
load net epc[0] -attr @rip epc[0] -pin cop0readdata_i I2[0] -pin epcu epc[0]
load net epc[10] -attr @rip epc[10] -pin cop0readdata_i I2[10] -pin epcu epc[10]
load net epc[11] -attr @rip epc[11] -pin cop0readdata_i I2[11] -pin epcu epc[11]
load net epc[12] -attr @rip epc[12] -pin cop0readdata_i I2[12] -pin epcu epc[12]
load net epc[13] -attr @rip epc[13] -pin cop0readdata_i I2[13] -pin epcu epc[13]
load net epc[14] -attr @rip epc[14] -pin cop0readdata_i I2[14] -pin epcu epc[14]
load net epc[15] -attr @rip epc[15] -pin cop0readdata_i I2[15] -pin epcu epc[15]
load net epc[16] -attr @rip epc[16] -pin cop0readdata_i I2[16] -pin epcu epc[16]
load net epc[17] -attr @rip epc[17] -pin cop0readdata_i I2[17] -pin epcu epc[17]
load net epc[18] -attr @rip epc[18] -pin cop0readdata_i I2[18] -pin epcu epc[18]
load net epc[19] -attr @rip epc[19] -pin cop0readdata_i I2[19] -pin epcu epc[19]
load net epc[1] -attr @rip epc[1] -pin cop0readdata_i I2[1] -pin epcu epc[1]
load net epc[20] -attr @rip epc[20] -pin cop0readdata_i I2[20] -pin epcu epc[20]
load net epc[21] -attr @rip epc[21] -pin cop0readdata_i I2[21] -pin epcu epc[21]
load net epc[22] -attr @rip epc[22] -pin cop0readdata_i I2[22] -pin epcu epc[22]
load net epc[23] -attr @rip epc[23] -pin cop0readdata_i I2[23] -pin epcu epc[23]
load net epc[24] -attr @rip epc[24] -pin cop0readdata_i I2[24] -pin epcu epc[24]
load net epc[25] -attr @rip epc[25] -pin cop0readdata_i I2[25] -pin epcu epc[25]
load net epc[26] -attr @rip epc[26] -pin cop0readdata_i I2[26] -pin epcu epc[26]
load net epc[27] -attr @rip epc[27] -pin cop0readdata_i I2[27] -pin epcu epc[27]
load net epc[28] -attr @rip epc[28] -pin cop0readdata_i I2[28] -pin epcu epc[28]
load net epc[29] -attr @rip epc[29] -pin cop0readdata_i I2[29] -pin epcu epc[29]
load net epc[2] -attr @rip epc[2] -pin cop0readdata_i I2[2] -pin epcu epc[2]
load net epc[30] -attr @rip epc[30] -pin cop0readdata_i I2[30] -pin epcu epc[30]
load net epc[31] -attr @rip epc[31] -pin cop0readdata_i I2[31] -pin epcu epc[31]
load net epc[3] -attr @rip epc[3] -pin cop0readdata_i I2[3] -pin epcu epc[3]
load net epc[4] -attr @rip epc[4] -pin cop0readdata_i I2[4] -pin epcu epc[4]
load net epc[5] -attr @rip epc[5] -pin cop0readdata_i I2[5] -pin epcu epc[5]
load net epc[6] -attr @rip epc[6] -pin cop0readdata_i I2[6] -pin epcu epc[6]
load net epc[7] -attr @rip epc[7] -pin cop0readdata_i I2[7] -pin epcu epc[7]
load net epc[8] -attr @rip epc[8] -pin cop0readdata_i I2[8] -pin epcu epc[8]
load net epc[9] -attr @rip epc[9] -pin cop0readdata_i I2[9] -pin epcu epc[9]
load net exccode[0] -attr @rip exccode[0] -pin crunit exccode[0] -pin excu exccode[0]
load net exccode[1] -attr @rip exccode[1] -pin crunit exccode[1] -pin excu exccode[1]
load net exccode[2] -attr @rip exccode[2] -pin crunit exccode[2] -pin excu exccode[2]
load net exccode[3] -attr @rip exccode[3] -pin crunit exccode[3] -pin excu exccode[3]
load net exccode[4] -attr @rip exccode[4] -pin crunit exccode[4] -pin excu exccode[4]
load net iec -pin excu iec -port iec -pin srunit iec
netloc iec 1 3 2 910 270 NJ
load net interrupts[0] -attr @rip interrupts[0] -pin excu interrupts[0] -port interrupts[0]
load net interrupts[1] -attr @rip interrupts[1] -pin excu interrupts[1] -port interrupts[1]
load net interrupts[2] -attr @rip interrupts[2] -pin excu interrupts[2] -port interrupts[2]
load net interrupts[3] -attr @rip interrupts[3] -pin excu interrupts[3] -port interrupts[3]
load net interrupts[4] -attr @rip interrupts[4] -pin excu interrupts[4] -port interrupts[4]
load net interrupts[5] -attr @rip interrupts[5] -pin excu interrupts[5] -port interrupts[5]
load net interrupts[6] -attr @rip interrupts[6] -pin excu interrupts[6] -port interrupts[6]
load net interrupts[7] -attr @rip interrupts[7] -pin excu interrupts[7] -port interrupts[7]
load net misaligned -pin excu misaligned -port misaligned
netloc misaligned 1 0 4 NJ 170 NJ 170 NJ 170 NJ
load net overflow -pin excu overflow -port overflow
netloc overflow 1 0 4 NJ 190 NJ 190 NJ 190 NJ
load net pc[0] -attr @rip pc[0] -pin epcu pc[0] -port pc[0]
load net pc[10] -attr @rip pc[10] -pin epcu pc[10] -port pc[10]
load net pc[11] -attr @rip pc[11] -pin epcu pc[11] -port pc[11]
load net pc[12] -attr @rip pc[12] -pin epcu pc[12] -port pc[12]
load net pc[13] -attr @rip pc[13] -pin epcu pc[13] -port pc[13]
load net pc[14] -attr @rip pc[14] -pin epcu pc[14] -port pc[14]
load net pc[15] -attr @rip pc[15] -pin epcu pc[15] -port pc[15]
load net pc[16] -attr @rip pc[16] -pin epcu pc[16] -port pc[16]
load net pc[17] -attr @rip pc[17] -pin epcu pc[17] -port pc[17]
load net pc[18] -attr @rip pc[18] -pin epcu pc[18] -port pc[18]
load net pc[19] -attr @rip pc[19] -pin epcu pc[19] -port pc[19]
load net pc[1] -attr @rip pc[1] -pin epcu pc[1] -port pc[1]
load net pc[20] -attr @rip pc[20] -pin epcu pc[20] -port pc[20]
load net pc[21] -attr @rip pc[21] -pin epcu pc[21] -port pc[21]
load net pc[22] -attr @rip pc[22] -pin epcu pc[22] -port pc[22]
load net pc[23] -attr @rip pc[23] -pin epcu pc[23] -port pc[23]
load net pc[24] -attr @rip pc[24] -pin epcu pc[24] -port pc[24]
load net pc[25] -attr @rip pc[25] -pin epcu pc[25] -port pc[25]
load net pc[26] -attr @rip pc[26] -pin epcu pc[26] -port pc[26]
load net pc[27] -attr @rip pc[27] -pin epcu pc[27] -port pc[27]
load net pc[28] -attr @rip pc[28] -pin epcu pc[28] -port pc[28]
load net pc[29] -attr @rip pc[29] -pin epcu pc[29] -port pc[29]
load net pc[2] -attr @rip pc[2] -pin epcu pc[2] -port pc[2]
load net pc[30] -attr @rip pc[30] -pin epcu pc[30] -port pc[30]
load net pc[31] -attr @rip pc[31] -pin epcu pc[31] -port pc[31]
load net pc[3] -attr @rip pc[3] -pin epcu pc[3] -port pc[3]
load net pc[4] -attr @rip pc[4] -pin epcu pc[4] -port pc[4]
load net pc[5] -attr @rip pc[5] -pin epcu pc[5] -port pc[5]
load net pc[6] -attr @rip pc[6] -pin epcu pc[6] -port pc[6]
load net pc[7] -attr @rip pc[7] -pin epcu pc[7] -port pc[7]
load net pc[8] -attr @rip pc[8] -pin epcu pc[8] -port pc[8]
load net pc[9] -attr @rip pc[9] -pin epcu pc[9] -port pc[9]
load net pendingexception -pin excu pendingexception -port pendingexception
netloc pendingexception 1 4 1 NJ 150
load net readaddress[0] -attr @rip readaddress[0] -pin cop0readdata_i S[0] -port readaddress[0]
load net readaddress[1] -attr @rip readaddress[1] -pin cop0readdata_i S[1] -port readaddress[1]
load net readaddress[2] -attr @rip readaddress[2] -pin cop0readdata_i S[2] -port readaddress[2]
load net readaddress[3] -attr @rip readaddress[3] -pin cop0readdata_i S[3] -port readaddress[3]
load net readaddress[4] -attr @rip readaddress[4] -pin cop0readdata_i S[4] -port readaddress[4]
load net reset -pin counter reset -pin crunit reset -pin epcu reset -port reset -pin srunit reset
netloc reset 1 0 3 NJ 770 NJ 770 530
load net rfe -port rfe -pin srunit rfe
netloc rfe 1 0 3 NJ 790 NJ 790 NJ
load net ri -pin excu ri -port ri
netloc ri 1 0 4 NJ 210 NJ 210 NJ 210 NJ
load net statusreg[0] -attr @rip statusreg[0] -pin cop0readdata_i I0[0] -pin srunit statusreg[0]
load net statusreg[10] -attr @rip statusreg[10] -pin cop0readdata_i I0[10] -pin srunit statusreg[10]
load net statusreg[11] -attr @rip statusreg[11] -pin cop0readdata_i I0[11] -pin srunit statusreg[11]
load net statusreg[12] -attr @rip statusreg[12] -pin cop0readdata_i I0[12] -pin srunit statusreg[12]
load net statusreg[13] -attr @rip statusreg[13] -pin cop0readdata_i I0[13] -pin srunit statusreg[13]
load net statusreg[14] -attr @rip statusreg[14] -pin cop0readdata_i I0[14] -pin srunit statusreg[14]
load net statusreg[15] -attr @rip statusreg[15] -pin cop0readdata_i I0[15] -pin srunit statusreg[15]
load net statusreg[16] -attr @rip statusreg[16] -pin cop0readdata_i I0[16] -pin srunit statusreg[16]
load net statusreg[17] -attr @rip statusreg[17] -pin cop0readdata_i I0[17] -pin srunit statusreg[17]
load net statusreg[18] -attr @rip statusreg[18] -pin cop0readdata_i I0[18] -pin srunit statusreg[18]
load net statusreg[19] -attr @rip statusreg[19] -pin cop0readdata_i I0[19] -pin srunit statusreg[19]
load net statusreg[1] -attr @rip statusreg[1] -pin cop0readdata_i I0[1] -pin srunit statusreg[1]
load net statusreg[20] -attr @rip statusreg[20] -pin cop0readdata_i I0[20] -pin srunit statusreg[20]
load net statusreg[21] -attr @rip statusreg[21] -pin cop0readdata_i I0[21] -pin srunit statusreg[21]
load net statusreg[22] -attr @rip statusreg[22] -pin cop0readdata_i I0[22] -pin srunit statusreg[22]
load net statusreg[23] -attr @rip statusreg[23] -pin cop0readdata_i I0[23] -pin srunit statusreg[23]
load net statusreg[24] -attr @rip statusreg[24] -pin cop0readdata_i I0[24] -pin srunit statusreg[24]
load net statusreg[25] -attr @rip statusreg[25] -pin cop0readdata_i I0[25] -pin srunit statusreg[25]
load net statusreg[26] -attr @rip statusreg[26] -pin cop0readdata_i I0[26] -pin srunit statusreg[26]
load net statusreg[27] -attr @rip statusreg[27] -pin cop0readdata_i I0[27] -pin srunit statusreg[27]
load net statusreg[28] -attr @rip statusreg[28] -pin cop0readdata_i I0[28] -pin srunit statusreg[28]
load net statusreg[29] -attr @rip statusreg[29] -pin cop0readdata_i I0[29] -pin srunit statusreg[29]
load net statusreg[2] -attr @rip statusreg[2] -pin cop0readdata_i I0[2] -pin srunit statusreg[2]
load net statusreg[30] -attr @rip statusreg[30] -pin cop0readdata_i I0[30] -pin srunit statusreg[30]
load net statusreg[31] -attr @rip statusreg[31] -pin cop0readdata_i I0[31] -pin srunit statusreg[31]
load net statusreg[3] -attr @rip statusreg[3] -pin cop0readdata_i I0[3] -pin srunit statusreg[3]
load net statusreg[4] -attr @rip statusreg[4] -pin cop0readdata_i I0[4] -pin srunit statusreg[4]
load net statusreg[5] -attr @rip statusreg[5] -pin cop0readdata_i I0[5] -pin srunit statusreg[5]
load net statusreg[6] -attr @rip statusreg[6] -pin cop0readdata_i I0[6] -pin srunit statusreg[6]
load net statusreg[7] -attr @rip statusreg[7] -pin cop0readdata_i I0[7] -pin srunit statusreg[7]
load net statusreg[8] -attr @rip statusreg[8] -pin cop0readdata_i I0[8] -pin srunit statusreg[8]
load net statusreg[9] -attr @rip statusreg[9] -pin cop0readdata_i I0[9] -pin srunit statusreg[9]
load net syscall -pin excu syscall -port syscall
netloc syscall 1 0 4 NJ 230 NJ 230 NJ 230 NJ
load net writeaddress[0] -attr @rip writeaddress[0] -port writeaddress[0] -pin writeenable1_i I0[0]
load net writeaddress[1] -attr @rip writeaddress[1] -port writeaddress[1] -pin writeenable1_i I0[1]
load net writeaddress[2] -attr @rip writeaddress[2] -port writeaddress[2] -pin writeenable1_i I0[2]
load net writeaddress[3] -attr @rip writeaddress[3] -port writeaddress[3] -pin writeenable1_i I0[3]
load net writeaddress[4] -attr @rip writeaddress[4] -port writeaddress[4] -pin writeenable1_i I0[4]
load net writecop0[0] -attr @rip writecop0[0] -pin srunit writedata[0] -port writecop0[0]
load net writecop0[10] -attr @rip writecop0[10] -pin srunit writedata[10] -port writecop0[10]
load net writecop0[11] -attr @rip writecop0[11] -pin srunit writedata[11] -port writecop0[11]
load net writecop0[12] -attr @rip writecop0[12] -pin srunit writedata[12] -port writecop0[12]
load net writecop0[13] -attr @rip writecop0[13] -pin srunit writedata[13] -port writecop0[13]
load net writecop0[14] -attr @rip writecop0[14] -pin srunit writedata[14] -port writecop0[14]
load net writecop0[15] -attr @rip writecop0[15] -pin srunit writedata[15] -port writecop0[15]
load net writecop0[16] -attr @rip writecop0[16] -pin srunit writedata[16] -port writecop0[16]
load net writecop0[17] -attr @rip writecop0[17] -pin srunit writedata[17] -port writecop0[17]
load net writecop0[18] -attr @rip writecop0[18] -pin srunit writedata[18] -port writecop0[18]
load net writecop0[19] -attr @rip writecop0[19] -pin srunit writedata[19] -port writecop0[19]
load net writecop0[1] -attr @rip writecop0[1] -pin srunit writedata[1] -port writecop0[1]
load net writecop0[20] -attr @rip writecop0[20] -pin srunit writedata[20] -port writecop0[20]
load net writecop0[21] -attr @rip writecop0[21] -pin srunit writedata[21] -port writecop0[21]
load net writecop0[22] -attr @rip writecop0[22] -pin srunit writedata[22] -port writecop0[22]
load net writecop0[23] -attr @rip writecop0[23] -pin srunit writedata[23] -port writecop0[23]
load net writecop0[24] -attr @rip writecop0[24] -pin srunit writedata[24] -port writecop0[24]
load net writecop0[25] -attr @rip writecop0[25] -pin srunit writedata[25] -port writecop0[25]
load net writecop0[26] -attr @rip writecop0[26] -pin srunit writedata[26] -port writecop0[26]
load net writecop0[27] -attr @rip writecop0[27] -pin srunit writedata[27] -port writecop0[27]
load net writecop0[28] -attr @rip writecop0[28] -pin srunit writedata[28] -port writecop0[28]
load net writecop0[29] -attr @rip writecop0[29] -pin srunit writedata[29] -port writecop0[29]
load net writecop0[2] -attr @rip writecop0[2] -pin srunit writedata[2] -port writecop0[2]
load net writecop0[30] -attr @rip writecop0[30] -pin srunit writedata[30] -port writecop0[30]
load net writecop0[31] -attr @rip writecop0[31] -pin srunit writedata[31] -port writecop0[31]
load net writecop0[3] -attr @rip writecop0[3] -pin srunit writedata[3] -port writecop0[3]
load net writecop0[4] -attr @rip writecop0[4] -pin srunit writedata[4] -port writecop0[4]
load net writecop0[5] -attr @rip writecop0[5] -pin srunit writedata[5] -port writecop0[5]
load net writecop0[6] -attr @rip writecop0[6] -pin srunit writedata[6] -port writecop0[6]
load net writecop0[7] -attr @rip writecop0[7] -pin srunit writedata[7] -port writecop0[7]
load net writecop0[8] -attr @rip writecop0[8] -pin srunit writedata[8] -port writecop0[8]
load net writecop0[9] -attr @rip writecop0[9] -pin srunit writedata[9] -port writecop0[9]
load net writeenable0 -pin srunit writeenable -pin writeenable0_i O
netloc writeenable0 1 2 1 490 690n
load net writeenable1 -pin writeenable0_i I1 -pin writeenable1_i O
netloc writeenable1 1 1 1 NJ 700
load netBundle @interrupts 8 interrupts[7] interrupts[6] interrupts[5] interrupts[4] interrupts[3] interrupts[2] interrupts[1] interrupts[0] -autobundled
netbloc @interrupts 1 0 4 NJ 150 NJ 150 NJ 150 NJ
load netBundle @pc 32 pc[31] pc[30] pc[29] pc[28] pc[27] pc[26] pc[25] pc[24] pc[23] pc[22] pc[21] pc[20] pc[19] pc[18] pc[17] pc[16] pc[15] pc[14] pc[13] pc[12] pc[11] pc[10] pc[9] pc[8] pc[7] pc[6] pc[5] pc[4] pc[3] pc[2] pc[1] pc[0] -autobundled
netbloc @pc 1 0 3 NJ 590 NJ 590 NJ
load netBundle @readaddress 5 readaddress[4] readaddress[3] readaddress[2] readaddress[1] readaddress[0] -autobundled
netbloc @readaddress 1 0 4 NJ 610 NJ 610 490J 650 NJ
load netBundle @writeaddress 5 writeaddress[4] writeaddress[3] writeaddress[2] writeaddress[1] writeaddress[0] -autobundled
netbloc @writeaddress 1 0 1 NJ 690
load netBundle @writecop0 32 writecop0[31] writecop0[30] writecop0[29] writecop0[28] writecop0[27] writecop0[26] writecop0[25] writecop0[24] writecop0[23] writecop0[22] writecop0[21] writecop0[20] writecop0[19] writecop0[18] writecop0[17] writecop0[16] writecop0[15] writecop0[14] writecop0[13] writecop0[12] writecop0[11] writecop0[10] writecop0[9] writecop0[8] writecop0[7] writecop0[6] writecop0[5] writecop0[4] writecop0[3] writecop0[2] writecop0[1] writecop0[0] -autobundled
netbloc @writecop0 1 0 3 NJ 810 NJ 810 NJ
load netBundle @cop0readdata 32 cop0readdata[31] cop0readdata[30] cop0readdata[29] cop0readdata[28] cop0readdata[27] cop0readdata[26] cop0readdata[25] cop0readdata[24] cop0readdata[23] cop0readdata[22] cop0readdata[21] cop0readdata[20] cop0readdata[19] cop0readdata[18] cop0readdata[17] cop0readdata[16] cop0readdata[15] cop0readdata[14] cop0readdata[13] cop0readdata[12] cop0readdata[11] cop0readdata[10] cop0readdata[9] cop0readdata[8] cop0readdata[7] cop0readdata[6] cop0readdata[5] cop0readdata[4] cop0readdata[3] cop0readdata[2] cop0readdata[1] cop0readdata[0] -autobundled
netbloc @cop0readdata 1 4 1 NJ 570
load netBundle @cycle 32 cycle[31] cycle[30] cycle[29] cycle[28] cycle[27] cycle[26] cycle[25] cycle[24] cycle[23] cycle[22] cycle[21] cycle[20] cycle[19] cycle[18] cycle[17] cycle[16] cycle[15] cycle[14] cycle[13] cycle[12] cycle[11] cycle[10] cycle[9] cycle[8] cycle[7] cycle[6] cycle[5] cycle[4] cycle[3] cycle[2] cycle[1] cycle[0] -autobundled
netbloc @cycle 1 3 1 890 440n
load netBundle @causereg 32 causereg[31] causereg[30] causereg[29] causereg[28] causereg[27] causereg[26] causereg[25] causereg[24] causereg[23] causereg[22] causereg[21] causereg[20] causereg[19] causereg[18] causereg[17] causereg[16] causereg[15] causereg[14] causereg[13] causereg[12] causereg[11] causereg[10] causereg[9] causereg[8] causereg[7] causereg[6] causereg[5] causereg[4] causereg[3] causereg[2] causereg[1] causereg[0] -autobundled
netbloc @causereg 1 3 1 950 310n
load netBundle @epc 32 epc[31] epc[30] epc[29] epc[28] epc[27] epc[26] epc[25] epc[24] epc[23] epc[22] epc[21] epc[20] epc[19] epc[18] epc[17] epc[16] epc[15] epc[14] epc[13] epc[12] epc[11] epc[10] epc[9] epc[8] epc[7] epc[6] epc[5] epc[4] epc[3] epc[2] epc[1] epc[0] -autobundled
netbloc @epc 1 3 1 870 570n
load netBundle @exccode 5 exccode[4] exccode[3] exccode[2] exccode[1] exccode[0] -autobundled
netbloc @exccode 1 2 3 570 10 NJ 10 1280
load netBundle @statusreg 32 statusreg[31] statusreg[30] statusreg[29] statusreg[28] statusreg[27] statusreg[26] statusreg[25] statusreg[24] statusreg[23] statusreg[22] statusreg[21] statusreg[20] statusreg[19] statusreg[18] statusreg[17] statusreg[16] statusreg[15] statusreg[14] statusreg[13] statusreg[12] statusreg[11] statusreg[10] statusreg[9] statusreg[8] statusreg[7] statusreg[6] statusreg[5] statusreg[4] statusreg[3] statusreg[2] statusreg[1] statusreg[0] -autobundled
netbloc @statusreg 1 3 1 930 540n
levelinfo -pg 1 0 160 360 690 1090 1300
pagesize -pg 1 -db -bbox -sgen -160 0 1480 870
show
fullfit
#
# initialize ictrl to current module coprocessor0 work:coprocessor0:NOFILE
ictrl init topinfo |
