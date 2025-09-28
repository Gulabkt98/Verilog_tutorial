module mux (A,B,S,Y);
    input A, B, S;   // inputs
    output Y;         // output
    // Corrected assign statement
    assign Y = (S) ? B : A;  
endmodule
