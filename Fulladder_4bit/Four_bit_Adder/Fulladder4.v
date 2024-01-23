`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:16 01/23/2024 
// Design Name: 
// Module Name:    Fulladder4 
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
module Fulladder4(
input ci,
input a, b, 
output S,
output cout
    );

assign S = ci ^ ( a ^ b );
assign cout = (a & b) | (b & ci) | (ci & a); 

endmodule
