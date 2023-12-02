`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/10 15:24:58
// Design Name: 
// Module Name: ALU
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

`define movi   4'b0000
`define mov    4'b0001
`define addi   4'b0010
`define add    4'b0011
`define sub    4'b0100
`define andi   4'b0101
`define and_   4'b0110
`define or_    4'b0111
`define not_   4'b1000
`define xor_   4'b1001
`define slli   4'b1010
`define srli   4'b1011
`define srai   4'b1100
`define jump   4'b1101
`define load   4'b1110
`define store  4'b1111

module alu(output reg en_out, output reg [15:0] alu_out,  
           input  /*clk,*/ rst, en_in, input [3:0] alu_func, input [15:0] alu_a, alu_b);
           
       always@(*)
              begin
                   if(!rst)
                     begin
                          alu_out = 16'b0000000000000000;
                          en_out  = 0;
                     end
                   else if(en_in)
                     begin
                          en_out = 1;
                          case(alu_func)
                               `movi: alu_out = alu_b;
                               `mov: alu_out = alu_b;
                               `addi: alu_out = alu_a + alu_b;
                               `add: alu_out = alu_a + alu_b;
                               `sub: alu_out = alu_a - alu_b;
                               `andi: alu_out = alu_a & alu_b;
                               `and_: alu_out = alu_a & alu_b;
                               `or_: alu_out = alu_a | alu_b;
                               `not_: alu_out = ~alu_a;
                               `xor_: alu_out = alu_a ^ alu_b;
                               `slli: alu_out = alu_a << alu_b;
                               `srli: alu_out = alu_a >> alu_b;
                               `srai: alu_out = alu_a >>> alu_b;
                               `jump: alu_out = 16'b0000000000000000;
                               `load: alu_out = 16'b0000000000000000;
                               `store: alu_out = 16'b0000000000000000;
                            default: alu_out  = 16'b0000000000000000; 
                            endcase
                     end
                   else
                     en_out = 0; // en_alu传回状态机
              end     
endmodule
/*
module alu(output reg en_out, output reg [15:0] alu_out,  
           input  clk, rst, en_in, input [3:0] alu_func, input [15:0] alu_a, alu_b);
           
       always@(negedge rst or posedge clk)
              begin
                   if(!rst)
                     begin
                          alu_out <= 16'b0000000000000000;
                          en_out  <= 0;
                     end
                   else if(en_in)
                     begin
                          en_out <= 1;
                          case(alu_func)
                               `movi: alu_out <= alu_b;
                               `mov: alu_out <= alu_b;
                               `addi: alu_out <= alu_a + alu_b;
                               `add: alu_out <= alu_a + alu_b;
                               `sub: alu_out <= alu_a - alu_b;
                               `andi: alu_out <= alu_a & alu_b;
                               `and_: alu_out <= alu_a & alu_b;
                               `or_: alu_out <= alu_a | alu_b;
                               `not_: alu_out <= ~alu_a;
                               `xor_: alu_out <= alu_a ^ alu_b;
                               `slli: alu_out <= alu_a << alu_b;
                               `srli: alu_out <= alu_a >> alu_b;
                               `srai: alu_out <= alu_a >>> alu_b;
                               
                            default: alu_out  <= 16'b0000000000000000; 
                            endcase
                     end
                   else
                     en_out <= 0; // en_alu传回状态机
              end     
endmodule
*/