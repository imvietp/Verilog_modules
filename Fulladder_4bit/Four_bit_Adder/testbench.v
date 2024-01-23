`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:20:26 01/23/2024
// Design Name:   Top
// Module Name:   E:/Tai lieu dai hoc/HK2 23 - 24/Vi_mach/verilog/Four_bit_Adder/testbench.v
// Project Name:  Four_bit_Adder
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
	reg [3:0] a;
	reg [3:0] b;
	reg ci;

	// Outputs
	wire [3:0] S;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.a(a), 
		.b(b), 
		.ci(ci), 
		.S(S), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		ci = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
      a = 3;
		b = 4;
		ci = 1;  
		#100;
		
		a = 4;
		b = 5;
		ci = 0;  
		#100;
		
		a = 6;
		b = 7;
		ci = 1;  
		#100;
		
		
		a = 8;
		b = 8;
		ci = 1;  
		#100;
		// Add stimulus here

	end
      
endmodule

