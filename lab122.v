`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2021 06:38:54 PM
// Design Name: 
// Module Name: lab122
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


module lab122(
    input [1:0] x,
    input [1:0] y,
    input s,
    output [1:0] m
    );
    
    assign m[0]= (s)?y[0]:x[0];
    assign m[1]= (s)?y[1]:x[1];
    
endmodule
