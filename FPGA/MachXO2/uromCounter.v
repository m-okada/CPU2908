module uromCounter(
	input wire [9:0] preset,
	input wire load,
	input wire clk,
	output wire [9:0] Q
);

reg [9:0] count;
assign Q=count ;

always @(posedge clk)
begin
	if(load == 1'b1) count <= preset;
	else count <= count + 10'h1;
end

endmodule