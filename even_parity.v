module even_parity_generator(
     input [3:0] a,
	 output p
	 );
	 assign p = a[3] ^ a[2] ^ a[1] ^ a[0];
	endmodule