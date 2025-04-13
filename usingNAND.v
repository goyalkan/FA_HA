`timescale 1ns / 1ps

module FAnand_gate(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );
   
wire out1,out2,out3,out4,out5,out6,out7;

// NAND gates for the circuit
nand gate1(out1, A, B);
nand gate2(out2, A, out1);
nand gate3(out3, B, out1);
nand gate4(out4, out2, out3);
nand gate5(out5, out4, Cin);
nand gate6(out6, out5, out4);
nand gate7(out7, out5, Cin);
nand gate8(S, out6, out7);
nand gate9(Cout, out5, out1);

endmodule


