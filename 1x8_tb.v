module tb;
     reg a;
	 reg [2:0] sel;
	 wire [7:0] y;
	 
	 integer i;
	 
	 demux_1x8 uut(.a(a), .sel(sel), .y(y));
	 
	 initial begin
	     $monitor("time=%0t | a=%b, sel=%b | y=%b", $time, a, sel, y);
		     a=1;
			 for(i=0; i<8; i=i+1)begin
			     sel=i;
				 #10;
				end
			$finish;
		end
	endmodule