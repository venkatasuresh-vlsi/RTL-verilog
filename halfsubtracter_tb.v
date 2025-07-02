module tb;
     reg a, b;
	 wire difference, bout;
	  
	 integer i,j;
	 
	 half_subtracter uut(.a(a), .b(b), .difference(difference), .bout(bout));
	 
	 initial begin
	     $monitor("time=%0t | a=%b, b=%b | difference=%b, bout=%b", $time, a,b, difference, bout);
		     for(i=0; i<2; i=i+1)begin
			     for(j=0; j<2; j=j+1)begin
				     a=i; b=j;
					 #10;
					end
				end
			$finish;
		end
	endmodule 