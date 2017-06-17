`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:22:31 06/13/2017
// Design Name:   light_led
// Module Name:   F:/ise/workspace/huffman/light_led_test.v
// Project Name:  huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: light_led
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module light_led_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg [15:0] CODE_TABLE;

	// Outputs
	wire [7:0] LED_DATA;

	// Instantiate the Unit Under Test (UUT)
	light_led uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.CODE_TABLE(CODE_TABLE), 
		.LED_DATA(LED_DATA)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		CODE_TABLE = 16'b0101_1010_1101_0011;

		// Wait 100 ns for global reset to finish
		#100;
        nRST = 1;
		// Add stimulus here

	end
	parameter DALAY = 1;
	always 
		#DALAY CLK = ~CLK;
      
endmodule

