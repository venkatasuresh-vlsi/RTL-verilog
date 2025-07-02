module half_subtracter(
     input a, b,
	 output difference, bout
	 );
	 assign difference = a ^ b;
	 assign bout = ~a & b;
	endmodule