module tb;
     reg [7:0] a;
	 wire [2:0] y;
	 
	 integer i;
	 
	 priority_encoder_8x3 uut(.a(a), .y(y));
	 
	 initial begin
	     $monitor("time=%0t | a=%b | y=%b", $time, a, y);
		     for(i=0; i<256; i=i+1)begin
		         a = i;
				 #10;
				end
			$finish;
        end
	endmodule