module tb;
     parameter N = 4;
	 reg [N-1:0] j, k;
	 reg rst, clk;
	 wire [N-1:0] q, q_bar;
	 integer i, p;
	 
	 jk #(N) uut(
	     .j(j),
		 .k(k),
		 .rst(rst),
		 .clk(clk),
		 .q(q),
		 .q_bar(q_bar)
		 );
	 always #5 clk <= ~clk;
	 
	 initial begin
	     clk=0;
		 rst=1; #10;
		 rst=0;
		 for (i=0; i<2**N; i=i+1) begin
		     for (p=0; p<2**N; p=p+1) begin
			     j=i; k=p;
				 #10;
				end
			end
		 $finish;
		end
	endmodule