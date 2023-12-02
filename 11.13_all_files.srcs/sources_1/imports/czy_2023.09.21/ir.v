module ir(clk, rst, ins, en_in, en_out, ir_out);
// ����һ����Ϊ "ir" ��ģ�飬���������˿�
input clk, rst;           // ʱ������͸�λ����
input [15:0] ins;         // 16λָ������
input en_in;              // ����ʹ���ź�
output reg en_out;        // ���ʹ���ź�
output reg [15:0] ir_out; // 16λIR����Ĵ���

always @ (posedge clk or negedge rst) begin
    // ��ʱ�������ػ�λ�½���ʱִ�����²���

    if (!rst) begin
        // �����λ�ź�Ϊ�͵�ƽ
        ir_out <= 16'b000000000000; // ��IR����Ĵ�����λΪȫ��
        en_out <= 1'b1;             // ���ʹ���ź���Ϊ�ߵ�ƽ����ʾ��Ч����
    end
    else begin
        // ��������ڸ�λ״̬

        if (en_in) begin
            // �������ʹ���ź�Ϊ�ߵ�ƽ
            en_out <= 1'b1; // ���ʹ���źű��ָߵ�ƽ����ʾ������Ч
            ir_out <= ins;  // ������ָ��Ƶ�IR����Ĵ���
        end
        else
            en_out <= 1'b0; // �������ʹ���ź�Ϊ�͵�ƽ�����ʹ���ź���Ϊ�͵�ƽ����ʾ��Ч����
    end
end

endmodule



