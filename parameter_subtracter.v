module adder #(parameter N = 4)
     (
	 input [N-1:0] a, b, 
	 output [N-1:0] diff,
	 output bout
	 );
	 assign {bout, diff} = {1'b0, a} - {1'b0, b};
	endmodule
	