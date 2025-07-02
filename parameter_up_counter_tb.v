module tb;
     parameter N = 10;
	 reg clk, rst;
	 wire [N-1:0] q;
	 
	 up_counter #(N) uut(
	     .clk(clk),
		 .rst(rst),
		 .q(q)
		 );
	 always #5 clk <= ~clk;
	 
	 initial begin
	     clk=0;
		 rst=1; #10;
		 rst=0; #10;
		 #(2**N * 10);
		 rst=1;
		 $finish;
		end
	endmodule