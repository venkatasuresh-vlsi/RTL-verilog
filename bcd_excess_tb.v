module tb;
     reg [3:0] bcd_in;
	 wire [3:0] excess_out;
	 
	 integer i;
	 
	 bcd_excess_3_converter uut(.bcd_in(bcd_in), .excess_out(excess_out));
	 
	 initial begin
	     $monitor("time=%0t | bcd_in=%b | excess_out=%b", $time, bcd_in, excess_out);
		     for (i=0; i<10; i=i+1) begin
			     bcd_in =i;
				 #10;
				end
			$finish;
		end
	endmodule