module comb (A,B,C,Q);

//declaring inputs
input A,B,C;
//declaring output
output Q ;
//declaring internal signals
wire A_NAND_B,A_NOR_B;
//assign statement

assign A_NAND_B = ~(A & B);
assign A_NOR_B = ~(A | B);

assign Q = (C) & (A_NAND_B) & (A_NOR_B);

endmodule