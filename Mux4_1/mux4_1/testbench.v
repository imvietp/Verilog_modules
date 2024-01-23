`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:09:22 01/23/2024
// Design Name:   Top
// Module Name:   E:/Tai lieu dai hoc/HK2 23 - 24/Vi_mach/verilog/mux4_1/testbench.v
// Project Name:  mux4_1
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
	reg [3:0] I;
	reg [1:0] S;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
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
	    I = I + 1;
		 #10;
	  end
      
endmodule

