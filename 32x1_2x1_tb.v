module tb;
     reg [31:0] a;
	 reg [4:0] sel;
	 wire y;
	 
	 integer i;
	 
	 mux_32x1 uut(
	     .a(a),
		 .sel(sel),
		 .y(y)
		 );
	 initial begin
	     $monitor("Time=%0t } a=%b } sel=%b } y=%b", $time, a, sel, y);
	         a = 32'habcd_ef01;
		     for (i=0; i<32; i=i+1) begin
		         sel = i;
			     #10;
			    end
		  $finish;
		end
	endmodule