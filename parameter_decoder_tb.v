module tb;
     parameter N = 32;
	 reg [$clog2(N)-1:0] a;
	 wire [N-1:0] y;
	 
	 integer i;
	 
	 decoder #(N) uut(
	     .a(a),
		 .y(y)
		 );
	 initial begin
	     for(i=0; i<2**$clog2(N); i=i+1)begin
		     a=i;
			 #10;
			end
		end
		
	endmodule