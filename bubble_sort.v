`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:53:38 06/10/2017 
// Design Name: 
// Module Name:    bubble_sort 
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
//实现针对a,b,c,d四个字符出现的频率排序，并将排序后的频率写入到SORT_RESULT中
module bubble_sort(CLK,nRST,weight_A,weight_B,weight_C,weight_D,SORT_RESULT);
	input	CLK;
	input	nRST;
	input [7:0] weight_A;
	input [7:0] weight_B;
	input [7:0] weight_C;
	input [7:0] weight_D;
	output [31:0] SORT_RESULT;
	
	reg [7:0] temp;
	wire [7:0] temp1;
	wire [7:0] temp2;
	wire [7:0] temp3;
	
	reg [7:0] new1;
	reg [7:0] new2;
	reg [7:0] new3;
	reg [7:0] new4;
	
	sort3 s3_1(
		.CLK(CLK),
		.nRST(nRST),
		.node1(weight_A),
		.node2(weight_B),
		.node3(weight_C),
		.new1(temp1),
		.new2(temp2),
		.new3(temp3)
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
			temp <= weight_D;
			if(temp[7:4] <= temp1[7:4])
				begin
				new1 <= temp;
				new2 <= temp1;
				new3 <= temp2;
				new4 <= temp3;
				end
			else if(temp[7:4] > temp1[7:4] && temp[7:4] <= temp2[7:4])
				begin
				new1 <= temp1;
				new2 <= temp;
				new3 <= temp2;
				new4 <= temp3;
				end
			else if(temp[7:4] > temp2[7:4] && temp[7:4] <= temp3[7:4])
				begin
				new1 <= temp1;
				new2 <= temp2;
				new3 <= temp;
				new4 <= temp3;
				end
			else
				begin
				new1 <= temp1;
				new2 <= temp2;
				new3 <= temp3;
				new4 <= temp;
				end
			end
	end
	assign SORT_RESULT = {new4,new3,new2,new1};

endmodule
