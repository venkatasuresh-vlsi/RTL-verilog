module tb;
     reg data_in;
	 reg sel;
	 wire [1:0] y;
	 
	 integer i;
	 
	 demux_1x2 uut (
	     .data_in(data_in),
		 .sel(sel),
		 .y(y)
		 );
	 initial begin
	     $monitor("Time=%0t | data_in=%b | sel=%b | y=%b", $time, data_in, sel, y);
		     data_in=1;
			 for(i=0; i<2; i=i+1) begin
			     sel = i;
				 #10;
				end
			$finish;
		end
	endmodule