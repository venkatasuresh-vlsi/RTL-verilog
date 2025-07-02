module jk #(parameter N = 4)
     (
     input [N-1:0] j, k,
     input clk, rst,
     output reg [N-1:0] q,
     output reg [N-1:0] q_bar
     );
     integer i;
     always @(posedge clk or posedge rst) begin
         if (rst) begin
             q <= {N{1'b0}};
             q_bar <= {N{1'b1}};
			end
         else begin
             for (i = 0; i < N; i = i + 1) begin
                 case ({j[i], k[i]})
                     2'b00: q[i] <= q[i];            
                     2'b01: q[i] <= 1'b0;             
                     2'b10: q[i] <= 1'b1;           
                     2'b11: q[i] <= ~q[i];
                    endcase
                 q_bar[i] <= ~q[i];
                end
            end
        end
    endmodule
