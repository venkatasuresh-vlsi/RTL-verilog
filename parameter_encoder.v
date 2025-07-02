module encoder #(parameter N = 4)
     (
	 input [N-1:0] a,
	 output reg [$clog2(N)-1:0] y
	 );
	 integer i;
	 always @(*) begin
	     y = 0;
		 for(i=0; i<2**$clog2(N); i=i+1)begin
		     if(a[i])
			   y = i[N-1:0];
			end
		end
	endmodule