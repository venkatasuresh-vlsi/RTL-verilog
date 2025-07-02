module demux_1x2 (
     input data_in,
	 input sel,
	 output [1:0] y
	 );
	 assign  y = data_in << sel;
    endmodule	 
module demux_1x16(
     input data_in,
	 input [3:0] sel,
	 output [15:0] y
	 );
	 wire [1:0] y1;
	 wire [1:0] y2, y3;
	 wire [1:0] y4, y5, y6, y7;
	 wire [1:0] y8, y9, y10, y11, y12, y13, y14, y15;
	 
	 //stage 1
	 demux_1x2 demux1 (.data_in(data_in), .sel(sel[3]), .y(y1));
	 
	 //stage 2
	 demux_1x2 demux2 (.data_in(y1[0]), .sel(sel[2]), .y(y2));
	 demux_1x2 demux3 (.data_in(y1[1]), .sel(sel[2]), .y(y3));
	 
	 //stage 3
	 demux_1x2 demux4 (.data_in(y2[0]), .sel(sel[1]), .y(y4));
	 demux_1x2 demux5 (.data_in(y2[1]), .sel(sel[1]), .y(y5));
	 demux_1x2 demux6 (.data_in(y3[0]), .sel(sel[1]), .y(y6));
	 demux_1x2 demux7 (.data_in(y3[1]), .sel(sel[1]), .y(y7));
	 
	 //stage 4
	 demux_1x2 demux8 (.data_in(y4[0]), .sel(sel[0]), .y(y8));
	 demux_1x2 demux9 (.data_in(y4[1]), .sel(sel[0]), .y(y9));
	 demux_1x2 demux10 (.data_in(y5[0]), .sel(sel[0]), .y(y10));
	 demux_1x2 demux11 (.data_in(y5[1]), .sel(sel[0]), .y(y11));
	 demux_1x2 demux12 (.data_in(y6[0]), .sel(sel[0]), .y(y12));
	 demux_1x2 demux13 (.data_in(y6[1]), .sel(sel[0]), .y(y13));
	 demux_1x2 demux14 (.data_in(y7[0]), .sel(sel[0]), .y(y14));
	 demux_1x2 demux15 (.data_in(y7[1]), .sel(sel[0]), .y(y15));
	 
	assign y = {y15, y14, y13, y12, y11, y10, y9, y8};
    endmodule