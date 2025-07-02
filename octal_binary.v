module octal_binary_encoder(
     input [7:0] octal_in,
	 output reg [2:0] binary_out
	 );
	 integer i;
	 
	 always @(*) begin
	     binary_out = 3'b000;
	     for(i=0; i<8; i=i+1)begin
		     if(octal_in[i])
			     binary_out = i[2:0];
			end
		end
	endmodule