`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:04:03 06/13/2017
// Design Name:   count_frequent
// Module Name:   F:/ise/workspace/huffman/count_frequent_test.v
// Project Name:  huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count_frequent
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module count_frequent_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg [27:0] CHARACTER_IN;

	// Outputs
	wire [15:0] FREQUENT_OUT;

	// Instantiate the Unit Under Test (UUT)
	count_frequent uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.CHARACTER_IN(CHARACTER_IN), 
		.FREQUENT_OUT(FREQUENT_OUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		CHARACTER_IN = 28'b1010_1010_1100_1101_1101_1011_1011;

		// Wait 100 ns for global reset to finish
		#100;
			nRST = 1;
        
		// Add stimulus here

	end
	parameter DELAY = 1;
	always
		#DELAY CLK =~CLK;
      
endmodule

