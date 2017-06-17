`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:16:43 06/14/2017
// Design Name:   main
// Module Name:   F:/ise/workspace/huffman/main_test.v
// Project Name:  huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_test;

	// Inputs
	reg CLK;
	reg RESET_Z;

	// Outputs
	wire [7:0] LED_DATA;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.CLK(CLK), 
		.RESET_Z(RESET_Z), 
		.LED_DATA(LED_DATA)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET_Z = 0;

		// Wait 100 ns for global reset to finish
		#100;
			RESET_Z = 1;
		// Add stimulus here

	end
	parameter DELAY = 1;
	always
		#DELAY CLK = ~CLK;
      
endmodule

