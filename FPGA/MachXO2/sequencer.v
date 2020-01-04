module sequencer(
	input wire [7:0]dataInS,
	input wire nReset,
	input wire nReset2,
	input wire Q,
	input wire E,
	input wire nQ,
	input wire nE,
	input wire nIRQ,
	input wire [7:0]flagIn,
	
	output wire [7:0]dataOutS,
	output wire [23:0]regCtrl,
	output wire [3:0]exbusCtrl,
	output wire [1:0]S,
	output wire IRQH,
	output wire fetchOut,
	
	output wire [7:0]uromIDX,
	output wire [127:0]sig,
	output wire [31:0]UM
);

wire fetchSig ;
assign fetchOut=fetchSig ;

// reg [7:0]uromAddr ;
wire [31:0]urom ;
wire [9:0]uromAddr ;

reg [7:0]ope_code ;
// reg [7:0]dreg ;
reg fetch_ff ;

reg nirq_ff ;
wire s_lo, s_hi ;
wire fetch ;
wire fetchClk ;
assign fetchClk=fetch & Q ;

assign S={s_hi, s_lo} ;

// assign IRQH=~nirq_ff ;

always @(posedge Q)begin
	fetch_ff<=fetch ;
end

always @(posedge Q or negedge nReset)begin
	if(!nReset)begin
		ope_code<=8'he0 ;//		uromAddr <= 8'b0 ;
	end
	else begin
		ope_code<=dataInS ;
//		uromAddr <= uromAddr + 8'b1 ;
	end
end


/*
always @(posedge nIRQ or negedge nReset)begin
	if(!nReset) nirq_ff<=1'b0 ;
	else nirq_ff<=1'b1 ;
end
*/
assign sig[2]=nQ ;
assign sig[3]=nE ;
assign sig[6]=UM[0] ;

/*
assign sig[71:64] = {UM[24],UM[25],UM[26],UM[27],UM[28],UM[29],UM[30],UM[31]} ;
assign sig[79:72] = {UM[16],UM[17],UM[18],UM[19],UM[20],UM[21],UM[22],UM[23]} ;
assign sig[87:80] = {UM[8],UM[9],UM[10],UM[11],UM[12],UM[13],UM[14],UM[15]} ;
assign sig[95:88] = {UM[0],UM[1],UM[2],UM[3],UM[4],UM[5],UM[6],UM[7]} ;
*/

assign sig[95:88] = regCtrl[23:16] ;
assign sig[87:80] = regCtrl[15:8] ;
assign sig[79:72] = regCtrl[7:0] ;


//wire [9:0]CT;
//assign sig[15:8]=CT[9:2] ;

sequencer_s Sequencer_s(
	.Q(Q), .E(E), .nQ(nQ), .nE(nE),
	.dataIn({
		dataInS[0],dataInS[1],dataInS[2],dataInS[3],
		dataInS[4],dataInS[5],dataInS[6],dataInS[7]
	}),
	.dataOut({
		dataOutS[0],dataOutS[1],dataOutS[2],dataOutS[3],
		dataOutS[4],dataOutS[5],dataOutS[6],dataOutS[7]
	}),

	.regCtrl({
		regCtrl[0],regCtrl[1],regCtrl[2],regCtrl[3],
		regCtrl[4],regCtrl[5],regCtrl[6],regCtrl[7],
		regCtrl[8],regCtrl[9],regCtrl[10],regCtrl[11],
		regCtrl[12],regCtrl[13],regCtrl[14],regCtrl[15],
		regCtrl[16],regCtrl[17],regCtrl[18],regCtrl[19],
		regCtrl[20],regCtrl[21],regCtrl[22],regCtrl[23]
	}),


	.exbusCtrl({exbusCtrl[0],exbusCtrl[1],exbusCtrl[2],exbusCtrl[3]}),

	.flagIn({flagIn[0],flagIn[1],flagIn[2],flagIn[3],flagIn[4],flagIn[5],flagIn[6],flagIn[7]}),
	.nIRQ(nIRQ),
	.IRQH(IRQH),
	.nReset(nReset),
	.nReset2(nReset2),
	.s_lo(s_lo), .s_hi(s_hi),
	.fetchOut(fetchSig),
	
	.stateClk(sig[0]),
	.StepCtrl(sig[1]),
	.countClk(sig[4]),
	.jumpOpe(sig[42]),
	.noJump(sig[41]),
//	.uromIDX(sig[15:8]),

	.CT(CT),
	.UM(UM)) ;


endmodule

module uSplitter(
	input wire [31:0]in,
	output wire [23:0]uOut,
	output wire [7:0]outA,
	output wire [7:0]outB
);

assign uOut={
	in[31], in[30], in[29], in[28], in[27], in[26], in[25], in[24],
	in[23], in[22], in[21], in[20], in[19], in[18], in[9], in[8],
	in[7], in[6], in[5], in[4], in[3], in[2], in[1], in[0]
} ;

assign outA=in[17:10] ;
assign outB=in[17:10] ;

endmodule

/*
module uDeSplitter(
	input wire [23:0]in,
	input wire [7:0]inB,
	output wire [31:0]out
);
assign out={in[23:10], inB[7:0], in[9:0]} ;

endmodule
*/

module urSplitter(
	input wire [31:0]in,
	output wire [23:0]regCtrl,
	output wire [3:0]exBusCtrl,
	output wire fetch
);

assign regCtrl=in[23:0] ;
assign exBusCtrl=in[29:26] ;
assign fetch=in[18] & in[19] ;

endmodule


module jccSelector(
	input wire [7:0]opeCode,
	input wire jumpOpe,
	input wire noJump,
	output wire [7:0]opeIdx
);
assign opeIdx=jumpOpe==1'b0 ? opeCode :
{opeCode[7],opeCode[6],opeCode[5],opeCode[4],1'b1,1'b1,1'b1,noJump} ;

endmodule


module const80(
	output wire [7:0]Q
);

assign Q=8'h80 ;

endmodule


module uConstSel(
input wire [31:0] ua,
input wire u17,
input wire u12,
output wire [7:0] xc,
output wire [31:0] xb
) ;

assign xb={ua[31:18], u17, ua[16:13], u12,ua[11:0]} ;
assign xc={ua[17:10]} ;

endmodule


module constEx(
	input wire bit1,
	input wire bit0,
	output wire [7:0]Q
);

assign Q={6'b1110_00, bit1, bit0} ;

endmodule
