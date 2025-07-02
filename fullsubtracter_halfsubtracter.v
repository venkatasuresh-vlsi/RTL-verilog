module half_subtracter(
     input a, b,
	 output difference, bout
	 );
	 assign difference = a ^ b;
	 assign bout = ~a & b;
	endmodule
	
module full_subtracter(
     input a, b, bin,
	 output difference, bout
	 );
	 wire difference1, bout1, bout2;
	 
	 half_subtracter HS1(.a(a), .b(b), .difference(difference1), .bout(bout1));
	 half_subtracter HS2(.a(difference1), .b(bin), .difference(difference), .bout(bout2));
	 
	 assign bout = bout1 | bout2;
	endmodule