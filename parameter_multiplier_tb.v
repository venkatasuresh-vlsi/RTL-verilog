module tb;
     parameter N = 4;
	 reg [N-1:0] a, b;
	 wire [2*N-1:0] result;
	 
	 integer i, j;
	 
	 multiplier #N) uut(
	     .a(a),
		 .b(b),
		 .result(result)
		 );
		 initial begin
		     for (i=0; i<2**N; i=i+1) begin
			     for (j=0; j<2**N; j=j+1) begin
				     a=i; b=j;
				     #10;
				    end
				end
            end
    endmodule			