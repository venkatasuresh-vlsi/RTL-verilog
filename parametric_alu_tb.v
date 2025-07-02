module tb;
     parameter N = 16;
     reg  [N-1:0] a, b;
     reg  [5:0] sel;
     wire [N-1:0] result, upper_result;
     wire carry_flag, overflow_flag, zero_flag;
     wire negative_flag, parity_flag, modulo_flag, sign_flag;

     integer i, j, k;
	 
     alu #(N) uut (
         .a(a), .b(b), .sel(sel),
         .result(result),
         .upper_result(upper_result),
         .carry_flag(carry_flag),
         .overflow_flag(overflow_flag),
         .zero_flag(zero_flag),
         .negative_flag(negative_flag),
         .parity_flag(parity_flag),
         .modulo_flag(modulo_flag),
         .sign_flag(sign_flag)
         );

     initial begin
		 for (j = 0; j < 2**N; j = j + 1) begin
			 for (k = 0; k < 2**N; k = k + 1) begin
				 for (i = 0; i < 35; i = i + 1) begin
                     sel = i; a = j; b = k;
                     #10;
                    end
				end	
			end	
        end
endmodule
