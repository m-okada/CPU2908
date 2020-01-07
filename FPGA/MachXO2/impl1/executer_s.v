/* Verilog model created from schematic executer_s.sch -- Jan 07, 2020 17:55 */

module executer_s( addrOut, ALU_M, ALUOpecode, buffSel, byteRegSelector, CPMonitor,
                   cySelector, dataIn, dataOut, E, flagLatchEn, flagOut, misc,
                   nE, nQ, Q, stfr, wordRegSelector, writeBack,
                   writeBackEnable, writeBackSel );
output [0:15] addrOut;
 input ALU_M;
 input [0:3] ALUOpecode;
 input [0:1] buffSel;
 input [0:2] byteRegSelector;
output [0:15] CPMonitor;
 input [0:1] cySelector;
 input [0:7] dataIn;
output [0:7] dataOut;
 input E;
 input flagLatchEn;
output [0:7] flagOut;
 input [0:1] misc;
 input nE;
 input nQ;
 input Q;
 input stfr;
 input [0:1] wordRegSelector;
output [0:7] writeBack;
 input writeBackEnable;
 input [0:2] writeBackSel;
  wire [7:0] ALU_A;
  wire [7:0] ALU_B;
  wire [7:0] addrHi;
  wire [7:0] addrLo;
  wire [15:0] addrRegOut;
  wire [15:0] addrOffset;
  wire [7:0] ALU_OUT;
  wire [7:0] InternalDataBus;
  wire [7:0] LogicOut;
wire N_35;
wire N_34;
wire N_24;
wire N_25;
wire N_26;
wire N_27;
wire N_28;
wire N_31;
wire N_32;
wire N_33;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_14;
wire N_17;
wire N_18;
wire N_19;
wire N_20;
wire N_21;



zeroFlag I33 ( .A({ dataOut[7],dataOut[6],dataOut[5],dataOut[4],dataOut[3],dataOut[2],dataOut[1],dataOut[0] }), .zf(N_35) );
flagReg I29 ( .busIn(InternalDataBus[7:0]), .carryOut(N_33), .clk(nQ), .cy(N_32),
           .flagOut({ flagOut[7],flagOut[6],flagOut[5],flagOut[4],flagOut[3],flagOut[2],flagOut[1],flagOut[0] }), .inputSel(stfr),
           .intEnable(flagOut[5]), .latchEn(flagLatchEn), .ov(N_31),
           .sf(dataOut[7]), .zf(N_35) );
VHI I27 ( .Z(N_20) );
INV I22 ( .A(byteRegSelector[2]), .Z(N_14) );
splitter16_8x2 I16 ( .D(addrRegOut[15:0]), .Hi(addrHi[7:0]), .Lo(addrLo[7:0]) );
tristateBuff8 I23 ( .D(InternalDataBus[7:0]), .nOE(N_27), .Q({ dataOut[7],dataOut[6],dataOut[5],dataOut[4],dataOut[3],dataOut[2],dataOut[1],dataOut[0] }) );
tristateBuff8 I32 ( .D(ALU_OUT[7:0]), .nOE(N_26), .Q({ dataOut[7],dataOut[6],dataOut[5],dataOut[4],dataOut[3],dataOut[2],dataOut[1],dataOut[0] }) );
tristateBuff8 I24 ( .D(LogicOut[7:0]), .nOE(N_25), .Q({ dataOut[7],dataOut[6],dataOut[5],dataOut[4],dataOut[3],dataOut[2],dataOut[1],dataOut[0] }) );
tristateBuff8 I30 ( .D({ flagOut[7],flagOut[6],flagOut[5],flagOut[4],flagOut[3],flagOut[2],flagOut[1],flagOut[0] }), .nOE(N_24), .Q({ dataOut[7],dataOut[6],dataOut[5],dataOut[4],dataOut[3],dataOut[2],dataOut[1],dataOut[0] }) );
tristateBuff8 I15 ( .D({ dataIn[7],dataIn[6],dataIn[5],dataIn[4],dataIn[3],dataIn[2],dataIn[1],dataIn[0] }), .nOE(N_7), .Q(InternalDataBus[7:0]) );
tristateBuff8 I12 ( .D(addrLo[7:0]), .nOE(N_11), .Q(InternalDataBus[7:0]) );
tristateBuff8 I13 ( .D(addrHi[7:0]), .nOE(N_10), .Q(InternalDataBus[7:0]) );
tristateBuff8 I14 ( .D({ dataOut[7],dataOut[6],dataOut[5],dataOut[4],dataOut[3],dataOut[2],dataOut[1],dataOut[0] }), .nOE(N_6), .Q(InternalDataBus[7:0]) );
addrEx I11 ( .addrOut({ addrOut[15],addrOut[14],addrOut[13],addrOut[12],addrOut[11],addrOut[10],addrOut[9],addrOut[8],addrOut[7],addrOut[6],addrOut[5],addrOut[4],addrOut[3],addrOut[2],addrOut[1],addrOut[0] }), .base(addrRegOut[15:0]),
          .offset(addrOffset[15:0]), .op({ ALUOpecode[3],ALUOpecode[2],ALUOpecode[1],ALUOpecode[0] }) );
splitter8x2_16 I10 ( .Hi(ALU_B[7:0]), .Lo(ALU_A[7:0]), .Q(addrOffset[15:0]) );
decoder4 I25 ( .A(N_27), .B(N_26), .C(N_25), .D(N_24), .nOE(N_28), .selA(misc[0]),
            .selB(misc[1]) );
decoder4 I20 ( .A(N_11), .B(N_10), .C(N_7), .D(N_6), .nOE(N_14),
            .selA(byteRegSelector[0]), .selB(byteRegSelector[1]) );
decoder4 I17 ( .B(N_17), .C(N_9), .nOE(N_8), .selA(buffSel[0]), .selB(buffSel[1]) );
VLO I26 ( .Z(N_28) );
VLO I28 ( .Z(N_19) );
VLO I21 ( .Z(N_8) );
VLO I7 ( .Z(N_18) );
MUX41 I6 ( .D0(N_33), .D1(ALU_A[7]), .D2(N_20), .D3(N_19), .SD1(cySelector[0]),
        .SD2(cySelector[1]), .Z(N_21) );
register8 BUFF_1 ( .clk(Q), .D(InternalDataBus[7:0]), .nOE(N_18), .nWE(N_17),
                .subPort(ALU_A[7:0]) );
register8 BUFF_2 ( .clk(Q), .D(InternalDataBus[7:0]), .nOE(N_18), .nWE(N_9),
                .subPort(ALU_B[7:0]) );
dataReg I8 ( .clk(N_34), .in({ dataOut[7],dataOut[6],dataOut[5],dataOut[4],dataOut[3],dataOut[2],dataOut[1],dataOut[0] }), .out(InternalDataBus[7:0]),
          .outSel({ byteRegSelector[2],byteRegSelector[1],byteRegSelector[0] }), .writeBack({ writeBack[7],writeBack[6],writeBack[5],writeBack[4],writeBack[3],writeBack[2],writeBack[1],writeBack[0] }) );
addrReg I3 ( .clk(N_34), .CPMonitor({ CPMonitor[15],CPMonitor[14],CPMonitor[13],CPMonitor[12],CPMonitor[11],CPMonitor[10],CPMonitor[9],CPMonitor[8],CPMonitor[7],CPMonitor[6],CPMonitor[5],CPMonitor[4],CPMonitor[3],CPMonitor[2],CPMonitor[1],CPMonitor[0] }),
          .in({ addrOut[15],addrOut[14],addrOut[13],addrOut[12],addrOut[11],addrOut[10],addrOut[9],addrOut[8],addrOut[7],addrOut[6],addrOut[5],addrOut[4],addrOut[3],addrOut[2],addrOut[1],addrOut[0] }), .out(addrRegOut[15:0]),
          .outSel({ wordRegSelector[1],wordRegSelector[0] }), .writeBack({ writeBack[7],writeBack[6],writeBack[5],writeBack[4],writeBack[3],writeBack[2],writeBack[1],writeBack[0] }) );
ALU I2 ( .A(ALU_A[7:0]), .B(ALU_B[7:0]), .Cin(N_21), .CY(N_32), .M(ALU_M),
      .OV(N_31), .S({ ALUOpecode[3],ALUOpecode[2],ALUOpecode[1],ALUOpecode[0] }), .YA(ALU_OUT[7:0]),
      .YL(LogicOut[7:0]) );
writeBackSelector I4 ( .E(E), .nQ(nQ), .selector({ writeBackSel[2],writeBackSel[1],writeBackSel[0] }),
                    .wbEn(writeBackEnable), .writeBack({ writeBack[7],writeBack[6],writeBack[5],writeBack[4],writeBack[3],writeBack[2],writeBack[1],writeBack[0] }),
                    .writeClock(N_34) );

endmodule // executer_s
