module sr_latch(
     input r, s, en,
	 output reg q, q_bar
	 );
	 always @(*)begin
	     if (en) begin
		     case({s, r})
			     2'b00 : begin
     				 q = q;
					 q_bar = q_bar;
					end
				 2'b01 : begin
 				     q = 0;
					 q_bar = 1;
					end
				 2'b10 : begin 
				     q = 1;
					 q_bar = 0;
					end
				 2'b11 : begin 
				     q = 1'bx;
					 q_bar = 1'bx;
					end 
				 default : begin 
				     q = 0;
					 q_bar = 1;
					end
				endcase
			end 
		 else begin
		     q = 1'b0;
			 q_bar = 1'b1;
			end
		end
	endmodule
			 