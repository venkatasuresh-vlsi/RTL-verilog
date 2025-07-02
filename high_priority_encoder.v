module priority_encoder_8x3(
     input [7:0] a,
	 output reg [2:0] y
	 );
	 integer i;
	 
	 always @(*) begin
	     y = 3'b000;
	     for(i=0; i<8; i=i+1)begin
		     if(a[i])
			     y = i[2:0];
			end
		end
	endmodule 