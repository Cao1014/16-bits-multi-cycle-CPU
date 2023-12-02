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
module alu (
    output reg en_out,   // Output indicating ALU operation execution
    output reg [15:0] alu_out,   // Output storing the ALU result
    input rst,   // Reset input
    input en_in,   // ALU enable input
    input [3:0] alu_func,   // ALU operation select input
    input [15:0] alu_a, alu_b   // Inputs to the ALU
);

    always @(*) begin
        if (!rst) begin
            // Reset condition sets ALU output and en_out to default values
            alu_out = 16'b0000000000000000;  // Initialize ALU output to 0
            en_out  = 1'b0;  // Disable ALU operations during reset
        end
        else if (en_in) begin
            // When en_in is active, enable ALU operations
            en_out = 1'b1;  // Signal that ALU operation is enabled

            // Perform ALU operation based on alu_func
            case (alu_func)
                `movi, `mov: alu_out = alu_b;  // Move operations
                `addi, `add: alu_out = alu_a + alu_b;  // Addition operations
                `sub: alu_out = alu_a - alu_b;  // Subtraction operation
                `andi, `and_: alu_out = alu_a & alu_b;  // Bitwise AND operations
                `or_: alu_out = alu_a | alu_b;  // Bitwise OR operation
                `not_: alu_out = ~alu_a;  // Bitwise NOT operation
                `xor_: alu_out = alu_a ^ alu_b;  // Bitwise XOR operation
                `slli: alu_out = alu_a << alu_b;  // Shift left logical
                `srli: alu_out = alu_a >> alu_b;  // Shift right logical
                `srai: alu_out = alu_a >>> alu_b;  // Shift right arithmetic
                `jump, `load, `store: alu_out = 16'b0000000000000000;  // Jump, load, store operations
                default: alu_out = 16'b0000000000000000;  // Default: Set ALU output to 0
            endcase
        end
        else begin
            // When en_in is inactive, disable ALU operations
            en_out = 1'b0;  // Disable ALU operations
        end
    end
endmodule
