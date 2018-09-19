module adder(clk, in, out);
	input [7:0] in;
	input clk;
	output reg [7:0] out;
	
	always@(*)
	begin
		out = in + 1;
	end
endmodule 
