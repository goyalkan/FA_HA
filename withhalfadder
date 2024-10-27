`timescale 1ns / 1ps

module half_add(
    input a,
    input b,
    output sum,
    output carry
    );
    assign sum= a^b;
    assign carry= a&b;
endmodule

module fulladderusingHA(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    wire s1,c1,c2;
     half_add uut1(a,b,s1,c1);
     half_add uut2(s1,cin,sum,c2);
    assign cout=c1|c2;
endmodule
