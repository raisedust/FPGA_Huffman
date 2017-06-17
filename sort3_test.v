`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:32:32 06/13/2017
// Design Name:   sort3
// Module Name:   F:/ise/workspace/huffman/sort3_test.v
// Project Name:  huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sort3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sort3_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg [7:0] node1;
	reg [7:0] node2;
	reg [7:0] node3;

	// Outputs
	wire [7:0] new1;
	wire [7:0] new2;
	wire [7:0] new3;

	// Instantiate the Unit Under Test (UUT)
	sort3 uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.node1(node1), 
		.node2(node2), 
		.node3(node3), 
		.new1(new1), 
		.new2(new2), 
		.new3(new3)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		node1 = 8'b0010_1010;
		node2 = 8'b0011_1011;
		node3 = 8'b0001_1100;

		// Wait 100 ns for global reset to finish
		#100;
        nRST = 1;
		// Add stimulus here

	end
	parameter DALAY = 3;
	always 
      # DALAY CLK = ~ CLK;
endmodule

