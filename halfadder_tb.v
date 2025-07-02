module tb;
     reg a, b;
	 wire sum, cout;
	  
	 integer i,j;
	 
	 half_adder uut(.a(a), .b(b), .sum(sum), .cout(cout));
	 
	 initial begin
	     $monitor("time=%0t | a=%b, b=%b | sum=%b, cout=%b", $time, a,b, sum, cout);
		     for(i=0; i<2; i=i+1)begin
			     for(j=0; j<2; j=j+1)begin
				     a=i; b=j;
					 #10;
					end
				end
			$finish;
		end
	endmodule 