module demux_1x2 (
     input data_in,
	 input sel,
	 output [1:0] y
	 );
	 assign  y = data_in << sel;
    endmodule	 
module demux_1x8(
     input data_in,
	 input [2:0] sel,
	 output [7:0] y
	 );
	 wire [1:0] y1;
	 wire [1:0] y2, y3;
	 wire [1:0] y4, y5, y6, y7;
	 
	 //stage 1
	 demux_1x2 demux1 (.data_in(data_in), .sel(sel[2]), .y(y1));
	 
	 //stage 2
	 demux_1x2 demux2 (.data_in(y1[0]), .sel(sel[1]), .y(y2));
	 demux_1x2 demux3 (.data_in(y1[1]), .sel(sel[1]), .y(y3));
	 
	 //stage 3
	 demux_1x2 demux4 (.data_in(y2[0]), .sel(sel[0]), .y(y4));
	 demux_1x2 demux5 (.data_in(y2[1]), .sel(sel[0]), .y(y5));
	 demux_1x2 demux6 (.data_in(y3[0]), .sel(sel[0]), .y(y6));
	 demux_1x2 demux7 (.data_in(y3[1]), .sel(sel[0]), .y(y7));
	 
	assign y = {y7[1], y7[0], y6[1], y6[0], y5[1], y5[0], y4[1], y4[0]};
    endmodule