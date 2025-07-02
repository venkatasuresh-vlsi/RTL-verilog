module tb;
     reg [3:0] a, b;
	 reg cin;
	 wire [3:0] sum;
	 wire cout;
	 
	 integer i, j;
	 
	 CLA_4bit uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
	 
	 initial begin
	     $monitor("tim%0t | a=%b, b=%b, cin=%b | sum=%b, cout=%b", $time, a, b, cin, sum, cout);
		     cin = 0;
		     for(i=0; i<16; i=i+1)begin
			     for(j=0; j<16; j=j+1)begin
				     a=i; b=j;
					 #10;
					end
				end
			  cin = 1;
		     for(i=0; i<16; i=i+1)begin
			     for(j=0; j<16; j=j+1)begin
				     a=i; b=j;
					 #10;
					end
				end
			$finish;
		end
	endmodule