module tb;
     reg a, b;
	 wire not_a, not_b, and_out, or_out, nand_out, nor_out, xor_out, xnor_out;
	
	 integer i,j;
	 
	 logicgates uut(
	     .a(a), 
		 .b(b), 
		 .not_a(not_a), 
		 .not_b(not_b),
		 .and_out(and_out),
		 .or_out(or_out),
		 .nand_out(nand_out), 
		 .nor_out(nor_out), 
		 .xor_out(xor_out), 
		 .xnor_out(xnor_out)
		);
	
	 initial begin
	     $monitor("time=%0t | a=%b, b=%b | not_a=%b, not_b=%b, and_out=%b, or_out=%b, nand_out=%b, nor_out=%b, xor_out=%b, xnor_out=%b",
		 $time, a, b, not_a, not_b, and_out, or_out, nand_out, nor_out, xor_out, xnor_out);
		     for(i=0; i<2; i=i+1)begin
			     for(j=0; j<2; j=j+1)begin
				     a=i; b=j;
					 #10;
					end
				end
			$finish;
		end
	endmodule 
