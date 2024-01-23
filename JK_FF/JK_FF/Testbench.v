`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:15:32 01/23/2024
// Design Name:   Top_JK
// Module Name:   E:/Tai lieu dai hoc/HK2 23 - 24/Vi_mach/verilog/JK_FF/testbench.v
// Project Name:  JK_FF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top_JK
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
	reg [1:0] JK;
	reg clk;

	// Outputs
	wire Q;
	wire Qb;

	// Instantiate the Unit Under Test (UUT)
	Top_JK uut (
		.JK(JK), 
		.clk(clk), 
		.Q(Q), 
		.Qb(Qb)
	);

	initial begin
		// Initialize Inputs
		JK = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		JK = 2'b00;
		#100;
		
		JK = 2'b01;
		#100;
		
		JK = 2'b10;
		#100;
		
	   JK = 2'b11;
		#100;
		
        
		// Add stimulus here

	end
	
   always
	begin 
	  clk = ~clk;
	  #10;
	end
      
endmodule

