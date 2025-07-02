module tb;
     reg s, r, rst, clk;
	 wire q, q_bar;
	 
	 sr_ff uut(.s(s), .r(r), .rst(rst), .clk(clk), .q(q), .q_bar(q_bar));
	 
	 always #5 clk = ~clk;
	 
	 initial begin
	     $monitor("time=%0t | s=%b, r=%b, rst=%b, clk=%b | q=%b, q_bar=%b", $time, s, r, rst, clk, q, q_bar);
             clk=0;
			 rst=1; #10;
			 rst=0; #10;
			 
			 s=0; r=0; #10;
			 s=0; r=1; #10;
			 s=1; r=0; #10;
			 s=1; r=1; #10;
			 rst=1;
			$finish;
		end
	endmodule
			 
			 
			
		   