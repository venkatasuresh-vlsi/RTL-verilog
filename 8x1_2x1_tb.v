module tb;
     reg [7:0] a;
	 reg [2:0] sel;
	 wire y;
	 
	 integer j;
	 
	 mux_8x1 uut(.a(a), .sel(sel), .y(y));
	 
	 initial begin
	     $monitor("time=%0t | a=%b, sel=%b | y=%b", $time, a, sel, y);
		     a = 8'hac;
			 for(j=0; j<8; j=j+1)begin			 
                 sel=j;
                 #10;
                end
		    $finish;
		end
	endmodule