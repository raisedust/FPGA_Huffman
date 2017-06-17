`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:52:16 06/14/2017 
// Design Name: 
// Module Name:    example 
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
module example(CLK,nRST,state,info_node_1,info_node_2,info_node_3,info_node_4,info_node_5,info_node_6,
info_node_7,state1,state2,state3,state4,state5,state6,state7);
	input CLK;
	input nRST;
	input [1:0] state;
	input [12:0] info_node_1;
	input [12:0] info_node_2;
	input [12:0] info_node_3;
	input [12:0] info_node_4;
	input [12:0] info_node_5;
	input [12:0] info_node_6;
	input [12:0] info_node_7;

	output [7:0] state1;
	output [7:0] state2;
	output [7:0] state3;
	output [7:0] state4;
	output [7:0] state5;
	output [7:0] state6;
	output [7:0] state7;
	
	reg [7:0] state1;
	reg [7:0] state2;
	reg [7:0] state3;
	reg [7:0] state4;
	reg [7:0] state5;
	reg [7:0] state6;
	reg [7:0] state7;
	
		
	reg [12:0] temp_node;
	reg [11:0] counter;
	
	wire [3:0] S0;
	wire [3:0] S1;
	wire [3:0] S2;

	assign S0 = 4'b0000;
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
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[12:9])
								S0: state1 <= {1'b0,state,temp_node[8],temp_node[3:0]};
								S1: state1 <= {2'b00,state[1],temp_node[8],temp_node[3:0]};
								S2: state1 <= {3'b000,temp_node[8],temp_node[3:0]};
								default:;
								endcase
								end
							else;
							end
				12'h003: temp_node <= info_node_2;
				12'h004: begin
						  temp_node <= #1 info_node_2;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[12:9])
								S0: state2 <= {1'b0,state,temp_node[8],temp_node[3:0]};
								S1: state2 <= {2'b00,state[1],temp_node[8],temp_node[3:0]};
								S2: state2 <= {3'b000,temp_node[8],temp_node[3:0]};
								default:;
								endcase
								end
							else;
							end
				12'h005: temp_node <= info_node_3;
				12'h006: begin
						  temp_node <= #1 info_node_3;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[12:9])
								S0: state3 <= {1'b0,state,temp_node[8],temp_node[3:0]};
								S1: state3 <= {2'b00,state[1],temp_node[8],temp_node[3:0]};
								S2: state3 <= {3'b000,temp_node[8],temp_node[3:0]};
								default:;
								endcase
								end
							else;
							end
				12'h007: temp_node <= info_node_4;
				12'h008: begin
						  temp_node <= #1 info_node_4;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[12:9])
								S0: state4 <= {1'b0,state,temp_node[8],temp_node[3:0]};
								S1: state4 <= {2'b00,state[1],temp_node[8],temp_node[3:0]};
								S2: state4 <= {3'b000,temp_node[8],temp_node[3:0]};
								default:;
								endcase
								end
							else;
							end
				12'h009: temp_node <= info_node_5;
				12'h00a: begin
						  temp_node <= #1 info_node_5;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[12:9])
								S0: state5 <= {1'b0,state,temp_node[8],temp_node[3:0]};
								S1: state5 <= {2'b00,state[1],temp_node[8],temp_node[3:0]};
								S2: state5 <= {3'b000,temp_node[8],temp_node[3:0]};
								default:;
								endcase
								end
							else;
							end
				12'h00b: temp_node <= info_node_6;
				12'h00c: begin
						  temp_node <= #1 info_node_6;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[12:9])
								S0: state6 <= {1'b0,state,temp_node[8],temp_node[3:0]};
								S1: state6 <= {2'b00,state[1],temp_node[8],temp_node[3:0]};
								S2: state6 <= {3'b000,temp_node[8],temp_node[3:0]};
								default:;
								endcase
								end
							else;
							end
				12'h00d: temp_node <= info_node_7;
				12'h00e: begin
						  temp_node <= #1 info_node_7;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[12:9])
								S0: state7 <= {1'b0,state,temp_node[8],temp_node[3:0]};
								S1: state7 <= {2'b00,state[1],temp_node[8],temp_node[3:0]};
								S2: state7 <= {3'b000,temp_node[8],temp_node[3:0]};
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
