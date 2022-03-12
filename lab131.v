`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2021 07:49:00 PM
// Design Name: 
// Module Name: lab131
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


module lab131(
    input [1:0] x,
    input [1:0] y,
    input s,
    output reg [1:0] m
    );
    
    always @ (x or y or s)
        begin
        if(s==0)
            m=x;
        else
            m=y;
        end

    
endmodule

