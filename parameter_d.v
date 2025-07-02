module d #(parameter N = 4)
     (
     input rst, clk,
	 input [N-1:0] d,
	 output reg [N-1:0] q, q_bar
	 );
	 always @(posedge clk or posedge rst) begin
	     if(rst)begin
		     q <= {N{1'b0}};
			 q_bar <= {N{1'b0}};
		    end
		 else begin
		     q <= d;
			 q_bar <= ~d;
		    end
		end
	endmodule