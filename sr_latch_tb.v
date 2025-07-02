module tb;
     reg s, r, en;
	 wire q, q_bar;
	 
	 sr_latch uut(.s(s), .r(r), .en(en), .q(q), .q_bar(q_bar));
	 
	 initial begin
	     en=0; #10;
		 en=1; #10;
		 s=0; r=0; #10;
		 s=0; r=1; #10;
		 s=1; r=0; #10;
		 s=1; r=1; #10;
		 en=0; #10;
		 $finish;
		end
	endmodule
		 