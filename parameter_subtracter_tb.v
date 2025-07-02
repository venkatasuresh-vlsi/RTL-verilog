module tb;
     parameter N = 4;
	 reg [N-1:0] a, b;
	 wire [N-1:0] diff;
	 wire bout;
	 
	 integer i,j;
	 
	 adder #(N) uut(
	     .a(a),
		 .b(b),
		 .diff(diff),
		 .bout(bout)
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