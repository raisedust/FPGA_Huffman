`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:01:19 06/14/2017
// Design Name:   select_not_leaf_state
// Module Name:   F:/ise/workspace/huffman/select_not_leaf_state_test.v
// Project Name:  huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: select_not_leaf_state
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module select_not_leaf_state_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg [12:0] info_node_1;
	reg [12:0] info_node_2;
	reg [12:0] info_node_3;
	reg [12:0] info_node_4;
	reg [12:0] info_node_5;
	reg [12:0] info_node_6;
	reg [12:0] info_node_7;

	// Outputs
	wire [1:0] state;

	// Instantiate the Unit Under Test (UUT)
	select_not_leaf_state uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.info_node_1(info_node_1), 
		.info_node_2(info_node_2), 
		.info_node_3(info_node_3), 
		.info_node_4(info_node_4), 
		.info_node_5(info_node_5), 
		.info_node_6(info_node_6), 
		.info_node_7(info_node_7), 
		.state(state)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		info_node_1 = 13'b0000_0_0001_1010;
		info_node_2 = 13'b0000_1_0001_1100;
		info_node_3 = 13'b0001_0_0010_0010;
		info_node_4 = 13'b0001_1_0010_1011;
		info_node_5 = 13'b0010_0_0011_1101;
		info_node_6 = 13'b0010_1_0100_0100;
		info_node_7 = 13'b1111_1_0111_0111;

		// Wait 100 ns for global reset to finish
		#100;
        nRST = 1;
		// Add stimulus here

	end
	parameter DELAY = 2;
	always
		#DELAY CLK = ~CLK; 
      
endmodule

