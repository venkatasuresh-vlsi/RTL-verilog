module tb;
     reg clk, rst, serial_in;
	 wire serial_out;
	 
	 siso_4bit uut(.clk(clk), .rst(rst), .serial_in(serial_in), .serial_out(serial_out));
	 
	 always #5 clk <= ~clk;
	 
	 initial begin
	     $monitor("time=%0t | clk=%b, rst=%b, serial_in=%b | serial_out=%b", $time, clk, rst, serial_in, serial_out);
		     clk=0;
			 rst=1; #10;
			 rst=0; #10;
			 serial_in=1; #10;
			 serial_in=1; #10;
			 serial_in=0; #10;
			 serial_in=1; #10;
			  #50;
			$finish;
		end
	endmodule