`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2021 08:02:52 PM
// Design Name: 
// Module Name: lab141
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


module lab141(
    input u,
    input v,
    input w,
    input s0,
    input s1,
    output m
    );
    wire out1;
    
    lab1_1_1 M1(u,v,s0,out1);
    lab1_1_1 M2 (out1, w, s1, m);
    
endmodule
