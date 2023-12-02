`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/05 20:35:49
// Design Name: 
// Module Name: areg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module register(
			clk,
			rst,
			en,	
			/*en_in,*/		
			d,				
			q				
    );
    input clk,rst,en;
    input wire[15:0]d;
    output reg[15:0]q;
   always@(posedge clk or negedge rst)
     if(rst==0)
       q <= 0000000000000000;
     else if(en==1)
        begin    
             q <= d;   
       end
endmodule
