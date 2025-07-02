module tb;
     reg [7:0] octal_in;
	 wire [2:0] binary_out;
	 
	 integer i;
	 
	 octal_binary_encoder uut(.octal_in(octal_in), .binary_out(binary_out));
	 
	 initial begin
	     $monitor("time=%0t | octal_in=%b | binary_out=%b", $time, octal_in, binary_out);
		     for(i=0; i<256; i=i+1)begin
			     octal_in = i;
			     #10;
				end
			$finish;
		end
	endmodule