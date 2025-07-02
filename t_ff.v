module t_ff(
     input t, rst, clk,
	 output reg q, q_bar
	 );
	 always @(posedge clk or posedge rst) begin
	     if(rst)begin
		     q <= 0;
			 q_bar <= 0;
		    end
		 else if (t) begin
		     q <= ~q;
             q_bar <= q;
            end
        end
    endmodule		