`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2021 09:55:49 PM
// Design Name: 
// Module Name: bit4_serial_in_parallel_out_shift_reg
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


module bit4_serial_in_parallel_out_shift_reg(
    input Clk,
    input ShiftEn,
    input ShiftIn,
    output [3:0] ParallelOut,
    output ShiftOut
    );
    
    reg [3:0] Shift_reg;
    
    always @(posedge Clk)
    begin
        if (ShiftEn)
            Shift_reg <= {Shift_reg[2:0],ShiftIn};
    end
        
        
    assign ParallelOut = Shift_reg;    
    assign ShiftOut = ParallelOut[3];
    
endmodule

