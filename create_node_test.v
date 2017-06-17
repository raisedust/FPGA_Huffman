`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:52:52 06/14/2017
// Design Name:   create_node_code
// Module Name:   F:/ise/workspace/huffman/create_node_test.v
// Project Name:  huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: create_node_code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module create_node_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg [1:0] state;
	reg [12:0] leaf_A;
	reg [12:0] leaf_B;
	reg [12:0] leaf_C;
	reg [12:0] leaf_D;

	// Outputs
	wire [15:0] CODE_TABLE;

	// Instantiate the Unit Under Test (UUT)
	create_node_code uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.state(state), 
		.leaf_A(leaf_A), 
		.leaf_B(leaf_B), 
		.leaf_C(leaf_C), 
		.leaf_D(leaf_D), 
		.CODE_TABLE(CODE_TABLE)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		state = 2'b10;
		leaf_A = 13'b0000_0_0001_1010;
		leaf_B = 13'b0000_1_0001_1100;
		leaf_C = 13'b0001_1_0010_1011;
		leaf_D = 13'b0010_0_0011_1101;

		// Wait 100 ns for global reset to finish
		#100;
        nRST = 1;
		// Add stimulus here

	end
	parameter DELAY = 2;
	always
		#DELAY CLK = ~CLK; 
      
endmodule

