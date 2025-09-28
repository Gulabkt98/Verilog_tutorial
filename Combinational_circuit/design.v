module comb(S,P,V,LED);
//declaring inputs
input S,P,V;
//declaring output
output LED ;

//assign statement
assign LED = (~S) & (P) & (V);

endmodule