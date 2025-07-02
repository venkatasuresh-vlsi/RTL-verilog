module tb;
     reg clk, up_down, rst;
	 wire [3:0] q;
	 
	 up_down_4bit_counter uut(.clk(clk), .up_down(up_down), .rst(rst), .q(q));
	 
	 always #5 clk <= ~clk;
	 
	 initial begin
	     $monitor("time=%0t | clk=%b, up_down=%b, rst=%b | q=%b", $time, clk, up_down, rst, q);
		      clk=0;
			  rst=1; #10;
			  rst=0; up_down=0; #10;
			  #150;
			  up_down=1;
			  #170;
			  rst=1; #10
			$finish;
		end
	endmodule
			  