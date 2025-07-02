module tb;
     reg r, s;
	 wire q, q_bar;
	 
	 rs_latch_nand uut(.r(r), .s(s), .q(q), .q_bar(q_bar));
	 
	 initial begin 
	     $monitor("time=%0t | r=%b, s=%b | q=%b, q_bar=%b", $time, r, s, q, q_bar);
		     r=0; s=0; #10;
			 r=0; s=1; #10;
			 r=1; s=0; #10;
			 r=1; s=1; #10;
			$finish;
		end
	endmodule