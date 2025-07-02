module logicgates(
     input a, b,
	 output not_a, not_b, and_out, or_out, nand_out, nor_out, xor_out, xnor_out
	 );
	 not a1(not_a, a);
	 not a2(not_b, b);
	 and a3(and_out, a, b);
	 or a4(or_out, a, b);
	 nand a5(nand_out, a, b);
	 nor a6(nor_out, a, b);
	 xor a7(xor_out, a, b);
	 xnor a8(xnor_out, a, b);
	endmodule