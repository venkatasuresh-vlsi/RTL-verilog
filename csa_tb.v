module tb;
     reg [3:0] a, b, c;
	 wire [3:0] sum, cout;
	 
	 integer i,j,k;
	 
	 carry_save_adder uut(.a(a), .b(b), .c(c), .sum(sum), .cout(cout));
	 
	 initial begin
		     for(i=0; i<16; i=i+1)begin
			     for(j=0; j<16; j=j+1)begin
				     for(k=0; k<16; k=k+1)begin
					     a=i; b=j; c=k;
						 #10;
						end
					end
				end
			$finish;
		end
	endmodule
	 