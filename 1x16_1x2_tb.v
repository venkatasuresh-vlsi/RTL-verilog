module tb;
     reg data_in;
	 reg [3:0] sel;
	 wire [15:0] y;
	 
	 integer i;
	 
	 demux_1x16 uut (
	     .data_in(data_in),
		 .sel(sel),
		 .y(y)
		 );
	 initial begin
	     $monitor("Time=%0t | data_in=%b | sel=%b | y=%b", $time, data_in, sel, y);
		     data_in=1;
			 for(i=0; i<16; i=i+1) begin
			     sel = i;
				 #10;
				end
			$finish;
		end
	endmodule