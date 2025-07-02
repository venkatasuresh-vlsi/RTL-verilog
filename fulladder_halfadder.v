module half_adder(
     input a, b,
	 output sum, cout
	 );
	 assign sum = a ^ b;
	 assign cout = a & b;
	endmodule
	
module full_adder(
     input a, b, cin,
	 output sum, cout
	 );
	 wire sum1,cout1, cout2;
	
	 half_adder HA1(.a(a), .b(b), .sum(sum1), .cout(cout1));
     half_adder HA2(.a(sum1), .b(cin), .sum(sum), .cout(cout2));
     
	 assign cout = cout1 | cout2;
	endmodule