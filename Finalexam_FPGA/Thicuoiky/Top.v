`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:39:44 01/13/2024 
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
input clk, reset, 
input S, 
input ss, 
input [1:0] mode,
output [7:0] led );
 
wire   c1;
machdich dich1bit( c1, reset, ss, mode, led);

CK4mode chiatanso(clk, reset, S, c1);

endmodule