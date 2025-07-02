module rs_latch_nand(
     input r, s,
	 output q, q_bar
	 );
	 assign q = ~(r & q_bar);
	 assign q_bar = ~(s & q);
	endmodule