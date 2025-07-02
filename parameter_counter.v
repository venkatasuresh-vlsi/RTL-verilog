module counter #(parameter N = 10)
     (
	 input clk, rst, up_down,
	 output reg [N-1:0] q
	 );
	 always @(posedge clk or posedge rst)begin
	     if(rst) 
		     q <= {N{1'b0}};
		 else if (up_down == 0)
		     q <= q + 1;
		 else 
		     q <= q - 1;
		end
	endmodule