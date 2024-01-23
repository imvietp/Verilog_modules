`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:21 01/22/2024 
// Design Name: 
// Module Name:    Top_RS 
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
module Top_RS(
input [1:0] SR,
input clk,
output reg Q, 
output Qb
);

always @(posedge clk)
   begin
	  case(SR)
	    2'b00: Q = Q;
		 2'b01: Q = 0;
		 2'b10: Q = 1;
		 2'b11: Q = 1'bz;
		 endcase
	end
	
   assign Qb = ~Q; 
endmodule
		
   



