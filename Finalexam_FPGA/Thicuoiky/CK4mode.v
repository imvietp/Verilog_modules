`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:41:11 01/13/2024 
// Design Name: 
// Module Name:    CK4mode 
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
module CK4mode(
input clk,
input reset,
input S,
output Y
    );
wire c1,c2;

Chiatanso1hz mode1 (clk, reset, c1);
Chiatanso2hz mode2 (clk, reset, c2);
//Chiatanso5hz mode3 (clk, reset, c3);
//Chiatanso10hz mode4 (clk, reset, c4);
Mux4_1 mux (clk, S, c1, c2, Y); 
endmodule