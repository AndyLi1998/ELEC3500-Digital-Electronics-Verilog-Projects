`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2021 10:28:50 AM
// Design Name: 
// Module Name: lab1_1_2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab1_1_2(
    input [1:0] x,
    input [1:0] y,
    input s,
    output [1:0] m
    );
    
    wire [1:0] out1, out2;
    wire outN;
    not A0(outN, s);
    and A11(out1[0], x[0], outN);
    and A12(out1[1], x[1], outN);
    and A21(out2[0], y[0], s);
    and A22(out2[1], y[1], s);
    or A3[1:0](m[1:0], out1, out2);
    
endmodule
