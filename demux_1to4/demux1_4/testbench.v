`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:39:34 01/23/2024
// Design Name:   demux
// Module Name:   E:/Tai lieu dai hoc/HK2 23 - 24/Vi_mach/verilog/demux1_4/testbench.v
// Project Name:  demux1_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux
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
	reg I;
	reg [1:0] S;

	// Outputs
	wire [3:0] Y;

	// Instantiate the Unit Under Test (UUT)
	demux uut (
		.I(I), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		I = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		S = 1;
		

		// Wait 100 ns for global reset to finish
		#100;  
		
	
		S = 2;
		

		// Wait 100 ns for global reset to finish
		#100;
	
		S = 3;
		

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
    
  always
    begin
      I = ~I;
      #10;
    end		
	  
endmodule

