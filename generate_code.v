`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:05 06/11/2017 
// Design Name: 
// Module Name:    generate_code 
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
//针对生成的huffman树，产生对应的编码模块
module generate_code(CLK,nRST,info_node_1,info_node_2,info_node_3,info_node_4,info_node_5,info_node_6,
info_node_7,CODE_TABLE);
	input CLK;
	input nRST;
	input [12:0] info_node_1;
	input [12:0] info_node_2;
	input [12:0] info_node_3;
	input [12:0] info_node_4;
	input [12:0] info_node_5;
	input [12:0] info_node_6;
	input [12:0] info_node_7;

	output [15:0] CODE_TABLE;
	
	wire [1:0] state;
	
	reg [12:0] temp_node;
	reg [2:0] counter;
	
	reg [7:0] state1;
	reg [7:0] state2;
	reg [7:0] state3;
	reg [7:0] state4;
	reg [7:0] state5;
	reg [7:0] state6;
	reg [7:0] state7;
	
	wire [3:0] S0;
	wire [3:0] S1;
	wire [3:0] S2;

	wire [12:0] leaf_A;
	wire [12:0] leaf_B;
	wire [12:0] leaf_C;
	wire [12:0] leaf_D;
	
	assign S0 = 4'b0000;
	assign S1 = 4'b0001;
	assign S2 = 4'b0010;
	
	select_not_leaf_state get_state(
		.CLK(CLK),
		.nRST(nRST),
		.info_node_1(info_node_1),
		.info_node_2(info_node_2),
		.info_node_3(info_node_3),
		.info_node_4(info_node_4),
		.info_node_5(info_node_5),
		.info_node_6(info_node_6),
		.info_node_7(info_node_7),
		.state(state)
	);
	select_leaf_node leaf_node(
		.CLK(CLK),
		.nRST(nRST),
		.info_node_1(info_node_1),
		.info_node_2(info_node_2),
		.info_node_3(info_node_3),
		.info_node_4(info_node_4),
		.info_node_5(info_node_5),
		.info_node_6(info_node_6),
		.info_node_7(info_node_7),
		.leaf_A(leaf_A),
		.leaf_B(leaf_B),
		.leaf_C(leaf_C),
		.leaf_D(leaf_D)
	);
	
	create_node_code create(
		.CLK(CLK),
		.nRST(nRST),
		.state(state),
		.leaf_A(leaf_A),
		.leaf_B(leaf_B),
		.leaf_C(leaf_C),
		.leaf_D(leaf_D),
		.CODE_TABLE(CODE_TABLE)
	);
		
endmodule
