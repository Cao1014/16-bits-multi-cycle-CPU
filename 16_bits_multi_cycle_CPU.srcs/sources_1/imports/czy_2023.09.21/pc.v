`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/05 17:12:07
// Design Name: 
// Module Name: pc
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

module pc(
    clk,
    rst,
    en_in,
    pc_ctrl,
    offset_addr,
    pc_out
    // en_pc_out
);
    input clk, rst, en_in;
    input wire [1:0] pc_ctrl;
    input wire [7:0] offset_addr;
    output reg [15:0] pc_out;

    always @(posedge clk or negedge rst)
        if (rst == 0) begin
            pc_out <= 16'h0000;  // Resetting PC to 0 when 'rst' is active
        end
        else if (en_in == 1) begin
            case (pc_ctrl)
                2'b01: begin
                    pc_out <= pc_out + 1;  // Increment PC by 1 when pc_ctrl is '01'
                end
                2'b10: begin
                    pc_out <= {8'b00000000, offset_addr[7:0]};  // Load new value from 'offset_addr' when pc_ctrl is '10'
                end
                default: begin
                    pc_out <= pc_out;  // Retain PC value for other pc_ctrl values
                end
            endcase
        end
endmodule