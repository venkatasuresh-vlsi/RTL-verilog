module tb;
     parameter N = 8;
	 reg a;
	 reg [$clog2(N)-1:0] sel;
	 wire [N-1:0] y;
	 integer i;
	 
	 demux #(N) uut(
	     .a(a),
		 .sel(sel),
		 .y(y)
		 );
	 initial begin
	     a=1;
		 for(i=0; i<2**$clog2(N); i=i+1)begin
		     sel =i;
			 #10;
			end
		end
	endmodule