`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2021 10:24:01 PM
// Design Name: 
// Module Name: bit8_counter_T_flipflop
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


module bit8_counter_T_flipflop(
    input Clock,
    input Enable,
    input Clear_n,
    output [7:0] Q
    );
    reg [7:0] counter;
    always@(posedge Clock or negedge Clear_n)
    begin
        if(~Clear_n)
            counter <= 8'b00000000;
        else if(Enable) 
                counter <= counter + 8'b00000001;
        
    end
    
    assign Q = counter;
endmodule
