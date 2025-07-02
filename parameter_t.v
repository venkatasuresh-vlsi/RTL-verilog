module t #(parameter N = 4)
     (
     input [N-1:0] t, 
	 input rst, clk,
	 output reg [N-1:0] q, q_bar
	 );
	 always @(posedge clk or posedge rst) begin
	     if(rst)begin
		     q <= {N{1'b0}};
			 q_bar <= {N{1'b0}};
		    end
		 else if (t) begin
		     q <= q ^ t;
             q_bar <= ~(q ^ t);
            end
        end
    endmodule		