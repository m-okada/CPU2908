module core(
	input wire [7:0] dataIn,
	input wire clkQ,
	input wire clkE,

	input wire nReset1,
	input wire nReset2,
	input wire nIRQ,
	input wire nTSC,
	
	output wire [15:0] addrOut,
	output wire [7:0] dataOut,
	output wire nRD,
	output wire nWR,
	output wire nIRQA,
	output wire IRQH,
	output wire [1:0]S,
	
//	output wire [15:0]testPin,
	output wire [127:0]sig
);

//	clock
wire Q ;
wire E ;
wire nQ ;
wire nE ;

assign nQ=~clkQ ;
assign nE=~clkE ;
assign Q=~nQ ;
assign E=~nE ;

wire nread_ff ;
wire nwrite_ff ;
wire nirq_ff ;

wire data_ctrl ;

wire [7:0]datain ;
assign datain=dataIn ;

wire [3:0] exbus_ctrl ;

wire [15:0] addr_ibus ;
wire [15:0] addr_ibus2 ;

wire [7:0] data_ibus ;
wire [7:0] data_ibus2 ;

wire [7:0] data_es_bus ;

wire [23:0] reg_ctrl_es ;

wire [7:0]flag ;
// assign testPin[4:1]=exbus_ctrl ;


//assign data_es_bus=dataIn ;

//	External BUS Control
register8 dara_reg(.D(data_ibus), .clk(clkE),  .nOE(1'b0), .Q(data_ibus2), .nWE(~exbus_ctrl[2])) ;
tristateBuff8 data_buff(.D(data_ibus2), .nOE(~data_ctrl), .Q(dataOut)) ;

// register16 addr_reg(.D(addr_ibus), .clk(clkE),  .nOE(~nTSC), .Q(addr_ibus2), .nWE(~exbus_ctrl[3])) ;
 register16 addr_reg(.D(addr_ibus), .clk(clkE),  .nOE(~nTSC), .Q(addrOut), .nWE(~exbus_ctrl[3])) ;
// tristateBuff16 addr_buff(.D(addr_ibus2), .nOE(~nTSC), .Q(addrOut)) ;

register1as sig_reg01(.D(~(exbus_ctrl[0] & ~exbus_ctrl[1])), .clk(E), .nOE(1'b0), .Q(nread_ff), .nWE(1'b0), .clr(nReset2)) ;
register1as sig_reg02(.D(~(~exbus_ctrl[0] & exbus_ctrl[1])), .clk(E), .nOE(1'b0), .Q(nwrite_ff), .nWE(1'b0), .clr(nReset2)) ;
register1as sig_reg03(.D(~(exbus_ctrl[0] & exbus_ctrl[1])), .clk(E), .nOE(1'b0), .Q(nirq_ff), .nWE(1'b0), .clr(nReset2)) ;

tristateBuff1 tb1(.D(nread_ff), .nOE(~nTSC), .Q(nRD)) ;
tristateBuff1 tb2(.D(nwrite_ff), .nOE(~nTSC), .Q(nWR)) ;
tristateBuff1 tb3(.D(nirq_ff), .nOE(~nTSC), .Q(nIRQA)) ;



register1 data_ctrl_ff(.D(~exbus_ctrl[0] & exbus_ctrl[1]), .clk(nQ), .nOE(1'b0), .nWE(1'b0), .Q(data_ctrl)) ;

assign sig[35:32] = exbus_ctrl ;
assign sig[31:16] = addr_ibus2 ;
assign sig[47:43] = {flag[7],flag[6],flag[5],flag[3], flag[0]} ;


sequencer Sequencer(
	.dataInS(datain),
	.dataOutS(data_es_bus),
	
	.regCtrl(reg_ctrl_es),
	
	.flagIn(flag),
	.exbusCtrl(exbus_ctrl),

	.Q(Q), .E(E), .nQ(nQ), .nE(nE),
	
	.IRQH(IRQH),
	.S(S),

	.nIRQ(nIRQ),
	.nReset(nReset1),
	.nReset2(nReset2),
	.sig(sig)
) ;


executer Executer(
	.dataInE(data_es_bus),
	.dataOutE(data_ibus),
	.addrOutE(addr_ibus),
	.regCtrl(reg_ctrl_es),
	
	.flagOut(flag),
	
	.Q(Q), .E(E), .nQ(nQ), .nE(nE),

	.sigmon(sig[63:56]),
	.CPMon(sig[111:96])
) ;


endmodule

