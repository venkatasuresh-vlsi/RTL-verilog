module demux_1x2 (
     input data_in,
	 input sel,
	 output [1:0] y
	 );
	 assign  y = data_in << sel;
    endmodule	 
module demux_1x4(
     input data_in,
	 input [1:0] sel,
	 output [3:0] y
	 );
	 wire [1:0] y1;
	 wire [1:0] y2, y3;
	 
	 //stage 1
	 demux_1x2 demux1 (.data_in(data_in), .sel(sel[1]), .y(y1));
	 
	 //stage 2
	 demux_1x2 demux2 (.data_in(y1[0]), .sel(sel[0]), .y(y2));
	 demux_1x2 demux3 (.data_in(y1[1]), .sel(sel[0]), .y(y3));
	 
	 assign y = {y3, y2};
    endmodule