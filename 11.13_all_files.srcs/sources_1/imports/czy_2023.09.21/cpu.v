module cpu(clk, rst, en_in, led_flowing);



input clk, rst, en_in;
output reg [7:0] led_flowing;

wire  en_pc_pulse,en_group_pulse,alu_in_sel,en_alu,en_data_mem_pulse,we_pulse,en_ram_out/*,en_pc_out*/;
wire   ram_select; 
wire  [1:0]  pc_ctrl;
wire  [3:0]  reg_en;
wire  [3:0]  alu_func;
wire  [7:0]  offset_addr;
wire  [7:0]  data_addr;
wire  en_led_display;

wire  [15:0] ins;
wire [15:0] addr;
wire [15:0] rd_data;
wire [15:0] data_out;
wire [15:0] reg_group_mux_out;
wire [15:0] alu_out;

wire en_rom_in;
wire en_rom_out;





reg [31:0] counter;  // 32位计数器，用于分频
reg clk_slow;           // 新的慢速时钟
parameter DIV_FACTOR = 10000000; // 分频因子，你需要根据你的需求设定这个值

// 在每个clk的上升沿
always @(posedge clk or negedge rst) 

    if (!rst)
    begin
        clk_slow <= 0;
        counter <= 0;
    end

    else if(counter == DIV_FACTOR - 1)
    begin   
        clk_slow <= ~clk_slow;  // 翻转clk_slow的状态
        counter <= 0;           // 计数器归零 
    end
    
   else 
    begin
        counter <= counter + 1; // 计数器加一
    end
 

// 在每个慢速时钟的上升沿，将 reg_group_mux_out [7:0] 赋值给 led_flowing
always @(posedge clk or negedge rst) 
if (!rst)
    begin   
       led_flowing <= 0;
    end
else if (en_led_display)
begin
    led_flowing <= reg_group_mux_out[7:0];
end







ila_0 my_lia_debug (
	.clk(clk), // input wire clk
	.probe0(rst), // input wire [0:0]  probe0  
	.probe1(clk_slow), // input wire [0:0]  probe1 
	.probe2(reg_group_mux_out), // input wire [15:0]  probe2 
	.probe3(led_flowing) // input wire [7:0]  probe3
);


data_path data_path1 (
					.clk(clk_slow),
					.rst(rst),
					.offset(ins[7:0]),
					.offset_addr(offset_addr),
					.en_pc_pulse(en_pc_pulse),
					.pc_ctrl(pc_ctrl),
					.en_in(en_group_pulse) ,
					.reg_en(reg_en) ,
				    .rd(ins[11:10]),
					.rs(ins[9:8]),
				    .alu_in_sel(alu_in_sel),
				    .alu_func(alu_func),
				    .en_out(en_alu),
				    .pc_out(addr),
				    .rd_data(rd_data),
				    .reg_group_mux_out(reg_group_mux_out),
				    .alu_out(alu_out)
				   // .en_pc_out(en_pc_out)
				);	                     

control_unit control_unit1(
					.clk(clk_slow) ,
					.rst(rst) ,
					.en(en_in)  ,
					.en_alu(en_alu ) ,  
					.en_rom_out(en_rom_out) ,
					.en_ram_out(en_ram_out),
					//.en_pc_out(en_pc_out),
					.ins(ins),
					.offset_addr(offset_addr),
					.data_addr(data_addr),
					.en_rom_in(en_rom_in ),
				    .en_group_pulse(en_group_pulse),
					.en_pc_pulse(en_pc_pulse),
					.en_data_mem_pulse(en_data_mem_pulse),
					.we_pulse(we_pulse),
					.ram_select(ram_select),
				    .reg_en(reg_en),
				    .alu_in_sel(alu_in_sel),
					.alu_func (alu_func),
					.pc_ctrl(pc_ctrl),
					.en_led_display(en_led_display)			
				);	
				
instruction_memory_module instruction_memory1 
(
                    .rst(rst),
                    .clk(clk_slow), 
                    .en_rom_in(en_rom_in), 
                    .addr(addr[7:0]),
                    .ins(ins), 
                    .en_rom_out(en_rom_out)
                    );


reg_group_mux reg_group_mux1 
(
                    //.clk(clk), 
                    .rst(rst),  
                    .ram_select(ram_select),  
                    .alu_out(alu_out), 
                    .data_out(data_out), 
                    .reg_group_mux_out(reg_group_mux_out)
                    );
                      
data_memory_module data_memory1 
(
                    .rst(rst),
                    .clk(clk_slow),    // input wire clka
                    .ce(en_data_mem_pulse),      // input wire ena
                    .we(we_pulse),      // input wire [0 : 0] wea
                    .data_addr(data_addr),  // input wire [7 : 0] addra
                    .data_in(rd_data),    // input wire [15 : 0] dina
                    .data_out(data_out),  // output wire [15 : 0] douta
                    .en_ram_out(en_ram_out)
                    );	



endmodule				