`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:29:23 06/14/2017
// Design Name:   sort_frequent
// Module Name:   F:/ise/workspace/huffman/sort_frequent_test.v
// Project Name:  huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sort_frequent
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sort_frequent_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg [15:0] FREQUENT_IN;

	// Outputs
	wire [31:0] FREQUENT_OUT;

	// Instantiate the Unit Under Test (UUT)
	sort_frequent uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.FREQUENT_IN(FREQUENT_IN), 
		.FREQUENT_OUT(FREQUENT_OUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		FREQUENT_IN = 16'b0011_0001_0010_0001;

		// Wait 100 ns for global reset to finish
		#100;
        nRST = 1;
		// Add stimulus here

	end
	parameter DELAY = 1;
	always 
		#DELAY CLK = ~CLK;
	
      
endmodule

