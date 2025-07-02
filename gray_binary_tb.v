module tb;
     reg [3:0] gray_in;
     wire [3:0] binary_out;

     integer i;
 
     gray_binary_converter uut(
         .gray_in(gray_in),
         .binary_out(binary_out)
        );

     initial begin
         $monitor("time=%0t | gray_in=%b | binary_out=%b", $time, gray_in, binary_out);
             for(i = 0; i < 16; i = i + 1)begin
                 gray_in = (i >> 1) ^ i; // Binary to Gray formula
                 #10;
                end
            $finish;
        end
    endmodule
