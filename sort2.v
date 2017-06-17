`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:35:35 06/14/2017 
// Design Name: 
// Module Name:    sort2 
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
module sort2(CLK,nRST,node1,node2,new1,new2);
	input CLK;
	input nRST;
	input [7:0] node1;
	input [7:0] node2;
	output [7:0] new1;
	output [7:0] new2;
	
	reg [7:0] new1;
	reg [7:0] new2;
	
	always @ (posedge CLK or negedge nRST)
	begin 
		if(!nRST)
			begin
			new1 <= 8'b0;
			new2 <= 8'b0;
			end
		else
			begin
			new1 <= node1;
			new2 <= node2;
			if(new1[7:4] > new2[7:4])
				begin
				new1 <= new2;
				new2 <= new1;
				end
			else;
			end
	end
	
endmodule
