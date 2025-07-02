module tb;
     reg d, clk, rst;
	 wire q, q_bar;
	 
	 d_ff uut(.d(d), .clk(clk), .rst(rst), .q(q), .q_bar(q_bar));
	 
	 always #5 clk <= ~clk;
	 
	 initial begin
	     $monitor("time=%0t | d=%b, clk=%b, rst=%b | q=%b, q_bar=%b", $time, d, clk, rst, q, q_bar);
		     clk = 0;
			 rst = 1; #10;
			 rst = 0; #10;
			 d = 0; #10;
			 d = 1; #10;
			 d = 1; #10;
			 d = 0; #10;
			$finish;
		end
	endmodule