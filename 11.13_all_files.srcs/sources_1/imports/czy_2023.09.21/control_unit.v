module control_unit (
 clk, rst, en, en_alu, en_ram_out, en_rom_out, ins,
	offset_addr, data_addr, en_rom_in, en_group_pulse, en_pc_pulse, en_data_mem_pulse, 
	reg_en,alu_in_sel, we_pulse, ram_select, alu_func, pc_ctrl, en_led_display  		
);
input clk, rst, en, en_alu, en_ram_out, en_rom_out;	
input [15:0] ins;
output en_rom_in, en_group_pulse, en_pc_pulse, en_data_mem_pulse, alu_in_sel, we_pulse;	
output [7:0]	offset_addr;
output [7:0]	data_addr;
output [3:0]	reg_en;
output [3:0]	alu_func;
output [1:0]	pc_ctrl;
output	ram_select;
output  en_led_display;

wire [15:0] ir_out ;
wire	en_out ;
reg [7:0] offset_addr;
reg [7:0] data_addr;
ir ir1 (
				.clk(clk)	,
				.rst(rst)   ,
				.ins(ins)   ,
				.en_in(en_rom_out)	,
				.en_out(en_out)		,
				.ir_out(ir_out)
				);
	
	
state_transition state_transition1(
					.clk(clk) ,
					.rst(rst) ,
					.en_in(en) ,
					.en1(en_out) ,
					.en2(en_alu) ,
					.en3(en_ram_out) ,
					//.en4(en_pc_out),
					.rd(ir_out[11:10]) ,
					.opcode(ir_out[15:12])  ,
					/*.data_addr(ir_out[7:0])  ,*/
					.en_fetch_pulse(en_rom_in),	
					.en_group_pulse(en_group_pulse),
					.en_pc_pulse(en_pc_pulse)  ,
					.en_data_mem_pulse(en_data_mem_pulse)  ,
					.we_pulse(we_pulse),
                    .ram_select(ram_select),
					.pc_ctrl(pc_ctrl) ,
					.reg_en(reg_en) ,
					.alu_in_sel(alu_in_sel)	,
					.alu_func(alu_func),
					.en_led_display(en_led_display)			
				);
				
always @ (en_out,ir_out) 
begin
	offset_addr = ir_out[7:0];
	data_addr = ir_out[7:0];
end


endmodule







