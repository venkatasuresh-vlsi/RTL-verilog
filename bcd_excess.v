module bcd_excess_3_converter(
     input [3:0] bcd_in,
	 output [3:0] excess_out
	 );
	 assign excess_out = bcd_in + 4'b0011;
	endmodule