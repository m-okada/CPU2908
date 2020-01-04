module ALU(
	input wire [7:0]A,
	input wire [7:0]B,
	input wire [3:0]S,
	input wire Cin,
	input wire M,
	
	output wire [7:0]YA,
	output wire [7:0]YL,
	output wire CY,
	output wire ZF,
	output wire OV,
	output wire SF
);

wire [7:0]lout ;
wire [7:0]aout ;

wire [7:0]yy ;
wire cc ;

ALU_L8 il(.S(S), .A(A), .B(B), .Y(lout)) ;
ALU_A8 ia(.Cin(Cin), .A(A), .B(lout), .Y(aout), .CY(cc)) ;

assign YL=lout ;

wire isSxR ;
wire isSXT ;
wire isx8 ;
wire LSel ;
wire norT ;
assign norT=~(isSxR | isSXT | isx8) ;

assign CY=~( ~(cc | isSxR) | (!A[0] & isSxR) | M) ;
//assign ZF=~(YA[7] | YA[6] | YA[5] | YA[4] | YA[3] | YA[2] | YA[1] | YA[0]) ;
zeroFlag zf(YA, ZF) ;
assign SF=YA[7] ;
assign OV=(~S[0] ^ (A[7] ^ B[7])) & (A[7] ^ YA[7]) ;

assign isSxR=!M & S[0] & !S[1] & S[2] & S[3] ;
assign isSXT=!M & S[0] & !S[1] & S[2] & !S[3] ;
assign isx8=!M & S[0] & S[1] & S[2] & !S[3] ;

tristateBuff8 tb0(
	.D({Cin,A[7],A[6],A[5],A[4],A[3],A[2],A[1]}),
	.nOE(~isSxR),
	.Q(yy)
) ;

tristateBuff8 tb1(
.D({8{A[7]}}),
.nOE(~isSXT),
.Q(yy)
) ;

tristateBuff8 tb2(
	.D({A[4],A[3],A[2],A[1],A[0],3'b0}),
	.nOE(~isx8),
	.Q(yy)
) ;

/*
tristateBuff8 tbL(
	.D(lout),
	.nOE(~(norT && (M==1'b1))),
	.Q(yy)
) ;
*/

tristateBuff8 tbA(
	.D(aout),
	.nOE(~(norT & (M==1'b0))),
	.Q(yy)
) ;

assign YA=yy ;

endmodule


module ALU_A8(
	input wire Cin,
	input wire [7:0]A,
	input wire [7:0]B,

	output wire [7:0]Y,
	output wire CY
);

assign {CY, Y}=A+B+{8'b0, Cin} ;

endmodule

module ALU_L8(
	input wire [3:0]S,
	input wire [7:0]A,
	input wire [7:0]B,

	output wire [7:0]Y
);

assign Y={
	selector({A[0],B[0]},S),
	selector({A[1],B[1]},S),
	selector({A[2],B[2]},S),
	selector({A[3],B[3]},S),
	selector({A[4],B[4]},S),
	selector({A[5],B[5]},S),
	selector({A[6],B[6]},S),
	selector({A[7],B[7]},S)
} ;

function selector;
	input [1:0]sel;
  	input [3:0]tbl;

	case ( sel )
   		2'b00 : selector=tbl[0] ;
		2'b01 : selector=tbl[1] ;
		2'b10 : selector=tbl[2] ;
		2'b11 : selector=tbl[3] ;
  	endcase
endfunction

endmodule

module adder16(
	input wire [15:0]A,
	input wire [15:0]B,
	input wire Cin,
	
	output wire [15:0]Y
);

wire cout ;

assign {cout, Y}=A+B+Cin ;

endmodule

module zeroFlag(
	input wire [7:0]A,
	output wire zf
);

assign zf=~(A[7] | A[6] | A[5] | A[4] | A[3] | A[2] | A[1] | A[0]) ;

endmodule


