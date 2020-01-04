module decoder4(
	input wire selA,
	input wire selB,
	input wire nOE,

	output wire A,
	output wire B,
	output wire C,
	output wire D
);

wire [3:0]out ;

assign out=nOE==1'b1 ? 4'b0000 : outSel({selB, selA}) ;

assign A=~out[0] ;
assign B=~out[1] ;
assign C=~out[2] ;
assign D=~out[3] ;

function [3:0]outSel(
	input [1:0]sel
);
case(sel)
	2'b00 : outSel=4'b0001;
	2'b01 : outSel=4'b0010;
	2'b10 : outSel=4'b0100 ;
	2'b11 : outSel=4'b1000;
endcase
endfunction

endmodule


