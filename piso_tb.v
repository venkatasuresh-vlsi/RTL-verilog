module tb;
     reg rst, clk, load;
	 reg [3:0] parallel_in;
	 wire serial_out;
	 
	 piso_4bit uut(
	     .rst(rst), 
		 .clk(clk), 
		 .load(load), 
		 .parallel_in(parallel_in), 
		 .serial_out(serial_out)
		 );
		 
     always #5 clk<= ~clk;
	 
	 initial begin
	     $monitor("time=%0t | rst=%b, clk=%b, load=%b, parallel_in=%b | serial_out=%b", 
		 $time, rst, clk, load, parallel_in, serial_out);
		     clk=0;
			 rst=1;
			 load=0;
			 parallel_in=4'b0000; #10;
			 rst=0; #10;
			 load=1; #10;
			 parallel_in=4'b1011; #10;
			 load=0;
			 #50;
			$finish;
		end
	endmodule
			 
	 