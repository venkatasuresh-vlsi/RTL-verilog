module tb;
     reg [1:0] a;
	 reg sel;
	 wire y;
	 
	 integer i;
	 
	 mux_2x1 uut(.a(a), .sel(sel), .y(y));
	 
	 initial begin
	     $monitor("time=%0t | a=%b, sel=%b | y=%b", $time, a, sel, y);
             sel=0;
             for(i=0; i<4; i=i+1)begin
                 a=i;
                 #10;
                end
             sel=1;
             for(i=0; i<4; i=i+1)begin
                 a=i;
                 #10;
                end
		    $finish;
		end
	endmodule