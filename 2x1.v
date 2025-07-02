module mux_2x1(
     input [1:0] a,
	 input sel,
	 output y
	 );
	 assign y = a[sel];
	endmodule