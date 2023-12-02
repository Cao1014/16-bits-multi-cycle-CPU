`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/27 16:50:48
// Design Name: 
// Module Name: tb_state_transition
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



module tb_state_transition();

reg clk,rst;
reg en_in;
reg en1;
reg en2;
reg en3;
reg [1:0] rd;
reg [3:0] opcode;
wire en_fetch_pulse;
wire en_group_pulse;
wire en_pc_pulse;
wire en_data_mem_pulse;

wire we;
wire ram_select;

wire [1:0] pc_ctrl;
wire [3:0] reg_en;
wire alu_in_sel;
wire [3:0] alu_func;
/*
state_transition state_transition1(
					.clk(clk) ,
					.rst(rst) ,
					.en_in(en_in) ,
					.en1(en1) ,
					.en2(en2) ,
					.rd(rd) ,
					.opcode(opcode)  ,
					.en_fetch_pulse(en_fetch_pulse),	
					.en_group_pulse(en_group_pulse),
					.en_pc_pulse(en_pc_pulse)  ,
					.pc_ctrl(pc_ctrl) ,
					.reg_en(reg_en) ,
					.alu_in_sel(alu_in_sel)	,
					.alu_func(alu_func)			
				);*/
state_transition state_transition1(
                                    .clk(clk) ,
                                    .rst(rst) ,
                                    .en_in(en_in) ,
                                    .en1(en1) ,        // .en1(en_out) ,
                                    .en2(en2) ,        // .en2(en_alu) ,
                                    .en3(en3) ,        //.en3(en_ram) ,
                                    .rd(rd) ,
                                    .opcode(opcode)  ,
                                    /*.data_addr(ir_out[7:0])  ,*/
                                    .en_fetch_pulse(en_fetch_pulse),    
                                    .en_group_pulse(en_group_pulse),
                                    .en_pc_pulse(en_pc_pulse)  ,
                                    .en_data_mem_pulse(en_data_mem_pulse)  ,
                                    .we(we),
                                    .ram_select(ram_select),
                                    .pc_ctrl(pc_ctrl) ,
                                    .reg_en(reg_en) ,
                                    .alu_in_sel(alu_in_sel)    ,
                                    .alu_func(alu_func)            
                                );				
				

parameter Tclk = 10;

initial begin
			clk=0;
			forever #(Tclk/2) clk=~clk;
		end
        
initial begin
				    rst=0;
		  #(Tclk*4)	rst=1; 
		end

reg cnt1;
always @ (posedge clk) begin
	if(!rst) 
		cnt1 <= 1'd0;
	else 
	    cnt1 <= cnt1+1;
end	

always @ (posedge clk) begin
	if(!rst)                 
		begin
		en2 <= 1'b0;
		en3 <= 1'b0;
		end
	else if (cnt1==1'd1)
    //please add your code here
        begin
		en2 <= 1'b1;
		en3 <= 1'b1;
	    end
	else 
	    begin
		en2 <= 1'b0;
		en3 <= 1'b0;
		end
end

initial begin                
		        en_in = 1'b0;
		        en1   = 1'b0;
	#(Tclk*2)	en_in = 1'b1;
    #(Tclk*2)   en1   = 1'b1;
end

initial begin
                    	rd = 2'b00;
		  #(Tclk*8)     rd = 2'b01;
		  #(Tclk*4)     rd = 2'b10;
		  #(Tclk*4)     rd = 2'b11;
        end

initial begin
		                opcode=4'b0000;
         #(Tclk*8)      opcode=4'b0001;
         #(Tclk*8)      opcode=4'b0010;
         #(Tclk*8)      opcode=4'b0011;
         #(Tclk*8)      opcode=4'b0100;
         #(Tclk*8)      opcode=4'b0101;
         #(Tclk*8)      opcode=4'b0110;
         #(Tclk*8)      opcode=4'b0111;
         #(Tclk*8)      opcode=4'b1000;
         #(Tclk*8)      opcode=4'b1001;
         #(Tclk*8)      opcode=4'b1010;
         #(Tclk*8)      opcode=4'b1011;
         #(Tclk*8)      opcode=4'b1100;
         #(Tclk*8)      opcode=4'b1101; 
         #(Tclk*8)      opcode=4'b1110;  //load
         #(Tclk*8)      opcode=4'b1111;  //store
         
          //please add your code here

        end

        
initial begin
          #(Tclk*320)  $stop;
end
				
endmodule
