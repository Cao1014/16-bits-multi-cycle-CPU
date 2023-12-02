  
module alu_mux (
    clk, rst, en_in, offset, rd_q, rs_q, alu_in_sel, alu_a, alu_b, en_out
);
    input [15:0] rd_q, rs_q;   // Inputs holding 16-bit values
    input clk, rst, en_in, alu_in_sel;   // Control inputs
    input [7:0] offset;   // 8-bit offset input
    output [15:0] alu_a, alu_b;   // Outputs for the ALU inputs
    output en_out;   // Output signal for enabling/disabling

    // Register declarations for the ALU inputs and output
    reg [15:0] alu_a, alu_b;   
    reg en_out;

    // Combinational logic to compute ALU inputs based on control inputs
    always @(negedge rst or posedge clk) begin
        if (rst == 1'b0) begin
            // Reset condition sets ALU inputs and en_out to 0 when rst is active
            alu_a <= 16'b0000000000000000;
            alu_b <= 16'b0000000000000000;
            en_out <= 1'b0;
        end
        else if (en_in == 1'b1) begin
            // When en_in is active, ALU inputs are selected based on alu_in_sel
            alu_a <= rd_q;  // ALU input A takes the value from rd_q
            en_out <= 1'b1;  // Set en_out to 1 when en_in is active

            if (alu_in_sel == 1'b0) begin
                // When alu_in_sel is 0, ALU input B is set to the offset value
                alu_b <= {{8{offset[7]}}, offset[7:0]}; // Sign extend the offset and assign it to ALU input B
            end
            else begin
                // When alu_in_sel is 1, ALU input B takes the value from rs_q
                alu_b <= rs_q;
            end
        end
        else begin
            // If en_in is not active, set en_out to 0 and keep ALU inputs at their current values
            en_out <= 1'b0;
        end
    end
endmodule
