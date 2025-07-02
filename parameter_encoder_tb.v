module tb;
     parameter N = 4;
	 reg [N-1:0] a;
	 wire [$clog2(N)-1:0] y;
	 
	 integer i;
	 
	 encoder #(N) uut(
	     .a(a),
		 .y(y)
		 );
	 initial begin
	     for(i=0; i<2**N; i=i+1)begin
		     a = i;
			 #10;
			end
		end
	endmodule