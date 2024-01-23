`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:35:56 01/23/2024 
// Design Name: 
// Module Name:    demux 
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
module demux(
 input I,
 input [1:0] S,
 output reg [3:0] Y
    );
  
 always @(I,S)
   begin
		case(S)
		  2'b01: Y[1] = I;
		  2'b10: Y[2] = I;
		  2'b11: Y[3] = I;
		  default: Y[0] = I;
		endcase
   end		


endmodule
