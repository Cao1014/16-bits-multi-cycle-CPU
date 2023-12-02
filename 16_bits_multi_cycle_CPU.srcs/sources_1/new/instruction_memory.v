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

module instruction_memory_module (
    input rst,                   // Reset signal
    input clk,                   // Clock signal
    input en_rom_in,             // Input enable for ROM
    input [7:0] addr,            // Address input
    output [15:0] ins,           // Instruction output
    output reg en_rom_out        // Output control for ROM
);

    always @ (posedge clk or negedge rst)
        if (!rst)                // If reset is active low
            en_rom_out <= 0;     // De-assert ROM output enable
        else if (en_rom_in == 1'b1)  // If ROM input enable is high
            en_rom_out <= 1;     // Assert ROM output enable
        else
            en_rom_out <= 0;     // De-assert ROM output enable

    blk_mem_gen_0 instruction_memory (
        .clka(clk),              // Clock input for memory block
        .ena(en_rom_in),         // Enable input for memory block
        .addra(addr),            // Address input for memory block
        .douta(ins)              // Data output from memory block
    );

endmodule