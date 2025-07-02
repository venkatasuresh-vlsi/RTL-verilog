module d_ff(
     input d, rst, clk,
	 output reg q, q_bar
	 );
	 always @(posedge clk or posedge rst) begin
	     if(rst)begin
		     q <= 0;
			 q_bar <= 0;
		    end
		 else begin
		     q <= d;
			 q_bar <= ~d;
		    end
		end
	endmodule