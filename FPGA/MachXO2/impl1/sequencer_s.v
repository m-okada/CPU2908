/* Verilog model created from schematic sequencer_s.sch -- Jan 04, 2020 15:04 */

module sequencer_s( countClk, CT, dataIn, dataOut, E, exbusCtrl, fetchOut, flagIn,
                    idx, IRQH, jumpOpe, nE, nIRQ, noJump, nQ, nReset, nReset2,
                    Q, regCtrl, s_hi, s_lo, stateClk, StepCtrl, UM, uromIDX );
output countClk;
output [0:9] CT;
 input [0:7] dataIn;
output [0:7] dataOut;
 input E;
output [0:3] exbusCtrl;
output fetchOut;
 input [0:7] flagIn;
output [0:9] idx;
output IRQH;
output jumpOpe;
 input nE;
 input nIRQ;
output noJump;
 input nQ;
 input nReset;
 input nReset2;
 input Q;
output [0:23] regCtrl;
output s_hi;
output s_lo;
output stateClk;
output StepCtrl;
output [0:31] UM;
output [0:7] uromIDX;
  wire [31:0] XD;
  wire [31:0] UR;
  wire [7:0] uromIDX_A;
  wire [7:0] uromIDX_B;
  wire [7:0] imm;
  wire [7:0] DataInSel1;
  wire [7:0] DataInBuff;
wire N_47;
wire N_46;
wire N_29;
wire N_30;
wire JG;
wire JL;
wire N_35;
wire N_36;
wire N_37;
wire N_38;
wire N_40;
wire N_42;
wire N_43;
wire N_44;
wire N_45;
wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_20;
wire N_21;
wire N_22;
wire N_23;
wire N_24;
wire N_25;
wire N_26;
wire N_28;



OR3 I21 ( .A(N_40), .B(N_38), .C(N_37), .Z(noJump) );
AND3 I114 ( .A(N_29), .B(N_30), .C(dataIn[3]), .Z(N_46) );
AND3 I23 ( .A(JG), .B(N_46), .C(dataIn[0]), .Z(N_38) );
AND3 I24 ( .A(JL), .B(N_46), .C(N_47), .Z(N_40) );
XOR2 I115 ( .A(dataIn[0]), .B(N_35), .Z(N_36) );
XOR2 I27 ( .A(flagIn[3]), .B(flagIn[7]), .Z(JL) );
NR2 I29 ( .A(JL), .B(flagIn[6]), .Z(JG) );
MUX41 I31 ( .D0(flagIn[0]), .D1(flagIn[3]), .D2(flagIn[6]), .D3(flagIn[7]),
         .SD1(dataIn[1]), .SD2(dataIn[2]), .Z(N_35) );
urom_TBL I107 ( .Address({ uromIDX[7],uromIDX[6],uromIDX[5],uromIDX[4],uromIDX[3],uromIDX[2],uromIDX[1],uromIDX[0] }), .Q({ idx[9],idx[8],idx[7],idx[6],idx[5],idx[4],idx[3],idx[2],idx[1],idx[0] }) );
uromd I105 ( .Address({ CT[9],CT[8],CT[7],CT[6],CT[5],CT[4],CT[3],CT[2],CT[1],CT[0] }), .OutClock(N_28), .OutClockEn(N_27),
          .Q({ UM[31],UM[30],UM[29],UM[28],UM[27],UM[26],UM[25],UM[24],UM[23],UM[22],UM[21],UM[20],UM[19],UM[18],UM[17],UM[16],UM[15],UM[14],UM[13],UM[12],UM[11],UM[10],UM[9],UM[8],UM[7],UM[6],UM[5],UM[4],UM[3],UM[2],UM[1],UM[0] }), .Reset(N_26) );
FD1P3BX I109 ( .CK(Q), .D(UM[31]), .PD(N_17), .Q(StepCtrl), .SP(N_15) );
uConstSel I99 ( .u12(N_20), .u17(N_18), .ua({ UM[31],UM[30],UM[29],UM[28],UM[27],UM[26],UM[25],UM[24],UM[23],UM[22],UM[21],UM[20],UM[19],UM[18],UM[17],UM[16],UM[15],UM[14],UM[13],UM[12],UM[11],UM[10],UM[9],UM[8],UM[7],UM[6],UM[5],UM[4],UM[3],UM[2],UM[1],UM[0] }), .xb(XD[31:0]),
             .xc(imm[7:0]) );
register8 tempReg ( .clk(nE), .D({ dataIn[7],dataIn[6],dataIn[5],dataIn[4],dataIn[3],dataIn[2],dataIn[1],dataIn[0] }), .nOE(N_5), .nWE(N_5),
                 .Q(DataInBuff[7:0]) );
urSplitter I85 ( .exBusCtrl({ exbusCtrl[3],exbusCtrl[2],exbusCtrl[1],exbusCtrl[0] }), .fetch(fetchOut),
              .in(UR[31:0]), .regCtrl({ regCtrl[23],regCtrl[22],regCtrl[21],regCtrl[20],regCtrl[19],regCtrl[18],regCtrl[17],regCtrl[16],regCtrl[15],regCtrl[14],regCtrl[13],regCtrl[12],regCtrl[11],regCtrl[10],regCtrl[9],regCtrl[8],regCtrl[7],regCtrl[6],regCtrl[5],regCtrl[4],regCtrl[3],regCtrl[2],regCtrl[1],regCtrl[0] }) );
jccSelector I82 ( .jumpOpe(jumpOpe), .noJump(noJump), .opeCode({ dataIn[7],dataIn[6],dataIn[5],dataIn[4],dataIn[3],dataIn[2],dataIn[1],dataIn[0] }),
               .opeIdx(uromIDX_A[7:0]) );
constEx I81 ( .bit0(s_lo), .bit1(s_hi), .Q(uromIDX_B[7:0]) );
register32 I62 ( .clk(nE), .clr(N_23), .D(XD[31:0]), .nOE(N_25), .nWE(N_24),
              .Q(UR[31:0]) );
uromCounter I45 ( .clk(countClk), .load(StepCtrl), .preset({ idx[9],idx[8],idx[7],idx[6],idx[5],idx[4],idx[3],idx[2],idx[1],idx[0] }),
               .Q({ CT[9],CT[8],CT[7],CT[6],CT[5],CT[4],CT[3],CT[2],CT[1],CT[0] }) );
VLO I113 ( .Z(N_26) );
VLO I98 ( .Z(N_5) );
VLO I94 ( .Z(N_25) );
VLO I95 ( .Z(N_24) );
Mux2_1x8 I59 ( .A(DataInSel1[7:0]), .B(imm[7:0]), .S(UM[23]),
            .Y({ dataOut[7],dataOut[6],dataOut[5],dataOut[4],dataOut[3],dataOut[2],dataOut[1],dataOut[0] }) );
Mux2_1x8 I33 ( .A(uromIDX_A[7:0]), .B(uromIDX_B[7:0]), .S(N_22),
            .Y({ uromIDX[7],uromIDX[6],uromIDX[5],uromIDX[4],uromIDX[3],uromIDX[2],uromIDX[1],uromIDX[0] }) );
Mux2_1x8 I97 ( .A({ dataIn[7],dataIn[6],dataIn[5],dataIn[4],dataIn[3],dataIn[2],dataIn[1],dataIn[0] }), .B(DataInBuff[7:0]), .S(UR[20]),
            .Y(DataInSel1[7:0]) );
AND4 I116 ( .A(N_42), .B(dataIn[5]), .C(dataIn[6]), .D(dataIn[7]), .Z(N_43) );
AND4 I10 ( .A(IRQH), .B(flagIn[5]), .C(s_lo), .D(s_hi), .Z(N_8) );
OR2 I22 ( .A(N_46), .B(N_44), .Z(N_45) );
OR2 I110 ( .A(N_13), .B(N_12), .Z(N_22) );
OR2 I48 ( .A(E), .B(N_16), .Z(countClk) );
OR2 I100 ( .A(UM[23]), .B(UM[17]), .Z(N_18) );
OR2 I8 ( .A(N_10), .B(N_8), .Z(N_9) );
AND2 I117 ( .A(N_45), .B(N_43), .Z(jumpOpe) );
AND2 I25 ( .A(N_44), .B(N_36), .Z(N_37) );
AND2 I112 ( .A(nQ), .B(nReset2), .Z(N_28) );
AND2 I49 ( .A(nReset), .B(nQ), .Z(N_16) );
AND2 I101 ( .A(N_21), .B(UM[12]), .Z(N_20) );
AND2 I11 ( .A(N_12), .B(s_hi), .Z(N_2) );
AND2 I9 ( .A(N_13), .B(s_lo), .Z(N_10) );
VHI I4 ( .Z(N_3) );
VHI I13 ( .Z(N_1) );
VHI I106 ( .Z(N_27) );
VHI I90 ( .Z(N_15) );
VHI I3 ( .Z(N_7) );
INV I34 ( .A(dataIn[0]), .Z(N_47) );
INV I118 ( .A(dataIn[1]), .Z(N_29) );
INV I119 ( .A(dataIn[2]), .Z(N_30) );
INV I120 ( .A(dataIn[4]), .Z(N_42) );
INV I32 ( .A(dataIn[3]), .Z(N_44) );
INV I111 ( .A(N_8), .Z(N_4) );
INV I7 ( .A(nReset), .Z(N_6) );
INV I52 ( .A(nReset), .Z(N_17) );
INV I102 ( .A(UM[23]), .Z(N_21) );
INV I51 ( .A(N_14), .Z(stateClk) );
INV I88 ( .A(nReset), .Z(N_23) );
INV I50 ( .A(N_16), .Z(N_11) );
INV I5 ( .A(s_lo), .Z(N_12) );
INV I6 ( .A(s_hi), .Z(N_13) );
FD1P3DX Bit1 ( .CD(N_6), .CK(stateClk), .D(N_9), .Q(s_hi), .SP(N_7) );
FD1P3DX IRQCtrl ( .CD(N_2), .CK(E), .D(nIRQ), .Q(IRQH), .SP(N_1) );
FD1P3DX I46 ( .CD(N_11), .CK(nE), .D(UM[31]), .Q(N_14), .SP(N_15) );
FD1P3DX Bit0 ( .CD(N_6), .CK(stateClk), .D(N_4), .Q(s_lo), .SP(N_3) );

endmodule // sequencer_s
