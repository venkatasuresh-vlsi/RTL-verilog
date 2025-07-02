module tb;
     reg rst, clk;
	 wire [3:0] q;
	
	 johnson_counter uut(.rst(rst), .clk(clk), .q(q));
	
	 always #5 clk <= ~clk;
	
	 initial begin
	     $monitor("time=%0t | rst=%b, clk=%b | q=%b", $time, rst, clk, q);
		     clk=0;
		   	 rst=1; #10;
			 rst=0; #10;
			 #90;
			 rst=1; #10;
			$finish;
		end
	endmodule