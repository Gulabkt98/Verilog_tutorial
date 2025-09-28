module tb ();
//declaring inputs
  reg A,B,C;
//declaring outputs
  wire Q;   
//design call
    comb dut (
        .A(A),
        .B(B),
        .C(C),
        .Q(Q)
    );

//providing stimulus    
    initial begin
        //test case 1
        A<=1'b0; B<=1'b0; C<=1'b0;
        #100; //delay in output
        //test case 2
        A<=1'b0; B<=1'b0; C<=1'b1;
        #100;
        //test case 3
        A<=1'b0; B<=1'b1; C<=1'b0;
        #100;
        //test case 4
        A<=1'b0; B<=1'b1; C<=1'b1;
        #100;
        //test case 5
        A<=1'b1; B<=1'b0; C<=1'b0;
        #100;
        //test case 6
        A<=1'b1; B<=1'b0; C<=1'b1;
        #100;
        //test case 7
        A<=1'b1; B<=1'b1; C<=1'b0;
        #100;
        //test case 8
        A<=1'b1; B<=1'b1; C<=1'b1;
        #100;
    end

//dump waveform
    initial begin
        $dumpfile("comb.vcd");
        $dumpvars(0,tb); //dump all signals inside testbench
end   
endmodule