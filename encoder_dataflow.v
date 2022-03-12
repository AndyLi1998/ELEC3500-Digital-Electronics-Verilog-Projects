`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2021 07:28:41 AM
// Design Name: 
// Module Name: encoder_dataflow
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


module encoder_dataflow(
    input [7:0] v,
    input E1,
    output [2:0] A,
    output E0,
    output GS
    );
    
    
    
    assign A[0] = E1 | (~E1&v[0]&v[1]&v[2]&v[3]&v[4]&v[5]&v[6]&v[7]) | (~E1&~v[6]&v[7])
                  | (~E1&~v[4]&v[5]&v[6]&v[7])
                  | (~E1&~v[2]&v[3]&v[4]&v[5]&v[6]&v[7])
                  | (~E1&~v[0]&v[1]&v[2]&v[3]&v[4]&v[5]&v[6]&v[7]);
    
    assign A[1] = E1 | (~E1&v[0]&v[1]&v[2]&v[3]&v[4]&v[5]&v[6]&v[7])
            | (~E1&~v[5]&v[6]&v[7])
            | (~E1&~v[4]&v[5]&v[6]&v[7])
            | (~E1&~v[1]&v[2]&v[2]&v[4]&v[5]&v[6]&v[7])
            | (~E1&~v[0]&v[1]&v[2]&v[3]&v[4]&v[5]&v[6]&v[7]);
    
    assign A[2] = E1 | (~E1&v[0]&v[1]&v[2]&v[3]&v[4]&v[5]&v[6]&v[7])
            | (~E1&~v[3]&v[4]&v[5]&v[6]&v[7])
            | (~E1&~v[2]&v[3]&v[4]&v[5]&v[6]&v[7])
            | (~E1&~v[1]&v[2]&v[2]&v[4]&v[5]&v[6]&v[7])
            | (~E1&~v[0]&v[1]&v[2]&v[3]&v[4]&v[5]&v[6]&v[7]);
    
    assign GS = E1 | (~E1&v[0]&v[1]&v[2]&v[3]&v[4]&v[5]&v[6]&v[7]);
    assign E0 = E1 | ((~E1)&(~v[7])) | (~E1&~v[6]&v[7])
            | (~E1&~v[5]&v[6]&v[7])
            | (~E1&~v[4]&v[5]&v[6]&v[7]) 
            | (~E1&~v[3]&v[4]&v[5]&v[6]&v[7])
            | (~E1&~v[2]&v[3]&v[4]&v[5]&v[6]&v[7])
            | (~E1&~v[1]&v[2]&v[3]&v[4]&v[5]&v[6]&v[7])
            | (~E1&~v[0]&v[1]&v[2]&v[3]&v[4]&v[5]&v[6]&v[7]); 

    
endmodule
