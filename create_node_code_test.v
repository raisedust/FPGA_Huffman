`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:00:59 06/14/2017
// Design Name:   create_node_code
// Module Name:   F:/ise/workspace/huffman/create_node_code_test.v
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

module create_node_code_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg [1:0] state;
	reg [12:0] info_node_1;
	reg [12:0] info_node_2;
	reg [12:0] info_node_3;
	reg [12:0] info_node_4;
	reg [12:0] info_node_5;
	reg [12:0] info_node_6;
	reg [12:0] info_node_7;

	// Outputs
	wire [7:0] state1;
	wire [7:0] state2;
	wire [7:0] state3;
	wire [7:0] state4;
	wire [7:0] state5;
	wire [7:0] state6;
	wire [7:0] state7;

	// Instantiate the Unit Under Test (UUT)
	create_node_code uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.state(state), 
		.info_node_1(info_node_1), 
		.info_node_2(info_node_2), 
		.info_node_3(info_node_3), 
		.info_node_4(info_node_4), 
		.info_node_5(info_node_5), 
		.info_node_6(info_node_6), 
		.info_node_7(info_node_7), 
		.state1(state1), 
		.state2(state2), 
		.state3(state3), 
		.state4(state4), 
		.state5(state5), 
		.state6(state6), 
		.state7(state7)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		state = 2'b10;
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

