module carry_save_adder (
     input  [3:0] a,
     input  [3:0] b,
     input  [3:0] c,
     output [3:0] sum,
     output [3:0] cout
     );

     assign sum[0] = a[0] ^ b[0] ^ c[0];
     assign cout[0] = (a[0] & b[0]) | (b[0] & c[0]) | (a[0] & c[0]);

     assign sum[1] = a[1] ^ b[1] ^ c[1];
     assign cout[1] = (a[1] & b[1]) | (b[1] & c[1]) | (a[1] & c[1]);

     assign sum[2] = a[2] ^ b[2] ^ c[2];
     assign cout[2] = (a[2] & b[2]) | (b[2] & c[2]) | (a[2] & c[2]);

     assign sum[3] = a[3] ^ b[3] ^ c[3];
     assign cout[3] = (a[3] & b[3]) | (b[3] & c[3]) | (a[3] & c[3]);
    endmodule
