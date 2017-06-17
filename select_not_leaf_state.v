`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:31:17 06/14/2017 
// Design Name: 
// Module Name:    select_not_leaf_state 
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
module select_not_leaf_state(CLK,nRST,info_node_1,info_node_2,info_node_3,info_node_4,info_node_5,info_node_6,
info_node_7,state);
	input CLK;
	input nRST;
	input [12:0] info_node_1;
	input [12:0] info_node_2;
	input [12:0] info_node_3;
	input [12:0] info_node_4;
	input [12:0] info_node_5;
	input [12:0] info_node_6;
	input [12:0] info_node_7;
	
	output [1:0] state;
	reg state_S0;
	reg state_S1;
	reg state_S2;
	
	reg [12:0] temp_node;
	reg [11:0] counter;
	
	wire [3:0] S1;
	wire [3:0] S2;

	assign S1 = 4'b0001;
	assign S2 = 4'b0010;
	
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
						  if(temp_node[3:0] == temp_node[7:4])
								begin
								case(temp_node[12:9])
								S1: state_S1 <= temp_node[8];
								S2: state_S2 <= temp_node[8];
								default:;
								endcase
								end
							else;
							end
				12'h003: temp_node <= info_node_2;
				12'h004: begin
						  temp_node <= info_node_2;
						  if(temp_node[3:0] == temp_node[7:4])
								begin
								case(temp_node[12:9])
								S1: state_S1 <= temp_node[8];
								S2: state_S2 <= temp_node[8];
								default:;
								endcase
								end
							else;
							end
				12'h005: temp_node <= info_node_3;
				12'h006: begin
						  temp_node <= info_node_3;
						  if(temp_node[3:0] == temp_node[7:4])
								begin
								case(temp_node[12:9])
								S1: state_S1 <= temp_node[8];
								S2: state_S2 <= temp_node[8];
								default:;
								endcase
								end
							else;
							end
				12'h007: temp_node <= info_node_4;
				12'h008: begin
						  temp_node <= info_node_4;
						  if(temp_node[3:0] == temp_node[7:4])
								begin
								case(temp_node[12:9])
								S1: state_S1 <= temp_node[8];
								S2: state_S2 <= temp_node[8];
								default:;
								endcase
								end
							else;
							end
				12'h009: temp_node <= info_node_5;
				12'h00a: begin
						  temp_node <= info_node_5;
						  if(temp_node[3:0] == temp_node[7:4])
								begin
								case(temp_node[12:9])
								S1: state_S1 <= temp_node[8];
								S2: state_S2 <= temp_node[8];
								default:;
								endcase
								end
							else;
							end
				12'h00b: temp_node <= info_node_6;
				12'h00c: begin
						  temp_node <= info_node_6;
						  if(temp_node[3:0] == temp_node[7:4])
								begin
								case(temp_node[12:9])
								S1: state_S1 <= temp_node[8];
								S2: state_S2 <= temp_node[8];
								default:;
								endcase
								end
							else;
							end
				12'h00d: temp_node <= info_node_7;
				12'h00e: begin
						  temp_node <= info_node_7;
						  if(temp_node[3:0] == temp_node[7:4])
								begin
								case(temp_node[12:9])
								S1: state_S1 <= temp_node[8];
								S2: state_S2 <= temp_node[8];
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
	assign state = {state_S2,state_S1};

endmodule
