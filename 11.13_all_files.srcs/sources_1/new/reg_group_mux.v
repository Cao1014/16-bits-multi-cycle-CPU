`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/05 17:35:29
// Design Name: 
// Module Name: reg_group_mux
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


module reg_group_mux (/*input clk,*/ input rst, input ram_select,  input [15:0] alu_out, 
input [15:0] data_out, output reg [15:0] reg_group_mux_out);
    
   /* always@(posedge clk or negedge rst)
          if(rst==0)
             begin
                reg_group_mux_out <= 0000000000000000;
             end
          else if(ram_select==0)
            begin
                reg_group_mux_out <= alu_out;   
            end
          else if(ram_select==1)
            begin
                reg_group_mux_out <= data_out;   
            end  */
       always@(*)
                        if(!rst)
                                begin
                                   reg_group_mux_out = 2'b0000000000000000;
                                end
                             else if(ram_select==1'b0)
                               begin
                                   reg_group_mux_out = alu_out;   
                               end
                             else 
                               begin
                                   reg_group_mux_out = data_out;   
                               end
                             
                      
                      
                      /*if(!rst)
                         begin
                            reg_group_mux_out = 2'b0000000000000000;
                         end
                      else if(ram_select==2'b01)
                        begin
                            reg_group_mux_out = alu_out;   
                        end
                      else if(ram_select==2'b10)
                        begin
                            reg_group_mux_out = data_out;   
                        end
                      else if(ram_select==2'b00)
                        begin
                            reg_group_mux_out = alu_out;   
                        end
                      else 
                         begin
                            reg_group_mux_out = alu_out;   
                         end  */       

endmodule
