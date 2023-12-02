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


module data_memory_module (
    input rst,                // Reset signal
    input clk,                // Clock signal
    input ce,                 // Chip enable signal
    input we,                 // Write enable signal
    input [7:0] data_addr,    // Data address input
    input [15:0] data_in,     // Data input
    output [15:0] data_out,   // Data output
    output reg en_ram_out     // Register to control RAM output enable
); 

always @(posedge clk or negedge rst) 
    if (!rst)
        en_ram_out <= 0;
    else if (ce == 1'b1)
        begin
            en_ram_out <= 1;  // Enable the RAM output
        end
    else
        begin
            en_ram_out <= 0;  // Disable the RAM output
        end

blk_mem_gen_1 data_memory (
    .clka(clk),          // Clock input for memory block
    .ena(ce),            // Enable input for memory block
    .wea(we),            // Write enable input for memory block
    .addra(data_addr),   // Address input for memory block
    .dina(data_in),      // Data input for memory block
    .douta(data_out)     // Data output from memory block
);

endmodule