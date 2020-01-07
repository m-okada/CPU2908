/* Verilog model created from schematic serialRxD.sch -- Jan 07, 2020 17:55 */

module serialRxD( clk, clr, dataIn, DataRdy, Empty, ParallelOut, reset, rxBusy );
 input clk;
 input clr;
 input dataIn;
output DataRdy;
output Empty;
output [0:7] ParallelOut;
 input reset;
output rxBusy;
  wire [7:0] D;
wire N_43;
wire N_39;
wire N_40;
wire N_41;
wire N_42;
wire N_37;
wire N_38;
wire N_32;
wire N_18;
wire N_19;
wire N_20;
wire N_21;
wire N_22;
wire N_23;
wire N_24;
wire N_25;
wire N_26;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_11;
wire N_13;



OR4 I37 ( .A(N_40), .B(ParallelOut[2]), .C(ParallelOut[1]), .D(ParallelOut[0]),
       .Z(N_39) );
OR5 I38 ( .A(ParallelOut[7]), .B(ParallelOut[6]), .C(ParallelOut[5]),
       .D(ParallelOut[4]), .E(ParallelOut[3]), .Z(N_40) );
register8AC I35 ( .clk(N_41), .clr(clr), .D(D[7:0]), .nOE(N_42), .nWE(N_42),
               .Q({ ParallelOut[7],ParallelOut[6],ParallelOut[5],ParallelOut[4],ParallelOut[3],ParallelOut[2],ParallelOut[1],ParallelOut[0] }) );
VLO I34 ( .Z(N_42) );
VLO I36 ( .Z(N_37) );
VHI I24 ( .Z(N_13) );
VHI I21 ( .Z(N_11) );
VHI I18 ( .Z(N_5) );
INV I40 ( .A(clk), .Z(N_43) );
INV I39 ( .A(N_39), .Z(Empty) );
INV I26 ( .A(N_18), .Z(D[0]) );
INV I27 ( .A(N_20), .Z(D[1]) );
INV I28 ( .A(N_21), .Z(D[2]) );
INV I29 ( .A(N_22), .Z(D[3]) );
INV I30 ( .A(N_23), .Z(D[4]) );
INV I31 ( .A(N_24), .Z(D[5]) );
INV I32 ( .A(N_25), .Z(D[6]) );
INV I33 ( .A(N_26), .Z(D[7]) );
INV I10 ( .A(rxBusy), .Z(N_7) );
INV I22 ( .A(dataIn), .Z(N_38) );
INV I19 ( .A(N_6), .Z(N_4) );
INV I20 ( .A(N_3), .Z(N_32) );
OR2 I13 ( .A(N_7), .B(clk), .Z(N_2) );
NR2 I14 ( .A(N_6), .B(N_32), .Z(N_19) );
FD1P3DX I25 ( .CD(N_37), .CK(N_43), .D(N_41), .Q(DataRdy), .SP(N_13) );
FD1P3DX I15 ( .CD(DataRdy), .CK(N_38), .D(N_11), .Q(rxBusy), .SP(N_11) );
FD1P3DX I16 ( .CD(DataRdy), .CK(N_2), .D(N_4), .Q(N_6), .SP(N_5) );
FD1P3DX I17 ( .CD(DataRdy), .CK(N_6), .D(N_32), .Q(N_3), .SP(N_5) );
FD1P3DX I9 ( .CD(DataRdy), .CK(N_19), .D(N_18), .Q(N_41), .SP(N_13) );
FD1P3DX I1 ( .CD(DataRdy), .CK(N_19), .D(N_23), .Q(N_22), .SP(N_13) );
FD1P3DX I2 ( .CD(DataRdy), .CK(N_19), .D(N_22), .Q(N_21), .SP(N_13) );
FD1P3DX I3 ( .CD(DataRdy), .CK(N_19), .D(N_20), .Q(N_18), .SP(N_13) );
FD1P3DX I4 ( .CD(DataRdy), .CK(N_19), .D(N_21), .Q(N_20), .SP(N_13) );
FD1P3DX I5 ( .CD(DataRdy), .CK(N_19), .D(N_25), .Q(N_24), .SP(N_13) );
FD1P3DX I6 ( .CD(DataRdy), .CK(N_19), .D(N_24), .Q(N_23), .SP(N_13) );
FD1P3DX I7 ( .CD(DataRdy), .CK(N_19), .D(N_26), .Q(N_25), .SP(N_13) );
FD1P3DX I8 ( .CD(DataRdy), .CK(N_19), .D(N_38), .Q(N_26), .SP(N_13) );

endmodule // serialRxD
