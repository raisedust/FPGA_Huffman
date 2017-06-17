`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:25 06/10/2017 
// Design Name: 
// Module Name:    sort3 
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
module sort3(CLK,nRST,node1,node2,node3,new1,new2,new3);
	input	CLK;
	input	nRST;
	input [7:0] node1;
	input [7:0] node2;
	input [7:0] node3;
	output [7:0] new1;
	output [7:0] new2;
	output [7:0] new3;
	
	reg [7:0] new1;
	reg [7:0] new2;
	reg [7:0] new3;
	
	reg [7:0] temp;
	
	wire [7:0] temp1;
	wire [7:0] temp2;
	
	sort2 s2_1(
		.CLK(CLK),
		.nRST(nRST),
		.node1(node1),
		.node2(node2),
		.new1(temp1),
		.new2(temp2)
	);
	
	always @(posedge CLK or negedge nRST)
	begin
		if(!nRST)
			begin
			new1 <= 8'b0;
			new2 <= 8'b0;
			new3 <= 8'b0;
			end
		else
			begin
			temp <= node3;
			if(temp[7:4] <= temp1[7:4])
				begin
				new1 <= temp;
				new2 <= temp1;
				new3 <= temp2;
				end
			else if(temp[7:4] > temp1[7:4] && temp[7:4] <= temp2[7:4])
				begin
				new1 <= temp1;
				new2 <= temp;
				new3 <= temp2;
				end
			else
				begin
				new1 <= temp1;
				new2 <= temp2;
				new3 <= temp;
				end
			end
	end
	
endmodule
