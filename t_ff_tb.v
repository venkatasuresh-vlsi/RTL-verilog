module tb; 
     reg t, rst, clk;
	 wire q, q_bar;
	 
	 t_ff uut(.t(t), .rst(rst), .clk(clk), .q(q), .q_bar(q_bar));
	 
	 always #5 clk <= ~clk;
	 
	 initial begin
	     $monitor("time=%0t | t=%b, rst=%b, clk=%b | q=%b, q_bar=%b", $time, t, rst, clk,q, q_bar);
		     clk=0;
			 rst=1; #10;
		     rst=0; #10;
		     t=0; #10;
			 t=1; #10;
			 t=1; #10;
			 t=1; #10;
			$finish;
        end
    endmodule		