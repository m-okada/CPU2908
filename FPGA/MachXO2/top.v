module top(
	inout wire [7:0] dataBus,
	output wire [3:0] nCS,		// chip select 0:ROM 1:RAM 2..:I/O
	input wire clk,
	input wire gclk1,

	input wire nReset,
	input wire nIRQ,
	input wire nTSC,
	
	input wire bootMode,
	
	output wire [19:0] addrOut,
	output wire clkQ,
	output wire clkE,

	output wire nRD,nAltRD,
	output wire nWR,nAltWR,
	output wire nIRQA,
	output wire IRQH,
	
	output wire [1:0]S,
	

	output wire SPI_CLK,
	output wire SPI_MISO,
	output wire SPI_MOSI,
	output wire [5:0]SPI_CS,

	output wire TxD,
	input wire RxD,
	output wire nRTS,
	input wire nCTS,
	output wire SerialClock,

	input wire [3:0]monitor_sel,
	output wire [7:0]UM
);
//wire [3:0]monitor_sel ;
wire [127:0]sig ;


wire [7:0]ExDataIn ;
wire [7:0]ExDataOut ;

wire [15:0]addr ;
wire [3:0] addrHi ;

//wire nwr_temp ;

assign addrOut[15:0] = addr ;
assign addrOut[19:16] = nTSC==1'b1 ? addrHi : 4'bz ;
assign dataBus = nWR==1'b0 ? ExDataOut : 8'bz ;

assign nAltRD = nRD ;
assign nAltWR = nWR ;

//	clock
wire SerialClock2 ;

wire iclk ;	//	Internal clock.
wire clk3 ;	//	clock enable
wire nReset1 ;
wire nReset2 ;
wire main_clk ;

// assign main_clk=gclk1 ;
 assign main_clk=clk ;

assign iclk = clk3 & main_clk ;

assign serlal_clk=clk ;

wire dclk ;

// divider2 div2(.clockIn(iclk),.nReset(nReset2),.clockOut(dclk)) ;
 assign dclk = iclk ;

FD1P3DX dff01(.CK(dclk), .D(clkQ), .Q(clkE), .CD(!nReset2), .SP(1'b1)) ;
FD1P3DX dff02(.CK(dclk), .D(!clkE), .Q(clkQ), .CD(!nReset2), .SP(1'b1)) ;

FD1P3DX dff03(.CK(main_clk), .D(1'b1), .Q(nReset1), .CD(!nReset), .SP(1'b1)) ;
FD1P3DX dff04(.CK(main_clk), .D(nReset1), .Q(nReset2), .CD(!nReset), .SP(1'b1)) ;
FD1P3DX dff05(.CK(main_clk), .D(nReset2), .Q(clk3), .CD(!nReset), .SP(1'b1)) ;

// serial clock
divider div01(.clockIn(serlal_clk), .nReset(nReset2), .clockOut(SerialClock)) ;


wire [7:0]bootROM_data ;
wire [7:0]io_data ;
wire [7:0]sramData ;

wire [7:0]net_dataSet ;


core i_core(
	.dataIn(ExDataIn),
	.clkE(clkE),
	.clkQ(clkQ),
	.nReset1(nReset1),
	.nReset2(nReset2),

	.nRD(nRD),
	.nWR(nWR),

	.dataOut(ExDataOut),
	.addrOut(addr),
	
	.nIRQ(nIRQ),
	.nTSC(nTSC & nReset2),
	.nIRQA(nIRQA),
	.IRQH(IRQH),
	
	.S(S),
		.sig(sig)
) ;

//	Serial port
wire [7:0]RxBuff ;
reg [7:0]TxBuff ;

wire nRDRxD ;
wire nWRTxD ;

always @(posedge nWRTxD)begin
	TxBuff <= ExDataOut ;
end

wire RxRdy ;
wire RxDclr ;
wire RxBusy ;
wire RxReset ;

wire TxRdy ;

wire [7:0]pout ;
wire rxempty ;

wire [7:0]uartStatusReg ;
assign uartStatusReg ={RxBusy, RxRdy, 1'b0, 1'b0, TxRdy, 3'b0} ;

//	serialPort I/O
wire [15:0]ioaddr ;

register16 ioaddr_reg(.D(addr), .clk(~clkQ),  .nOE(1'b0), .Q(ioaddr), .nWE(1'b0)) ;
assign nRDRxD = ioaddr[15:0]==16'h0F01 ? nRD : 1'b1 ;
assign nWRTxD = ioaddr[15:0]==16'h0F01 ? nWR : 1'b1 ;

assign nRTS = ~RxRdy ;

FD1P3DX dff06(.CK(~clkQ), .D(SerialClock), .Q(SerialClock2), .CD(~nReset), .SP(1'b1)) ;

FD1P3DX dff07(.CK(nRDRxD), .D(1'b1), .Q(RxDclr), .CD(~clkQ), .SP(1'b1)) ;

serialRxD rxd01(.dataIn(RxD), .reset(1'b1), .clk(SerialClock2),
//	.ParallelOut({pout[0],pout[1],pout[2],pout[3],pout[4],pout[5],pout[6],pout[7]}),
	.ParallelOut(pout),
	.DataRdy(RxRdy), .clr(RxDclr), .rxBusy(RxBusy), .Empty(rxempty));

//serialTxD txd01(.in({TxBuff[0],TxBuff[1],TxBuff[2],TxBuff[3],TxBuff[4],TxBuff[5],TxBuff[6],TxBuff[7]}),
//	.reset(nWRTxD), .clk(SerialClock), .serialOut(TxD), .TxRdy(TxRdy)) ;
serialTxD txd01(.in(TxBuff), .reset(nWRTxD), .clk(SerialClock2), .serialOut(TxD), .TxRdy(TxRdy)) ;

assign sig[15:8]=RxBuff ;
assign sig[40]=RxRdy ;

assign RxBuff =	pout ;

register8AC r4() ;



//	if upper 11bit eq 0 internal ROM
bootROM rom0(.Address(addr[4:0]), .Q(bootROM_data)) ;

wire sramWE ;
assign sramWE = addr[15:7]==9'b111111111 ? ~nWR : 1'b0 ;
assign nCS[1] = addr[15:7]==9'b111111111 ? 1'b0 : 1'b1 ;

assign nCS[0] = (addr[15:12]==4'b0 | addr[15:7]==9'b111111111) ? 1'b1 : 1'b0 ;

sram ram01(.Clock(~clkQ), .ClockEn(~nCS[1]), .Reset(~nReset2), .WE(sramWE), .Address(addr[6:0]),
	.Data(ExDataOut), .Q(sramData)) ;

assign ExDataIn =
	addr[15:5]==11'h000 ? bootROM_data :
//	addr[15:8]==8'h0f ? io_data :
	addr[15:0]==16'h0F00 ? uartStatusReg : 
	addr[15:0]==16'h0F01 ? RxBuff : 
	addr[15:7]==9'b111111111 ? sramData:
	dataBus ;


/*
8x16 sig monitor
*/
assign UM=
	dataBus ;
//	{SerialClock2, nRD, nRDRxD, RxDclr, rxempty, clkQ, addr[0], RxD} ;
/*
	monitor_sel==4'b0000 ? ExDataIn :	// 0
//	monitor_sel==4'b0000 ? {addr[8],addr[9],addr[10],addr[11],addr[12],addr[13],addr[14],addr[15]} :	// 0
	monitor_sel==4'b0001 ? sig[7:0] :	//	Sequencer control signal.
	monitor_sel==4'b0010 ? sig[15:8] :	//	rxbuff
//	monitor_sel==4'b0011 ? {addr[8],addr[9],addr[10],addr[11],addr[12],addr[13],addr[14],addr[15]} :	// 3
	monitor_sel==4'b0011 ? sig[23:16] :
//	monitor_sel==4'b0100 ? {addr[0],addr[1],addr[2],addr[3],addr[4],addr[5],addr[6],addr[7]} :	// 4
	monitor_sel==4'b0100 ? sig[31:24] :
	monitor_sel==4'b0101 ? sig[39:32] :	// 5 exbus
	monitor_sel==4'b0110 ? sig[47:40] :	//	assign sig[47:43] = {flag[0],flag[1],flag[2],flag[4], flga[7], jmpOpe, noJump} ;
	monitor_sel==4'b0111 ? sig[55:48] :
	monitor_sel==4'b1000 ? sig[63:56] :	// 8
//	monitor_sel==4'b1000 ? 8'h5a :

	monitor_sel==4'b1001 ? sig[71:64] :
	monitor_sel==4'b1010 ? sig[79:72] :	// A
	monitor_sel==4'b1011 ? sig[87:80] :
	monitor_sel==4'b1100 ? sig[95:88] : // UM31-
	monitor_sel==4'b1101 ? sig[103:96] :	//	CP
	monitor_sel==4'b1110 ? sig[111:104] :
//	{SerialClock, TxD, RxD, nWRTxD, nRDRxD, RxBusy, rxempty, RxRdy} ;
//	{SerialClock, nWRTxD, nRDRxD, RxBusy, rxempty, TxD, RxD, RxRdy} ;
//	{SerialClock2, nWRTxD, nRDRxD, RxBusy, rxempty, TxD, RxRdy, RxD} ;

	{SerialClock2, nRD, nRDRxD, RxDclr, rxempty, clkE, addr[0], RxD} ;
//	{SerialClock2, nRD, nRDRxD, RxDclr, rxempty, clkE, addr[0], clkQ} ;

// 	{RxRdy, rxempty, RxBusy, nRDRxD, nWRTxD, RxD, TxD, SerialClock} ;//RxDclr
	//8'b11111111 ;
*/

endmodule

/* Clock divider Main.*/
module divider2(
	input wire clockIn,
	input wire nReset,
	output wire clockOut
) ;
reg [20:0]counter ;
// assign clockOut = counter[20] ;
 assign clockOut = counter[2] ;

always @(posedge clockIn or negedge nReset)begin
	if(nReset == 1'b0)begin
		counter <= 21'b0 ;
	end
	else begin
		counter <= counter + 21'b1 ;
	end
end


endmodule

/* Clock divider */
module divider(
	input wire clockIn,
	input wire nReset,
	output wire clockOut
) ;
reg [7:0]counter ;
assign clockOut = counter[7] ;	//	7:19200 8:9600

always @(posedge clockIn or negedge nReset)begin
	if(nReset == 1'b0)begin
		counter <= 8'b0 ;
	end
	else begin
		counter <= counter + 8'b1 ;
	end
end


endmodule


/*
*/
module bankCtrl(
	input wire nWR,
	input wire [15:0]addrIn,
	input wire data,
	
	output wire [20:0] addrOut
);
reg [31:0]bank ;
wire [2:0]port ;

assign port =
	addrIn==16'h0FF1 ? 3'b001 : 
	addrIn==16'h0FF2 ? 3'b010 :
	addrIn==16'h0FF3 ? 3'b011 :
	addrIn==16'h0FF4 ? 3'b100 : 3'b000 ;

always @(negedge nWR) begin
	case(port)
	3'b001 : bank <= {bank[31:8], data} ;
	3'b010 : bank <= {bank[31:16], data, bank[7:0]} ;
	3'b011 : bank <= {bank[31:24], data, bank[15:0]} ;
	3'b100 : bank <= {data, bank[23:0]} ;
	default: ;
	endcase
end


endmodule


// reg [7:0] MMUPage ;
/*
module MMU(
	input wire [3:0]MMUaddr,
	input wire nReset,
	input wire nCS,
	input wire [7:0]MMUdata,
	input wire nWR,
	
	input [15:0]addrIn,
	output [19:0]addrOut
);
wire [11:0]addr_lo ;
wire [7:0]addr_hi ;

reg [7:0] pageno ;
reg [127:0] page1 ;
reg [127:0] page2 ;
reg [127:0] page3 ;

//assign addrOut = {} ;

always @(posedge nWR or negedge nReset)begin
	if(nReset==1'b0) begin
		pageno <= 8'b0 ;
		page1 <= 128'b0 ;
		page2 <= 128'b0 ;
		page3 <= 128'b0 ;
	end
	else begin
		if(MMUaddr==4'b0)begin
			pageno <= MMUdata ;
		end
		else begin
		end
	end
end

endmodule
*/

/*
Memory map.

0000-0EFF BOOT ROM,SYSTEM,BIOS
0F00-0FFF I/O
	0F00-0F01 SERIAL PORT
	0F02 TIMER
	0F04 CALENDER PCF2129
	0F06 SPI R/W
	0F07 SPI /SS 7..0
	0F08 SPI Mode select
	0FE0-0FEF MMU
		0FE0 TASKNO
		0FE1-0FEF Page
2000-FFFF RAM

*/