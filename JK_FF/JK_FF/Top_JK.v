`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:02 01/23/2024 
// Design Name: 
// Module Name:    Top_JK 
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
module Top_JK(
input [1:0] JK, 
input clk,
output reg Q, 
output reg Qb );
  
always @(posedge clk)
  begin
		case(JK)
		  2'b00: Q = Q;
		  2'b01: Q = 0;
		  2'b10: Q = 1;
		  2'b11: Q = ~Q;
		endcase
		Qb = ~Q;
	end
	

endmodule
