`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/12 22:38:03
// Design Name: 
// Module Name: state_transition
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


module state_transition(output reg en_fetch_pulse, en_group_pulse, en_pc_pulse, en_data_mem_pulse, we_pulse, alu_in_sel, 
                        output reg ram_select, 
                        output reg [1:0] pc_ctrl, 
                        output reg [3:0] alu_func, reg_en, 
                        output reg  en_led_display,
                        
                        input clk, rst, en_in, en1, en2, en3, input [1:0] rd, input [3:0] opcode);
                        reg en_fetch_reg, en_fetch, en_group_reg, en_group, en_pc_reg, en_pc, en_data_mem_reg, en_data_mem, we, we_reg; 
                        
                        reg [4:0] current_state, next_state;
                       
                        parameter Initial = 5'b10000;
                        parameter Fetch = 5'b10001;
                        parameter Decode = 5'b10010;
                        parameter Execute_Movi = 5'b00000;
                        parameter Execute_Mov = 5'b00001;
                        parameter Execute_Addi = 5'b00010;
                        parameter Execute_Add = 5'b00011;
                        parameter Execute_Sub = 5'b00100;
                        parameter Execute_Andi = 5'b00101;
                        parameter Execute_And = 5'b00110;
                        parameter Execute_Or = 5'b00111;
                        parameter Execute_Not = 5'b01000;
                        parameter Execute_Xor = 5'b01001;
                        parameter Execute_Slli = 5'b01010;
                        parameter Execute_Srli = 5'b01011;
                        parameter Execute_Srai = 5'b01100;
                        parameter Execute_Jump = 5'b01101;
                        parameter Execute_Load = 5'b01110;
                        parameter Execute_Store = 5'b01111;
                        parameter Write_back = 5'b10011;

       always@(posedge clk or negedge rst) // State transition logic based on clock edge or negative reset edge
               begin
	                if(!rst)
		                   current_state <= Initial;
	                else 
		                   current_state <= next_state;
               end
          

       always@(*) // Logic to determine control pulses and next state based on current state and inputs
               begin
	                case(current_state)
		                 Initial: 
		                         begin
			                          if(en_in)
				                         next_state = Fetch;
			                          else
				                         next_state = Initial;
		                         end
		                 Fetch: 
		                       begin
			                        if(en1 && en_in) 
				                       next_state = Decode;
			                        else
				                       next_state = current_state;
		                       end
		                 Decode: 
		                        begin
			                         case(opcode) 
				                                 4'b0000: next_state = Execute_Movi;
				                                 4'b0001: next_state = Execute_Mov;
				                                 4'b0010: next_state = Execute_Addi;
				                                 4'b0011: next_state = Execute_Add;
				                                 4'b0100: next_state = Execute_Sub;
				                                 4'b0101: next_state = Execute_Andi;
				                                 4'b0110: next_state = Execute_And;
				                                 4'b0111: next_state = Execute_Or;
				                                 4'b1000: next_state = Execute_Not;
				                                 4'b1001: next_state = Execute_Xor;
				                                 4'b1010: next_state = Execute_Slli;
				                                 4'b1011: next_state = Execute_Srli;
				                                 4'b1100: next_state = Execute_Srai;				                                 
												 4'b1101: next_state = Execute_Jump;
												 4'b1110: next_state = Execute_Load;
				                                 4'b1111: next_state = Execute_Store;
				                                 default: next_state = current_state;
			                         endcase
		                        end
		                 Execute_Movi: 
		                              begin
			                               if(en2)
				                              next_state = Write_back;
			                               else
				                              next_state = current_state;
		                              end
		                 Execute_Mov: 
		                             begin
			                              if(en2)
				                             next_state = Write_back;
			                              else
				                             next_state = current_state;
		                             end
		                 Execute_Addi: 
		                              begin
			                               if(en2)
				                              next_state = Write_back;
			                               else
				                              next_state = current_state;
		                              end
		                 Execute_Add: 
		                             begin
			                              if(en2)
				                             next_state = Write_back;
			                              else
				                             next_state = current_state;
		                             end
                         Execute_Sub: 
		                             begin
			                              if(en2)
				                             next_state = Write_back;
			                              else
				                             next_state = current_state;
		                             end
		                 Execute_Andi: 
		                              begin
			                               if(en2)
				                              next_state = Write_back;
			                               else
				                              next_state = current_state;
		                              end  
		                 Execute_And: 
		                             begin
			                              if(en2)
				                             next_state = Write_back;
			                              else
				                             next_state = current_state;
		                             end
		                 Execute_Or: 
		                            begin
			                             if(en2)
				                            next_state = Write_back;
			                             else
				                            next_state = current_state;
		                            end 
		                 Execute_Not: 
		                             begin
			                              if(en2)
				                             next_state = Write_back;
			                              else
				                             next_state = current_state;
		                             end 
		                 Execute_Xor: 
		                             begin
			                              if(en2)
				                             next_state = Write_back;
			                              else
				                             next_state = current_state;
		                             end 
		                 Execute_Slli: 
		                              begin
			                               if(en2)
				                              next_state = Write_back;
			                               else
				                              next_state = current_state;
		                              end 
		                 Execute_Srli: 
		                              begin
			                               if(en2)
				                              next_state = Write_back;
			                               else
				                              next_state = current_state;
		                              end  
		                 Execute_Srai: 
		                              begin
			                               if(en2)
				                              next_state = Write_back;
			                               else
				                              next_state = current_state;
		                              end  
		                              
		                 Execute_Jump:        
		                              begin
                                           if(en2)
                                               next_state = Write_back;
                                           else
                                               next_state = current_state;
                                           end 
		                 Execute_Load: 
		                              begin
			                               if(en3) 
				                              next_state = Write_back;
			                               else
				                              next_state = current_state;
		                              end                                    
		                 Execute_Store: 
		                               begin
			                                if(en2)
				                               next_state = Write_back;
			                                else
				                               next_state = current_state;
		                               end
		                               
		                 Write_back: next_state = Fetch; // Move to Fetch state to begin the next instruction   
		                			  		 
		                			   
		                 default: next_state = current_state;
	                endcase
               end

       always@(*) // Determine the datapath signal corresponding to the subordinate state before entering the subordinate state
               begin
	                if(!rst) 
	                   begin
		                    en_fetch = 1'b0;
		                    en_group = 1'b0;
		                    en_pc = 1'b0;
		                    en_data_mem = 1'b0;
		                    we = 1'b0;
		                    ram_select = 1'b0;
		                    pc_ctrl = 2'b00; // pc_out <= pc_out
		                    reg_en = 4'b0000; // none of register
		                    alu_in_sel = 1'b0; // offset
		                    alu_func = 4'b0000; // movi
		                    en_led_display = 1'b0; 
	                   end
	                else 
	                   begin
		                    case(next_state)
			                     Initial: 
			                             begin
				                              en_fetch = 1'b0;
				                              en_group = 1'b0;
				                              en_pc = 1'b0;
				                              en_data_mem = 1'b0;
				                              we = 1'b0;
				                              ram_select = 1'b0;
				                              pc_ctrl = 2'b00;
				                              reg_en = 4'b0000;
				                              alu_in_sel = 1'b0;
				                              alu_func = 4'b0000;
				                              en_led_display = 1'b0; 
			                             end
			                     Fetch: 
			                           begin
				                            en_fetch = 1'b1;
				                            en_group = 1'b0;
				                            en_pc = 1'b1; // Required instruction address
				                            en_data_mem = 1'b0;
				                            we = 1'b0;
				                            ram_select = 1'b0;
				                            pc_ctrl = 2'b01; // pc_out = pc_out + 1
				                            reg_en = 4'b0000; // none of register
				                            alu_in_sel = 1'b0; // offset
				                            alu_func = 4'b0000; 
				                            en_led_display = 1'b0; 
			                           end
			                     Decode: 
			                            begin
				                             en_fetch = 1'b0;
				                             en_group = 1'b0;
				                             en_pc = 1'b0;
				                             en_data_mem = 1'b0;
				                             we = 1'b0;
				                             ram_select = 1'b0;
				                             pc_ctrl = 2'b00;
				                             reg_en = 4'b0000;
				                             alu_in_sel = 1'b0;
				                             alu_func = 4'b0000;
				                             en_led_display = 1'b0; 
			                            end
			                     Execute_Movi: 
			                                  begin
				                                   en_fetch = 1'b0;
				                                   en_group = 1'b1;
				                                   en_pc = 1'b0;
				                                   en_data_mem = 1'b0;
				                                   we = 1'b0;
				                                   ram_select = 1'b0;
				                                   pc_ctrl = 2'b00;
				                                   reg_en = 4'b0000; 
				                                   alu_in_sel = 1'b0; // offset
				                                   alu_func = 4'b0000;
				                                   en_led_display = 1'b0; 
			                                  end
			                     Execute_Mov: 
			                                 begin
				                                  en_fetch = 1'b0;
				                                  en_group = 1'b1;
				                                  en_pc = 1'b0;
				                                  en_data_mem = 1'b0;
				                                  we = 1'b0;
				                                  ram_select = 1'b0;
				                                  pc_ctrl = 2'b00;
				                                  reg_en = 4'b0000;
				                                  alu_in_sel = 1'b1;
				                                  alu_func = 4'b0001;
				                                  en_led_display = 1'b0; 
			                                 end
			                     Execute_Addi: 
			                                  begin
				                                   en_fetch = 1'b0;
				                                   en_group = 1'b1;
				                                   en_pc = 1'b0;
				                                   en_data_mem = 1'b0;
				                                   we = 1'b0;
				                                   ram_select = 1'b0;
				                                   pc_ctrl = 2'b00;
				                                   reg_en = 4'b0000;
				                                   alu_in_sel = 1'b0;
				                                   alu_func = 4'b0010;
				                                   en_led_display = 1'b0; 
			                                  end
			                     Execute_Add: 
			                                 begin
				                                  en_fetch = 1'b0;
				                                  en_group = 1'b1;
				                                  en_pc = 1'b0;
				                                  en_data_mem = 1'b0;
				                                  we = 1'b0;
				                                  ram_select = 1'b0;
				                                  pc_ctrl = 2'b00;
				                                  reg_en = 4'b0000;
				                                  alu_in_sel = 1'b1;
				                                  alu_func = 4'b0011;
				                                  en_led_display = 1'b0; 
			                                 end
			                     Execute_Sub: 
			                                 begin
				                                  en_fetch = 1'b0;
				                                  en_group = 1'b1;
				                                  en_pc = 1'b0;
				                                  en_data_mem = 1'b0;
				                                  we = 1'b0;
				                                  ram_select = 1'b0;
				                                  pc_ctrl = 2'b00;
				                                  reg_en = 4'b0000;
				                                  alu_in_sel = 1'b1;
				                                  alu_func = 4'b0100;
				                                  en_led_display = 1'b0; 
			                                 end
			                     Execute_Andi: 
			                                  begin
				                                   en_fetch = 1'b0;
				                                   en_group = 1'b1;
				                                   en_pc = 1'b0;
				                                   en_data_mem = 1'b0;
				                                   we = 1'b0;
				                                   ram_select = 1'b0;
				                                   pc_ctrl = 2'b00;
				                                   reg_en = 4'b0000;
				                                   alu_in_sel = 1'b0;
				                                   alu_func = 4'b0101;
				                                   en_led_display = 1'b0; 
			                                  end
			                     Execute_And: 
			                                 begin
				                                  en_fetch = 1'b0;
				                                  en_group = 1'b1;
				                                  en_pc = 1'b0;
				                                  en_data_mem = 1'b0;
				                                  we = 1'b0;
				                                  ram_select = 1'b0;
				                                  pc_ctrl = 2'b00;
				                                  reg_en = 4'b0000;
				                                  alu_in_sel = 1'b1;
				                                  alu_func = 4'b0110;
				                                  en_led_display = 1'b0; 
			                                 end
			                     Execute_Or: 
			                                begin
				                                 en_fetch = 1'b0;
				                                 en_group = 1'b1;
				                                 en_pc = 1'b0;
				                                 en_data_mem = 1'b0;
				                                 we = 1'b0;
				                                 ram_select = 1'b0;
				                                 pc_ctrl = 2'b00;
				                                 reg_en = 4'b0000;
				                                 alu_in_sel = 1'b1;
				                                 alu_func = 4'b0111;
				                                 en_led_display = 1'b0;
			                                end
			                     Execute_Not: 
			                                 begin
				                                  en_fetch = 1'b0;
				                                  en_group = 1'b1;
				                                  en_pc = 1'b0;
				                                  en_data_mem = 1'b0;
				                                  we = 1'b0;
				                                  ram_select = 1'b0;
				                                  pc_ctrl = 2'b00;
				                                  reg_en = 4'b0000;
				                                  alu_in_sel = 1'b0;
				                                  alu_func = 4'b1000;
				                                  en_led_display = 1'b0;
			                                 end
			                     Execute_Xor: 
			                                 begin
				                                  en_fetch = 1'b0;
				                                  en_group = 1'b1;
				                                  en_pc = 1'b0;
				                                  en_data_mem = 1'b0;
				                                  we = 1'b0;
				                                  ram_select = 1'b0;
				                                  pc_ctrl = 2'b00;
				                                  reg_en = 4'b0000;
				                                  alu_in_sel = 1'b1;
				                                  alu_func = 4'b1001;
				                                  en_led_display = 1'b0; 
			                                 end
			                     Execute_Slli: 
			                                  begin
				                                   en_fetch = 1'b0;
				                                   en_group = 1'b1;
				                                   en_pc = 1'b0;
				                                   en_data_mem = 1'b0;
				                                   we = 1'b0;
				                                   ram_select = 1'b0;
				                                   pc_ctrl = 2'b00;
				                                   reg_en = 4'b0000;
				                                   alu_in_sel = 1'b0;
				                                   alu_func = 4'b1010;
				                                   en_led_display = 1'b0;
			                                  end
			                     Execute_Srli: 
			                                  begin
				                                   en_fetch = 1'b0;
				                                   en_group = 1'b1;
				                                   en_pc = 1'b0;
				                                   en_data_mem = 1'b0;
				                                   we = 1'b0;
				                                   ram_select = 1'b0;
				                                   pc_ctrl = 2'b00;
				                                   reg_en = 4'b0000;
				                                   alu_in_sel = 1'b0;
				                                   alu_func = 4'b1011;
				                                   en_led_display = 1'b0;
			                                  end
			                     Execute_Srai: 
			                                  begin
				                                   en_fetch = 1'b0;
				                                   en_group = 1'b1;
				                                   en_pc = 1'b0;
				                                   en_data_mem = 1'b0;
				                                   we = 1'b0;
				                                   ram_select = 1'b0;
				                                   pc_ctrl = 2'b00;
				                                   reg_en = 4'b0000;
				                                   alu_in_sel = 1'b0;
				                                   alu_func = 4'b1100;
				                                   en_led_display = 1'b0;
			                                  end
			                     Execute_Jump: // ÀàËÆFetch
			                                  begin
				                                   en_fetch = 1'b0;
				                                   en_group = 1'b1;
				                                   en_pc = 1'b1;
				                                   en_data_mem = 1'b0;
				                                   we = 1'b0;
				                                   ram_select = 1'b0;
				                                   pc_ctrl = 2'b10; // Immediate number addressing 
				                                   reg_en = 4'b0000;
				                                   alu_in_sel = 1'b0;
				                                   alu_func = 4'b1101;
				                                   en_led_display = 1'b0; 
			                                  end             
			                     Execute_Load: 
			                                  begin
				                                   en_fetch = 1'b0; 
				                                   en_group = 1'b0;
				                                   en_pc = 1'b0; 
				                                   en_data_mem = 1'b1;
				                                   we = 1'b0;
				                                   ram_select = 1'b0;
				                                   pc_ctrl = 2'b00; 
				                                   reg_en = 4'b0000;
				                                   alu_in_sel = 1'b0;
				                                   alu_func = 4'b1110;
				                                   en_led_display = 1'b0; 
			                                  end
			                     Execute_Store: 
			                                   begin
				                                    en_fetch = 1'b0;
				                                    en_group = 1'b1;
				                                    en_pc = 1'b0;
				                                    en_data_mem = 1'b0;
				                                    we = 1'b0;
				                                    ram_select = 1'b0;
				                                    pc_ctrl = 2'b00;
				                                    reg_en = 4'b0000;
				                                    alu_in_sel = 1'b0;
				                                    alu_func = 4'b1111;
				                                    en_led_display = 1'b0;
			                                   end
			                          

			                     Write_back: 
                                            begin
                                             
                                            case(alu_func)
                                            4'b1101: //jump
                                            begin
                                                  en_fetch = 1'b0;      
                                                  en_group = 1'b0;      
                                                  en_pc = 1'b0;         
                                                  en_data_mem = 1'b0;   
                                                  we = 1'b0;            
                                                  ram_select = 1'b0;    
                                                  pc_ctrl = 2'b00;      
                                                  reg_en = 4'b0000;     
                                                  alu_in_sel = 1'b0;    
                                                  alu_func = 4'b1101;   
                                                  en_led_display = 1'b1;
                                              end
  
                                            4'b1110: //load
                                                  begin
                                                     en_fetch = 1'b0;
                                                     en_group = 1'b0;
                                                     en_pc = 1'b0;
                                                     en_data_mem = 1'b0;
                                                     we = 1'b0;
                                                     ram_select = 1'b1;
                                                     pc_ctrl = 2'b00;
                                                     alu_in_sel = 1'b0;
                                                     alu_func = 4'b1110;
                                                     en_led_display = 1'b1;
                                                     case(rd)
                                                        2'b00: reg_en = 4'b0001;
                                                        2'b01: reg_en = 4'b0010;
                                                        2'b10: reg_en = 4'b0100;
                                                        2'b11: reg_en = 4'b1000;
                                                        default: reg_en = 4'b0000;
                                                     endcase
                                                  end 

 
                                            4'b1111: //store
                                                  begin
                                                     en_fetch = 1'b0;
                                                     en_group = 1'b0;
                                                     en_pc = 1'b0;
                                                     en_data_mem = 1'b1;
                                                     we = 1'b1;
                                                     ram_select = 1'b0;
                                                     pc_ctrl = 2'b00;
                                                     reg_en = 4'b0000;
                                                     alu_in_sel = 1'b0;
                                                     alu_func = 4'b1111;
                                                     en_led_display = 1'b1;
                                                  end 
                                                  
                                            default:
                                                    begin
                                                        en_fetch = 1'b0;
                                                        en_group = 1'b1;
                                                        en_pc = 1'b0;
                                                        en_data_mem = 1'b0;
                                                        we = 1'b0;
                                                        ram_select = 1'b0;
                                                        pc_ctrl = 2'b00;
                                                        alu_in_sel = 1'b0;
                                                        en_led_display = 1'b1; 
                                                        case(rd)
                                                            2'b00: reg_en = 4'b0001;
                                                            2'b01: reg_en = 4'b0010;
                                                            2'b10: reg_en = 4'b0100;
                                                            2'b11: reg_en = 4'b1000;
                                                            default: reg_en = 4'b0000;
                                                        endcase
                                                    end  
                                                    
                                                endcase         
                                             end                                                         
                                                     

			                     
			                     default: 
			                             begin
				                              en_fetch = 1'b0;
				                              en_group = 1'b0;
				                              en_pc = 1'b0;
				                              en_data_mem = 1'b0;
				                              we = 1'b0;
				                              ram_select = 1'b0;
				                              pc_ctrl = 2'b00;
				                              reg_en = 4'b0000;
				                              alu_in_sel = 1'b0;
				                              alu_func = 4'b0000;
				                              en_led_display = 1'b0; 
			                             end
		                    endcase
	                   end
               end
               
// Ensure that the enabled signal is blocked immediately after the enabled signal is enabled. In this case, the rising edge of the clock signal synchronizes the enabled signal
       always@(posedge clk or negedge rst) 
               begin
	                if(!rst) 
	                   begin
		                    en_fetch_reg <= 1'b0;
		                    en_pc_reg <= 1'b0;
		                    en_group_reg <= 1'b0;
		                    en_data_mem_reg <= 1'b0; 
		                    we_reg <= 1'b0;
		                    
	                   end
	                else 
                        begin
		                     en_fetch_reg <= en_fetch;
		                     en_pc_reg <= en_pc;
		                     en_group_reg <= en_group;
		                     en_data_mem_reg <= en_data_mem;
		                     we_reg <= we;
		                     
                        end
               end
               
// Ensure that the enabled signal is blocked immediately after it is enabled to prevent repeated enablement
       always@(en_fetch or en_fetch_reg)
	           en_fetch_pulse = en_fetch & (~en_fetch_reg);

       always@(en_pc_reg or en_pc)
	           en_pc_pulse = en_pc & (~en_pc_reg);
	
       always@(en_group_reg or en_group)
	           en_group_pulse = en_group & (~en_group_reg);
	         
	   always@(en_data_mem_reg or en_data_mem)
               en_data_mem_pulse = en_data_mem & (~en_data_mem_reg);
                       
       always@(we or we_reg)
               we_pulse = we & (~we_reg);
   
endmodule
