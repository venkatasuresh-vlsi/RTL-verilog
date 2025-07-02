module full_subtracter(
     input a, b, bin,
	 output difference, bout
	 );
	 assign difference = a ^ b ^ bin;
	 assign bout = (~a & b)|(b & bin)|(bin & ~a);
	endmodule