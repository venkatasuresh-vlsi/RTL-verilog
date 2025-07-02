module tb;
     reg [2:0] binary_in;
	 wire [5:0] squares_out;
	
	 integer i;
	
	 squares_3bit_numbers uut(.binary_in(binary_in), .squares_out(squares_out));
	 
	 initial begin
	     $monitor("time=%0t | binary_in=%b | squares_out=%b", $time, binary_in, squares_out);
		     for (i=0; i<8; i=i+1) begin
		         binary_in = i;
				 #10;
				end
			$finish;
		end
	endmodule