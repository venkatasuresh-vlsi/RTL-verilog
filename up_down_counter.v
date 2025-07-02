module up_down_4bit_counter(
     input clk, rst, up_down,
	 output reg [3:0] q
	 );
	 always @(posedge clk or posedge rst) begin
	     if(rst)
		     q <= 4'b0000;
		 else if (up_down == 0) 
		     q <= q + 1;
         else 
             q <= q - 1;
        end
    endmodule		