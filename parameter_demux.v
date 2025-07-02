module demux #(parameter N = 8)
     (
	 input a,
	 input [$clog2(N)-1:0] sel,
	 output reg [N-1:0] y
	 );
	 integer i;
	 
	 always @(*) begin
	     y = {N{1'b0}};
		 y[sel] = a;
		end
	endmodule