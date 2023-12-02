module ir(clk, rst, ins, en_in, en_out, ir_out);
// 定义一个名为 "ir" 的模块，具有六个端口
input clk, rst;           // 时钟输入和复位输入
input [15:0] ins;         // 16位指令输入
input en_in;              // 输入使能信号
output reg en_out;        // 输出使能信号
output reg [15:0] ir_out; // 16位IR输出寄存器

always @ (posedge clk or negedge rst) begin
    // 在时钟上升沿或复位下降沿时执行以下操作

    if (!rst) begin
        // 如果复位信号为低电平
        ir_out <= 16'b000000000000; // 将IR输出寄存器复位为全零
        en_out <= 1'b1;             // 输出使能信号置为高电平，表示无效数据
    end
    else begin
        // 如果不处于复位状态

        if (en_in) begin
            // 如果输入使能信号为高电平
            en_out <= 1'b1; // 输出使能信号保持高电平，表示数据有效
            ir_out <= ins;  // 将输入指令复制到IR输出寄存器
        end
        else
            en_out <= 1'b0; // 如果输入使能信号为低电平，输出使能信号置为低电平，表示无效数据
    end
end

endmodule



