`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:02:00 01/23/2024 
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
input [3:0] I,
input [1:0] S,
output reg Y
    );
always @(I or S)
	begin
		 case (S)
			 2'b00: Y <= I[0];
			 2'b01: Y <= I[1];
			 2'b10: Y <= I[2];
			 2'b11: Y <= I[3];
		 endcase
	end
	
endmodule
