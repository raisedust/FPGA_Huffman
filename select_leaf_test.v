`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:54:03 06/14/2017
// Design Name:   select_leaf
// Module Name:   F:/ise/workspace/huffman/select_leaf_test.v
// Project Name:  huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: select_leaf
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module select_leaf_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg [12:0] info_node_3;

	// Outputs
	wire [12:0] state_S0;


	// Instantiate the Unit Under Test (UUT)
	select_leaf uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.state_S0(state_S0)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		info_node_3 = 13'b0001_1_0010_0010;

		#100;
        nRST = 1;
		// Add stimulus here

	end
	parameter DELAY = 1;
	always 
		#DELAY CLK = ~CLK; 
      
endmodule

