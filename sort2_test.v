`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:47:00 06/14/2017
// Design Name:   sort2
// Module Name:   F:/ise/workspace/huffman/sort2_test.v
// Project Name:  huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sort2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sort2_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg [7:0] node1;
	reg [7:0] node2;

	// Outputs
	wire [7:0] new1;
	wire [7:0] new2;

	// Instantiate the Unit Under Test (UUT)
	sort2 uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.node1(node1), 
		.node2(node2), 
		.new1(new1), 
		.new2(new2)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		node1 = 8'b1110_0001;
		node2 = 8'b0001_1111;

		// Wait 100 ns for global reset to finish
		#100;
        nRST = 1;
		// Add stimulus here
	end
	parameter DELAY = 1;
	always
		#DELAY CLK = ~CLK;
      
endmodule

