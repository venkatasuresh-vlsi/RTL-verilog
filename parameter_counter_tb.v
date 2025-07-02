module tb;
     parameter N = 10;
	 reg clk, rst, up_down;
	 wire [N-1:0] q;
	 
	 counter #(N) uut(
	     .clk(clk),
		 .rst(rst),
		 .up_down(up_down),
		 .q(q)
		 );
	 always #5 clk <= ~clk;
	 
	 initial begin
	     clk=0;
		 rst=1; #10;
		 rst=0; up_down=0; #10;
		 #(2**N * 10);
		 up_down=1;
		 #(2**N * 10);
		 $finish;
		end
	endmodule