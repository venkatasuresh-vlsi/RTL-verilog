module tb;
     reg data_in;
	 reg [1:0] sel;
	 wire [3:0] y;
	 
	 integer i;
	 
	 demux_1x4 uut (
	     .data_in(data_in),
		 .sel(sel),
		 .y(y)
		 );
	 initial begin
	     $monitor("Time=%0t | data_in=%b | sel=%b | y=%b", $time, data_in, sel, y);
		     data_in=1;
			 for(i=0; i<4; i=i+1) begin
			     sel = i;
				 #10;
				end
			$finish;
		end
	endmodule