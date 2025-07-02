module tb;
     reg [3:0] data_in;
	 reg parity;
	 wire error;
	 
	 integer i;
	 
	 odd_parity_checker uut(.data_in(data_in), .parity(parity), .error(error));
	 
	 initial begin
	     $monitor("time=%0t | data_in=%b, parity=%b | error=%b", $time, data_in, parity, error);
		     parity = 0;
		     for(i=0; i<16; i=i+1)begin
			     data_in=i;
				 #10;
				end
			 parity = 1;
		     for(i=0; i<16; i=i+1)begin
			     data_in=i;
				 #10;
				end
			$finish;
		end
	endmodule