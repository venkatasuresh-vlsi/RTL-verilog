module tb;
     parameter N = 16;
	 reg [N-1:0] a;
	 reg [$clog2(N)-1:0] sel;
	 wire y;
	 integer i, j;
	 
	 mux #(N) uut(
	     .a(a),
		 .sel(sel),
		 .y(y)
		 );
	 initial begin
	     for(i=0; i<2**N; i=i+1)begin
		     for(j=0; j<2**$clog2(N); j=j+1)begin
			     a=i; sel=j;
				 #10;
				end
			end
		end
	endmodule