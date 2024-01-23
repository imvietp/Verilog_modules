`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:55:17 01/23/2024 
// Design Name: 
// Module Name:    Top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Top(
input [3:0] a, b,
input ci,
output [3:0] S,
output cout
    );
wire c1, c2, c3;

Fulladder1 fa1(a[0], b[0], ci, S[0], c1);
Fulladder2 fa2(c1, a[1], b[1], S[1], c2);
Fulladder3 fa3(c2, a[2], b[2], S[2], c3);
Fulladder4 fa4(c3, a[3], b[3], S[3], cout); 


endmodule
