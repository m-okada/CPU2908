
module executer(
	input wire [7:0]dataInE,
	input wire Q,
	input wire E,
	input wire nQ,
	input wire nE,
	input wire [23:0]regCtrl,

	output wire [7:0] dataOutE,
	output wire [15:0] addrOutE,
	output wire [7:0]flagOut,
	
	output wire [7:0]sigmon,
	output wire [15:0]CPMon
);


executer_s Executer_s(
	.Q(Q), .E(E), .nQ(nQ), .nE(nE),

	.dataIn({
		dataInE[0],dataInE[1],dataInE[2],dataInE[3],
		dataInE[4],dataInE[5],dataInE[6],dataInE[7]
	}),

	.dataOut({
		dataOutE[0],dataOutE[1],dataOutE[2],dataOutE[3],
		dataOutE[4],dataOutE[5],dataOutE[6],dataOutE[7]
	}),
	
	.addrOut({
		addrOutE[0],addrOutE[1],addrOutE[2],addrOutE[3],
		addrOutE[4],addrOutE[5],addrOutE[6],addrOutE[7],
		addrOutE[8],addrOutE[9],addrOutE[10],addrOutE[11],
		addrOutE[12],addrOutE[13],addrOutE[14],addrOutE[15]
	}),

	.flagOut({
		flagOut[0],flagOut[1],flagOut[2],flagOut[3],
		flagOut[4],flagOut[5],flagOut[6],flagOut[7]
	}),

	.misc({regCtrl[21],regCtrl[22]}),
	.buffSel({regCtrl[18],regCtrl[19]}),
	.flagLatchEn(regCtrl[17]),
	.stfr(regCtrl[16]),
	.writeBackSel({regCtrl[13],regCtrl[14],regCtrl[15]}),
	.writeBackEnable(regCtrl[12]),
	.wordRegSelector({regCtrl[10],regCtrl[11]}),
	.byteRegSelector({regCtrl[7],regCtrl[8],regCtrl[9]}),
	.ALU_M(regCtrl[6]),
	.ALUOpecode({regCtrl[2],regCtrl[3],regCtrl[4],regCtrl[5]}),
	.cySelector({regCtrl[0],regCtrl[1]}),

	.writeBack(sigmon),
	.CPMonitor(CPMon)
) ;

endmodule


//	Address Register
module addrReg(
	input wire [15:0]in,
	input wire [7:0]writeBack,
	input wire [1:0]outSel,
	input wire clk,
	
	output wire [15:0]out,

	output wire [15:0]CPMonitor
);

wire [3:0]outreg;

assign outreg=outReg(outSel) ;

register16 A0(.D(in), .Q(out), .clk(clk), .nWE(~writeBack[4]), .nOE(~outreg[0])) ;
register16 A1(.D(in), .Q(out), .clk(clk), .nWE(~writeBack[5]), .nOE(~outreg[1])) ;
register16 CP(.D(in), .Q(out), .clk(clk), .nWE(~writeBack[6]), .nOE(~outreg[2]), .subPort(CPMonitor)) ;
register16 SP(.D(in), .Q(out), .clk(clk), .nWE(~writeBack[7]), .nOE(~outreg[3])) ;

function [3:0]outReg(
	input [1:0]sel
);
case(sel)
	2'b00 : outReg=4'b0001 ;
	2'b01 : outReg=4'b0010 ;
	2'b10 : outReg=4'b0100 ;
	2'b11 : outReg=4'b1000 ;
	default : outReg = 4'b0000 ;
endcase
endfunction

endmodule


// Data Register
module dataReg(
	input wire [7:0]in,
	input wire [7:0]writeBack,
	input wire [2:0]outSel,
	input wire clk,
	
	output wire [7:0]out
);

wire [3:0]outreg;
wire [3:0]tmp ;

assign tmp=outReg(outSel[1:0]) ;
assign outreg=outSel[2]==1'b0 ? tmp : 4'b0000 ;

register8 R0(.D(in), .Q(out), .clk(clk), .nWE(~writeBack[0]), .nOE(~outreg[0])) ;
register8 R1(.D(in), .Q(out), .clk(clk), .nWE(~writeBack[1]), .nOE(~outreg[1])) ;
register8 R2(.D(in), .Q(out), .clk(clk), .nWE(~writeBack[2]), .nOE(~outreg[2])) ;
register8 R3(.D(in), .Q(out), .clk(clk), .nWE(~writeBack[3]), .nOE(~outreg[3])) ;

function [3:0]outReg(
	input [1:0]sel
);
case(sel)
	2'b00 : outReg=4'b0001 ;
	2'b01 : outReg=4'b0010 ;
	2'b10 : outReg=4'b0100 ;
	2'b11 : outReg=4'b1000 ;
	default : outReg = 4'b0000 ;
endcase
endfunction

endmodule


module writeBackSelector(
	input wire wbEn,
	input wire E,
	input wire nQ,
	input wire [2:0] selector,
	
	output wire [7:0]writeBack,
	output wire writeClock
);


assign writeClock=(wbEn & nQ & E) ;
assign writeBack=wbEn==1'b1 ? wb(selector) : 8'b0 ;


function [7:0]wb(
	input [2:0]selector
);
begin
	case (selector)
		3'h0 : wb=8'b00000001 ;
		3'h1 : wb=8'b00000010 ;
		3'h2 : wb=8'b00000100 ;
		3'h3 : wb=8'b00001000 ;
		3'h4 : wb=8'b00010000 ;
		3'h5 : wb=8'b00100000 ;
		3'h6 : wb=8'b01000000 ;
		3'h7 : wb=8'b10000000 ;
	endcase
end
endfunction
endmodule



module splitter16_8x2(
	input wire [15:0]D,

	output wire [7:0]Hi,
	output wire [7:0]Lo
) ;

assign Hi=D[15:8] ;
assign Lo=D[7:0] ;

endmodule

module splitter8x2_16(
	input wire [7:0]Hi,
	input wire [7:0]Lo,
	
	output wire [15:0]Q
);

assign Q={Hi,Lo} ;

endmodule

module addrEx(
	input wire [15:0]offset,
	input wire [15:0]base,
	input wire [3:0]op,
	
	output wire [15:0]addrOut
);

//assign addrOut=base & offset ;
wire mx0 ;
wire mx1 ;
wire sign ;

wire [15:0]offsetE ;
wire [15:0]baseE ;

assign baseE=base & {16{~op[3]}} ;
/* MUX41 m0(
	.D0(1'b1), .D1(1'b1), .D2(offset[7]), .D3(1'b0),
	.SD1(op[0]), .SD2(op[1]), .Z(sign)
); */

assign sign = ~((op[1] | ~offset[7]) & op[0]) ;

addrMux x1(.in(offset[7:0]), .sel(op[1]), .b(sign), .out(offsetE[7:0])) ;
addrMux x0(.in(offset[15:8]), .sel(op[0] | op[1]), .b(sign), .out(offsetE[15:8])) ;

wire cy ;

assign {cy, addrOut}=offsetE+baseE + {15'b0, op[2]} ;

endmodule


module addrMux(
	input wire [7:0]in,
	input wire sel,
	input wire b,
	
	output wire [7:0]out
);

assign out={8{sel}} & {8{b}} | {8{!sel}} & in ;

endmodule

module internalBusSelector(
);

endmodule

module flagReg(
	input wire [7:0]busIn,
	input wire inputSel,
	input wire latchEn,
	input wire clk,
	input wire cy,
	input wire ov,
	input wire zf,
	input wire sf,
	input wire intEnable,
	
	output wire [7:0]flagOut,
	output wire carryOut
);

reg [7:0] flagRegister ;
wire [7:0]flagT ;

assign flagOut=flagRegister ;
assign carryOut=flagRegister[0] ;

assign flagT=inputSel==1'b0 ? {sf, zf, intEnable, 1'b0, ov, 1'b0, 1'b1, cy} : busIn ;

always @(posedge clk)begin
	if(latchEn==1'b0) flagRegister <= flagT ;
end

endmodule

module const0(
	output wire [7:0]out
);

assign out=8'h0 ;

endmodule

