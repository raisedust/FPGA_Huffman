`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:19:44 06/14/2017
// Design Name:   bubble_sort
// Module Name:   F:/ise/workspace/huffman/bubble_sort_test.v
// Project Name:  huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bubble_sort
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bubble_sort_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg [7:0] weight_A;
	reg [7:0] weight_B;
	reg [7:0] weight_C;
	reg [7:0] weight_D;

	// Outputs
	wire [31:0] SORT_RESULT;

	// Instantiate the Unit Under Test (UUT)
	bubble_sort uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.weight_A(weight_A), 
		.weight_B(weight_B), 
		.weight_C(weight_C), 
		.weight_D(weight_D), 
		.SORT_RESULT(SORT_RESULT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		weight_A = 8'b1100_0101;
		weight_B = 8'b1000_0001;
		weight_C = 8'b1111_1110;
		weight_D = 8'b0011_1010;

		// Wait 100 ns for global reset to finish
		#100;
        nRST = 1;
		// Add stimulus here

	end
	parameter DELAY = 1;
	always
		#DELAY CLK = ~CLK; 
      
endmodule

