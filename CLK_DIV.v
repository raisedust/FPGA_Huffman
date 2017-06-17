`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:20 10/12/2007 
// Design Name: 
// Module Name:    CLK_DIV 
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
module CLK_DIV(CLK_IN, nRST, CLK_OUT);
    input CLK_IN;
    input nRST;
    output CLK_OUT;
	
	reg CLK_OUT = 1'b1;
	reg [9:0] DIV_counter = 10'h000;

	parameter DIV_FACTOR = 1;
	
	always@(posedge CLK_IN)
	 begin
		if(!nRST)
		 begin
			CLK_OUT <= 1'b1;
			DIV_counter <= 10'h000;
		 end
		else
		 begin
			if(DIV_counter != DIV_FACTOR >> 1)
			 begin
				DIV_counter <= DIV_counter + 1;
			 end
			else
			 begin
				DIV_counter <= 10'h000;
				CLK_OUT <= !CLK_OUT;
			 end
		 end
	 end
endmodule
