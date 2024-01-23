`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:19:23 01/23/2024
// Design Name:   Top
// Module Name:   E:/Tai lieu dai hoc/HK2 23 - 24/Vi_mach/verilog/Test_logicgate/testbench.v
// Project Name:  Test_logicgate
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
	reg a;
	reg b;

	// Outputs
	wire cor;
	wire cand;
	wire cxor;
	wire cxnor;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.a(a), 
		.b(b), 
		.cor(cor), 
		.cand(cand), 
		.cxor(cxor), 
		.cxnor(cxnor)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
      

		a = 0;
		b = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		
	   a = 1;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		
	   a = 1;
		b = 1;

		// Wait 100 ns for global reset to finish
		#100;

	end
      
endmodule

