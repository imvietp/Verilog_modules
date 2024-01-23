`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:43:06 01/13/2024 
// Design Name: 
// Module Name:    Mux4_1 
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
module Mux4_1(
input wire clk, 
input sel, 
input w0, w1,
output reg Y);

always @(posedge clk)
case(sel)
2'b00: Y = w0;
2'b01: Y = w1;

endcase


endmodule