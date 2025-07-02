module ram_16_bit (
     input clk, rst, write_data,
	 input [15:0] data_in,
	 input [3:0] address,
	 output reg[15:0] data_out
	 );
	 reg [15:0]memory_block[15:0];
	 integer i;
	 
	 always @(posedge clk or posedge rst) begin
	     if (rst) begin
		     data_out <= 16'b0;
			 for (i=0; i<16; i=i+1) begin
			     memory_block[i] <= 16'b0;
			    end
			end
		 else if (write_data) 
		     memory_block[address] <= data_in;
		 else 
		     data_out <= memory_block[address];
		end
	endmodule