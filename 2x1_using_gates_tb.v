module tb;
      reg [1:0] a;
	  reg sel;
	  wire y;
	  integer i, j;
	  
	  mux_2x1_using_gates uut(
	     .a(a),  
		 .sel(sel),
		 .y(y)
		 );
		 
	 initial begin
	     for (i=0; i<2; i=i+1) begin
		     for (j=0; j<4; j=j+1) begin
			     sel=i; a=j;
				 #10;
				end
			end
		end
	endmodule