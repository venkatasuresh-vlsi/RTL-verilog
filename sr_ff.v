module sr_ff(
     input s, r, rst, clk,
	 output reg q, q_bar
	 );
	 always @(posedge clk or posedge rst) begin
	     if(rst) begin
		     q <= 0;
			 q_bar <= 0;
			end
		 else begin
		     case({s, r})
			     2'b00 : q = q;
				 2'b01 : q = 0;
				 2'b10 : q = 1;
				 2'b11 : q = 1'bx;
				 default : q = 0;
		     endcase
			 q_bar <= ~q;
			end
		end
	endmodule
			
	                  