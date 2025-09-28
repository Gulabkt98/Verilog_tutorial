module tb ();
//declaring inputs
  reg S,P,V;    
//declaring outputs
  wire LED;
//design call
    comb dut (
        .S(S),
        .P(P),
        .V(V),
        .LED(LED)
    );
//providing stimulus
  initial begin
    //test case 1
    S<=1'b0; P<=1'b0; V<=1'b0;
    #100; //delay in output
    //test case 2
    S<=1'b0; P<=1'b0; V<=1'b1;
    #100;
    //test case 3
    S<=1'b0; P<=1'b1; V<=1'b0;
    #100;
    //test case 4
    S<=1'b0; P<=1'b1; V<=1'b1;
    #100;
    //test case 5
    S<=1'b1; P<=1'b0; V<=1'b0;
    #100;
    //test case 6
    S<=1'b1; P<=1'b0; V<=1'b1;
    #100;
    //test case 7
    S<=1'b1; P<=1'b1; V<=1'b0;
    #100;
    //test case 8
    S<=1'b1; P<=1'b1; V<=1'b1;
    #100;
  end

//dump waveform
    initial begin
        $dumpfile("comb.vcd");
        $dumpvars(0,tb); //dump all signals inside testbench
end
endmodule