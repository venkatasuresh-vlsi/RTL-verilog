module tb;
     parameter N = 5;
	 reg [N-1:0] a, b;
	 wire [N-1:0] sum;
	 wire cout;
	 
	 integer i,j;
	 
	 adder #(N) uut(
	     .a(a),
		 .b(b),
		 .sum(sum),
		 .cout(cout)
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