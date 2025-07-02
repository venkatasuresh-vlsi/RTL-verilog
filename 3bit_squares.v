module squares_3bit_numbers(
     input [2:0] binary_in,
	 output reg [5:0] squares_out
	 );
	 integer i;
	 
	 always @(*) begin
	     squares_out = 6'b0;
		 squares_out = binary_in * binary_in;
		end
	endmodule