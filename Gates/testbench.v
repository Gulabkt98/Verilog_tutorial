module tb ();
  // Declare variables
  reg A, B;   // inputs
  wire Y;     // output

  // Design call (DUT instantiation)
  // Replace `gate` with your actual module name
  gate dut (
      .A(A),
      .B(B),
      .Y(Y)
  );  // <-- semicolon added

  // Provide stimulus
  initial begin
    // test case 1
    A = 1'b0; B = 1'b0;
    #100;

    // test case 2
    A = 1'b0; B = 1'b1;
    #100;

    // test case 3
    A = 1'b1; B = 1'b0;
    #100;

    // test case 4
    A = 1'b1; B = 1'b1;
    #100;
  end

  // Dump waveform
  initial begin
    $dumpfile("gate.vcd");
    $dumpvars(0, tb);  // dump all signals inside testbench
  end
endmodule

