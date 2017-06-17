`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:09:48 06/15/2017
// Design Name:   coding
// Module Name:   F:/ise/workspace/huffman/coding_test.v
// Project Name:  huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: coding
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module coding_test;

	// Inputs
	reg CLK;
	reg nRST;

	// Outputs
	wire [7:0] DATA_OUT;

	// Instantiate the Unit Under Test (UUT)
	coding uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.DATA_OUT(DATA_OUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;

		// Wait 100 ns for global reset to finish
		#100;
			nRST = 1;
		// Add stimulus here

	end
	parameter DELAY = 1;
	always 
		#DELAY CLK = ~ CLK;
      
endmodule

