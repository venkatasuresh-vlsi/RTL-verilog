module mux_2x1(
     input [1:0] a,
	 input sel,
	 output y
	 );
	 assign y = a[sel];
	endmodule
	
module mux_8x1(
     input [7:0] a,
	 input [2:0] sel,
	 output y
	 );
	 wire y1, y2, y3, y4; 
	 wire y5, y6;
	 
	 //stage
	 mux_2x1 mux1(.a(a[1:0]), .sel(sel[0]), .y(y1));
	 mux_2x1 mux2(.a(a[3:2]), .sel(sel[0]), .y(y2));
	 mux_2x1 mux3(.a(a[5:4]), .sel(sel[0]), .y(y3));
	 mux_2x1 mux4(.a(a[7:6]), .sel(sel[0]), .y(y4));
	 
	 //stage
	 mux_2x1 mux5(.a({y2, y1}), .sel(sel[1]), .y(y5));
     mux_2x1 mux6(.a({y4, y3}), .sel(sel[1]), .y(y6));
     
	 //stage
     mux_2x1 mux7(.a({y6, y5}), .sel(sel[2]), .y(y));
	endmodule