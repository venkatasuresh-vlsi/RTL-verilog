module tb;
     reg [7:0] a;
	 reg [2:0] sel;
	 wire y;
	 
	 integer i, j;
	 
	 mux_8x1 uut(.a(a), .sel(sel), .y(y));
	 
	 initial begin
	     $monitor("time=%0t | a=%b, sel=%b | y=%b", $time, a, sel, y);
			 for(j=0; j<8; j=j+1)begin
                 for(i=0; i<256; i=i+1)begin			 
                     a=i; sel=j;
                     #10;
                    end
				end
		    $finish;
		end
	endmodule