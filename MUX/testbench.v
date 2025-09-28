module tb ();
//declaring inputs
  reg A,B,S;
//declaring outputs
 wire Y;
//instantiating the design module
    mux dut (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );
//providing stimulus
    initial begin
        //test case 1
        A<=1'b0; B<=1'b0; S<=1'b0;
        #100; //delay in output
        //test case 2
        A<=1'b0; B<=1'b0; S<=1'b1;
        #100;
        //test case 3
        A<=1'b0; B<=1'b1; S<=1'b0;
        #100;
        //test case 4
        A<=1'b0; B<=1'b1; S<=1'b1;
        #100;
        //test case 5
        A<=1'b1; B<=1'b0; S<=1'b0;
        #100;
        //test case 6
        A<=1'b1; B<=1'b0; S<=1'b1;
        #100;
        //test case 7
        A<=1'b1; B<=1'b1; S<=1'b0;
        #100;
        //test case 8
        A<=1'b1; B<=1'b1; S<=1'b1;
        #100;
    end
//dump waveform
    initial begin   
        $dumpfile("mux.vcd");
        $dumpvars(0,tb); //dump all signals inside testbench
end   
endmodule            