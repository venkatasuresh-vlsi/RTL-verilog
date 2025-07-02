module siso_4bit(
     input clk, rst, serial_in,
	 output serial_out
	 );
	 reg [3:0] shift_bit;
	 
     always @(posedge clk or posedge rst) begin
         if(rst)
           shift_bit <= 4'b0000;
		 else 
		   shift_bit <= {serial_in, shift_bit[3:1]};
		end
	 assign serial_out = shift_bit[0];
	endmodule