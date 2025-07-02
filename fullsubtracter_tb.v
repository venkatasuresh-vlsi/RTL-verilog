module tb;
     reg a, b, bin;
     wire difference, bout;	 
	 
	 
	 full_subtracter uut(.a(a), .b(b), .bin(bin), .difference(difference), . bout(bout));
	 
	 initial begin
	     $monitor("time=%0t | a=%b, b=%b, bin=%b | difference=%b, bout=%b", $time, a, b, bin, difference, bout);
		     a=0; b=0; bin=0; #10;
			 a=0; b=0; bin=1; #10;
			 a=0; b=1; bin=0; #10;
			 a=0; b=1; bin=1; #10;
			 a=1; b=0; bin=0; #10;
			 a=1; b=0; bin=1; #10;
			 a=1; b=1; bin=0; #10;
			 a=1; b=1; bin=1; #10;
			$finish;
		end
	endmodule 