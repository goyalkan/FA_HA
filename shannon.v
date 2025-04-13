`timescale 1ns / 1ps


module FAshannon(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    wire w1,w2,w3,w4,w5,w6,w7,w8;
    
    
    xor(w1,a,b);
    not(w2,cin);
    xnor(w3,a,b);
    and g1(w4,w1,w2);
    and g2(w5,w3,cin);
    and g3(w6,a,b);
    and g4(w7,b,cin);
    and g5(w8,a,cin);
    or g6(sum,w4,w5);
    
    assign cout = w6|w7|w8;
    
endmodule
