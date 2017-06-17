`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:54 06/14/2017 
// Design Name: 
// Module Name:    create_node_code 
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
module create_node_code(CLK,nRST,state,leaf_A,leaf_B,leaf_C,leaf_D,CODE_TABLE);
	input CLK;
	input nRST;
	input [1:0] state;
	input [12:0] leaf_A;
	input [12:0] leaf_B;
	input [12:0] leaf_C;
	input [12:0] leaf_D;
	
	output [15:0] CODE_TABLE;
	
	reg [3:0] state1;
	reg [3:0] state2;
	reg [3:0] state3;
	reg [3:0] state4;
		
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
			if(counter < 12'h009)
				begin
				counter <= counter + 1;
				case(counter)
				12'h001: temp_node <= leaf_A;
				12'h002: begin
						  temp_node <= #1 leaf_A;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[12:9])
								S0: state1 <= {1'b0,state,temp_node[8]};
								S1: state1 <= {2'b00,state[1],temp_node[8]};
								S2: state1 <= {3'b000,temp_node[8]};
								default:;
								endcase
								end
							else;
							end
				12'h003: temp_node <= leaf_B;
				12'h004: begin
						  temp_node <= #1 leaf_B;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[12:9])
								S0: state2 <= {1'b0,state,temp_node[8]};
								S1: state2 <= {2'b00,state[1],temp_node[8]};
								S2: state2 <= {3'b000,temp_node[8]};
								default:;
								endcase
								end
							else;
							end
				12'h005: temp_node <= leaf_C;
				12'h006: begin
						  temp_node <= #1 leaf_C;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[12:9])
								S0: state3 <= {1'b0,state,temp_node[8]};
								S1: state3 <= {2'b00,state[1],temp_node[8]};
								S2: state3 <= {3'b000,temp_node[8]};
								default:;
								endcase
								end
							else;
							end
				12'h007: temp_node <= leaf_D;
				12'h008: begin
						  temp_node <= #1 leaf_D;
						  if(temp_node[3:0] != temp_node[7:4])
								begin
								case(temp_node[12:9])
								S0: state4 <= {1'b0,state,temp_node[8]};
								S1: state4 <= {2'b00,state[1],temp_node[8]};
								S2: state4 <= {3'b000,temp_node[8]};
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
	assign CODE_TABLE = {state4,state3,state2,state1};

endmodule
