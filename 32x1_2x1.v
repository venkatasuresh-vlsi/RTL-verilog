module mux_2x1(
     input [1:0] a,
	 input sel,
	 output y
	 );
	 assign y = a[sel];
	endmodule
module mux_32x1(
     input [31:0] a,
	 input [4:0] sel,
	 output y
	 );
	 wire [15:0] y1;
	 wire [7:0] y2;
	 wire [3:0] y3;
	 wire [1:0] y4;
	 
	 //stage 1
	 mux_2x1 mux1 (.a(a[1:0]), .sel(sel[0]), .y(y1[0]));
	 mux_2x1 mux2 (.a(a[3:2]), .sel(sel[0]), .y(y1[1]));
	 mux_2x1 mux3 (.a(a[5:4]), .sel(sel[0]), .y(y1[2]));
	 mux_2x1 mux4 (.a(a[7:6]), .sel(sel[0]), .y(y1[3]));
	 mux_2x1 mux5 (.a(a[9:8]), .sel(sel[0]), .y(y1[4]));
	 mux_2x1 mux6 (.a(a[11:10]), .sel(sel[0]), .y(y1[5]));
	 mux_2x1 mux7 (.a(a[13:12]), .sel(sel[0]), .y(y1[6]));
	 mux_2x1 mux8 (.a(a[15:14]), .sel(sel[0]), .y(y1[7]));
	 mux_2x1 mux9 (.a(a[17:16]), .sel(sel[0]), .y(y1[8]));
	 mux_2x1 mux10 (.a(a[19:18]), .sel(sel[0]), .y(y1[9]));
	 mux_2x1 mux11 (.a(a[21:20]), .sel(sel[0]), .y(y1[10]));
	 mux_2x1 mux12 (.a(a[23:22]), .sel(sel[0]), .y(y1[11]));
	 mux_2x1 mux13 (.a(a[25:24]), .sel(sel[0]), .y(y1[12]));
	 mux_2x1 mux14 (.a(a[27:26]), .sel(sel[0]), .y(y1[13]));
	 mux_2x1 mux15 (.a(a[29:28]), .sel(sel[0]), .y(y1[14]));
	 mux_2x1 mux16 (.a(a[31:30]), .sel(sel[0]), .y(y1[15]));
	 
	 //stage 2
	 mux_2x1 mux17 (.a({y1[1], y1[0]}), .sel(sel[1]), .y(y2[0]));
	 mux_2x1 mux18 (.a({y1[3], y1[2]}), .sel(sel[1]), .y(y2[1]));
	 mux_2x1 mux19 (.a({y1[5], y1[4]}), .sel(sel[1]), .y(y2[2]));
	 mux_2x1 mux20 (.a({y1[7], y1[6]}), .sel(sel[1]), .y(y2[3]));
	 mux_2x1 mux21 (.a({y1[9], y1[8]}), .sel(sel[1]), .y(y2[4]));
	 mux_2x1 mux22 (.a({y1[11], y1[10]}), .sel(sel[1]), .y(y2[5]));
	 mux_2x1 mux23 (.a({y1[13], y1[12]}), .sel(sel[1]), .y(y2[6]));
	 mux_2x1 mux24 (.a({y1[15], y1[14]}), .sel(sel[1]), .y(y2[7]));
	 
	 //stage 3
	 mux_2x1 mux25 (.a({y2[1], y2[0]}), .sel(sel[2]), .y(y3[0]));
	 mux_2x1 mux26 (.a({y2[3], y2[2]}), .sel(sel[2]), .y(y3[1]));
	 mux_2x1 mux27 (.a({y2[5], y2[4]}), .sel(sel[2]), .y(y3[2]));
	 mux_2x1 mux28 (.a({y2[7], y2[6]}), .sel(sel[2]), .y(y3[3]));
	 
	 //stage 4
	 mux_2x1 mux29 (.a({y3[1], y3[0]}), .sel(sel[3]), .y(y4[0]));
	 mux_2x1 mux30 (.a({y3[3], y3[2]}), .sel(sel[3]), .y(y4[1]));
	 
	 //stage 5
	 mux_2x1 mux31 (.a({y4[1], y4[0]}), .sel(sel[4]), .y(y));
	endmodule