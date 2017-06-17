`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:13:31 06/14/2017 
// Design Name: 
// Module Name:    main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module main(CLK, RESET_Z, LED_DATA);
	input CLK;
	input RESET_Z;
	(* KEEP="TRUE"*)output [3:0] LED_DATA;	
	 
	//huffman±àÂë
	coding huffman_coding(
		.CLK(CLK),
		.nRST(RESET_Z),
		.DATA_OUT(LED_DATA[3:0])
	);

endmodule
