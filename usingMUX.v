`timescale 1ns / 1ps


module fulladderusingMUX(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    
// 3-bit input selector
wire [2:0] sel = {a, b, cin};

// 8-to-2 line multiplexer
reg [1:0] LUT [0:7];
wire [1:0] Output = LUT[sel];

// Assign outputs
assign sum = Output[0];
assign cout = Output[1];

// Initialize LUT
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

endmodule

