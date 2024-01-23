`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:23 01/23/2024 
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
module Top
( 
  input wire    reset_n, 
  input wire    clk, 
  input wire    d, 
  output wire   q, 
  output wire   q_n 
); 
 
  wire w1, w2, w3, w4, w5, w6; 
 
  //master 
  nand na1(w1, d, ~clk); 
  nand na2(w2, ~clk, ~d); 
  nand na3(w3, w1, w4); 
  nand na4(w4, w3, w2); 
 
  //slave 
  nand na5(w5, w3, clk); 
  nand na6(w6, clk, ~w3); 
  nand na7(q, reset_n, w5, q_n); 
  nand na8(q_n, q, w6);endmodule 