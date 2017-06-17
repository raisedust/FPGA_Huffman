`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:33:04 06/08/2017 
// Design Name: 
// Module Name:    coding 
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
module coding(CLK,nRST,DATA_OUT);
	input CLK;
	input nRST;
	output [3:0] DATA_OUT;
	
	wire [27:0] character;
	wire [15:0] frequent;
	wire [31:0] frequent_after;

	wire [12:0] info_node_1;//17位
	wire [12:0] info_node_2;
	wire [12:0] info_node_3;
	wire [12:0] info_node_4;
	wire [12:0] info_node_5;
	wire [12:0] info_node_6;
	wire [12:0] info_node_7;
	wire [7:0] node_new1;
	wire [7:0] node_new2;
	wire [7:0] node_new3;
	wire [15:0] CODE_TABLE;
	
	assign character=28'b1011_1010_1100_1101_1101_1011_1101;//bacddbd，其中a(1),b(2),c(1),d(3)
	//对应的huffman树为
	////////////7/////////////
	//////d(3)******4/////////
	///////////b(2)****2//////
	//////////////a(1)*****c(1)
	
//	genvar i;
//	generate for(i=0;i<7;i=i+1) begin :count
	count_frequent count(
		.CLK(CLK),
		.nRST(nRST),
		.CHARACTER_IN(character[27:0]),
		.FREQUENT_OUT(frequent[15:0])
	);
//	end
//	endgenerate
	sort_frequent sort(//频率排序，不设置使能信号协调count_frequent和sort_frequent
		.CLK(CLK),
		.nRST(nRST),
		.FREQUENT_IN(frequent[15:0]),
		.FREQUENT_OUT(frequent_after[31:0])
	);
	generate_tree tree(
		.CLK(CLK),
		.nRST(nRST),
		.weight_Gather(frequent_after),
		.info_node_1(info_node_1[12:0]),
		.info_node_2(info_node_2[12:0]),
		.info_node_3(info_node_3[12:0]),
		.info_node_4(info_node_4[12:0]),
		.info_node_5(info_node_5[12:0]),
		.info_node_6(info_node_6[12:0]),
		.info_node_7(info_node_7[12:0])
	);
	generate_code code(
		.CLK(CLK),
		.nRST(nRST),
		.info_node_1(info_node_1[12:0]),
		.info_node_2(info_node_2[12:0]),
		.info_node_3(info_node_3[12:0]),
		.info_node_4(info_node_4[12:0]),
		.info_node_5(info_node_5[12:0]),
		.info_node_6(info_node_6[12:0]),
		.info_node_7(info_node_7[12:0]),
		.CODE_TABLE(CODE_TABLE[15:0])
	);
	light_led light(
		.CLK(CLK),
		.nRST(nRST),
		.CODE_TABLE(CODE_TABLE[15:0]),
		.LED_DATA(DATA_OUT[3:0])
	);

endmodule
