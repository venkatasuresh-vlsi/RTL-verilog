module half_adder(
     input a, b,
	 output sum, carry
	 );
	 assign sum = a ^ b;
	 assign carry = a & b;
	endmodule
module full_adder(
     input a, b, cin,
	 output sum, cout
	 );
	 assign sum = a ^ b ^ cin;
	 assign cout = (a & b)|(b & cin)|(cin & a);
	endmodule
module array_multiplier(
     input [3:0] a, b,
	 output [7:0] product
	 );
	 wire [15:0] partial_p;
	 wire [11:0] sum1, carry1;
	 
	 // stage 1
	 assign partial_p[0] = b[0] & a[0];
	 assign partial_p[1] = b[0] & a[1];
	 assign partial_p[2] = b[0] & a[2];
	 assign partial_p[3] = b[0] & a[3];
	 
	 //stage 2
	 assign partial_p[4] = b[1] & a[0];
	 assign partial_p[5] = b[1] & a[1];
	 assign partial_p[6] = b[1] & a[2];
	 assign partial_p[7] = b[1] & a[3];
	 half_adder ha1 (.a(partial_p[1]), .b(partial_p[4]), .sum(sum1[0]), .carry(carry1[0]));
	 full_adder fa1 (.a(partial_p[2]), .b(partial_p[5]), .cin(carry1[0]), .sum(sum1[1]), .cout(carry1[1]));
	 full_adder fa2 (.a(partial_p[3]), .b(partial_p[6]), .cin(carry1[1]), .sum(sum1[2]), .cout(carry1[2]));
	 half_adder ha2 (.a(carry1[2]), .b(partial_p[7]), .sum(sum1[3]), .carry(carry1[3]));
	 
	 //stage 3
	 assign partial_p[8] = b[2] & a[0];
	 assign partial_p[9] = b[2] & a[1];
	 assign partial_p[10] = b[2] & a[2];
	 assign partial_p[11] = b[2] & a[3];
	 half_adder ha3 (.a(sum1[1]), .b(partial_p[8]), .sum(sum1[4]), .carry(carry1[4]));
	 full_adder fa3 (.a(sum1[2]), .b(partial_p[9]), .cin(carry1[4]), .sum(sum1[5]), .cout(carry1[5]));
	 full_adder fa4 (.a(sum1[3]), .b(partial_p[10]), .cin(carry1[5]), .sum(sum1[6]), .cout(carry1[6]));
	 full_adder fa5 (.a(carry1[3]), .b(partial_p[11]), .cin(carry1[6]), .sum(sum1[7]), .cout(carry1[7]));
	 
	 //stage 4
	 assign partial_p[12] = b[3] & a[0];
	 assign partial_p[13] = b[3] & a[1];
	 assign partial_p[14] = b[3] & a[2];
	 assign partial_p[15] = b[3] & a[3];
	 half_adder ha4 (.a(sum1[5]), .b(partial_p[12]), .sum(sum1[8]), .carry(carry1[8]));
	 full_adder fa6 (.a(sum1[6]), .b(partial_p[13]), .cin(carry1[8]), .sum(sum1[9]), .cout(carry1[9]));
	 full_adder fa7 (.a(sum1[7]), .b(partial_p[14]), .cin(carry1[9]), .sum(sum1[10]), .cout(carry1[10]));
	 full_adder fa8 (.a(carry1[7]), .b(partial_p[15]), .cin(carry1[10]), .sum(sum1[11]), .cout(carry1[11]));
	 
	 assign product[0] = partial_p[0];
	 assign product[1] = sum1[0];
	 assign product[2] = sum1[4];
	 assign product[3] = sum1[8];
	 assign product[4] = sum1[9];
	 assign product[5] = sum1[10];
	 assign product[6] = sum1[11];
	 assign product[7] = carry1[11];
	endmodule
	 
	 

	 