`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:01:22 01/22/2024
// Design Name:   Top_RS
// Module Name:   E:/Tai lieu dai hoc/HK2 23 - 24/Vi_mach/verilog/RS_FF/Testbench.v
// Project Name:  RS_FF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top_RS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench;

	// Inputs
	reg [1:0] SR;
	reg clk;

	// Outputs
	wire Q;
	wire Qb;

	// Instantiate the Unit Under Test (UUT)
	Top_RS uut (
		.SR(SR), 
		.clk(clk), 
		.Q(Q), 
		.Qb(Qb)
	);

	initial begin
		// Initialize Inputs
		SR = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		SR = 1;
		#100;
		
		SR = 2;
		#100;
		
		SR = 3;
		#100;
        
		// Add stimulus here

	end
      
always
  begin
    clk = ~clk;
	 #10;
  end
  
endmodule

