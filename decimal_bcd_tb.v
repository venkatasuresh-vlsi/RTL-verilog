module tb;
     reg [9:0] decimal_in;
	 wire [3:0] bcd_out;
	 
	 integer i;
	 
	 decimal_bcd_encoder uut(.decimal_in(decimal_in), .bcd_out(bcd_out));
	 
	 initial begin
	     $monitor("time=%0t | decimal_in=%b | bcd_out=%b", $time, decimal_in, bcd_out);
		     for(i=0; i<1024; i=i+1)begin
			     decimal_in = i;
			     #10;
				end
			$finish;
		end
	endmodule