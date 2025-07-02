module tb;
     reg [15:0] a;
	 reg [3:0] sel;
	 wire y;
	 
	 integer i;
	 
	 mux_16x1 uut(
	     .a(a),
		 .sel(sel),
		 .y(y)
		 );
	 initial begin
	     $monitor("Time=%0t } a=%b } sel=%b } y=%b", $time, a, sel, y);
	         a = 16'habcd;
		     for (i=0; i<16; i=i+1) begin
		         sel = i;
			     #10;
			    end
		  $finish;
		end
	endmodule