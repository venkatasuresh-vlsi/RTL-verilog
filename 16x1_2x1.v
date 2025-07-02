module mux_2x1(
     input [1:0] a,
	 input sel,
	 output y
	 );
	 assign y = a[sel];
	endmodule
module mux_16x1(
     input [15:0] a,
	 input [3:0] sel,
	 output y
	 );
	 wire y1, y2, y3, y4, y5, y6, y7, y8;
	 wire y9, y10, y11, y12;
	 wire y13, y14;
	 
	 //stage 1
	 mux_2x1 mux1 (.a(a[1:0]), .sel(sel[0]), .y(y1));
	 mux_2x1 mux2 (.a(a[3:2]), .sel(sel[0]), .y(y2));
	 mux_2x1 mux3 (.a(a[5:4]), .sel(sel[0]), .y(y3));
	 mux_2x1 mux4 (.a(a[7:6]), .sel(sel[0]), .y(y4));
	 mux_2x1 mux5 (.a(a[9:8]), .sel(sel[0]), .y(y5));
	 mux_2x1 mux6 (.a(a[11:10]), .sel(sel[0]), .y(y6));
	 mux_2x1 mux7 (.a(a[13:12]), .sel(sel[0]), .y(y7));
	 mux_2x1 mux8 (.a(a[15:14]), .sel(sel[0]), .y(y8));
	 
	 //stage 2
	 mux_2x1 mux9 (.a({y2,y1}), .sel(sel[1]), .y(y9));
	 mux_2x1 mux10 (.a({y4,y3}), .sel(sel[1]), .y(y10));
	 mux_2x1 mux11 (.a({y6,y5}), .sel(sel[1]), .y(y11));
	 mux_2x1 mux12 (.a({y8,y7}), .sel(sel[1]), .y(y12));
	 
	 //stage 3
	 mux_2x1 mux13 (.a({y10,y9}), .sel(sel[2]), .y(y13));
	 mux_2x1 mux14 (.a({y12,y11}), .sel(sel[2]), .y(y14));
	 
	 //stage 4
	 mux_2x1 mux15 (.a({y14,y13}), .sel(sel[3]), .y(y));
	endmodule
