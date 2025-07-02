module adder #(parameter N = 5)
     (
	 input [N-1:0] a, b, 
	 output [N-1:0] sum,
	 output cout
	 );
	 assign {cout, sum} = a + b;
	endmodule