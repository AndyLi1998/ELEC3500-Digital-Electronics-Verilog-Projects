`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 10:31:25 PM
// Design Name: 
// Module Name: fulladder_dataflow
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


module fulladder_dataflow(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
//    wire cout1,cout2,cout3;
     //wire a,b,cin;
     //reg s, cout;
    
     assign s = ((~b)&(~a)&cin)|((~b)&a&(~cin))|(b&(~a)&(~cin))|(b&a&cin);
     assign cout = (b&a)|(cin&(a|b));
     
     //assign p = a|b;
     //assign g = a&b;
     //assign s = a^b^cin;
    
endmodule

module rca_dataflow(
input [3:0]a,
    input [3:0]b,
    input cin,
    output cout,
    output [3:0]s
    );
    wire cout1, cout2, cout3;
    
    fulladder_dataflow(a[0], b[0], cin, s[0], cout1);
    fulladder_dataflow(a[1], b[1], cout1, s[1], cout2);
    fulladder_dataflow(a[2], b[2], cout2, s[2], cout3);
    fulladder_dataflow(a[3], b[3], cout3, s[3], cout);
endmodule


