`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:10 01/23/2024 
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
input a, b,
output cor, cand, cxor, cxnor
    );
	 
or u1(cor, a, b );
and u2(cand, a, b);
xor u3(cxor, a, b);
xnor u4(cxnor, a, b);


endmodule
