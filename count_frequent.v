`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 	zhangzhao
// 
// Create Date:    20:57:35 06/09/2017 
// Design Name: 	 张昭
// Module Name:    count_frequent 
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
//统计字符数组中每个字符出现的频率，生成频率数组和对应的字符数组
module count_frequent(CLK,nRST,CHARACTER_IN,FREQUENT_OUT);
	input CLK;
	input nRST;
	input [27:0] CHARACTER_IN;
	output [15:0] FREQUENT_OUT;
	
	reg [3:0] temp_frequent1;
	reg [3:0] temp_frequent2;
	reg [3:0] temp_frequent3;
	reg [3:0] temp_frequent4;
	
	reg [3:0] temp_character;
	reg [11:0] clk_counter;
	 
	always @ (posedge CLK or negedge nRST)
	 begin
	 	if(~nRST)
			begin
				clk_counter <= 12'h1;
				temp_character <= 4'b0;
				temp_frequent1 <= 4'b0;
				temp_frequent2 <= 4'b0;
				temp_frequent3 <= 4'b0;
				temp_frequent4 <= 4'b0;
			end
		else
			begin
				if(clk_counter < 12'h00f)
					begin
					clk_counter <= clk_counter + 1;	
					case(clk_counter) 
						12'h001: temp_character <= CHARACTER_IN[3:0];
						12'h002: 
							 begin
							 temp_character	<= #1 CHARACTER_IN[3:0]; 
							 case(temp_character)
							 4'b1010: temp_frequent1 <= temp_frequent1 + 1;
							 4'b1011: temp_frequent2 <= temp_frequent2 + 1;
							 4'b1100: temp_frequent3 <= temp_frequent3 + 1;
							 4'b1101: temp_frequent4 <= temp_frequent4 + 1;
							 default:;
							 endcase
							 end
						12'h003: temp_character <= CHARACTER_IN[7:4];
						12'h004:
							 begin
							 temp_character	<= #1 CHARACTER_IN[7:4]; 
							 case(temp_character)
							 4'b1010: temp_frequent1 <= temp_frequent1 + 1;
							 4'b1011: temp_frequent2 <= temp_frequent2 + 1;
							 4'b1100: temp_frequent3 <= temp_frequent3 + 1;
							 4'b1101: temp_frequent4 <= temp_frequent4 + 1;
							 default:;
							 endcase
							 end
						12'h005: temp_character <= CHARACTER_IN[11:8];
						12'h006:
							 begin
							 temp_character	<= #1 CHARACTER_IN[11:8]; 
							 case(temp_character)
							 4'b1010: temp_frequent1 <= temp_frequent1 + 1;
							 4'b1011: temp_frequent2 <= temp_frequent2 + 1;
							 4'b1100: temp_frequent3 <= temp_frequent3 + 1;
							 4'b1101: temp_frequent4 <= temp_frequent4 + 1;
							 default:;
							 endcase
							 end
						12'h007: temp_character <= CHARACTER_IN[15:12];
						12'h008:
							 begin
							 temp_character	<= #1 CHARACTER_IN[15:12]; 
							 case(temp_character)
							 4'b1010: temp_frequent1 <= temp_frequent1 + 1;
							 4'b1011: temp_frequent2 <= temp_frequent2 + 1;
							 4'b1100: temp_frequent3 <= temp_frequent3 + 1;
							 4'b1101: temp_frequent4 <= temp_frequent4 + 1;
							 default:;
							 endcase
							 end
						12'h009: temp_character <= CHARACTER_IN[19:16];
						12'h00a:
							 begin
							 temp_character	<= #1 CHARACTER_IN[19:16]; 
							 case(temp_character)
							 4'b1010: temp_frequent1 <= temp_frequent1 + 1;//28'b1011_1010_1100_1101_1101_1011_1101
							 4'b1011: temp_frequent2 <= temp_frequent2 + 1;
							 4'b1100: temp_frequent3 <= temp_frequent3 + 1;
							 4'b1101: temp_frequent4 <= temp_frequent4 + 1;
							 default:;
							 endcase
							 end
						12'h00b: temp_character <= CHARACTER_IN[23:20];
						12'h00c:  
							 begin
							 temp_character	<= #1 CHARACTER_IN[23:20]; 
							 case(temp_character)
							 4'b1010: temp_frequent1 <= temp_frequent1 + 1;
							 4'b1011: temp_frequent2 <= temp_frequent2 + 1;
							 4'b1100: temp_frequent3 <= temp_frequent3 + 1;
							 4'b1101: temp_frequent4 <= temp_frequent4 + 1;
							 default:;
							 endcase
							 end
						12'h00d: temp_character <= CHARACTER_IN[27:24];
						12'h00e:	  
							 begin
							 temp_character	<= #1 CHARACTER_IN[27:24]; 
							 case(temp_character)
							 4'b1010: temp_frequent1 <= temp_frequent1 + 1;
							 4'b1011: temp_frequent2 <= temp_frequent2 + 1;
							 4'b1100: temp_frequent3 <= temp_frequent3 + 1;
							 4'b1101: temp_frequent4 <= temp_frequent4 + 1;
							 default:;
							 endcase
							 end
						default:;
				  endcase
					end
				else;
			end
	 end	
	assign FREQUENT_OUT[15:0] = {temp_frequent4,temp_frequent3,temp_frequent2,temp_frequent1};
	
endmodule
