module ir(
    clk, rst, ins, en_in, en_out, ir_out
);
// Module named "ir" with six ports
input clk, rst;             // Clock input and reset input
input [15:0] ins;           // 16-bit instruction input
input en_in;                // Input enable signal
output reg en_out;          // Output enable signal
output reg [15:0] ir_out;   // 16-bit output Instruction Register (IR)

always @ (posedge clk or negedge rst) begin
    // Executes on the positive edge of the clock or negative edge of reset

    if (!rst) begin
        // If the reset signal is low
        ir_out <= 16'b0000000000000000; // Reset the IR to all zeros
        en_out <= 1'b1;                 // Set output enable signal to high to indicate invalid data
    end
    else begin
        // If not in reset state

        if (en_in) begin
            // If the input enable signal is high
            en_out <= 1'b1;  // Keep the output enable signal high to indicate valid data
            ir_out <= ins;   // Copy the input instruction to the IR output register
        end
        else
            en_out <= 1'b0;  // If the input enable signal is low, set the output enable signal to low, indicating invalid data
    end
end

endmodule
