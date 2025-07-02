module mux_2x1_using_gates(
     input [1:0] a,
     input sel,	
     output y
	 );
	 wire not_sel;
	 wire [1:0] and_out;
	 
	 not a1 (not_sel, sel);
	 
	 and a2 (and_out[0], a[0], not_sel);
	 and a3 (and_out[1], a[1], sel);
	 
	 or a4 (y, and_out[0], and_out[1]);
	endmodule
	 
	 