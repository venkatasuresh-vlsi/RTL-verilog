module tb;
     reg [3:0] a;
	 wire p;
	 
	 integer i;
	 
	 even_parity_generator uut(.a(a), .p(p));
	 
	 initial begin
	     $monitor("time=%0t | a=%b | p=%b", $time, a, p);
		     for(i=0; i<16; i=i+1)begin
			     a=i;
				 #10;
				end
			$finish;
		end
	endmodule