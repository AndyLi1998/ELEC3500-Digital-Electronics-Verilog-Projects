`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 07:59:29 PM
// Design Name: 
// Module Name: bcdto7segment_dataflow
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

module bcdto7segment_dataflow(
    input [3:0] bcd, // 4 bit binary number derived in other script to be displayed on 7 segment.
    output [6:0] seg // segments to be turned on.
    );

    reg [6:0] seg;
    
    // Whenever the input number changes
    always @(bcd)
    begin
        case (bcd) // Case to display each number on the 7 segment based on the input.
            0 : seg <= 7'b1000000;
            1 : seg <= 7'b1111001;
            2 : seg <= 7'b0100100;
            3 : seg <= 7'b0110000;
            4 : seg <= 7'b0011001;
            5 : seg <= 7'b0010010;
            6 : seg <= 7'b0000010;
            7 : seg <= 7'b1111000;
            8 : seg <= 7'b0000000;
            9 : seg <= 7'b0010000;
            
            default : seg <= 7'b1111111; 
        endcase
    end
        
endmodule