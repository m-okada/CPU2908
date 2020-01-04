module mux2_1x4( A, B, S, Y );
	input [3:0] A;
	input [3:0] B;
	input S;
	output [3:0] Y;

MUX21 I4 ( .D0(A[3]), .D1(B[3]), .SD(S), .Z(Y[3]) );
MUX21 I3 ( .D0(A[2]), .D1(B[2]), .SD(S), .Z(Y[2]) );
MUX21 I2 ( .D0(A[1]), .D1(B[1]), .SD(S), .Z(Y[1]) );
MUX21 I1 ( .D0(A[0]), .D1(B[0]), .SD(S), .Z(Y[0]) );

endmodule // Mux2_1x4

module Mux2_1x8( A, B, S, Y );
	input [7:0] A;
	input [7:0] B;
	input S;
	output [7:0] Y;

MUX21 I8 ( .D0(A[7]), .D1(B[7]), .SD(S), .Z(Y[7]) );
MUX21 I7 ( .D0(A[6]), .D1(B[6]), .SD(S), .Z(Y[6]) );
MUX21 I6 ( .D0(A[5]), .D1(B[5]), .SD(S), .Z(Y[5]) );
MUX21 I5 ( .D0(A[4]), .D1(B[4]), .SD(S), .Z(Y[4]) );
MUX21 I4 ( .D0(A[3]), .D1(B[3]), .SD(S), .Z(Y[3]) );
MUX21 I3 ( .D0(A[2]), .D1(B[2]), .SD(S), .Z(Y[2]) );
MUX21 I2 ( .D0(A[1]), .D1(B[1]), .SD(S), .Z(Y[1]) );
MUX21 I1 ( .D0(A[0]), .D1(B[0]), .SD(S), .Z(Y[0]) );

endmodule // Mux2_1x8

module Mux2_1x16( A, B, S, Y );
	input [15:0] A;
	input [15:0] B;
	input S;
	output [15:0] Y;

MUX21 I18 ( .D0(A[15]), .D1(B[15]), .SD(S), .Z(Y[15]) );
MUX21 I17 ( .D0(A[14]), .D1(B[14]), .SD(S), .Z(Y[14]) );
MUX21 I16 ( .D0(A[13]), .D1(B[13]), .SD(S), .Z(Y[13]) );
MUX21 I15 ( .D0(A[12]), .D1(B[12]), .SD(S), .Z(Y[12]) );
MUX21 I14 ( .D0(A[11]), .D1(B[11]), .SD(S), .Z(Y[11]) );
MUX21 I13 ( .D0(A[10]), .D1(B[10]), .SD(S), .Z(Y[10]) );
MUX21 I12 ( .D0(A[9]), .D1(B[9]), .SD(S), .Z(Y[9]) );
MUX21 I11 ( .D0(A[8]), .D1(B[8]), .SD(S), .Z(Y[8]) );

MUX21 I8 ( .D0(A[7]), .D1(B[7]), .SD(S), .Z(Y[7]) );
MUX21 I7 ( .D0(A[6]), .D1(B[6]), .SD(S), .Z(Y[6]) );
MUX21 I6 ( .D0(A[5]), .D1(B[5]), .SD(S), .Z(Y[5]) );
MUX21 I5 ( .D0(A[4]), .D1(B[4]), .SD(S), .Z(Y[4]) );
MUX21 I4 ( .D0(A[3]), .D1(B[3]), .SD(S), .Z(Y[3]) );
MUX21 I3 ( .D0(A[2]), .D1(B[2]), .SD(S), .Z(Y[2]) );
MUX21 I2 ( .D0(A[1]), .D1(B[1]), .SD(S), .Z(Y[1]) );
MUX21 I1 ( .D0(A[0]), .D1(B[0]), .SD(S), .Z(Y[0]) );

endmodule // Mux2_1x16
