`timescale 1ns / 1ps


module fulladderusingLUT(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    
// Declare a 2-dimensional register array to store the LUT values
reg [1:0] LUT [0:7];

// Initialize the LUT with the correct values
initial begin
    LUT[0] = 2'b00; // A = 0, B = 0, Cin = 0
    LUT[1] = 2'b01; // A = 0, B = 0, Cin = 1
    LUT[2] = 2'b01; // A = 0, B = 1, Cin = 0
    LUT[3] = 2'b10; // A = 0, B = 1, Cin = 1
    LUT[4] = 2'b01; // A = 1, B = 0, Cin = 0
    LUT[5] = 2'b10; // A = 1, B = 0, Cin = 1
    LUT[6] = 2'b10; // A = 1, B = 1, Cin = 0
    LUT[7] = 2'b11; // A = 1, B = 1, Cin = 1
end

// Use the LUT to calculate the sum and carry-out
assign {cout, sum} = LUT[{a, b, cin}];

endmodule
