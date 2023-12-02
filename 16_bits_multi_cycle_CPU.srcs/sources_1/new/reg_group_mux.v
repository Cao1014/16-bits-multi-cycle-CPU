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

module reg_group_mux (
    input rst,                  // Reset signal
    input ram_select,           // RAM selection signal
    input [15:0] alu_out,       // ALU output
    input [15:0] data_out,      // Data output from memory
    output reg [15:0] reg_group_mux_out  // Output of the multiplexer
);

    always @(*)  // Combinational logic sensitivity list using * for all inputs
        if (!rst)  // If reset is active low
            begin
                reg_group_mux_out = 16'b0000000000000000;  // Output zero if reset is active
            end
        else if (ram_select == 1'b0)  // If RAM is not selected
            begin
                reg_group_mux_out = alu_out;  // Output ALU result
            end
        else  // If RAM is selected
            begin
                reg_group_mux_out = data_out;  // Output data from memory
            end

endmodule
