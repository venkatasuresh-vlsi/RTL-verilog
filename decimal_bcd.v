module decimal_bcd_encoder(
     input [9:0] decimal_in,
	 output reg [3:0] bcd_out
	 );
	 integer i;
	 
	 always @(*) begin
	     bcd_out = 4'b0000;
	     for(i=0; i<10; i=i+1)begin
		     if(decimal_in[i])
			     bcd_out = i[9:0];
			end
		end
	endmodule