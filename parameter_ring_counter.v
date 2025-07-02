module ring_counter #(parameter N = 4)
     (
	 input clk, rst,
	 output reg [N-1:0] q
	 );
	 always @(posedge clk or posedge rst) begin
	     if(rst)
		     q <= 1;
		 else 
		     q <= {q[N-2:0], q[N-1]};
		end
	endmodule