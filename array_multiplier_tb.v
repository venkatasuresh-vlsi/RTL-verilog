module tb;
     reg [3:0] a, b;
	 wire [7:0] product;
	 integer i, j;
	 
	 array_multiplier uut(.a(a), .b(b), .product(product));
	 
	 initial begin
	     $monitor("Time=%0t | a=%b | b=%b | product=%b", $time, a, b, product);
		     for (i=0; i<16; i=i+1) begin
		         for (j=0; j<16; j=j+1) begin
		             a=i; b=j;
				     #10;
				    end
			    end
		    $finish;
		end
	endmodule
	