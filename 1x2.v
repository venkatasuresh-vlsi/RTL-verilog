module demux_1x2 (
     input data_in,
	 input sel,
	 output [1:0] y
	 );
	 assign  y = data_in << sel;
    endmodule	 