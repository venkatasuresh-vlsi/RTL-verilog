module tb;
     parameter N = 4;
	 reg clk, rst;
	 wire [N-1:0] q;
	 
	 ring_counter #(N) uut(
	     .clk(clk),
		 .rst(rst),
		 .q(q)
		 );
	 always #5 clk <= ~clk;
	 
	 initial begin
	     clk=0;
		 rst=1; #10;
		 rst=0;
		 #(2 * N * 10);
		 $finish;
		end
	endmodule