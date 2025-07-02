module tb;
     parameter N = 4; 
     reg [N-1:0] t; 
	 reg rst, clk;
	 wire [N-1:0] q, q_bar;
	 integer i;
	 
	 t #(N) uut(.t(t), .rst(rst), .clk(clk), .q(q), .q_bar(q_bar));
	 
	 always #5 clk <= ~clk;
	 
	 initial begin
		     clk=0;
			 rst=1; #10;
		     rst=0; #10;
		     for(i=0; i<2**N; i=i+1)begin
		      t = i;
			  #10;
			end
			$finish;
        end
    endmodule		