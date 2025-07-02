module tb;
     reg [3:0] a, b;
	 wire eq, gt, lt;
	 
	 integer i, j;
	 
	 comparator_4bit uut(.a(a), . b(b), .eq(eq), . gt(gt), . lt(lt));
	 
	 initial begin
	     $monitor("time=%0t | a=%b, b=%b | eq=%b, gt=%b, lt=%b", $time, a, b, eq, gt, lt);
		     for(i=0; i<16; i=i+1)begin
			     for(j=0; j<16; j=j+1)begin
				     a=i; b=j;
					 #10;
					end
				end
			$finish;
		end
	endmodule