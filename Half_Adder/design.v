module half_adder (A, B, Y, C);
  // declaring inputs
  input A, B;

  // declaring outputs
  output Y, C;

  // half adder logic
  assign Y = A ^ B; // sum
  assign C = A & B; // carry
endmodule
