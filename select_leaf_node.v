`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:22:31 06/14/2017 
// Design Name: 
// Module Name:    select_leaf_node 
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
module select_leaf_node(CLK,nRST,info_node_1,info_node_2,info_node_3,info_node_4,info_node_5,info_node_6,
info_node_7,leaf_A,leaf_B,leaf_C,leaf_D);
	input CLK;
	input nRST;
	input [12:0] info_node_1;
	input [12:0] info_node_2;
	input [12:0] info_node_3;
	input [12:0] info_node_4;
	input [12:0] info_node_5;
	input [12:0] info_node_6;
	input [12:0] info_node_7;
	
	output [12:0] leaf_A;
	output [12:0] leaf_B;
	output [12:0] leaf_C;
	output [12:0] leaf_D;
	
	reg [12:0] leaf_A;
	reg [12:0] leaf_B;
	reg [12:0] leaf_C;
	reg [12:0] leaf_D;
	
	reg [12:0] temp_node;
	reg [11:0] counter;
	
	wire [3:0] S0;
	wire [3:0] S1;
	wire [3:0] S2;
	wire [3:0] S3;

	assign S0 = 4'b1010;
	assign S1 = 4'b1011;
	assign S2 = 4'b1100;
	assign S3 = 4'b1101;
	
	always @ (posedge CLK or negedge nRST)
	begin
		if(!nRST)
			counter <= 1;
		else 
			begin
			if(counter < 12'h00f)
				begin
				counter <= counter + 1;
				case(counter)
				12'h001: temp_node <= info_node_1;
				12'h002: begin
						  temp_node <= info_node_1;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[3:0])
								S0: leaf_A <= temp_node;
								S1: leaf_B <= temp_node;
								S2: leaf_C <= temp_node;
								S3: leaf_D <= temp_node;
								default:;
								endcase
								end
							else;
							end
				12'h003: temp_node <= info_node_2;
				12'h004: begin
						  temp_node <= info_node_2;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[3:0])
								S0: leaf_A <= temp_node;
								S1: leaf_B <= temp_node;
								S2: leaf_C <= temp_node;
								S3: leaf_D <= temp_node;
								default:;
								endcase
								end
							else;
							end
				12'h005: temp_node <= info_node_3;
				12'h006: begin
						  temp_node <= info_node_3;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[3:0])
								S0: leaf_A <= temp_node;
								S1: leaf_B <= temp_node;
								S2: leaf_C <= temp_node;
								S3: leaf_D <= temp_node;
								default:;
								endcase
								end
							else;
							end
				12'h007: temp_node <= info_node_4;
				12'h008: begin
						  temp_node <= info_node_4;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[3:0])
								S0: leaf_A <= temp_node;
								S1: leaf_B <= temp_node;
								S2: leaf_C <= temp_node;
								S3: leaf_D <= temp_node;
								default:;
								endcase
								end
							else;
							end
				12'h009: temp_node <= info_node_5;
				12'h00a: begin
						  temp_node <= info_node_5;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[3:0])
								S0: leaf_A <= temp_node;
								S1: leaf_B <= temp_node;
								S2: leaf_C <= temp_node;
								S3: leaf_D <= temp_node;
								default:;
								endcase
								end
							else;
							end
				12'h00b: temp_node <= info_node_6;
				12'h00c: begin
						  temp_node <= info_node_6;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[3:0])
								S0: leaf_A <= temp_node;
								S1: leaf_B <= temp_node;
								S2: leaf_C <= temp_node;
								S3: leaf_D <= temp_node;
								default:;
								endcase
								end
							else;
							end
				12'h00d: temp_node <= info_node_7;
				12'h00e: begin
						  temp_node <= info_node_7;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[3:0])
								S0: leaf_A <= temp_node;
								S1: leaf_B <= temp_node;
								S2: leaf_C <= temp_node;
								S3: leaf_D <= temp_node;
								default:;
								endcase
								end
							else;
							end
				default:;
				endcase
							
				end
			else;
			end
	end

endmodule
