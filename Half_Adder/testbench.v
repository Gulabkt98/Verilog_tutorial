module tb ();
//declaring inputs
  reg A,B;
//declaring outputs
  wire Y,C;
//design call
    half_adder dut (
        .A(A),
        .B(B),
        .Y(Y),
        .C(C)
    );

//providing stimulus
  initial begin
    //test case 1
    A<=1'b0; B<=1'b0;
    #100; //delay in output
    //test case 2
    A<=1'b0; B<=1'b1;
    #100;
    //test case 3
    A<=1'b1; B<=1'b0;
    #100;
    //test case 4
    A<=1'b1; B<=1'b1;
    #100;
  end
//dump waveform
    initial begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0,tb); //dump all signals inside testbench
    end
    
endmodule