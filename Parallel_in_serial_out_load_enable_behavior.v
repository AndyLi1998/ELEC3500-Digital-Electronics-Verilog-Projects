`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2021 09:33:12 PM
// Design Name: 
// Module Name: Parallel_in_serial_out_load_enable_behavior
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


module Parallel_in_serial_out_load_enable_behavior(
    input Clk,
    input load,
    input ShiftEn,
    input ShiftIn,
    input [3:0] ParallelIn,
    output ShiftOut,
    output [3:0] RegContent
    );
    
    reg [3:0] shift_reg;
    
    always @(posedge Clk)
        if(load)
            shift_reg <= ParallelIn;
        else if (ShiftEn)
            shift_reg <= {shift_reg[2:0], ShiftIn};
            
    assign ShiftOut = shift_reg[3];
    assign RegContent = shift_reg;
    
endmodule

