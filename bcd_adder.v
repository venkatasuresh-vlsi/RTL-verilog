module bcd_adder(
     input [3:0] a, b,
	 input cin,
	 output [3:0] sum,
	 output cout
	 );
	 wire [4:0] binary_sum;
	 wire [4:0] corrected_sum;
     wire carry_correction;
     
     assign binary_sum = a + b + cin;
     assign carry_correction = (binary_sum > 9) ? 1 : 0;
     assign corrected_sum = (carry_correction) ? (binary_sum + 6): binary_sum;
	 
	 assign sum = corrected_sum[3:0];
	 assign cout = corrected_sum[4];
	endmodule
	 