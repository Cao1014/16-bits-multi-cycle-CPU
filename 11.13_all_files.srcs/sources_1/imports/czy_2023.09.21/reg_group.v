`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/05 20:43:17
// Design Name: 
// Module Name: reg_group
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


module reg_group(
            clk,      
            rst	,	
			en_in,	
			reg_en,		
			d_in,		
			rd,rs,		
			en_out,	
			rd_q,
			rs_q
			
    );
    input clk;
    input rst,en_in;
    input wire[3:0] reg_en;
    input wire[15:0] d_in;
    input wire[1:0] rd,rs;
    output reg en_out;
    output reg[15:0]rd_q,rs_q;
    wire[15:0]q0,q1,q2,q3;
    

    register reg0(
               . clk(clk)        ,
               . rst(rst)        ,
               . en (reg_en[0])           ,                
               . d  (d_in)           ,                
               . q  (q0)      
               );
     register reg1(
               . clk(clk)        ,
               . rst(rst)        ,
               . en (reg_en[1])           ,                
               . d  (d_in)           ,                
               . q  (q1)      
               );
     register reg2(
               . clk(clk)        ,
               . rst(rst)        ,
               . en (reg_en[2])           ,                
               . d  (d_in)           ,                
               . q  (q2)      
               );
     register reg3(
               . clk(clk)        ,
               . rst(rst)        ,
               . en (reg_en[3])           ,                
               . d  (d_in)           ,                
               . q  (q3)      
               );
               
                  
 
     always@(posedge clk or negedge rst)
          if(rst==0)
             begin
                rd_q   <= 0000000000000000;
                rs_q   <= 0000000000000000;    
                en_out <= 0; 
             end
          else
             if(en_in==1)
                 begin
                    en_out <=1;
                 //state<={rd[1:0],rs[1:0]};      
                    case({rd[1:0],rs[1:0]})
                    4'b0000:
                        begin
                        rd_q <= q0;
                        rs_q <= q0;
                        end
                     4'b0001:
                        begin
                        rd_q <= q0;
                        rs_q <= q1;
                        end   
                    4'b0010:
                        begin
                        rd_q <= q0; 
                        rs_q <= q2; 
                        end
                    4'b0011:              
                        begin      
                        rd_q <= q0;                                                           
                        rs_q <= q3;
                        end        
                     4'b0100:          
                        begin      
                        rd_q <= q1;
                        rs_q <= q0;
                        end        
                    4'b0101:          
                        begin      
                        rd_q <= q1;
                        rs_q <= q1;
                        end           
                    4'b0110:          
                        begin      
                        rd_q <= q1;
                        rs_q <= q2;
                        end   
                    4'b0111:          
                         begin      
                         rd_q <= q1;
                         rs_q <= q3;
                         end                   
                   4'b1000:           
                       begin      
                       rd_q <= q2;
                       rs_q <= q0;
                       end    
                    4'b1001:                
                        begin           
                        rd_q <= q2;     
                        rs_q <= q1;         
                        end      
                    4'b1010:           
                         begin      
                         rd_q <= q2;
                         rs_q <= q2;
                         end                
                    4'b1011:          
                        begin      
                        rd_q <= q2;
                        rs_q <= q3;
                        end 
                    4'b1100:           
                        begin      
                        rd_q <= q3;
                        rs_q <= q0;
                        end              
                    4'b1101:             
                        begin        
                        rd_q <= q3;    
                        rs_q <= q1;          
                        end      
                     4'b1110:           
                         begin      
                         rd_q <= q3;
                         rs_q <= q2;
                         end        
                    4'b1111:
                         begin      
                          rd_q <= q3;
                          rs_q <= q3;
                          end         
                   default:
                        begin
                        rd_q <= 0000000000000000;
                        rs_q <= 0000000000000000;
                        end
                 endcase
            end
          
          else
                     begin
                         //rd_q = rd_q;
                         //rs_q = rs_q;
                         en_out <= 0;
                     end

              
endmodule  


/*
module reg_group(
            clk,       
            rst	,	
			en_in,	
			reg_en,		
			d_in,		
			rd,rs,		
			en_out,	
			rd_q,
			rs_q
			
    );
    input clk,rst,en_in;
    input wire[3:0] reg_en;
    input wire[15:0] d_in;
    input wire[1:0] rd,rs;
    output reg en_out;
    output reg[15:0]rd_q,rs_q;
    wire[15:0]q0,q1,q2,q3;
    

    register reg0(
               . clk(clk)        ,
               . rst(rst)        ,
               . en (reg_en[0])           ,                
               . d  (d_in)           ,                
               . q  (q0)      
               );
     register reg1(
               . clk(clk)        ,
               . rst(rst)        ,
               . en (reg_en[1])           ,                
               . d  (d_in)           ,                
               . q  (q1)      
               );
     register reg2(
               . clk(clk)        ,
               . rst(rst)        ,
               . en (reg_en[2])           ,                
               . d  (d_in)           ,                
               . q  (q2)      
               );
     register reg3(
               . clk(clk)        ,
               . rst(rst)        ,
               . en (reg_en[3])           ,                
               . d  (d_in)           ,                
               . q  (q3)      
               );             
 
     always@(posedge clk or negedge rst)
          if(rst==0)
             begin
                rd_q   <= 0000000000000000;
                rs_q   <= 0000000000000000;    
                en_out <= 0; 
             end
          else if(en_in==1)
                 begin
                    en_out <=1;
                 //state<={rd[1:0],rs[1:0]};      
                    case({rd[1:0],rs[1:0]})
                    4'b0000:
                        begin
                        rd_q <= q0;
                        rs_q <= q0;
                        end
                     4'b0001:
                        begin
                        rd_q <= q0;
                        rs_q <= q1;
                        end   
                    4'b0010:
                        begin
                        rd_q <= q0; 
                        rs_q <= q2; 
                        end
                    4'b0011:              
                        begin      
                        rd_q <= q0;                                                           
                        rs_q <= q3;
                        end        
                     4'b0100:          
                        begin      
                        rd_q <= q1;
                        rs_q <= q0;
                        end        
                    4'b0101:          
                        begin      
                        rd_q <= q1;
                        rs_q <= q1;
                        end           
                    4'b0110:          
                        begin      
                        rd_q <= q1;
                        rs_q <= q2;
                        end   
                    4'b0111:          
                         begin      
                         rd_q <= q1;
                         rs_q <= q3;
                         end                   
                   4'b1000:           
                       begin      
                       rd_q <= q2;
                       rs_q <= q0;
                       end    
                    4'b1001:                
                        begin           
                        rd_q <= q2;     
                        rs_q <= q1;         
                        end      
                    4'b1010:           
                         begin      
                         rd_q <= q2;
                         rs_q <= q2;
                         end                
                    4'b1011:          
                        begin      
                        rd_q <= q2;
                        rs_q <= q3;
                        end 
                    4'b1100:           
                        begin      
                        rd_q <= q3;
                        rs_q <= q0;
                        end              
                    4'b1101:             
                        begin        
                        rd_q <= q3;    
                        rs_q <= q1;          
                        end      
                     4'b1110:           
                         begin      
                         rd_q <= q3;
                         rs_q <= q2;
                         end        
                    4'b1111:
                         begin      
                          rd_q <= q3;
                          rs_q <= q3;
                          end         
                   default:
                        begin
                        rd_q <= 0000000000000000;
                        rs_q <= 0000000000000000;
                        end
                 endcase
            end
          else
              begin
              //rd_q <= rd_q;
              //rs_q <= rs_q;
              en_out <= 0;
              end
endmodule               
     */      