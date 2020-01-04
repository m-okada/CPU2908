module tristateBuff1(
	input wire D,
	input wire nOE,
	output wire Q
);

assign Q=nOE==1'b0 ? D : 1'bz ;

endmodule

module tristateBuff8(
	input wire [7:0] D,
	input wire nOE,
	output wire [7:0] Q
);

assign Q=nOE==1'b0 ? D : 8'hz ;

endmodule


module tristateBuff16(
	input wire [15:0] D,
	input wire nOE,
	output wire [15:0] Q
);

assign Q=nOE==1'b0 ? D : 16'hz ;

endmodule
