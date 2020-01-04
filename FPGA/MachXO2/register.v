module register1(
	input wire D,
	input wire clk,
	input wire nOE,
	input wire nWE,
	
	output wire Q
);

reg  R ;

always @(posedge clk) begin
	if(nWE==1'b0) R<=D;
end

assign Q=nOE==1'b0 ? R : 1'hz ;


endmodule

module register1as(
	input wire D,
	input wire clk,
	input wire nOE,
	input wire nWE,
	input wire clr,
	
	output wire Q
);

reg  R ;

always @(posedge clk or negedge clr) begin
	if(clr==1'b0) R<=1'b1 ;
	else
		if(nWE==1'b0) R<=D;
end

assign Q=nOE==1'b0 ? R : 1'hz ;


endmodule
module register8(
	input wire [7:0]D,
	input wire clk,
	input wire nOE,
	input wire nWE,

	output wire [7:0]subPort,
	output wire [7:0]Q
);

reg [7:0] R ;

assign subPort=R ;

always @(posedge clk) begin
	if(nWE==1'b0) R<=D;
end

assign Q=nOE==1'b0 ? R : 8'hz ;


endmodule

//	Async clear
module register8AC(
	input wire [7:0]D,
	input wire clk,
	input wire nOE,
	input wire nWE,
	input wire clr,

	output wire [7:0]subPort,
	output wire [7:0]Q
);

reg [7:0] R ;

assign subPort=R ;

always @(posedge clk, posedge clr) begin
	if(clr)
		R<=8'b0 ;
	else
		if(nWE==1'b0) R<=D;
end

assign Q=nOE==1'b0 ? R : 8'hz ;


endmodule

module register16(
	input wire [15:0]D,
	input wire clk,
	input wire nOE,
	input wire nWE,

	output wire [15:0]subPort,
	output wire [15:0]Q
);

reg [15:0] R ;

assign subPort=R ;

always @(posedge clk) begin
	if(nWE==1'b0) R<=D;
end

assign Q=nOE==1'b0 ? R : 16'hz ;


endmodule


module register32(
	input wire [31:0]D,
	input wire clk,
	input wire nOE,
	input wire nWE,
	input wire clr,
	output wire [31:0]Q
);

reg [31:0] R ;

always @(posedge clk or posedge clr) begin
	if(clr) begin
		R<=32'h0 ;
	end
	else begin
		if(nWE==1'b0) R<=D;
	end
end

//assign Q=nOE==1'b0 ? R : 32'hz ;
assign Q=R ;

endmodule



