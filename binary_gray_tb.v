module tb;
     reg [3:0] binary_in;
	 wire [3:0] gray_out;
	 
	 integer i;
	 
	 binary_gray_converter uut(.binary_in(binary_in), .gray_out(gray_out));
	 
	 initial begin
	     $monitor("time=%0t | binary_in=%b | gray_out=%b", $time, binary_in, gray_out);
		     for(i=0; i<16; i=i+1)begin
			     binary_in = i;
				 #10;
				end
			$finish;
		end
	endmodule