`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:30:18 01/23/2024
// Design Name:   Top
// Module Name:   E:/Tai lieu dai hoc/HK2 23 - 24/Vi_mach/verilog/Dflipflop/testbench.v
// Project Name:  Dflipflop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg reset_n;
	reg clk;
	reg d;

	// Outputs
	wire q;
	wire q_n;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.reset_n(reset_n), 
		.clk(clk), 
		.d(d), 
		.q(q), 
		.q_n(q_n)
	);

	initial begin
		// Initialize Inputs
		reset_n = 0;
		clk = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		reset_n = 1;
		d = 0;
		#100;
		
	   reset_n = 0;
		d = 1;
		#100;

        
		// Add stimulus here

	end
	always
	 begin 
	   clk = ~clk; 
	   #10;
	 end
      
endmodule

