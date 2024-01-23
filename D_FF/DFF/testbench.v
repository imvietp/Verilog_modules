`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:39:46 01/22/2024
// Design Name:   Top
// Module Name:   E:/Tai lieu dai hoc/HK2 23 - 24/Vi_mach/verilog/DFF/testbench.v
// Project Name:  DFF
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

module testbech;

	// Inputs
	reg D;
	reg clk;

	// Outputs
	wire Q;
   wire Qb;
	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.D(D), 
		.clk(clk), 
		.Q(Q),
		.Qb(Qb)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		D = 1;
		#100;
		
		
		D = 0;
		#100;
		
        
		// Add stimulus here

	end
	
always
   begin
	  clk = ~clk;
	  #10;
	end
	
      
endmodule

