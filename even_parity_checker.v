module even_parity_checker(
     input [3:0] data_in,
	 input parity,
	 output error
	 );
	 assign error = data_in[3] ^ data_in[2] ^ data_in[1] ^ data_in[0] ^ parity;
	endmodule