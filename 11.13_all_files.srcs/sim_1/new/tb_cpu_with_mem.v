`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/11 20:05:13
// Design Name: 
// Module Name: tb_cpu_with_mem
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


module tb_cpu_with_mem();
reg         clk,rst,en_in;
wire [7:0] led_flowing;

cpu test_cpu(
    .clk (clk),
    .rst (rst),
    .en_in (en_in),
    .led_flowing(led_flowing)	
);

parameter Tclk = 10;

initial begin
	    //define clk
	    clk=0;
        forever #(Tclk/2) clk=~clk;
		end
        
initial begin
		//define rst 
		rst=0;
        #(Tclk*1)   rst=1;
		end

initial begin                
		//define en_in and en_ram_out
	                   en_in = 1'b0;
                       //en_ram_out   = 1'b0;
        #(Tclk*2.5)      en_in = 1'b1;
       // #(Tclk*2)      en_ram_out   = 1'b1;
end

/*initial begin
         //define ins ,you can assign 0000_0000_0000_0001
		    //0000_0100_0000_0010 and so on to ins.
		    //define ins ,you can assign 0000_0000_0000_0001 //0000_0100_0000_0010 and so on to ins.
            ins=16'b0000_0000_0000_0000;
            #(Tclk*8) ins=16'b0000_0000_0000_0001; 
            #(Tclk*8) ins=16'b0000_0100_0000_0010; 
            #(Tclk*8) ins=16'b0000_1000_0000_0010; 
            #(Tclk*8) ins=16'b0011_0110_0000_0001;
        end*/
/*initial begin
    #(Tclk*100)  $stop;
end*/

endmodule
