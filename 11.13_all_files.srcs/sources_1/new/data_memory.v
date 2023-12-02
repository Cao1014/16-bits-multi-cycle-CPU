`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/06 15:52:48
// Design Name: 
// Module Name: data_memory
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


module data_memory_module (input rst, input clk, input ce, input we, input [7:0] data_addr, 
input [15:0] data_in, output [15:0] data_out, output reg en_ram_out); 

always @(
posedge clk or negedge rst) 
	if(!rst)
	   en_ram_out <= 0;
	
	else if(ce ==1'b1)
		begin
			en_ram_out <= 1;
		end		
    else
        begin
             en_ram_out <= 0;
        end    
        
blk_mem_gen_1 data_memory (
                             .clka(clk),    // input wire clka
                             .ena(ce),      // input wire ena
                             .wea(we),      // input wire [0 : 0] wea
                             .addra(data_addr),  // input wire [7 : 0] addra
                             .dina(data_in),    // input wire [15 : 0] dina
                             .douta(data_out)  // output wire [15 : 0] douta
                           );	

endmodule


