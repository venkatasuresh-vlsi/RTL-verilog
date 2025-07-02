module rs_latch_nor(
     input r, s,
	 output q, q_bar
	 );
	 assign q= ~(r | q_bar);
	 assign q_bar = ~(s | q);
	endmodule