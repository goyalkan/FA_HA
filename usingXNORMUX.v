`timescale 1ns / 1ps

module full_adder_xnor_mux (
    input A,B,Cin,   // Inputs: A, B, Cin
    output Sum,Cout   // Outputs: Sum, Cout
);
    wire w1;

    // XNOR logic for Sum
    xnor (w1, A, B);            
    xnor (Sum,w1,Cin); 

    assign Cout = (w1) ? A : Cin ;  

endmodule
