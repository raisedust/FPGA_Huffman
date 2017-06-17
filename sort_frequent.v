`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:16:04 06/08/2017 
// Design Name: 
// Module Name:    sort_frequent 
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
//将count_frequent统计出来的频率数组进行排序处理
module sort_frequent(CLK,nRST,FREQUENT_IN,FREQUENT_OUT);
	input CLK;
	input nRST;
	input [15:0] FREQUENT_IN;
	output [31:0] FREQUENT_OUT;
	
	wire [7:0] weight_A;
	wire [7:0] weight_B;
	wire [7:0] weight_C;
	wire [7:0] weight_D;
	
	assign weight_A[7:0] = {FREQUENT_IN[3:0],4'b1010};
	assign weight_B[7:0] = {FREQUENT_IN[7:4],4'b1011};
	assign weight_C[7:0] = {FREQUENT_IN[11:8],4'b1100};
	assign weight_D[7:0] = {FREQUENT_IN[15:12],4'b1101};
	
	bubble_sort sort(
		.CLK(CLK),
		.nRST(nRST),
		.weight_A(weight_A),
		.weight_B(weight_B),
		.weight_C(weight_C),
		.weight_D(weight_D),
		.SORT_RESULT(FREQUENT_OUT[31:0])
	);
	
endmodule
