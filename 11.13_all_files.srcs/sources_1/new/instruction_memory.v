`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/06 22:11:22
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory_module (input rst, input clk, input en_rom_in, input [7:0] addr,
 output [15:0] ins, output reg en_rom_out);
 
always @(
 posedge clk or negedge rst ) 
 
     if(!rst)
         en_rom_out <= 0;
         
     else if(en_rom_in ==1'b1)
         begin
             en_rom_out <= 1;
         end        
         
     else
         begin
              en_rom_out <= 0;
         end    

blk_mem_gen_0 	instruction_memory
                     (
                       .clka        ( clk         )    ,
                       .ena        ( en_rom_in         )    ,
                       .addra    ( addr         )    ,
                       .douta    ( ins    )    
                     );    
endmodule
