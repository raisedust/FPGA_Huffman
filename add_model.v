`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:12 05/24/2017 
// Design Name: 
// Module Name:    ADD_MODEL 
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
module add_model(CLK,nRST,ADD_1,ADD_2,SUM);
	input	CLK;
	input nRST;
	//input	EN;
	input [3:0] ADD_1;
	input	[3:0] ADD_2;
	output [3:0] SUM;	

	reg [3:0]sum_r ;
	always@(posedge CLK or negedge nRST)
	begin
		if(!nRST)
			sum_r <= 4'b0000;
		else
			sum_r <= ADD_1 + ADD_2; 
	end
	
	assign  SUM = (sum_r > 5'd9)? (sum_r - 4'd10):sum_r[3:0];
endmodule
