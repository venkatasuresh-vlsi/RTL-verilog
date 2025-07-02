module tb;
     reg clk, rst;
	 reg [3:0] parallel_in;
	 wire [3:0] parallel_out;
	 
	 pipo_4bit uut(
	     .clk(clk),
		 .rst(rst),
		 .parallel_in(parallel_in),
		 .parallel_out(parallel_out)
		 );
		 always #5 clk <= ~clk;
		 
		 initial begin
		     $monitor("time=%0t | clk=%b, rst=%b, parallel_in=%b | parallel_out=%b",
			 $time, clk, rst, parallel_in, parallel_out);
			     clk=0;
				 rst=1;
				 parallel_in=4'b0000; #10;
				 rst=0; #10;
			     parallel_in=4'b1111; #10;
				 parallel_in=4'b1011; #10;
				 parallel_in=4'b1100; #10;
				 #10 
			    $finish;
			end
	endmodule	
				
			 