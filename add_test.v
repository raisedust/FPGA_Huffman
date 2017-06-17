`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:52:58 06/13/2017
// Design Name:   add_model
// Module Name:   F:/ise/workspace/huffman/add_test.v
// Project Name:  huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: add_model
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module add_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg [3:0] ADD_1;
	reg [3:0] ADD_2;

	// Outputs
	wire [3:0] SUM;

	// Instantiate the Unit Under Test (UUT)
	add_model uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.ADD_1(ADD_1), 
		.ADD_2(ADD_2), 
		.SUM(SUM)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		ADD_1 = 4'b0001;
		ADD_2 = 4'b0010;

		// Wait 100 ns for global reset to finish
		#100;
        nRST = 1;
		// Add stimulus here

	end
	parameter DALAY = 1;
	always 
		# DALAY CLK = ~CLK;
      
endmodule

