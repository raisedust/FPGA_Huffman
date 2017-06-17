`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:20:30 06/08/2017 
// Design Name: 
// Module Name:    light_led 
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
//把生成generate_code模块的压缩数字通过LED显示出来
`define DIV_FACTOR 14'h3f98
module light_led(CLK,nRST,CODE_TABLE,LED_DATA);
	input CLK;
   input nRST;
	input [15:0] CODE_TABLE;

	output [3:0] LED_DATA;

	reg [3:0] LED_DATA;
	
	reg CLK_OUT;
	reg [13:0] DIV_counter;
	reg [11:0] clk_counter;
	
	always @(posedge CLK or negedge nRST)
	begin
		if(~nRST)
			begin
				CLK_OUT 		<= #1	1'b1;
				DIV_counter <= #1	14'h0;
			end
		else if(DIV_counter == `DIV_FACTOR) 
			begin
				CLK_OUT 		<= #1	~CLK_OUT;
				DIV_counter <= #1	14'h0;				
			end
		else
			begin
				CLK_OUT 		<= #1	CLK_OUT;
				DIV_counter <= #1	DIV_counter + 1;			
			end			
	 end
	 
	 always @ (posedge CLK_OUT or negedge nRST)
	 begin
	 	if(~nRST)
			begin
				clk_counter <= #1	12'h1;
				LED_DATA 	<= #1	4'b0000;
			end
		else
			begin		 
				case(clk_counter) 
					12'h001:				
						 LED_DATA	<= #1 {CODE_TABLE[3:0]}; 
					12'h17D:
						 LED_DATA	<= #1	{CODE_TABLE[7:4]};
					12'h2fa :
						 LED_DATA	<= #1	{CODE_TABLE[11:8]};
					12'h477:
						 LED_DATA	<=	#1	{CODE_TABLE[15:12]};
					12'h5f4:
						 LED_DATA	<=	#1	{CODE_TABLE[3:0]};
					12'h771:  
						 LED_DATA	<=	#1	{CODE_TABLE[7:4]};
					12'h96e:	  
						 LED_DATA	<=	#1	{CODE_TABLE[11:8]};
					12'hb6b:   
						 LED_DATA	<=	#1	{CODE_TABLE[15:12]};
					12'hce8:   
						 clk_counter<= #1	10'h000;                
					default:
						 clk_counter<= #1	clk_counter;
			  endcase
				clk_counter <= #1 clk_counter + 1;				  
			end
	 end
endmodule

