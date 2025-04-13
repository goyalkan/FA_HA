`timescale 1ns / 1ps

module FAnor_gate(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
  wire out1,out2,out3,out4,out5,out6,out7;
    
nor gate1(out1, A, B);
nor gate2(out2, A, out1);
nor gate3(out3, B, out1);
nor gate4(out4, out2, out3);
nor gate5(out5, out4, Cin);
nor gate6(out6, out5, out4);
nor gate7(out7, out5, Cin);
nor gate8(Sum, out6, out7);
nor gate9(Cout, out5, out1);

endmodule
