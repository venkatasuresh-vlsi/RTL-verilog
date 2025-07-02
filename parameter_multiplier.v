module multiplier #(parameter N = 4)
     (
	 input [N-1:0] a, b,
	 output [2*N-1:0] result
	 );
	 assign result = a * b;
	endmodule
	