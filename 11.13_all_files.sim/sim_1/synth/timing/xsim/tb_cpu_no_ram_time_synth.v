// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Oct 11 23:29:02 2023
// Host        : LAPTOP-NOGIVP3N running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/Vivado2017/Lab/czy_2023.9.21/czy_2023.9.21.sim/sim_1/synth/timing/xsim/tb_cpu_no_ram_time_synth.v
// Design      : cpu
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module alu
   (en_alu,
    O,
    \alu_out_reg[7]_0 ,
    \alu_out_reg[11]_0 ,
    \alu_out_reg[15]_0 ,
    \q_reg[15] ,
    E,
    CLK,
    rst,
    Q,
    en_out_reg_0,
    S,
    \alu_b_reg[7] ,
    \alu_b_reg[11] ,
    \alu_a_reg[15] ,
    D);
  output en_alu;
  output [3:0]O;
  output [3:0]\alu_out_reg[7]_0 ;
  output [3:0]\alu_out_reg[11]_0 ;
  output [3:0]\alu_out_reg[15]_0 ;
  output [15:0]\q_reg[15] ;
  input [0:0]E;
  input CLK;
  input rst;
  input [14:0]Q;
  input [0:0]en_out_reg_0;
  input [3:0]S;
  input [3:0]\alu_b_reg[7] ;
  input [3:0]\alu_b_reg[11] ;
  input [3:0]\alu_a_reg[15] ;
  input [15:0]D;

  wire CLK;
  wire [15:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [14:0]Q;
  wire [3:0]S;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__1_n_0 ;
  wire \_inferred__0/i__carry__1_n_1 ;
  wire \_inferred__0/i__carry__1_n_2 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry__2_n_1 ;
  wire \_inferred__0/i__carry__2_n_2 ;
  wire \_inferred__0/i__carry__2_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire [3:0]\alu_a_reg[15] ;
  wire [3:0]\alu_b_reg[11] ;
  wire [3:0]\alu_b_reg[7] ;
  wire [3:0]\alu_out_reg[11]_0 ;
  wire [3:0]\alu_out_reg[15]_0 ;
  wire [3:0]\alu_out_reg[7]_0 ;
  wire en_alu;
  wire [0:0]en_out_reg_0;
  wire [15:0]\q_reg[15] ;
  wire rst;
  wire [3:3]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],en_out_reg_0}),
        .O(O),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\alu_out_reg[7]_0 ),
        .S(\alu_b_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\_inferred__0/i__carry__1_n_1 ,\_inferred__0/i__carry__1_n_2 ,\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(\alu_out_reg[11]_0 ),
        .S(\alu_b_reg[11] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW__inferred__0/i__carry__2_CO_UNCONNECTED [3],\_inferred__0/i__carry__2_n_1 ,\_inferred__0/i__carry__2_n_2 ,\_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O(\alu_out_reg[15]_0 ),
        .S(\alu_a_reg[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[0]),
        .Q(\q_reg[15] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[10]),
        .Q(\q_reg[15] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[11]),
        .Q(\q_reg[15] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[12]),
        .Q(\q_reg[15] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[13]),
        .Q(\q_reg[15] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[14]),
        .Q(\q_reg[15] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[15]),
        .Q(\q_reg[15] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[1]),
        .Q(\q_reg[15] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[2]),
        .Q(\q_reg[15] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[3]),
        .Q(\q_reg[15] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[4]),
        .Q(\q_reg[15] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[5]),
        .Q(\q_reg[15] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[6]),
        .Q(\q_reg[15] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[7]),
        .Q(\q_reg[15] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[8]),
        .Q(\q_reg[15] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_out_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(D[9]),
        .Q(\q_reg[15] [9]));
  FDCE #(
    .INIT(1'b0)) 
    en_out_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst),
        .D(E),
        .Q(en_alu));
endmodule

module alu_mux
   (E,
    \alu_a_reg[0]_0 ,
    \alu_out_reg[15] ,
    Q,
    \alu_out_reg[15]_0 ,
    \alu_out_reg[0] ,
    \alu_out_reg[15]_1 ,
    D,
    \alu_out_reg[1] ,
    \alu_out_reg[6] ,
    \alu_out_reg[7] ,
    \alu_out_reg[8] ,
    \alu_out_reg[9] ,
    \alu_out_reg[10] ,
    \alu_out_reg[11] ,
    \alu_out_reg[12] ,
    \alu_out_reg[1]_0 ,
    \alu_out_reg[6]_0 ,
    \alu_out_reg[7]_0 ,
    \alu_out_reg[8]_0 ,
    \alu_out_reg[9]_0 ,
    \alu_out_reg[10]_0 ,
    \alu_out_reg[12]_0 ,
    \alu_out_reg[13] ,
    \alu_out_reg[13]_0 ,
    \alu_out_reg[14] ,
    \alu_out_reg[1]_1 ,
    \alu_out_reg[6]_1 ,
    \alu_out_reg[7]_1 ,
    \alu_out_reg[13]_1 ,
    \alu_out_reg[14]_0 ,
    \alu_out_reg[15]_2 ,
    \alu_out_reg[8]_1 ,
    \alu_out_reg[9]_1 ,
    \alu_out_reg[11]_0 ,
    \alu_out_reg[12]_1 ,
    \alu_out_reg[0]_0 ,
    \alu_out_reg[5] ,
    \alu_out_reg[15]_3 ,
    \alu_out_reg[15]_4 ,
    \alu_out_reg[0]_1 ,
    S,
    \alu_out_reg[7]_2 ,
    \alu_out_reg[11]_1 ,
    \alu_out_reg[10]_1 ,
    \alu_out_reg[11]_2 ,
    en_out_reg_0,
    CLK,
    en_out_reg_1,
    \alu_a_reg[0]_1 ,
    en_out_reg_2,
    \alu_b_reg[0]_0 ,
    \alu_b_reg[2]_0 ,
    \alu_b_reg[2]_1 ,
    \alu_a_reg[2]_0 ,
    en_out_reg_3,
    en_out_reg_4,
    \alu_b_reg[3]_0 ,
    \alu_b_reg[4]_0 ,
    \alu_b_reg[5]_0 ,
    \alu_b_reg[1]_0 ,
    \alu_b_reg[6]_0 ,
    \alu_b_reg[7]_0 ,
    \alu_b_reg[8]_0 ,
    \alu_b_reg[9]_0 ,
    \alu_b_reg[10]_0 ,
    \alu_b_reg[11]_0 ,
    \alu_b_reg[12]_0 ,
    \alu_a_reg[13]_0 ,
    en_out_reg_5,
    en_out_reg_6,
    O,
    \alu_a_reg[7]_0 ,
    en_out_reg_7,
    en_out_reg_8,
    en_out_reg_9,
    en_out_reg_10,
    en_out_reg_11,
    rst_IBUF,
    \rs_q_reg[15] ,
    alu_in_sel,
    douta,
    \rd_q_reg[15] );
  output [0:0]E;
  output \alu_a_reg[0]_0 ;
  output [3:0]\alu_out_reg[15] ;
  output [15:0]Q;
  output [15:0]\alu_out_reg[15]_0 ;
  output \alu_out_reg[0] ;
  output \alu_out_reg[15]_1 ;
  output [3:0]D;
  output \alu_out_reg[1] ;
  output \alu_out_reg[6] ;
  output \alu_out_reg[7] ;
  output \alu_out_reg[8] ;
  output \alu_out_reg[9] ;
  output \alu_out_reg[10] ;
  output \alu_out_reg[11] ;
  output \alu_out_reg[12] ;
  output \alu_out_reg[1]_0 ;
  output \alu_out_reg[6]_0 ;
  output \alu_out_reg[7]_0 ;
  output \alu_out_reg[8]_0 ;
  output \alu_out_reg[9]_0 ;
  output \alu_out_reg[10]_0 ;
  output \alu_out_reg[12]_0 ;
  output \alu_out_reg[13] ;
  output \alu_out_reg[13]_0 ;
  output \alu_out_reg[14] ;
  output \alu_out_reg[1]_1 ;
  output \alu_out_reg[6]_1 ;
  output \alu_out_reg[7]_1 ;
  output \alu_out_reg[13]_1 ;
  output \alu_out_reg[14]_0 ;
  output \alu_out_reg[15]_2 ;
  output \alu_out_reg[8]_1 ;
  output \alu_out_reg[9]_1 ;
  output \alu_out_reg[11]_0 ;
  output \alu_out_reg[12]_1 ;
  output \alu_out_reg[0]_0 ;
  output \alu_out_reg[5] ;
  output \alu_out_reg[15]_3 ;
  output \alu_out_reg[15]_4 ;
  output \alu_out_reg[0]_1 ;
  output [2:0]S;
  output [3:0]\alu_out_reg[7]_2 ;
  output [3:0]\alu_out_reg[11]_1 ;
  output \alu_out_reg[10]_1 ;
  output \alu_out_reg[11]_2 ;
  input [0:0]en_out_reg_0;
  input CLK;
  input [1:0]en_out_reg_1;
  input \alu_a_reg[0]_1 ;
  input en_out_reg_2;
  input \alu_b_reg[0]_0 ;
  input \alu_b_reg[2]_0 ;
  input \alu_b_reg[2]_1 ;
  input \alu_a_reg[2]_0 ;
  input en_out_reg_3;
  input en_out_reg_4;
  input \alu_b_reg[3]_0 ;
  input \alu_b_reg[4]_0 ;
  input \alu_b_reg[5]_0 ;
  input \alu_b_reg[1]_0 ;
  input \alu_b_reg[6]_0 ;
  input \alu_b_reg[7]_0 ;
  input \alu_b_reg[8]_0 ;
  input \alu_b_reg[9]_0 ;
  input \alu_b_reg[10]_0 ;
  input \alu_b_reg[11]_0 ;
  input \alu_b_reg[12]_0 ;
  input \alu_a_reg[13]_0 ;
  input en_out_reg_5;
  input en_out_reg_6;
  input [1:0]O;
  input [1:0]\alu_a_reg[7]_0 ;
  input en_out_reg_7;
  input en_out_reg_8;
  input en_out_reg_9;
  input en_out_reg_10;
  input en_out_reg_11;
  input rst_IBUF;
  input [15:0]\rs_q_reg[15] ;
  input alu_in_sel;
  input [7:0]douta;
  input [15:0]\rd_q_reg[15] ;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]O;
  wire [15:0]Q;
  wire [2:0]S;
  wire \alu_a_reg[0]_0 ;
  wire \alu_a_reg[0]_1 ;
  wire \alu_a_reg[13]_0 ;
  wire \alu_a_reg[2]_0 ;
  wire [1:0]\alu_a_reg[7]_0 ;
  wire \alu_b[0]_i_1_n_0 ;
  wire \alu_b[10]_i_1_n_0 ;
  wire \alu_b[11]_i_1_n_0 ;
  wire \alu_b[12]_i_1_n_0 ;
  wire \alu_b[13]_i_1_n_0 ;
  wire \alu_b[14]_i_1_n_0 ;
  wire \alu_b[15]_i_1_n_0 ;
  wire \alu_b[1]_i_1_n_0 ;
  wire \alu_b[2]_i_1_n_0 ;
  wire \alu_b[3]_i_1_n_0 ;
  wire \alu_b[4]_i_1_n_0 ;
  wire \alu_b[5]_i_1_n_0 ;
  wire \alu_b[6]_i_1_n_0 ;
  wire \alu_b[7]_i_1_n_0 ;
  wire \alu_b[8]_i_1_n_0 ;
  wire \alu_b[9]_i_1_n_0 ;
  wire \alu_b_reg[0]_0 ;
  wire \alu_b_reg[10]_0 ;
  wire \alu_b_reg[11]_0 ;
  wire \alu_b_reg[12]_0 ;
  wire \alu_b_reg[1]_0 ;
  wire \alu_b_reg[2]_0 ;
  wire \alu_b_reg[2]_1 ;
  wire \alu_b_reg[3]_0 ;
  wire \alu_b_reg[4]_0 ;
  wire \alu_b_reg[5]_0 ;
  wire \alu_b_reg[6]_0 ;
  wire \alu_b_reg[7]_0 ;
  wire \alu_b_reg[8]_0 ;
  wire \alu_b_reg[9]_0 ;
  wire alu_in_sel;
  wire \alu_out[0]_i_11_n_0 ;
  wire \alu_out[0]_i_7_n_0 ;
  wire \alu_out[0]_i_8_n_0 ;
  wire \alu_out[0]_i_9_n_0 ;
  wire \alu_out[10]_i_8_n_0 ;
  wire \alu_out[10]_i_9_n_0 ;
  wire \alu_out[11]_i_10_n_0 ;
  wire \alu_out[11]_i_8_n_0 ;
  wire \alu_out[11]_i_9_n_0 ;
  wire \alu_out[12]_i_10_n_0 ;
  wire \alu_out[12]_i_11_n_0 ;
  wire \alu_out[12]_i_8_n_0 ;
  wire \alu_out[12]_i_9_n_0 ;
  wire \alu_out[13]_i_11_n_0 ;
  wire \alu_out[13]_i_8_n_0 ;
  wire \alu_out[13]_i_9_n_0 ;
  wire \alu_out[14]_i_11_n_0 ;
  wire \alu_out[15]_i_12_n_0 ;
  wire \alu_out[15]_i_13_n_0 ;
  wire \alu_out[15]_i_14_n_0 ;
  wire \alu_out[15]_i_17_n_0 ;
  wire \alu_out[15]_i_18_n_0 ;
  wire \alu_out[15]_i_19_n_0 ;
  wire \alu_out[15]_i_20_n_0 ;
  wire \alu_out[15]_i_21_n_0 ;
  wire \alu_out[15]_i_22_n_0 ;
  wire \alu_out[15]_i_23_n_0 ;
  wire \alu_out[15]_i_24_n_0 ;
  wire \alu_out[15]_i_25_n_0 ;
  wire \alu_out[15]_i_8_n_0 ;
  wire \alu_out[15]_i_9_n_0 ;
  wire \alu_out[1]_i_8_n_0 ;
  wire \alu_out[1]_i_9_n_0 ;
  wire \alu_out[2]_i_10_n_0 ;
  wire \alu_out[2]_i_2_n_0 ;
  wire \alu_out[2]_i_5_n_0 ;
  wire \alu_out[2]_i_6_n_0 ;
  wire \alu_out[2]_i_8_n_0 ;
  wire \alu_out[3]_i_2_n_0 ;
  wire \alu_out[3]_i_3_n_0 ;
  wire \alu_out[3]_i_4_n_0 ;
  wire \alu_out[3]_i_6_n_0 ;
  wire \alu_out[3]_i_7_n_0 ;
  wire \alu_out[4]_i_2_n_0 ;
  wire \alu_out[4]_i_3_n_0 ;
  wire \alu_out[4]_i_4_n_0 ;
  wire \alu_out[4]_i_6_n_0 ;
  wire \alu_out[4]_i_7_n_0 ;
  wire \alu_out[4]_i_8_n_0 ;
  wire \alu_out[5]_i_10_n_0 ;
  wire \alu_out[5]_i_2_n_0 ;
  wire \alu_out[5]_i_3_n_0 ;
  wire \alu_out[5]_i_4_n_0 ;
  wire \alu_out[5]_i_7_n_0 ;
  wire \alu_out[5]_i_8_n_0 ;
  wire \alu_out[5]_i_9_n_0 ;
  wire \alu_out[6]_i_10_n_0 ;
  wire \alu_out[6]_i_8_n_0 ;
  wire \alu_out[6]_i_9_n_0 ;
  wire \alu_out[7]_i_10_n_0 ;
  wire \alu_out[7]_i_11_n_0 ;
  wire \alu_out[7]_i_8_n_0 ;
  wire \alu_out[7]_i_9_n_0 ;
  wire \alu_out[8]_i_10_n_0 ;
  wire \alu_out[8]_i_11_n_0 ;
  wire \alu_out[8]_i_8_n_0 ;
  wire \alu_out[8]_i_9_n_0 ;
  wire \alu_out[9]_i_10_n_0 ;
  wire \alu_out[9]_i_8_n_0 ;
  wire \alu_out[9]_i_9_n_0 ;
  wire \alu_out_reg[0] ;
  wire \alu_out_reg[0]_0 ;
  wire \alu_out_reg[0]_1 ;
  wire \alu_out_reg[10] ;
  wire \alu_out_reg[10]_0 ;
  wire \alu_out_reg[10]_1 ;
  wire \alu_out_reg[11] ;
  wire \alu_out_reg[11]_0 ;
  wire [3:0]\alu_out_reg[11]_1 ;
  wire \alu_out_reg[11]_2 ;
  wire \alu_out_reg[12] ;
  wire \alu_out_reg[12]_0 ;
  wire \alu_out_reg[12]_1 ;
  wire \alu_out_reg[13] ;
  wire \alu_out_reg[13]_0 ;
  wire \alu_out_reg[13]_1 ;
  wire \alu_out_reg[14] ;
  wire \alu_out_reg[14]_0 ;
  wire [3:0]\alu_out_reg[15] ;
  wire [15:0]\alu_out_reg[15]_0 ;
  wire \alu_out_reg[15]_1 ;
  wire \alu_out_reg[15]_2 ;
  wire \alu_out_reg[15]_3 ;
  wire \alu_out_reg[15]_4 ;
  wire \alu_out_reg[1] ;
  wire \alu_out_reg[1]_0 ;
  wire \alu_out_reg[1]_1 ;
  wire \alu_out_reg[5] ;
  wire \alu_out_reg[6] ;
  wire \alu_out_reg[6]_0 ;
  wire \alu_out_reg[6]_1 ;
  wire \alu_out_reg[7] ;
  wire \alu_out_reg[7]_0 ;
  wire \alu_out_reg[7]_1 ;
  wire [3:0]\alu_out_reg[7]_2 ;
  wire \alu_out_reg[8] ;
  wire \alu_out_reg[8]_0 ;
  wire \alu_out_reg[8]_1 ;
  wire \alu_out_reg[9] ;
  wire \alu_out_reg[9]_0 ;
  wire \alu_out_reg[9]_1 ;
  wire [7:0]douta;
  wire [0:0]en_out_reg_0;
  wire [1:0]en_out_reg_1;
  wire en_out_reg_10;
  wire en_out_reg_11;
  wire en_out_reg_2;
  wire en_out_reg_3;
  wire en_out_reg_4;
  wire en_out_reg_5;
  wire en_out_reg_6;
  wire en_out_reg_7;
  wire en_out_reg_8;
  wire en_out_reg_9;
  wire [15:0]\rd_q_reg[15] ;
  wire [15:0]\rs_q_reg[15] ;
  wire rst_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[0] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[10] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[11] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[12] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[13] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[14] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[15] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[1] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[2] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[3] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[4] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[5] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[6] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[7] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[8] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_a_reg[9] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\rd_q_reg[15] [9]),
        .Q(Q[9]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[0]_i_1 
       (.I0(\rs_q_reg[15] [0]),
        .I1(alu_in_sel),
        .I2(douta[0]),
        .O(\alu_b[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[10]_i_1 
       (.I0(\rs_q_reg[15] [10]),
        .I1(alu_in_sel),
        .I2(douta[7]),
        .O(\alu_b[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[11]_i_1 
       (.I0(\rs_q_reg[15] [11]),
        .I1(alu_in_sel),
        .I2(douta[7]),
        .O(\alu_b[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[12]_i_1 
       (.I0(\rs_q_reg[15] [12]),
        .I1(alu_in_sel),
        .I2(douta[7]),
        .O(\alu_b[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[13]_i_1 
       (.I0(\rs_q_reg[15] [13]),
        .I1(alu_in_sel),
        .I2(douta[7]),
        .O(\alu_b[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[14]_i_1 
       (.I0(\rs_q_reg[15] [14]),
        .I1(alu_in_sel),
        .I2(douta[7]),
        .O(\alu_b[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[15]_i_1 
       (.I0(\rs_q_reg[15] [15]),
        .I1(alu_in_sel),
        .I2(douta[7]),
        .O(\alu_b[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[1]_i_1 
       (.I0(\rs_q_reg[15] [1]),
        .I1(alu_in_sel),
        .I2(douta[1]),
        .O(\alu_b[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[2]_i_1 
       (.I0(\rs_q_reg[15] [2]),
        .I1(alu_in_sel),
        .I2(douta[2]),
        .O(\alu_b[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[3]_i_1 
       (.I0(\rs_q_reg[15] [3]),
        .I1(alu_in_sel),
        .I2(douta[3]),
        .O(\alu_b[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[4]_i_1 
       (.I0(\rs_q_reg[15] [4]),
        .I1(alu_in_sel),
        .I2(douta[4]),
        .O(\alu_b[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[5]_i_1 
       (.I0(\rs_q_reg[15] [5]),
        .I1(alu_in_sel),
        .I2(douta[5]),
        .O(\alu_b[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[6]_i_1 
       (.I0(\rs_q_reg[15] [6]),
        .I1(alu_in_sel),
        .I2(douta[6]),
        .O(\alu_b[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[7]_i_1 
       (.I0(\rs_q_reg[15] [7]),
        .I1(alu_in_sel),
        .I2(douta[7]),
        .O(\alu_b[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[8]_i_1 
       (.I0(\rs_q_reg[15] [8]),
        .I1(alu_in_sel),
        .I2(douta[7]),
        .O(\alu_b[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_b[9]_i_1 
       (.I0(\rs_q_reg[15] [9]),
        .I1(alu_in_sel),
        .I2(douta[7]),
        .O(\alu_b[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[0] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[0]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[10] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[10]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[11] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[11]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[12] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[12]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[13] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[13]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[14] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[14]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[15] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[15]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[1] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[1]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[2] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[2]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[3] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[3]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[4] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[4]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[5] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[5]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[6] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[6]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[7] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[7]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[8] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[8]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_b_reg[9] 
       (.C(CLK),
        .CE(en_out_reg_0),
        .CLR(\alu_a_reg[0]_0 ),
        .D(\alu_b[9]_i_1_n_0 ),
        .Q(\alu_out_reg[15]_0 [9]));
  LUT6 #(
    .INIT(64'hF0F0F0F0FFF0F8F8)) 
    \alu_out[0]_i_11 
       (.I0(\alu_out_reg[15]_0 [2]),
        .I1(\alu_out[4]_i_8_n_0 ),
        .I2(\alu_out[0]_i_8_n_0 ),
        .I3(\alu_out[0]_i_7_n_0 ),
        .I4(\alu_out_reg[15]_0 [1]),
        .I5(\alu_out_reg[15]_0 [0]),
        .O(\alu_out[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF0FFF8)) 
    \alu_out[0]_i_3 
       (.I0(\alu_out_reg[15]_0 [1]),
        .I1(\alu_out[0]_i_7_n_0 ),
        .I2(\alu_out[0]_i_8_n_0 ),
        .I3(\alu_out[0]_i_9_n_0 ),
        .I4(\alu_out_reg[15]_0 [0]),
        .I5(\alu_out[1]_i_8_n_0 ),
        .O(\alu_out_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hF04400BB004400BB)) 
    \alu_out[0]_i_4 
       (.I0(\alu_out_reg[15]_0 [0]),
        .I1(en_out_reg_1[0]),
        .I2(\alu_out_reg[5] ),
        .I3(en_out_reg_1[1]),
        .I4(Q[0]),
        .I5(\alu_out[15]_i_9_n_0 ),
        .O(\alu_out_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFEEEAAAAAAAAAAAA)) 
    \alu_out[0]_i_6 
       (.I0(\alu_a_reg[0]_1 ),
        .I1(\alu_out[0]_i_11_n_0 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(\alu_out[1]_i_8_n_0 ),
        .I4(\alu_out_reg[15]_1 ),
        .I5(en_out_reg_2),
        .O(\alu_out_reg[0] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \alu_out[0]_i_7 
       (.I0(Q[10]),
        .I1(Q[14]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(\alu_out_reg[15]_0 [2]),
        .I4(Q[2]),
        .I5(Q[6]),
        .O(\alu_out[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000B0008)) 
    \alu_out[0]_i_8 
       (.I0(Q[8]),
        .I1(\alu_out_reg[15]_0 [3]),
        .I2(\alu_out_reg[15]_0 [2]),
        .I3(\alu_out_reg[15]_0 [1]),
        .I4(Q[0]),
        .I5(\alu_out_reg[15]_0 [0]),
        .O(\alu_out[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008A80)) 
    \alu_out[0]_i_9 
       (.I0(\alu_out_reg[15]_0 [2]),
        .I1(Q[12]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(Q[4]),
        .I4(\alu_out_reg[15]_0 [0]),
        .I5(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAEAAAAEAAAAAA)) 
    \alu_out[10]_i_3 
       (.I0(\alu_b_reg[10]_0 ),
        .I1(\alu_out_reg[15]_1 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(en_out_reg_2),
        .I4(\alu_out[10]_i_8_n_0 ),
        .I5(\alu_out[11]_i_8_n_0 ),
        .O(\alu_out_reg[10] ));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \alu_out[10]_i_4 
       (.I0(\alu_out[11]_i_9_n_0 ),
        .I1(\alu_out_reg[15]_0 [1]),
        .I2(\alu_out[11]_i_10_n_0 ),
        .I3(\alu_out[10]_i_8_n_0 ),
        .I4(\alu_out[15]_i_8_n_0 ),
        .I5(en_out_reg_1[0]),
        .O(\alu_out_reg[10]_1 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \alu_out[10]_i_5 
       (.I0(\alu_out[11]_i_8_n_0 ),
        .I1(\alu_out[10]_i_9_n_0 ),
        .I2(\alu_out[12]_i_10_n_0 ),
        .I3(en_out_reg_1[0]),
        .O(\alu_out_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h000000CC00F000AA)) 
    \alu_out[10]_i_8 
       (.I0(Q[10]),
        .I1(Q[12]),
        .I2(Q[14]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .I5(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \alu_out[10]_i_9 
       (.I0(\alu_out[12]_i_11_n_0 ),
        .I1(Q[7]),
        .I2(Q[3]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .I5(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \alu_out[11]_i_10 
       (.I0(Q[10]),
        .I1(Q[6]),
        .I2(Q[2]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .O(\alu_out[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAEAAAAEAAAAAA)) 
    \alu_out[11]_i_3 
       (.I0(\alu_b_reg[11]_0 ),
        .I1(\alu_out_reg[15]_1 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(en_out_reg_2),
        .I4(\alu_out[11]_i_8_n_0 ),
        .I5(\alu_out[12]_i_8_n_0 ),
        .O(\alu_out_reg[11] ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \alu_out[11]_i_4 
       (.I0(\alu_out[11]_i_8_n_0 ),
        .I1(\alu_out[12]_i_9_n_0 ),
        .I2(\alu_out[15]_i_8_n_0 ),
        .I3(en_out_reg_1[0]),
        .O(\alu_out_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFF000000B8B80000)) 
    \alu_out[11]_i_5 
       (.I0(\alu_out[11]_i_9_n_0 ),
        .I1(\alu_out_reg[15]_0 [1]),
        .I2(\alu_out[11]_i_10_n_0 ),
        .I3(\alu_out[12]_i_8_n_0 ),
        .I4(\alu_out[12]_i_10_n_0 ),
        .I5(en_out_reg_1[0]),
        .O(\alu_out_reg[11]_2 ));
  LUT6 #(
    .INIT(64'h000000CC00F000AA)) 
    \alu_out[11]_i_8 
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(Q[15]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .I5(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \alu_out[11]_i_9 
       (.I0(Q[8]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .O(\alu_out[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \alu_out[12]_i_10 
       (.I0(\alu_out[15]_i_18_n_0 ),
        .I1(\alu_out[15]_i_19_n_0 ),
        .I2(\alu_out[15]_i_20_n_0 ),
        .I3(\alu_out_reg[15]_0 [0]),
        .O(\alu_out[12]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \alu_out[12]_i_11 
       (.I0(Q[9]),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .O(\alu_out[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAEAAAAEAAAAAA)) 
    \alu_out[12]_i_3 
       (.I0(\alu_b_reg[12]_0 ),
        .I1(\alu_out_reg[15]_1 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(en_out_reg_2),
        .I4(\alu_out[12]_i_8_n_0 ),
        .I5(\alu_out[13]_i_8_n_0 ),
        .O(\alu_out_reg[12] ));
  LUT4 #(
    .INIT(16'h8C80)) 
    \alu_out[12]_i_4 
       (.I0(\alu_out[12]_i_8_n_0 ),
        .I1(\alu_out[15]_i_8_n_0 ),
        .I2(en_out_reg_1[0]),
        .I3(\alu_out[13]_i_9_n_0 ),
        .O(\alu_out_reg[12]_1 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \alu_out[12]_i_5 
       (.I0(\alu_out[13]_i_8_n_0 ),
        .I1(\alu_out[12]_i_9_n_0 ),
        .I2(\alu_out[12]_i_10_n_0 ),
        .I3(en_out_reg_1[0]),
        .O(\alu_out_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h000A000C)) 
    \alu_out[12]_i_8 
       (.I0(Q[14]),
        .I1(Q[12]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(\alu_out_reg[15]_0 [2]),
        .I4(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4E4400004E44)) 
    \alu_out[12]_i_9 
       (.I0(\alu_out_reg[15]_0 [2]),
        .I1(\alu_out[15]_i_22_n_0 ),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(Q[7]),
        .I4(\alu_out_reg[15]_0 [1]),
        .I5(\alu_out[12]_i_11_n_0 ),
        .O(\alu_out[12]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \alu_out[13]_i_11 
       (.I0(\alu_out_reg[15]_0 [1]),
        .I1(\alu_out_reg[15]_0 [2]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(Q[14]),
        .O(\alu_out[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hC840404000000000)) 
    \alu_out[13]_i_5 
       (.I0(\alu_out_reg[15]_0 [0]),
        .I1(\alu_out_reg[15]_1 ),
        .I2(\alu_out[13]_i_8_n_0 ),
        .I3(Q[14]),
        .I4(\alu_out[15]_i_9_n_0 ),
        .I5(en_out_reg_1[0]),
        .O(\alu_out_reg[13]_0 ));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \alu_out[13]_i_6 
       (.I0(\alu_out[13]_i_9_n_0 ),
        .I1(\alu_out[14]_i_11_n_0 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(\alu_out_reg[15]_1 ),
        .I4(en_out_reg_1[0]),
        .O(\alu_out_reg[13]_1 ));
  LUT6 #(
    .INIT(64'hEEAAFAAAAAAAAAAA)) 
    \alu_out[13]_i_7 
       (.I0(\alu_a_reg[13]_0 ),
        .I1(\alu_out[13]_i_11_n_0 ),
        .I2(\alu_out[13]_i_8_n_0 ),
        .I3(\alu_out_reg[15]_1 ),
        .I4(\alu_out_reg[15]_0 [0]),
        .I5(en_out_reg_2),
        .O(\alu_out_reg[13] ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \alu_out[13]_i_8 
       (.I0(Q[15]),
        .I1(Q[13]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(\alu_out_reg[15]_0 [2]),
        .I4(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[13]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[13]_i_9 
       (.I0(\alu_out[11]_i_10_n_0 ),
        .I1(\alu_out_reg[15]_0 [1]),
        .I2(\alu_out[15]_i_23_n_0 ),
        .O(\alu_out[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    \alu_out[14]_i_11 
       (.I0(\alu_out[15]_i_21_n_0 ),
        .I1(\alu_out[15]_i_22_n_0 ),
        .I2(Q[7]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .I5(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA080000000800000)) 
    \alu_out[14]_i_4 
       (.I0(en_out_reg_3),
        .I1(Q[14]),
        .I2(\alu_out[15]_i_9_n_0 ),
        .I3(\alu_out_reg[15]_0 [0]),
        .I4(\alu_out_reg[15]_1 ),
        .I5(Q[15]),
        .O(\alu_out_reg[14] ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \alu_out[14]_i_6 
       (.I0(\alu_out[14]_i_11_n_0 ),
        .I1(\alu_out[15]_i_14_n_0 ),
        .I2(en_out_reg_1[0]),
        .I3(\alu_out_reg[15]_1 ),
        .I4(\alu_out_reg[15]_0 [0]),
        .I5(en_out_reg_7),
        .O(\alu_out_reg[14]_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \alu_out[15]_i_10 
       (.I0(\alu_out[15]_i_20_n_0 ),
        .I1(\alu_out_reg[15]_0 [15]),
        .I2(\alu_out_reg[15]_0 [14]),
        .I3(\alu_out_reg[15]_0 [13]),
        .I4(\alu_out_reg[15]_0 [12]),
        .I5(\alu_out[15]_i_18_n_0 ),
        .O(\alu_out_reg[15]_1 ));
  LUT5 #(
    .INIT(32'h0B080808)) 
    \alu_out[15]_i_12 
       (.I0(\alu_out[15]_i_21_n_0 ),
        .I1(\alu_out_reg[15]_0 [1]),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(\alu_out[15]_i_22_n_0 ),
        .I4(\alu_out_reg[15]_0 [2]),
        .O(\alu_out[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0002000300020000)) 
    \alu_out[15]_i_13 
       (.I0(Q[7]),
        .I1(\alu_out_reg[15]_0 [0]),
        .I2(\alu_out_reg[15]_0 [1]),
        .I3(\alu_out_reg[15]_0 [2]),
        .I4(\alu_out_reg[15]_0 [3]),
        .I5(Q[15]),
        .O(\alu_out[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \alu_out[15]_i_14 
       (.I0(\alu_out[15]_i_23_n_0 ),
        .I1(\alu_out_reg[15]_0 [1]),
        .I2(Q[10]),
        .I3(\alu_out[15]_i_24_n_0 ),
        .I4(\alu_out[13]_i_11_n_0 ),
        .I5(\alu_out[15]_i_25_n_0 ),
        .O(\alu_out[15]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \alu_out[15]_i_17 
       (.I0(en_out_reg_2),
        .I1(\alu_out_reg[15]_0 [0]),
        .I2(\alu_out[15]_i_20_n_0 ),
        .I3(\alu_out[15]_i_19_n_0 ),
        .I4(\alu_out[15]_i_18_n_0 ),
        .O(\alu_out[15]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \alu_out[15]_i_18 
       (.I0(\alu_out_reg[15]_0 [5]),
        .I1(\alu_out_reg[15]_0 [4]),
        .I2(\alu_out_reg[15]_0 [7]),
        .I3(\alu_out_reg[15]_0 [6]),
        .O(\alu_out[15]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \alu_out[15]_i_19 
       (.I0(\alu_out_reg[15]_0 [15]),
        .I1(\alu_out_reg[15]_0 [14]),
        .I2(\alu_out_reg[15]_0 [13]),
        .I3(\alu_out_reg[15]_0 [12]),
        .O(\alu_out[15]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \alu_out[15]_i_20 
       (.I0(\alu_out_reg[15]_0 [11]),
        .I1(\alu_out_reg[15]_0 [10]),
        .I2(\alu_out_reg[15]_0 [9]),
        .I3(\alu_out_reg[15]_0 [8]),
        .O(\alu_out[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \alu_out[15]_i_21 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(\alu_out_reg[15]_0 [2]),
        .I4(Q[13]),
        .I5(Q[9]),
        .O(\alu_out[15]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[15]_i_22 
       (.I0(Q[3]),
        .I1(\alu_out_reg[15]_0 [3]),
        .I2(Q[11]),
        .O(\alu_out[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \alu_out[15]_i_23 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(\alu_out_reg[15]_0 [2]),
        .I4(Q[12]),
        .I5(Q[8]),
        .O(\alu_out[15]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \alu_out[15]_i_24 
       (.I0(\alu_out_reg[15]_0 [3]),
        .I1(\alu_out_reg[15]_0 [2]),
        .I2(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[15]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00008C80)) 
    \alu_out[15]_i_25 
       (.I0(Q[2]),
        .I1(\alu_out_reg[15]_0 [3]),
        .I2(\alu_out_reg[15]_0 [2]),
        .I3(Q[6]),
        .I4(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[15]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \alu_out[15]_i_4 
       (.I0(en_out_reg_1[0]),
        .I1(en_out_reg_1[1]),
        .I2(\alu_out[15]_i_8_n_0 ),
        .I3(Q[15]),
        .I4(\alu_out[15]_i_9_n_0 ),
        .O(\alu_out_reg[15]_3 ));
  LUT6 #(
    .INIT(64'h8888888088808880)) 
    \alu_out[15]_i_5 
       (.I0(\alu_out_reg[15]_1 ),
        .I1(en_out_reg_8),
        .I2(\alu_out[15]_i_12_n_0 ),
        .I3(\alu_out[15]_i_13_n_0 ),
        .I4(\alu_out_reg[15]_0 [0]),
        .I5(\alu_out[15]_i_14_n_0 ),
        .O(\alu_out_reg[15]_2 ));
  LUT6 #(
    .INIT(64'hFFC8C8C888888888)) 
    \alu_out[15]_i_7 
       (.I0(en_out_reg_10),
        .I1(\alu_out_reg[15]_0 [15]),
        .I2(en_out_reg_11),
        .I3(\alu_out[15]_i_17_n_0 ),
        .I4(\alu_out[15]_i_9_n_0 ),
        .I5(Q[15]),
        .O(\alu_out_reg[15]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \alu_out[15]_i_8 
       (.I0(\alu_out[15]_i_18_n_0 ),
        .I1(\alu_out[15]_i_19_n_0 ),
        .I2(\alu_out[15]_i_20_n_0 ),
        .I3(\alu_out_reg[15]_0 [0]),
        .O(\alu_out[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \alu_out[15]_i_9 
       (.I0(\alu_out_reg[15]_0 [3]),
        .I1(\alu_out_reg[15]_0 [2]),
        .I2(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAEAAAAEAAAAAA)) 
    \alu_out[1]_i_3 
       (.I0(\alu_b_reg[1]_0 ),
        .I1(\alu_out_reg[15]_1 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(en_out_reg_2),
        .I4(\alu_out[1]_i_8_n_0 ),
        .I5(\alu_out[2]_i_10_n_0 ),
        .O(\alu_out_reg[1] ));
  LUT6 #(
    .INIT(64'h00B0000000800000)) 
    \alu_out[1]_i_4 
       (.I0(Q[0]),
        .I1(\alu_out_reg[15]_0 [0]),
        .I2(\alu_out_reg[15]_1 ),
        .I3(en_out_reg_1[0]),
        .I4(\alu_out[15]_i_9_n_0 ),
        .I5(Q[1]),
        .O(\alu_out_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hAC000000)) 
    \alu_out[1]_i_5 
       (.I0(\alu_out[2]_i_10_n_0 ),
        .I1(\alu_out[1]_i_8_n_0 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(\alu_out_reg[15]_1 ),
        .I4(en_out_reg_1[0]),
        .O(\alu_out_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \alu_out[1]_i_8 
       (.I0(\alu_out[3]_i_7_n_0 ),
        .I1(\alu_out_reg[15]_0 [1]),
        .I2(Q[5]),
        .I3(\alu_out[15]_i_24_n_0 ),
        .I4(\alu_out[2]_i_8_n_0 ),
        .I5(\alu_out[1]_i_9_n_0 ),
        .O(\alu_out[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00008C80)) 
    \alu_out[1]_i_9 
       (.I0(Q[13]),
        .I1(\alu_out_reg[15]_0 [3]),
        .I2(\alu_out_reg[15]_0 [2]),
        .I3(Q[9]),
        .I4(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \alu_out[2]_i_1 
       (.I0(\alu_out[2]_i_2_n_0 ),
        .I1(\alu_b_reg[0]_0 ),
        .I2(\alu_b_reg[2]_0 ),
        .I3(\alu_out[2]_i_5_n_0 ),
        .I4(\alu_out[2]_i_6_n_0 ),
        .I5(\alu_b_reg[2]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    \alu_out[2]_i_10 
       (.I0(\alu_out[0]_i_7_n_0 ),
        .I1(\alu_out[4]_i_8_n_0 ),
        .I2(Q[8]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .I5(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h000A000C)) 
    \alu_out[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(\alu_out_reg[15]_0 [2]),
        .I4(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \alu_out[2]_i_5 
       (.I0(en_out_reg_5),
        .I1(Q[2]),
        .I2(en_out_reg_6),
        .I3(O[0]),
        .I4(\alu_out[5]_i_8_n_0 ),
        .I5(\alu_out[2]_i_8_n_0 ),
        .O(\alu_out[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAFAAAAAAAAAAA)) 
    \alu_out[2]_i_6 
       (.I0(\alu_a_reg[2]_0 ),
        .I1(\alu_out[3]_i_6_n_0 ),
        .I2(\alu_out[2]_i_10_n_0 ),
        .I3(\alu_out_reg[15]_1 ),
        .I4(\alu_out_reg[15]_0 [0]),
        .I5(en_out_reg_3),
        .O(\alu_out[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \alu_out[2]_i_8 
       (.I0(\alu_out_reg[15]_0 [1]),
        .I1(\alu_out_reg[15]_0 [2]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(Q[1]),
        .O(\alu_out[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \alu_out[3]_i_1 
       (.I0(\alu_out[3]_i_2_n_0 ),
        .I1(\alu_out[3]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(en_out_reg_4),
        .I4(\alu_out[3]_i_4_n_0 ),
        .I5(\alu_b_reg[3]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h80808080FF808080)) 
    \alu_out[3]_i_2 
       (.I0(\alu_out[4]_i_6_n_0 ),
        .I1(\alu_out_reg[5] ),
        .I2(en_out_reg_7),
        .I3(en_out_reg_9),
        .I4(Q[3]),
        .I5(\alu_out_reg[15]_0 [3]),
        .O(\alu_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \alu_out[3]_i_3 
       (.I0(en_out_reg_5),
        .I1(Q[3]),
        .I2(en_out_reg_6),
        .I3(O[1]),
        .I4(\alu_out[2]_i_2_n_0 ),
        .I5(\alu_out[5]_i_8_n_0 ),
        .O(\alu_out[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA8000800)) 
    \alu_out[3]_i_4 
       (.I0(en_out_reg_3),
        .I1(\alu_out[3]_i_6_n_0 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(\alu_out_reg[15]_1 ),
        .I4(\alu_out[4]_i_7_n_0 ),
        .O(\alu_out[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[3]_i_6 
       (.I0(\alu_out[5]_i_10_n_0 ),
        .I1(\alu_out_reg[15]_0 [1]),
        .I2(\alu_out[3]_i_7_n_0 ),
        .O(\alu_out[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \alu_out[3]_i_7 
       (.I0(Q[11]),
        .I1(Q[15]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(\alu_out_reg[15]_0 [2]),
        .I4(Q[3]),
        .I5(Q[7]),
        .O(\alu_out[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \alu_out[4]_i_1 
       (.I0(\alu_out[4]_i_2_n_0 ),
        .I1(\alu_out[4]_i_3_n_0 ),
        .I2(Q[4]),
        .I3(en_out_reg_4),
        .I4(\alu_out[4]_i_4_n_0 ),
        .I5(\alu_b_reg[4]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h80808080FF808080)) 
    \alu_out[4]_i_2 
       (.I0(\alu_out[5]_i_7_n_0 ),
        .I1(\alu_out_reg[5] ),
        .I2(en_out_reg_7),
        .I3(en_out_reg_9),
        .I4(Q[4]),
        .I5(\alu_out_reg[15]_0 [4]),
        .O(\alu_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \alu_out[4]_i_3 
       (.I0(en_out_reg_5),
        .I1(Q[4]),
        .I2(en_out_reg_6),
        .I3(\alu_a_reg[7]_0 [0]),
        .I4(\alu_out[4]_i_6_n_0 ),
        .I5(\alu_out[5]_i_8_n_0 ),
        .O(\alu_out[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0802000)) 
    \alu_out[4]_i_4 
       (.I0(en_out_reg_3),
        .I1(\alu_out_reg[15]_0 [0]),
        .I2(\alu_out_reg[15]_1 ),
        .I3(\alu_out[4]_i_7_n_0 ),
        .I4(\alu_out[5]_i_9_n_0 ),
        .O(\alu_out[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h000A000C)) 
    \alu_out[4]_i_6 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(\alu_out_reg[15]_0 [2]),
        .I4(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4E4400004E44)) 
    \alu_out[4]_i_7 
       (.I0(\alu_out_reg[15]_0 [2]),
        .I1(\alu_out[4]_i_8_n_0 ),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(Q[8]),
        .I4(\alu_out_reg[15]_0 [1]),
        .I5(\alu_out[6]_i_10_n_0 ),
        .O(\alu_out[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[4]_i_8 
       (.I0(Q[12]),
        .I1(\alu_out_reg[15]_0 [3]),
        .I2(Q[4]),
        .O(\alu_out[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \alu_out[5]_i_1 
       (.I0(\alu_out[5]_i_2_n_0 ),
        .I1(\alu_out[5]_i_3_n_0 ),
        .I2(Q[5]),
        .I3(en_out_reg_4),
        .I4(\alu_out[5]_i_4_n_0 ),
        .I5(\alu_b_reg[5]_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \alu_out[5]_i_10 
       (.I0(Q[5]),
        .I1(Q[9]),
        .I2(Q[13]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .O(\alu_out[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h80808080FF808080)) 
    \alu_out[5]_i_2 
       (.I0(\alu_out[6]_i_9_n_0 ),
        .I1(\alu_out_reg[5] ),
        .I2(en_out_reg_7),
        .I3(en_out_reg_9),
        .I4(Q[5]),
        .I5(\alu_out_reg[15]_0 [5]),
        .O(\alu_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \alu_out[5]_i_3 
       (.I0(en_out_reg_5),
        .I1(Q[5]),
        .I2(en_out_reg_6),
        .I3(\alu_a_reg[7]_0 [1]),
        .I4(\alu_out[5]_i_7_n_0 ),
        .I5(\alu_out[5]_i_8_n_0 ),
        .O(\alu_out[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA8000800)) 
    \alu_out[5]_i_4 
       (.I0(en_out_reg_3),
        .I1(\alu_out[5]_i_9_n_0 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(\alu_out_reg[15]_1 ),
        .I4(\alu_out[6]_i_8_n_0 ),
        .O(\alu_out[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \alu_out[5]_i_6 
       (.I0(\alu_out_reg[15]_0 [0]),
        .I1(\alu_out[15]_i_20_n_0 ),
        .I2(\alu_out[15]_i_19_n_0 ),
        .I3(\alu_out[15]_i_18_n_0 ),
        .I4(en_out_reg_1[0]),
        .O(\alu_out_reg[5] ));
  LUT6 #(
    .INIT(64'h000000CC00F000AA)) 
    \alu_out[5]_i_7 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .I5(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \alu_out[5]_i_8 
       (.I0(en_out_reg_1[0]),
        .I1(\alu_out[15]_i_18_n_0 ),
        .I2(\alu_out[15]_i_19_n_0 ),
        .I3(\alu_out[15]_i_20_n_0 ),
        .I4(\alu_out_reg[15]_0 [0]),
        .I5(en_out_reg_7),
        .O(\alu_out[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[5]_i_9 
       (.I0(\alu_out[7]_i_10_n_0 ),
        .I1(\alu_out_reg[15]_0 [1]),
        .I2(\alu_out[5]_i_10_n_0 ),
        .O(\alu_out[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \alu_out[6]_i_10 
       (.I0(Q[6]),
        .I1(Q[10]),
        .I2(Q[14]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .O(\alu_out[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAEAAAAEAAAAAA)) 
    \alu_out[6]_i_3 
       (.I0(\alu_b_reg[6]_0 ),
        .I1(\alu_out_reg[15]_1 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(en_out_reg_2),
        .I4(\alu_out[6]_i_8_n_0 ),
        .I5(\alu_out[7]_i_8_n_0 ),
        .O(\alu_out_reg[6] ));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \alu_out[6]_i_4 
       (.I0(\alu_out[6]_i_9_n_0 ),
        .I1(\alu_out[7]_i_9_n_0 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(\alu_out_reg[15]_1 ),
        .I4(en_out_reg_1[0]),
        .O(\alu_out_reg[6]_1 ));
  LUT5 #(
    .INIT(32'hAC000000)) 
    \alu_out[6]_i_5 
       (.I0(\alu_out[7]_i_8_n_0 ),
        .I1(\alu_out[6]_i_8_n_0 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(\alu_out_reg[15]_1 ),
        .I4(en_out_reg_1[0]),
        .O(\alu_out_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \alu_out[6]_i_8 
       (.I0(\alu_out[6]_i_10_n_0 ),
        .I1(Q[8]),
        .I2(Q[12]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .I5(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000CC00F000AA)) 
    \alu_out[6]_i_9 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .I5(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \alu_out[7]_i_10 
       (.I0(Q[7]),
        .I1(Q[11]),
        .I2(Q[15]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .O(\alu_out[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \alu_out[7]_i_11 
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(\alu_out_reg[15]_0 [2]),
        .I4(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAEAAAAEAAAAAA)) 
    \alu_out[7]_i_3 
       (.I0(\alu_b_reg[7]_0 ),
        .I1(\alu_out_reg[15]_1 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(en_out_reg_2),
        .I4(\alu_out[7]_i_8_n_0 ),
        .I5(\alu_out[8]_i_8_n_0 ),
        .O(\alu_out_reg[7] ));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \alu_out[7]_i_4 
       (.I0(\alu_out[7]_i_9_n_0 ),
        .I1(\alu_out[8]_i_9_n_0 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(\alu_out_reg[15]_1 ),
        .I4(en_out_reg_1[0]),
        .O(\alu_out_reg[7]_1 ));
  LUT5 #(
    .INIT(32'hAC000000)) 
    \alu_out[7]_i_5 
       (.I0(\alu_out[8]_i_8_n_0 ),
        .I1(\alu_out[7]_i_8_n_0 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(\alu_out_reg[15]_1 ),
        .I4(en_out_reg_1[0]),
        .O(\alu_out_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \alu_out[7]_i_8 
       (.I0(\alu_out[7]_i_10_n_0 ),
        .I1(Q[9]),
        .I2(Q[13]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .I5(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C080400)) 
    \alu_out[7]_i_9 
       (.I0(\alu_out_reg[15]_0 [1]),
        .I1(\alu_out_reg[15]_0 [2]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\alu_out[7]_i_11_n_0 ),
        .O(\alu_out[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \alu_out[8]_i_10 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(\alu_out_reg[15]_0 [2]),
        .I4(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[8]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \alu_out[8]_i_11 
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(\alu_out_reg[15]_0 [2]),
        .I4(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAEAAAAEAAAAAA)) 
    \alu_out[8]_i_3 
       (.I0(\alu_b_reg[8]_0 ),
        .I1(\alu_out_reg[15]_1 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(en_out_reg_2),
        .I4(\alu_out[8]_i_8_n_0 ),
        .I5(\alu_out[9]_i_8_n_0 ),
        .O(\alu_out_reg[8] ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \alu_out[8]_i_4 
       (.I0(\alu_out[8]_i_8_n_0 ),
        .I1(\alu_out[9]_i_9_n_0 ),
        .I2(\alu_out[15]_i_8_n_0 ),
        .I3(en_out_reg_1[0]),
        .O(\alu_out_reg[8]_1 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \alu_out[8]_i_5 
       (.I0(\alu_out[9]_i_8_n_0 ),
        .I1(\alu_out[8]_i_9_n_0 ),
        .I2(\alu_out[12]_i_10_n_0 ),
        .I3(en_out_reg_1[0]),
        .O(\alu_out_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C080400)) 
    \alu_out[8]_i_8 
       (.I0(\alu_out_reg[15]_0 [1]),
        .I1(\alu_out_reg[15]_0 [2]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(Q[12]),
        .I4(Q[14]),
        .I5(\alu_out[8]_i_10_n_0 ),
        .O(\alu_out[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C080400)) 
    \alu_out[8]_i_9 
       (.I0(\alu_out_reg[15]_0 [1]),
        .I1(\alu_out_reg[15]_0 [2]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\alu_out[8]_i_11_n_0 ),
        .O(\alu_out[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \alu_out[9]_i_10 
       (.I0(Q[11]),
        .I1(Q[9]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(\alu_out_reg[15]_0 [2]),
        .I4(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAEAAAAEAAAAAA)) 
    \alu_out[9]_i_3 
       (.I0(\alu_b_reg[9]_0 ),
        .I1(\alu_out_reg[15]_1 ),
        .I2(\alu_out_reg[15]_0 [0]),
        .I3(en_out_reg_2),
        .I4(\alu_out[9]_i_8_n_0 ),
        .I5(\alu_out[10]_i_8_n_0 ),
        .O(\alu_out_reg[9] ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \alu_out[9]_i_4 
       (.I0(\alu_out[9]_i_8_n_0 ),
        .I1(\alu_out[10]_i_9_n_0 ),
        .I2(\alu_out[15]_i_8_n_0 ),
        .I3(en_out_reg_1[0]),
        .O(\alu_out_reg[9]_1 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \alu_out[9]_i_5 
       (.I0(\alu_out[10]_i_8_n_0 ),
        .I1(\alu_out[9]_i_9_n_0 ),
        .I2(\alu_out[12]_i_10_n_0 ),
        .I3(en_out_reg_1[0]),
        .O(\alu_out_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C080400)) 
    \alu_out[9]_i_8 
       (.I0(\alu_out_reg[15]_0 [1]),
        .I1(\alu_out_reg[15]_0 [2]),
        .I2(\alu_out_reg[15]_0 [3]),
        .I3(Q[13]),
        .I4(Q[15]),
        .I5(\alu_out[9]_i_10_n_0 ),
        .O(\alu_out[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \alu_out[9]_i_9 
       (.I0(\alu_out[11]_i_9_n_0 ),
        .I1(Q[6]),
        .I2(Q[2]),
        .I3(\alu_out_reg[15]_0 [3]),
        .I4(\alu_out_reg[15]_0 [2]),
        .I5(\alu_out_reg[15]_0 [1]),
        .O(\alu_out[9]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    en_group_reg_i_2
       (.I0(rst_IBUF),
        .O(\alu_a_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    en_out_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\alu_a_reg[0]_0 ),
        .D(en_out_reg_0),
        .Q(E));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_1
       (.I0(\alu_out_reg[15]_0 [7]),
        .I1(en_out_reg_1[1]),
        .I2(Q[7]),
        .O(\alu_out_reg[7]_2 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_2
       (.I0(\alu_out_reg[15]_0 [6]),
        .I1(en_out_reg_1[1]),
        .I2(Q[6]),
        .O(\alu_out_reg[7]_2 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_3
       (.I0(\alu_out_reg[15]_0 [5]),
        .I1(en_out_reg_1[1]),
        .I2(Q[5]),
        .O(\alu_out_reg[7]_2 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_4
       (.I0(\alu_out_reg[15]_0 [4]),
        .I1(en_out_reg_1[1]),
        .I2(Q[4]),
        .O(\alu_out_reg[7]_2 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__1_i_1
       (.I0(\alu_out_reg[15]_0 [11]),
        .I1(en_out_reg_1[1]),
        .I2(Q[11]),
        .O(\alu_out_reg[11]_1 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__1_i_2
       (.I0(\alu_out_reg[15]_0 [10]),
        .I1(en_out_reg_1[1]),
        .I2(Q[10]),
        .O(\alu_out_reg[11]_1 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__1_i_3
       (.I0(\alu_out_reg[15]_0 [9]),
        .I1(en_out_reg_1[1]),
        .I2(Q[9]),
        .O(\alu_out_reg[11]_1 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__1_i_4
       (.I0(\alu_out_reg[15]_0 [8]),
        .I1(en_out_reg_1[1]),
        .I2(Q[8]),
        .O(\alu_out_reg[11]_1 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__2_i_1
       (.I0(en_out_reg_1[1]),
        .I1(Q[15]),
        .I2(\alu_out_reg[15]_0 [15]),
        .O(\alu_out_reg[15] [3]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__2_i_2
       (.I0(\alu_out_reg[15]_0 [14]),
        .I1(en_out_reg_1[1]),
        .I2(Q[14]),
        .O(\alu_out_reg[15] [2]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__2_i_3
       (.I0(\alu_out_reg[15]_0 [13]),
        .I1(en_out_reg_1[1]),
        .I2(Q[13]),
        .O(\alu_out_reg[15] [1]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__2_i_4
       (.I0(\alu_out_reg[15]_0 [12]),
        .I1(en_out_reg_1[1]),
        .I2(Q[12]),
        .O(\alu_out_reg[15] [0]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_1
       (.I0(\alu_out_reg[15]_0 [3]),
        .I1(en_out_reg_1[1]),
        .I2(Q[3]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_2
       (.I0(\alu_out_reg[15]_0 [2]),
        .I1(en_out_reg_1[1]),
        .I2(Q[2]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_3
       (.I0(\alu_out_reg[15]_0 [1]),
        .I1(en_out_reg_1[1]),
        .I2(Q[1]),
        .O(S[0]));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
module blk_mem_gen_0
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
module blk_mem_gen_1
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7211 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

module control_unit
   (wea,
    alu_in_sel,
    ram_select,
    \pc_out_reg[0] ,
    \pc_out_reg[0]_0 ,
    D,
    Q,
    \alu_out_reg[13] ,
    \alu_out_reg[14] ,
    \alu_out_reg[14]_0 ,
    \alu_out_reg[14]_1 ,
    \alu_out_reg[14]_2 ,
    \alu_out_reg[0] ,
    \alu_out_reg[2] ,
    \alu_out_reg[3] ,
    \alu_out_reg[4] ,
    \alu_out_reg[5] ,
    \alu_out_reg[15] ,
    \alu_out_reg[15]_0 ,
    \alu_out_reg[14]_3 ,
    \alu_out_reg[1] ,
    \alu_out_reg[6] ,
    \alu_out_reg[7] ,
    \alu_out_reg[8] ,
    \alu_out_reg[9] ,
    \alu_out_reg[10] ,
    \alu_out_reg[11] ,
    \alu_out_reg[12] ,
    \alu_out_reg[2]_0 ,
    \alu_out_reg[13]_0 ,
    \alu_out_reg[15]_1 ,
    \alu_out_reg[2]_1 ,
    \alu_out_reg[2]_2 ,
    \alu_out_reg[13]_1 ,
    S,
    ena,
    en_out_reg,
    en_ram_reg,
    \pc_out_reg[7] ,
    \q_reg[15] ,
    \q_reg[15]_0 ,
    \q_reg[15]_1 ,
    \q_reg[15]_2 ,
    AR,
    rst,
    clk_IBUF_BUFG,
    E,
    \alu_b_reg[1] ,
    \alu_b_reg[0] ,
    \alu_b_reg[0]_0 ,
    \alu_b_reg[15] ,
    \alu_b_reg[0]_1 ,
    \alu_a_reg[0] ,
    \alu_b_reg[0]_2 ,
    \alu_b_reg[0]_3 ,
    \alu_b_reg[0]_4 ,
    \alu_b_reg[0]_5 ,
    \alu_b_reg[0]_6 ,
    \alu_b_reg[0]_7 ,
    \alu_b_reg[0]_8 ,
    \alu_b_reg[0]_9 ,
    \alu_b_reg[1]_0 ,
    \alu_b_reg[1]_1 ,
    \alu_b_reg[0]_10 ,
    \alu_b_reg[1]_2 ,
    \alu_a_reg[10] ,
    \alu_b_reg[0]_11 ,
    \alu_b_reg[1]_3 ,
    \alu_a_reg[11] ,
    \alu_b_reg[0]_12 ,
    \alu_a_reg[11]_0 ,
    \alu_b_reg[1]_4 ,
    \alu_b_reg[0]_13 ,
    \alu_a_reg[14] ,
    \alu_a_reg[15] ,
    \alu_b_reg[0]_14 ,
    \alu_b_reg[0]_15 ,
    \alu_b_reg[0]_16 ,
    \alu_a_reg[14]_0 ,
    \alu_a_reg[15]_0 ,
    \alu_b_reg[0]_17 ,
    \alu_a_reg[15]_1 ,
    \alu_b_reg[0]_18 ,
    \alu_b_reg[15]_0 ,
    O,
    \alu_a_reg[7] ,
    \alu_a_reg[11]_1 ,
    \alu_a_reg[14]_1 ,
    \alu_b_reg[15]_1 ,
    \alu_b_reg[0]_19 ,
    \bbstub_douta[15] ,
    en_alu,
    en_ram,
    en_in_IBUF,
    rst_IBUF);
  output [0:0]wea;
  output alu_in_sel;
  output ram_select;
  output [0:0]\pc_out_reg[0] ;
  output [0:0]\pc_out_reg[0]_0 ;
  output [11:0]D;
  output [2:0]Q;
  output \alu_out_reg[13] ;
  output \alu_out_reg[14] ;
  output \alu_out_reg[14]_0 ;
  output \alu_out_reg[14]_1 ;
  output \alu_out_reg[14]_2 ;
  output \alu_out_reg[0] ;
  output \alu_out_reg[2] ;
  output \alu_out_reg[3] ;
  output \alu_out_reg[4] ;
  output \alu_out_reg[5] ;
  output \alu_out_reg[15] ;
  output \alu_out_reg[15]_0 ;
  output \alu_out_reg[14]_3 ;
  output \alu_out_reg[1] ;
  output \alu_out_reg[6] ;
  output \alu_out_reg[7] ;
  output \alu_out_reg[8] ;
  output \alu_out_reg[9] ;
  output \alu_out_reg[10] ;
  output \alu_out_reg[11] ;
  output \alu_out_reg[12] ;
  output \alu_out_reg[2]_0 ;
  output \alu_out_reg[13]_0 ;
  output \alu_out_reg[15]_1 ;
  output \alu_out_reg[2]_1 ;
  output \alu_out_reg[2]_2 ;
  output \alu_out_reg[13]_1 ;
  output [0:0]S;
  output ena;
  output [0:0]en_out_reg;
  output en_ram_reg;
  output [7:0]\pc_out_reg[7] ;
  output [0:0]\q_reg[15] ;
  output [0:0]\q_reg[15]_0 ;
  output [0:0]\q_reg[15]_1 ;
  output [0:0]\q_reg[15]_2 ;
  input [0:0]AR;
  input rst;
  input clk_IBUF_BUFG;
  input [0:0]E;
  input \alu_b_reg[1] ;
  input \alu_b_reg[0] ;
  input \alu_b_reg[0]_0 ;
  input \alu_b_reg[15] ;
  input \alu_b_reg[0]_1 ;
  input \alu_a_reg[0] ;
  input \alu_b_reg[0]_2 ;
  input \alu_b_reg[0]_3 ;
  input \alu_b_reg[0]_4 ;
  input \alu_b_reg[0]_5 ;
  input \alu_b_reg[0]_6 ;
  input \alu_b_reg[0]_7 ;
  input \alu_b_reg[0]_8 ;
  input \alu_b_reg[0]_9 ;
  input \alu_b_reg[1]_0 ;
  input \alu_b_reg[1]_1 ;
  input \alu_b_reg[0]_10 ;
  input \alu_b_reg[1]_2 ;
  input \alu_a_reg[10] ;
  input \alu_b_reg[0]_11 ;
  input \alu_b_reg[1]_3 ;
  input \alu_a_reg[11] ;
  input \alu_b_reg[0]_12 ;
  input \alu_a_reg[11]_0 ;
  input \alu_b_reg[1]_4 ;
  input \alu_b_reg[0]_13 ;
  input \alu_a_reg[14] ;
  input \alu_a_reg[15] ;
  input \alu_b_reg[0]_14 ;
  input \alu_b_reg[0]_15 ;
  input \alu_b_reg[0]_16 ;
  input \alu_a_reg[14]_0 ;
  input [15:0]\alu_a_reg[15]_0 ;
  input \alu_b_reg[0]_17 ;
  input \alu_a_reg[15]_1 ;
  input \alu_b_reg[0]_18 ;
  input \alu_b_reg[15]_0 ;
  input [1:0]O;
  input [1:0]\alu_a_reg[7] ;
  input [3:0]\alu_a_reg[11]_1 ;
  input [3:0]\alu_a_reg[14]_1 ;
  input [15:0]\alu_b_reg[15]_1 ;
  input \alu_b_reg[0]_19 ;
  input [13:0]\bbstub_douta[15] ;
  input en_alu;
  input en_ram;
  input en_in_IBUF;
  input rst_IBUF;

  wire [0:0]AR;
  wire [11:0]D;
  wire [0:0]E;
  wire [1:0]O;
  wire [2:0]Q;
  wire [0:0]S;
  wire \alu_a_reg[0] ;
  wire \alu_a_reg[10] ;
  wire \alu_a_reg[11] ;
  wire \alu_a_reg[11]_0 ;
  wire [3:0]\alu_a_reg[11]_1 ;
  wire \alu_a_reg[14] ;
  wire \alu_a_reg[14]_0 ;
  wire [3:0]\alu_a_reg[14]_1 ;
  wire \alu_a_reg[15] ;
  wire [15:0]\alu_a_reg[15]_0 ;
  wire \alu_a_reg[15]_1 ;
  wire [1:0]\alu_a_reg[7] ;
  wire \alu_b_reg[0] ;
  wire \alu_b_reg[0]_0 ;
  wire \alu_b_reg[0]_1 ;
  wire \alu_b_reg[0]_10 ;
  wire \alu_b_reg[0]_11 ;
  wire \alu_b_reg[0]_12 ;
  wire \alu_b_reg[0]_13 ;
  wire \alu_b_reg[0]_14 ;
  wire \alu_b_reg[0]_15 ;
  wire \alu_b_reg[0]_16 ;
  wire \alu_b_reg[0]_17 ;
  wire \alu_b_reg[0]_18 ;
  wire \alu_b_reg[0]_19 ;
  wire \alu_b_reg[0]_2 ;
  wire \alu_b_reg[0]_3 ;
  wire \alu_b_reg[0]_4 ;
  wire \alu_b_reg[0]_5 ;
  wire \alu_b_reg[0]_6 ;
  wire \alu_b_reg[0]_7 ;
  wire \alu_b_reg[0]_8 ;
  wire \alu_b_reg[0]_9 ;
  wire \alu_b_reg[15] ;
  wire \alu_b_reg[15]_0 ;
  wire [15:0]\alu_b_reg[15]_1 ;
  wire \alu_b_reg[1] ;
  wire \alu_b_reg[1]_0 ;
  wire \alu_b_reg[1]_1 ;
  wire \alu_b_reg[1]_2 ;
  wire \alu_b_reg[1]_3 ;
  wire \alu_b_reg[1]_4 ;
  wire alu_in_sel;
  wire \alu_out_reg[0] ;
  wire \alu_out_reg[10] ;
  wire \alu_out_reg[11] ;
  wire \alu_out_reg[12] ;
  wire \alu_out_reg[13] ;
  wire \alu_out_reg[13]_0 ;
  wire \alu_out_reg[13]_1 ;
  wire \alu_out_reg[14] ;
  wire \alu_out_reg[14]_0 ;
  wire \alu_out_reg[14]_1 ;
  wire \alu_out_reg[14]_2 ;
  wire \alu_out_reg[14]_3 ;
  wire \alu_out_reg[15] ;
  wire \alu_out_reg[15]_0 ;
  wire \alu_out_reg[15]_1 ;
  wire \alu_out_reg[1] ;
  wire \alu_out_reg[2] ;
  wire \alu_out_reg[2]_0 ;
  wire \alu_out_reg[2]_1 ;
  wire \alu_out_reg[2]_2 ;
  wire \alu_out_reg[3] ;
  wire \alu_out_reg[4] ;
  wire \alu_out_reg[5] ;
  wire \alu_out_reg[6] ;
  wire \alu_out_reg[7] ;
  wire \alu_out_reg[8] ;
  wire \alu_out_reg[9] ;
  wire [13:0]\bbstub_douta[15] ;
  wire clk_IBUF_BUFG;
  wire [3:0]data2;
  wire en_alu;
  wire en_in_IBUF;
  wire en_out;
  wire [0:0]en_out_reg;
  wire en_ram;
  wire en_ram_reg;
  wire ena;
  wire [0:0]\pc_out_reg[0] ;
  wire [0:0]\pc_out_reg[0]_0 ;
  wire [7:0]\pc_out_reg[7] ;
  wire [0:0]\q_reg[15] ;
  wire [0:0]\q_reg[15]_0 ;
  wire [0:0]\q_reg[15]_1 ;
  wire [0:0]\q_reg[15]_2 ;
  wire ram_select;
  wire rst;
  wire rst_IBUF;
  wire state_transition1_n_51;
  wire [0:0]wea;

  ir ir1
       (.E(E),
        .Q({data2,\pc_out_reg[7] }),
        .\bbstub_douta[15] (\bbstub_douta[15] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[4] (state_transition1_n_51),
        .en_out(en_out),
        .\q_reg[15] (\q_reg[15] ),
        .\q_reg[15]_0 (\q_reg[15]_0 ),
        .\q_reg[15]_1 (\q_reg[15]_1 ),
        .\q_reg[15]_2 (\q_reg[15]_2 ),
        .rst(rst));
  state_transition state_transition1
       (.AR(AR),
        .D(D),
        .O(O),
        .Q(Q),
        .S(S),
        .\alu_a_reg[0] (\alu_a_reg[0] ),
        .\alu_a_reg[10] (\alu_a_reg[10] ),
        .\alu_a_reg[11] (\alu_a_reg[11] ),
        .\alu_a_reg[11]_0 (\alu_a_reg[11]_0 ),
        .\alu_a_reg[11]_1 (\alu_a_reg[11]_1 ),
        .\alu_a_reg[14] (\alu_a_reg[14] ),
        .\alu_a_reg[14]_0 (\alu_a_reg[14]_0 ),
        .\alu_a_reg[14]_1 (\alu_a_reg[14]_1 ),
        .\alu_a_reg[15] (\alu_a_reg[15] ),
        .\alu_a_reg[15]_0 (\alu_a_reg[15]_0 ),
        .\alu_a_reg[15]_1 (\alu_a_reg[15]_1 ),
        .\alu_a_reg[7] (\alu_a_reg[7] ),
        .\alu_b_reg[0] (\alu_b_reg[0] ),
        .\alu_b_reg[0]_0 (\alu_b_reg[0]_0 ),
        .\alu_b_reg[0]_1 (\alu_b_reg[0]_1 ),
        .\alu_b_reg[0]_10 (\alu_b_reg[0]_10 ),
        .\alu_b_reg[0]_11 (\alu_b_reg[0]_11 ),
        .\alu_b_reg[0]_12 (\alu_b_reg[0]_12 ),
        .\alu_b_reg[0]_13 (\alu_b_reg[0]_13 ),
        .\alu_b_reg[0]_14 (\alu_b_reg[0]_14 ),
        .\alu_b_reg[0]_15 (\alu_b_reg[0]_15 ),
        .\alu_b_reg[0]_16 (\alu_b_reg[0]_16 ),
        .\alu_b_reg[0]_17 (\alu_b_reg[0]_17 ),
        .\alu_b_reg[0]_18 (\alu_b_reg[0]_18 ),
        .\alu_b_reg[0]_19 (\alu_b_reg[0]_19 ),
        .\alu_b_reg[0]_2 (\alu_b_reg[0]_2 ),
        .\alu_b_reg[0]_3 (\alu_b_reg[0]_3 ),
        .\alu_b_reg[0]_4 (\alu_b_reg[0]_4 ),
        .\alu_b_reg[0]_5 (\alu_b_reg[0]_5 ),
        .\alu_b_reg[0]_6 (\alu_b_reg[0]_6 ),
        .\alu_b_reg[0]_7 (\alu_b_reg[0]_7 ),
        .\alu_b_reg[0]_8 (\alu_b_reg[0]_8 ),
        .\alu_b_reg[0]_9 (\alu_b_reg[0]_9 ),
        .\alu_b_reg[15] (\alu_b_reg[15] ),
        .\alu_b_reg[15]_0 (\alu_b_reg[15]_0 ),
        .\alu_b_reg[15]_1 (\alu_b_reg[15]_1 ),
        .\alu_b_reg[1] (\alu_b_reg[1] ),
        .\alu_b_reg[1]_0 (\alu_b_reg[1]_0 ),
        .\alu_b_reg[1]_1 (\alu_b_reg[1]_1 ),
        .\alu_b_reg[1]_2 (\alu_b_reg[1]_2 ),
        .\alu_b_reg[1]_3 (\alu_b_reg[1]_3 ),
        .\alu_b_reg[1]_4 (\alu_b_reg[1]_4 ),
        .alu_in_sel(alu_in_sel),
        .\alu_out_reg[0] (\alu_out_reg[0] ),
        .\alu_out_reg[10] (\alu_out_reg[10] ),
        .\alu_out_reg[11] (\alu_out_reg[11] ),
        .\alu_out_reg[12] (\alu_out_reg[12] ),
        .\alu_out_reg[13] (\alu_out_reg[13] ),
        .\alu_out_reg[13]_0 (\alu_out_reg[13]_0 ),
        .\alu_out_reg[13]_1 (\alu_out_reg[13]_1 ),
        .\alu_out_reg[14] (\alu_out_reg[14] ),
        .\alu_out_reg[14]_0 (\alu_out_reg[14]_0 ),
        .\alu_out_reg[14]_1 (\alu_out_reg[14]_1 ),
        .\alu_out_reg[14]_2 (\alu_out_reg[14]_2 ),
        .\alu_out_reg[14]_3 (\alu_out_reg[14]_3 ),
        .\alu_out_reg[15] (\alu_out_reg[15] ),
        .\alu_out_reg[15]_0 (\alu_out_reg[15]_0 ),
        .\alu_out_reg[15]_1 (\alu_out_reg[15]_1 ),
        .\alu_out_reg[1] (\alu_out_reg[1] ),
        .\alu_out_reg[2] (\alu_out_reg[2] ),
        .\alu_out_reg[2]_0 (\alu_out_reg[2]_0 ),
        .\alu_out_reg[2]_1 (\alu_out_reg[2]_1 ),
        .\alu_out_reg[2]_2 (\alu_out_reg[2]_2 ),
        .\alu_out_reg[3] (\alu_out_reg[3] ),
        .\alu_out_reg[4] (\alu_out_reg[4] ),
        .\alu_out_reg[5] (\alu_out_reg[5] ),
        .\alu_out_reg[6] (\alu_out_reg[6] ),
        .\alu_out_reg[7] (\alu_out_reg[7] ),
        .\alu_out_reg[8] (\alu_out_reg[8] ),
        .\alu_out_reg[9] (\alu_out_reg[9] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en_alu(en_alu),
        .en_in_IBUF(en_in_IBUF),
        .en_out(en_out),
        .en_out_reg(en_out_reg),
        .en_ram(en_ram),
        .en_ram_reg(en_ram_reg),
        .ena(ena),
        .\ir_out_reg[15] (data2),
        .\pc_out_reg[0] (\pc_out_reg[0] ),
        .\pc_out_reg[0]_0 (\pc_out_reg[0]_0 ),
        .\q_reg[15] (state_transition1_n_51),
        .ram_select(ram_select),
        .rst(rst),
        .rst_IBUF(rst_IBUF),
        .wea(wea));
endmodule

(* NotValidForBitStream *)
module cpu
   (clk,
    rst,
    en_in,
    test_data_mem_out,
    test_rd_data,
    test_addr,
    test_ins);
  input clk;
  input rst;
  input en_in;
  output [15:0]test_data_mem_out;
  output [15:0]test_rd_data;
  output [15:0]test_addr;
  output [15:0]test_ins;

  wire [15:0]\alu1/alu_out ;
  wire [15:0]alu_a;
  wire [15:0]alu_b;
  wire [2:0]alu_func;
  wire alu_in_sel;
  wire [15:0]alu_out;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire control_unit1_n_20;
  wire control_unit1_n_21;
  wire control_unit1_n_22;
  wire control_unit1_n_23;
  wire control_unit1_n_24;
  wire control_unit1_n_25;
  wire control_unit1_n_26;
  wire control_unit1_n_27;
  wire control_unit1_n_28;
  wire control_unit1_n_29;
  wire control_unit1_n_30;
  wire control_unit1_n_31;
  wire control_unit1_n_32;
  wire control_unit1_n_33;
  wire control_unit1_n_34;
  wire control_unit1_n_35;
  wire control_unit1_n_36;
  wire control_unit1_n_37;
  wire control_unit1_n_38;
  wire control_unit1_n_39;
  wire control_unit1_n_4;
  wire control_unit1_n_40;
  wire control_unit1_n_41;
  wire control_unit1_n_42;
  wire control_unit1_n_43;
  wire control_unit1_n_44;
  wire control_unit1_n_45;
  wire control_unit1_n_46;
  wire control_unit1_n_47;
  wire control_unit1_n_48;
  wire control_unit1_n_49;
  wire control_unit1_n_50;
  wire control_unit1_n_59;
  wire control_unit1_n_61;
  wire control_unit1_n_62;
  wire [7:0]data_addr;
  wire data_path1_n_0;
  wire data_path1_n_18;
  wire data_path1_n_19;
  wire data_path1_n_36;
  wire data_path1_n_37;
  wire data_path1_n_38;
  wire data_path1_n_39;
  wire data_path1_n_40;
  wire data_path1_n_41;
  wire data_path1_n_42;
  wire data_path1_n_43;
  wire data_path1_n_44;
  wire data_path1_n_45;
  wire data_path1_n_62;
  wire data_path1_n_63;
  wire data_path1_n_64;
  wire data_path1_n_65;
  wire data_path1_n_66;
  wire data_path1_n_67;
  wire data_path1_n_68;
  wire data_path1_n_69;
  wire data_path1_n_70;
  wire data_path1_n_71;
  wire data_path1_n_72;
  wire data_path1_n_73;
  wire data_path1_n_74;
  wire data_path1_n_75;
  wire data_path1_n_76;
  wire data_path1_n_77;
  wire data_path1_n_78;
  wire data_path1_n_79;
  wire data_path1_n_80;
  wire data_path1_n_81;
  wire data_path1_n_82;
  wire data_path1_n_83;
  wire data_path1_n_84;
  wire data_path1_n_85;
  wire data_path1_n_86;
  wire data_path1_n_87;
  wire data_path1_n_88;
  wire data_path1_n_89;
  wire data_path1_n_90;
  wire data_path1_n_91;
  wire data_path1_n_92;
  wire data_path1_n_93;
  wire data_path1_n_94;
  wire data_path1_n_95;
  wire data_path1_n_96;
  wire data_path1_n_97;
  wire data_path1_n_98;
  wire data_path1_n_99;
  wire en;
  wire en_alu;
  wire en_in;
  wire en_in_IBUF;
  wire en_ram;
  wire en_rom_out;
  wire [1:1]pc_ctrl;
  wire ram_select;
  wire [15:0]reg_group_mux_out;
  wire rst;
  wire rst_IBUF;
  wire [15:0]test_addr;
  wire [15:0]test_addr_OBUF;
  wire [15:0]test_data_mem_out;
  wire [15:0]test_data_mem_out_OBUF;
  wire [15:0]test_ins;
  wire [15:0]test_ins_OBUF;
  wire [15:0]test_rd_data;
  wire [15:0]test_rd_data_OBUF;
  wire we;

initial begin
 $sdf_annotate("tb_cpu_no_ram_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  control_unit control_unit1
       (.AR(data_path1_n_0),
        .D({\alu1/alu_out [15:6],\alu1/alu_out [1:0]}),
        .E(en_rom_out),
        .O({data_path1_n_18,data_path1_n_19}),
        .Q(alu_func),
        .S(control_unit1_n_47),
        .\alu_a_reg[0] (data_path1_n_82),
        .\alu_a_reg[10] (data_path1_n_76),
        .\alu_a_reg[11] (data_path1_n_77),
        .\alu_a_reg[11]_0 (data_path1_n_90),
        .\alu_a_reg[11]_1 ({data_path1_n_38,data_path1_n_39,data_path1_n_40,data_path1_n_41}),
        .\alu_a_reg[14] (data_path1_n_91),
        .\alu_a_reg[14]_0 (data_path1_n_81),
        .\alu_a_reg[14]_1 ({data_path1_n_42,data_path1_n_43,data_path1_n_44,data_path1_n_45}),
        .\alu_a_reg[15] (data_path1_n_78),
        .\alu_a_reg[15]_0 (alu_a),
        .\alu_a_reg[15]_1 (data_path1_n_94),
        .\alu_a_reg[7] ({data_path1_n_36,data_path1_n_37}),
        .\alu_b_reg[0] (data_path1_n_92),
        .\alu_b_reg[0]_0 (data_path1_n_62),
        .\alu_b_reg[0]_1 (data_path1_n_64),
        .\alu_b_reg[0]_10 (data_path1_n_68),
        .\alu_b_reg[0]_11 (data_path1_n_69),
        .\alu_b_reg[0]_12 (data_path1_n_70),
        .\alu_b_reg[0]_13 (data_path1_n_71),
        .\alu_b_reg[0]_14 (data_path1_n_80),
        .\alu_b_reg[0]_15 (data_path1_n_85),
        .\alu_b_reg[0]_16 (data_path1_n_79),
        .\alu_b_reg[0]_17 (data_path1_n_86),
        .\alu_b_reg[0]_18 (data_path1_n_87),
        .\alu_b_reg[0]_19 (data_path1_n_93),
        .\alu_b_reg[0]_2 (data_path1_n_72),
        .\alu_b_reg[0]_3 (data_path1_n_65),
        .\alu_b_reg[0]_4 (data_path1_n_83),
        .\alu_b_reg[0]_5 (data_path1_n_73),
        .\alu_b_reg[0]_6 (data_path1_n_66),
        .\alu_b_reg[0]_7 (data_path1_n_84),
        .\alu_b_reg[0]_8 (data_path1_n_74),
        .\alu_b_reg[0]_9 (data_path1_n_67),
        .\alu_b_reg[15] (data_path1_n_63),
        .\alu_b_reg[15]_0 (data_path1_n_95),
        .\alu_b_reg[15]_1 (alu_b),
        .\alu_b_reg[1] (data_path1_n_96),
        .\alu_b_reg[1]_0 (data_path1_n_88),
        .\alu_b_reg[1]_1 (data_path1_n_75),
        .\alu_b_reg[1]_2 (data_path1_n_89),
        .\alu_b_reg[1]_3 (data_path1_n_97),
        .\alu_b_reg[1]_4 (data_path1_n_98),
        .alu_in_sel(alu_in_sel),
        .\alu_out_reg[0] (control_unit1_n_25),
        .\alu_out_reg[10] (control_unit1_n_38),
        .\alu_out_reg[11] (control_unit1_n_39),
        .\alu_out_reg[12] (control_unit1_n_40),
        .\alu_out_reg[13] (control_unit1_n_20),
        .\alu_out_reg[13]_0 (control_unit1_n_42),
        .\alu_out_reg[13]_1 (control_unit1_n_46),
        .\alu_out_reg[14] (control_unit1_n_21),
        .\alu_out_reg[14]_0 (control_unit1_n_22),
        .\alu_out_reg[14]_1 (control_unit1_n_23),
        .\alu_out_reg[14]_2 (control_unit1_n_24),
        .\alu_out_reg[14]_3 (control_unit1_n_32),
        .\alu_out_reg[15] (control_unit1_n_30),
        .\alu_out_reg[15]_0 (control_unit1_n_31),
        .\alu_out_reg[15]_1 (control_unit1_n_43),
        .\alu_out_reg[1] (control_unit1_n_33),
        .\alu_out_reg[2] (control_unit1_n_26),
        .\alu_out_reg[2]_0 (control_unit1_n_41),
        .\alu_out_reg[2]_1 (control_unit1_n_44),
        .\alu_out_reg[2]_2 (control_unit1_n_45),
        .\alu_out_reg[3] (control_unit1_n_27),
        .\alu_out_reg[4] (control_unit1_n_28),
        .\alu_out_reg[5] (control_unit1_n_29),
        .\alu_out_reg[6] (control_unit1_n_34),
        .\alu_out_reg[7] (control_unit1_n_35),
        .\alu_out_reg[8] (control_unit1_n_36),
        .\alu_out_reg[9] (control_unit1_n_37),
        .\bbstub_douta[15] ({test_ins_OBUF[15:10],test_ins_OBUF[7:0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .en_alu(en_alu),
        .en_in_IBUF(en_in_IBUF),
        .en_out_reg(control_unit1_n_49),
        .en_ram(en_ram),
        .en_ram_reg(control_unit1_n_50),
        .ena(control_unit1_n_48),
        .\pc_out_reg[0] (pc_ctrl),
        .\pc_out_reg[0]_0 (control_unit1_n_4),
        .\pc_out_reg[7] (data_addr),
        .\q_reg[15] (control_unit1_n_59),
        .\q_reg[15]_0 (en),
        .\q_reg[15]_1 (control_unit1_n_61),
        .\q_reg[15]_2 (control_unit1_n_62),
        .ram_select(ram_select),
        .rst(data_path1_n_99),
        .rst_IBUF(rst_IBUF),
        .wea(we));
  data_memory_module data_memory1
       (.CLK(clk_IBUF_BUFG),
        .Q(test_rd_data_OBUF),
        .douta(test_data_mem_out_OBUF),
        .en_data_mem_reg_reg(control_unit1_n_50),
        .en_ram(en_ram),
        .\ir_out_reg[7] (data_addr),
        .wea(we));
  data_path data_path1
       (.AR(data_path1_n_0),
        .CLK(clk_IBUF_BUFG),
        .D({\alu1/alu_out [15:6],\alu1/alu_out [1:0]}),
        .E(control_unit1_n_49),
        .O({data_path1_n_18,data_path1_n_19}),
        .Q(test_addr_OBUF),
        .S(control_unit1_n_47),
        .\alu_a_reg[0] (control_unit1_n_25),
        .\alu_a_reg[13] (control_unit1_n_46),
        .\alu_a_reg[15] (test_rd_data_OBUF),
        .\alu_a_reg[2] (control_unit1_n_45),
        .\alu_b_reg[0] (control_unit1_n_44),
        .\alu_b_reg[10] (control_unit1_n_38),
        .\alu_b_reg[11] (control_unit1_n_39),
        .\alu_b_reg[12] (control_unit1_n_40),
        .\alu_b_reg[1] (control_unit1_n_33),
        .\alu_b_reg[2] (control_unit1_n_41),
        .\alu_b_reg[2]_0 (control_unit1_n_26),
        .\alu_b_reg[3] (control_unit1_n_27),
        .\alu_b_reg[4] (control_unit1_n_28),
        .\alu_b_reg[5] (control_unit1_n_29),
        .\alu_b_reg[6] (control_unit1_n_34),
        .\alu_b_reg[7] (control_unit1_n_35),
        .\alu_b_reg[8] (control_unit1_n_36),
        .\alu_b_reg[9] (control_unit1_n_37),
        .alu_in_sel(alu_in_sel),
        .\alu_out_reg[0] (data_path1_n_62),
        .\alu_out_reg[0]_0 (data_path1_n_92),
        .\alu_out_reg[0]_1 (data_path1_n_96),
        .\alu_out_reg[10] (data_path1_n_69),
        .\alu_out_reg[10]_0 (data_path1_n_77),
        .\alu_out_reg[10]_1 (data_path1_n_97),
        .\alu_out_reg[11] ({data_path1_n_38,data_path1_n_39,data_path1_n_40,data_path1_n_41}),
        .\alu_out_reg[11]_0 (data_path1_n_70),
        .\alu_out_reg[11]_1 (data_path1_n_90),
        .\alu_out_reg[11]_2 (data_path1_n_98),
        .\alu_out_reg[12] (data_path1_n_71),
        .\alu_out_reg[12]_0 (data_path1_n_78),
        .\alu_out_reg[12]_1 (data_path1_n_91),
        .\alu_out_reg[13] (data_path1_n_79),
        .\alu_out_reg[13]_0 (data_path1_n_80),
        .\alu_out_reg[13]_1 (data_path1_n_85),
        .\alu_out_reg[14] (data_path1_n_81),
        .\alu_out_reg[14]_0 (data_path1_n_86),
        .\alu_out_reg[15] (alu_a),
        .\alu_out_reg[15]_0 ({data_path1_n_42,data_path1_n_43,data_path1_n_44,data_path1_n_45}),
        .\alu_out_reg[15]_1 (alu_b),
        .\alu_out_reg[15]_2 (data_path1_n_63),
        .\alu_out_reg[15]_3 (data_path1_n_87),
        .\alu_out_reg[15]_4 (data_path1_n_94),
        .\alu_out_reg[15]_5 (data_path1_n_95),
        .\alu_out_reg[15]_6 (reg_group_mux_out),
        .\alu_out_reg[1] (data_path1_n_64),
        .\alu_out_reg[1]_0 (data_path1_n_72),
        .\alu_out_reg[1]_1 (data_path1_n_82),
        .\alu_out_reg[5] (data_path1_n_93),
        .\alu_out_reg[6] (data_path1_n_65),
        .\alu_out_reg[6]_0 (data_path1_n_73),
        .\alu_out_reg[6]_1 (data_path1_n_83),
        .\alu_out_reg[7] ({data_path1_n_36,data_path1_n_37}),
        .\alu_out_reg[7]_0 (data_path1_n_66),
        .\alu_out_reg[7]_1 (data_path1_n_74),
        .\alu_out_reg[7]_2 (data_path1_n_84),
        .\alu_out_reg[8] (data_path1_n_67),
        .\alu_out_reg[8]_0 (data_path1_n_75),
        .\alu_out_reg[8]_1 (data_path1_n_88),
        .\alu_out_reg[9] (data_path1_n_68),
        .\alu_out_reg[9]_0 (data_path1_n_76),
        .\alu_out_reg[9]_1 (data_path1_n_89),
        .\current_state_reg[0] (pc_ctrl),
        .douta(test_ins_OBUF[11:0]),
        .en_alu(en_alu),
        .en_out_reg(alu_func),
        .en_out_reg_0(control_unit1_n_42),
        .en_out_reg_1(control_unit1_n_32),
        .en_out_reg_2(control_unit1_n_21),
        .en_out_reg_3(control_unit1_n_22),
        .en_out_reg_4(control_unit1_n_23),
        .en_out_reg_5(control_unit1_n_20),
        .en_out_reg_6(control_unit1_n_43),
        .en_out_reg_7(control_unit1_n_24),
        .en_out_reg_8(control_unit1_n_31),
        .en_out_reg_9(control_unit1_n_30),
        .en_pc_reg_reg(control_unit1_n_4),
        .\ir_out_reg[10] (control_unit1_n_61),
        .\ir_out_reg[11] (control_unit1_n_59),
        .\ir_out_reg[11]_0 (en),
        .\ir_out_reg[11]_1 (control_unit1_n_62),
        .\ir_out_reg[7] (data_addr),
        .\q_reg[15] (data_path1_n_99),
        .\q_reg[15]_0 (alu_out),
        .rst_IBUF(rst_IBUF));
  IBUF en_in_IBUF_inst
       (.I(en_in),
        .O(en_in_IBUF));
  instruction_memory_module instruction_memory1
       (.CLK(clk_IBUF_BUFG),
        .E(en_rom_out),
        .Q(test_addr_OBUF[7:0]),
        .douta(test_ins_OBUF),
        .ena(control_unit1_n_48));
  reg_group_mux reg_group_mux1
       (.AR(data_path1_n_99),
        .Q(reg_group_mux_out),
        .\alu_out_reg[15] (alu_out),
        .douta(test_data_mem_out_OBUF),
        .ram_select(ram_select));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \test_addr_OBUF[0]_inst 
       (.I(test_addr_OBUF[0]),
        .O(test_addr[0]));
  OBUF \test_addr_OBUF[10]_inst 
       (.I(test_addr_OBUF[10]),
        .O(test_addr[10]));
  OBUF \test_addr_OBUF[11]_inst 
       (.I(test_addr_OBUF[11]),
        .O(test_addr[11]));
  OBUF \test_addr_OBUF[12]_inst 
       (.I(test_addr_OBUF[12]),
        .O(test_addr[12]));
  OBUF \test_addr_OBUF[13]_inst 
       (.I(test_addr_OBUF[13]),
        .O(test_addr[13]));
  OBUF \test_addr_OBUF[14]_inst 
       (.I(test_addr_OBUF[14]),
        .O(test_addr[14]));
  OBUF \test_addr_OBUF[15]_inst 
       (.I(test_addr_OBUF[15]),
        .O(test_addr[15]));
  OBUF \test_addr_OBUF[1]_inst 
       (.I(test_addr_OBUF[1]),
        .O(test_addr[1]));
  OBUF \test_addr_OBUF[2]_inst 
       (.I(test_addr_OBUF[2]),
        .O(test_addr[2]));
  OBUF \test_addr_OBUF[3]_inst 
       (.I(test_addr_OBUF[3]),
        .O(test_addr[3]));
  OBUF \test_addr_OBUF[4]_inst 
       (.I(test_addr_OBUF[4]),
        .O(test_addr[4]));
  OBUF \test_addr_OBUF[5]_inst 
       (.I(test_addr_OBUF[5]),
        .O(test_addr[5]));
  OBUF \test_addr_OBUF[6]_inst 
       (.I(test_addr_OBUF[6]),
        .O(test_addr[6]));
  OBUF \test_addr_OBUF[7]_inst 
       (.I(test_addr_OBUF[7]),
        .O(test_addr[7]));
  OBUF \test_addr_OBUF[8]_inst 
       (.I(test_addr_OBUF[8]),
        .O(test_addr[8]));
  OBUF \test_addr_OBUF[9]_inst 
       (.I(test_addr_OBUF[9]),
        .O(test_addr[9]));
  OBUF \test_data_mem_out_OBUF[0]_inst 
       (.I(test_data_mem_out_OBUF[0]),
        .O(test_data_mem_out[0]));
  OBUF \test_data_mem_out_OBUF[10]_inst 
       (.I(test_data_mem_out_OBUF[10]),
        .O(test_data_mem_out[10]));
  OBUF \test_data_mem_out_OBUF[11]_inst 
       (.I(test_data_mem_out_OBUF[11]),
        .O(test_data_mem_out[11]));
  OBUF \test_data_mem_out_OBUF[12]_inst 
       (.I(test_data_mem_out_OBUF[12]),
        .O(test_data_mem_out[12]));
  OBUF \test_data_mem_out_OBUF[13]_inst 
       (.I(test_data_mem_out_OBUF[13]),
        .O(test_data_mem_out[13]));
  OBUF \test_data_mem_out_OBUF[14]_inst 
       (.I(test_data_mem_out_OBUF[14]),
        .O(test_data_mem_out[14]));
  OBUF \test_data_mem_out_OBUF[15]_inst 
       (.I(test_data_mem_out_OBUF[15]),
        .O(test_data_mem_out[15]));
  OBUF \test_data_mem_out_OBUF[1]_inst 
       (.I(test_data_mem_out_OBUF[1]),
        .O(test_data_mem_out[1]));
  OBUF \test_data_mem_out_OBUF[2]_inst 
       (.I(test_data_mem_out_OBUF[2]),
        .O(test_data_mem_out[2]));
  OBUF \test_data_mem_out_OBUF[3]_inst 
       (.I(test_data_mem_out_OBUF[3]),
        .O(test_data_mem_out[3]));
  OBUF \test_data_mem_out_OBUF[4]_inst 
       (.I(test_data_mem_out_OBUF[4]),
        .O(test_data_mem_out[4]));
  OBUF \test_data_mem_out_OBUF[5]_inst 
       (.I(test_data_mem_out_OBUF[5]),
        .O(test_data_mem_out[5]));
  OBUF \test_data_mem_out_OBUF[6]_inst 
       (.I(test_data_mem_out_OBUF[6]),
        .O(test_data_mem_out[6]));
  OBUF \test_data_mem_out_OBUF[7]_inst 
       (.I(test_data_mem_out_OBUF[7]),
        .O(test_data_mem_out[7]));
  OBUF \test_data_mem_out_OBUF[8]_inst 
       (.I(test_data_mem_out_OBUF[8]),
        .O(test_data_mem_out[8]));
  OBUF \test_data_mem_out_OBUF[9]_inst 
       (.I(test_data_mem_out_OBUF[9]),
        .O(test_data_mem_out[9]));
  OBUF \test_ins_OBUF[0]_inst 
       (.I(test_ins_OBUF[0]),
        .O(test_ins[0]));
  OBUF \test_ins_OBUF[10]_inst 
       (.I(test_ins_OBUF[10]),
        .O(test_ins[10]));
  OBUF \test_ins_OBUF[11]_inst 
       (.I(test_ins_OBUF[11]),
        .O(test_ins[11]));
  OBUF \test_ins_OBUF[12]_inst 
       (.I(test_ins_OBUF[12]),
        .O(test_ins[12]));
  OBUF \test_ins_OBUF[13]_inst 
       (.I(test_ins_OBUF[13]),
        .O(test_ins[13]));
  OBUF \test_ins_OBUF[14]_inst 
       (.I(test_ins_OBUF[14]),
        .O(test_ins[14]));
  OBUF \test_ins_OBUF[15]_inst 
       (.I(test_ins_OBUF[15]),
        .O(test_ins[15]));
  OBUF \test_ins_OBUF[1]_inst 
       (.I(test_ins_OBUF[1]),
        .O(test_ins[1]));
  OBUF \test_ins_OBUF[2]_inst 
       (.I(test_ins_OBUF[2]),
        .O(test_ins[2]));
  OBUF \test_ins_OBUF[3]_inst 
       (.I(test_ins_OBUF[3]),
        .O(test_ins[3]));
  OBUF \test_ins_OBUF[4]_inst 
       (.I(test_ins_OBUF[4]),
        .O(test_ins[4]));
  OBUF \test_ins_OBUF[5]_inst 
       (.I(test_ins_OBUF[5]),
        .O(test_ins[5]));
  OBUF \test_ins_OBUF[6]_inst 
       (.I(test_ins_OBUF[6]),
        .O(test_ins[6]));
  OBUF \test_ins_OBUF[7]_inst 
       (.I(test_ins_OBUF[7]),
        .O(test_ins[7]));
  OBUF \test_ins_OBUF[8]_inst 
       (.I(test_ins_OBUF[8]),
        .O(test_ins[8]));
  OBUF \test_ins_OBUF[9]_inst 
       (.I(test_ins_OBUF[9]),
        .O(test_ins[9]));
  OBUF \test_rd_data_OBUF[0]_inst 
       (.I(test_rd_data_OBUF[0]),
        .O(test_rd_data[0]));
  OBUF \test_rd_data_OBUF[10]_inst 
       (.I(test_rd_data_OBUF[10]),
        .O(test_rd_data[10]));
  OBUF \test_rd_data_OBUF[11]_inst 
       (.I(test_rd_data_OBUF[11]),
        .O(test_rd_data[11]));
  OBUF \test_rd_data_OBUF[12]_inst 
       (.I(test_rd_data_OBUF[12]),
        .O(test_rd_data[12]));
  OBUF \test_rd_data_OBUF[13]_inst 
       (.I(test_rd_data_OBUF[13]),
        .O(test_rd_data[13]));
  OBUF \test_rd_data_OBUF[14]_inst 
       (.I(test_rd_data_OBUF[14]),
        .O(test_rd_data[14]));
  OBUF \test_rd_data_OBUF[15]_inst 
       (.I(test_rd_data_OBUF[15]),
        .O(test_rd_data[15]));
  OBUF \test_rd_data_OBUF[1]_inst 
       (.I(test_rd_data_OBUF[1]),
        .O(test_rd_data[1]));
  OBUF \test_rd_data_OBUF[2]_inst 
       (.I(test_rd_data_OBUF[2]),
        .O(test_rd_data[2]));
  OBUF \test_rd_data_OBUF[3]_inst 
       (.I(test_rd_data_OBUF[3]),
        .O(test_rd_data[3]));
  OBUF \test_rd_data_OBUF[4]_inst 
       (.I(test_rd_data_OBUF[4]),
        .O(test_rd_data[4]));
  OBUF \test_rd_data_OBUF[5]_inst 
       (.I(test_rd_data_OBUF[5]),
        .O(test_rd_data[5]));
  OBUF \test_rd_data_OBUF[6]_inst 
       (.I(test_rd_data_OBUF[6]),
        .O(test_rd_data[6]));
  OBUF \test_rd_data_OBUF[7]_inst 
       (.I(test_rd_data_OBUF[7]),
        .O(test_rd_data[7]));
  OBUF \test_rd_data_OBUF[8]_inst 
       (.I(test_rd_data_OBUF[8]),
        .O(test_rd_data[8]));
  OBUF \test_rd_data_OBUF[9]_inst 
       (.I(test_rd_data_OBUF[9]),
        .O(test_rd_data[9]));
endmodule

module data_memory_module
   (douta,
    en_ram,
    CLK,
    en_data_mem_reg_reg,
    wea,
    \ir_out_reg[7] ,
    Q);
  output [15:0]douta;
  output en_ram;
  input CLK;
  input en_data_mem_reg_reg;
  input [0:0]wea;
  input [7:0]\ir_out_reg[7] ;
  input [15:0]Q;

  wire CLK;
  wire [15:0]Q;
  wire [15:0]douta;
  wire en_data_mem_reg_reg;
  wire en_ram;
  wire [7:0]\ir_out_reg[7] ;
  wire [0:0]wea;

  (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
  blk_mem_gen_1 data_memory
       (.addra(\ir_out_reg[7] ),
        .clka(CLK),
        .dina(Q),
        .douta(douta),
        .ena(en_data_mem_reg_reg),
        .wea(wea));
  FDRE #(
    .INIT(1'b0)) 
    en_ram_reg
       (.C(CLK),
        .CE(1'b1),
        .D(en_data_mem_reg_reg),
        .Q(en_ram),
        .R(1'b0));
endmodule

module data_path
   (AR,
    en_alu,
    Q,
    O,
    \alu_out_reg[15] ,
    \alu_out_reg[7] ,
    \alu_out_reg[11] ,
    \alu_out_reg[15]_0 ,
    \alu_out_reg[15]_1 ,
    \alu_out_reg[0] ,
    \alu_out_reg[15]_2 ,
    \alu_out_reg[1] ,
    \alu_out_reg[6] ,
    \alu_out_reg[7]_0 ,
    \alu_out_reg[8] ,
    \alu_out_reg[9] ,
    \alu_out_reg[10] ,
    \alu_out_reg[11]_0 ,
    \alu_out_reg[12] ,
    \alu_out_reg[1]_0 ,
    \alu_out_reg[6]_0 ,
    \alu_out_reg[7]_1 ,
    \alu_out_reg[8]_0 ,
    \alu_out_reg[9]_0 ,
    \alu_out_reg[10]_0 ,
    \alu_out_reg[12]_0 ,
    \alu_out_reg[13] ,
    \alu_out_reg[13]_0 ,
    \alu_out_reg[14] ,
    \alu_out_reg[1]_1 ,
    \alu_out_reg[6]_1 ,
    \alu_out_reg[7]_2 ,
    \alu_out_reg[13]_1 ,
    \alu_out_reg[14]_0 ,
    \alu_out_reg[15]_3 ,
    \alu_out_reg[8]_1 ,
    \alu_out_reg[9]_1 ,
    \alu_out_reg[11]_1 ,
    \alu_out_reg[12]_1 ,
    \alu_out_reg[0]_0 ,
    \alu_out_reg[5] ,
    \alu_out_reg[15]_4 ,
    \alu_out_reg[15]_5 ,
    \alu_out_reg[0]_1 ,
    \alu_out_reg[10]_1 ,
    \alu_out_reg[11]_2 ,
    \q_reg[15] ,
    \alu_a_reg[15] ,
    \q_reg[15]_0 ,
    E,
    CLK,
    en_out_reg,
    S,
    \alu_a_reg[0] ,
    en_out_reg_0,
    D,
    \alu_b_reg[0] ,
    \alu_b_reg[2] ,
    \alu_b_reg[2]_0 ,
    \alu_a_reg[2] ,
    en_out_reg_1,
    en_out_reg_2,
    \alu_b_reg[3] ,
    \alu_b_reg[4] ,
    \alu_b_reg[5] ,
    \alu_b_reg[1] ,
    \alu_b_reg[6] ,
    \alu_b_reg[7] ,
    \alu_b_reg[8] ,
    \alu_b_reg[9] ,
    \alu_b_reg[10] ,
    \alu_b_reg[11] ,
    \alu_b_reg[12] ,
    \alu_a_reg[13] ,
    en_out_reg_3,
    en_out_reg_4,
    en_out_reg_5,
    en_out_reg_6,
    en_out_reg_7,
    en_out_reg_8,
    en_out_reg_9,
    rst_IBUF,
    en_pc_reg_reg,
    \ir_out_reg[11] ,
    \alu_out_reg[15]_6 ,
    \ir_out_reg[11]_0 ,
    \ir_out_reg[10] ,
    \ir_out_reg[11]_1 ,
    alu_in_sel,
    douta,
    \ir_out_reg[7] ,
    \current_state_reg[0] );
  output [0:0]AR;
  output en_alu;
  output [15:0]Q;
  output [1:0]O;
  output [15:0]\alu_out_reg[15] ;
  output [1:0]\alu_out_reg[7] ;
  output [3:0]\alu_out_reg[11] ;
  output [3:0]\alu_out_reg[15]_0 ;
  output [15:0]\alu_out_reg[15]_1 ;
  output \alu_out_reg[0] ;
  output \alu_out_reg[15]_2 ;
  output \alu_out_reg[1] ;
  output \alu_out_reg[6] ;
  output \alu_out_reg[7]_0 ;
  output \alu_out_reg[8] ;
  output \alu_out_reg[9] ;
  output \alu_out_reg[10] ;
  output \alu_out_reg[11]_0 ;
  output \alu_out_reg[12] ;
  output \alu_out_reg[1]_0 ;
  output \alu_out_reg[6]_0 ;
  output \alu_out_reg[7]_1 ;
  output \alu_out_reg[8]_0 ;
  output \alu_out_reg[9]_0 ;
  output \alu_out_reg[10]_0 ;
  output \alu_out_reg[12]_0 ;
  output \alu_out_reg[13] ;
  output \alu_out_reg[13]_0 ;
  output \alu_out_reg[14] ;
  output \alu_out_reg[1]_1 ;
  output \alu_out_reg[6]_1 ;
  output \alu_out_reg[7]_2 ;
  output \alu_out_reg[13]_1 ;
  output \alu_out_reg[14]_0 ;
  output \alu_out_reg[15]_3 ;
  output \alu_out_reg[8]_1 ;
  output \alu_out_reg[9]_1 ;
  output \alu_out_reg[11]_1 ;
  output \alu_out_reg[12]_1 ;
  output \alu_out_reg[0]_0 ;
  output \alu_out_reg[5] ;
  output \alu_out_reg[15]_4 ;
  output \alu_out_reg[15]_5 ;
  output \alu_out_reg[0]_1 ;
  output \alu_out_reg[10]_1 ;
  output \alu_out_reg[11]_2 ;
  output \q_reg[15] ;
  output [15:0]\alu_a_reg[15] ;
  output [15:0]\q_reg[15]_0 ;
  input [0:0]E;
  input CLK;
  input [2:0]en_out_reg;
  input [0:0]S;
  input \alu_a_reg[0] ;
  input en_out_reg_0;
  input [11:0]D;
  input \alu_b_reg[0] ;
  input \alu_b_reg[2] ;
  input \alu_b_reg[2]_0 ;
  input \alu_a_reg[2] ;
  input en_out_reg_1;
  input en_out_reg_2;
  input \alu_b_reg[3] ;
  input \alu_b_reg[4] ;
  input \alu_b_reg[5] ;
  input \alu_b_reg[1] ;
  input \alu_b_reg[6] ;
  input \alu_b_reg[7] ;
  input \alu_b_reg[8] ;
  input \alu_b_reg[9] ;
  input \alu_b_reg[10] ;
  input \alu_b_reg[11] ;
  input \alu_b_reg[12] ;
  input \alu_a_reg[13] ;
  input en_out_reg_3;
  input en_out_reg_4;
  input en_out_reg_5;
  input en_out_reg_6;
  input en_out_reg_7;
  input en_out_reg_8;
  input en_out_reg_9;
  input rst_IBUF;
  input [0:0]en_pc_reg_reg;
  input [0:0]\ir_out_reg[11] ;
  input [15:0]\alu_out_reg[15]_6 ;
  input [0:0]\ir_out_reg[11]_0 ;
  input [0:0]\ir_out_reg[10] ;
  input [0:0]\ir_out_reg[11]_1 ;
  input alu_in_sel;
  input [11:0]douta;
  input [7:0]\ir_out_reg[7] ;
  input [0:0]\current_state_reg[0] ;

  wire [0:0]AR;
  wire CLK;
  wire [11:0]D;
  wire [0:0]E;
  wire [1:0]O;
  wire [15:0]Q;
  wire [0:0]S;
  wire alu1_n_1;
  wire alu1_n_2;
  wire alu1_n_7;
  wire alu1_n_8;
  wire \alu_a_reg[0] ;
  wire \alu_a_reg[13] ;
  wire [15:0]\alu_a_reg[15] ;
  wire \alu_a_reg[2] ;
  wire \alu_b_reg[0] ;
  wire \alu_b_reg[10] ;
  wire \alu_b_reg[11] ;
  wire \alu_b_reg[12] ;
  wire \alu_b_reg[1] ;
  wire \alu_b_reg[2] ;
  wire \alu_b_reg[2]_0 ;
  wire \alu_b_reg[3] ;
  wire \alu_b_reg[4] ;
  wire \alu_b_reg[5] ;
  wire \alu_b_reg[6] ;
  wire \alu_b_reg[7] ;
  wire \alu_b_reg[8] ;
  wire \alu_b_reg[9] ;
  wire alu_in_sel;
  wire alu_mux1_n_0;
  wire alu_mux1_n_2;
  wire alu_mux1_n_3;
  wire alu_mux1_n_4;
  wire alu_mux1_n_5;
  wire alu_mux1_n_77;
  wire alu_mux1_n_78;
  wire alu_mux1_n_79;
  wire alu_mux1_n_80;
  wire alu_mux1_n_81;
  wire alu_mux1_n_82;
  wire alu_mux1_n_83;
  wire alu_mux1_n_84;
  wire alu_mux1_n_85;
  wire alu_mux1_n_86;
  wire alu_mux1_n_87;
  wire [5:2]alu_out;
  wire \alu_out_reg[0] ;
  wire \alu_out_reg[0]_0 ;
  wire \alu_out_reg[0]_1 ;
  wire \alu_out_reg[10] ;
  wire \alu_out_reg[10]_0 ;
  wire \alu_out_reg[10]_1 ;
  wire [3:0]\alu_out_reg[11] ;
  wire \alu_out_reg[11]_0 ;
  wire \alu_out_reg[11]_1 ;
  wire \alu_out_reg[11]_2 ;
  wire \alu_out_reg[12] ;
  wire \alu_out_reg[12]_0 ;
  wire \alu_out_reg[12]_1 ;
  wire \alu_out_reg[13] ;
  wire \alu_out_reg[13]_0 ;
  wire \alu_out_reg[13]_1 ;
  wire \alu_out_reg[14] ;
  wire \alu_out_reg[14]_0 ;
  wire [15:0]\alu_out_reg[15] ;
  wire [3:0]\alu_out_reg[15]_0 ;
  wire [15:0]\alu_out_reg[15]_1 ;
  wire \alu_out_reg[15]_2 ;
  wire \alu_out_reg[15]_3 ;
  wire \alu_out_reg[15]_4 ;
  wire \alu_out_reg[15]_5 ;
  wire [15:0]\alu_out_reg[15]_6 ;
  wire \alu_out_reg[1] ;
  wire \alu_out_reg[1]_0 ;
  wire \alu_out_reg[1]_1 ;
  wire \alu_out_reg[5] ;
  wire \alu_out_reg[6] ;
  wire \alu_out_reg[6]_0 ;
  wire \alu_out_reg[6]_1 ;
  wire [1:0]\alu_out_reg[7] ;
  wire \alu_out_reg[7]_0 ;
  wire \alu_out_reg[7]_1 ;
  wire \alu_out_reg[7]_2 ;
  wire \alu_out_reg[8] ;
  wire \alu_out_reg[8]_0 ;
  wire \alu_out_reg[8]_1 ;
  wire \alu_out_reg[9] ;
  wire \alu_out_reg[9]_0 ;
  wire \alu_out_reg[9]_1 ;
  wire [0:0]\current_state_reg[0] ;
  wire [11:0]douta;
  wire en_alu;
  wire [2:0]en_out_reg;
  wire en_out_reg_0;
  wire en_out_reg_1;
  wire en_out_reg_2;
  wire en_out_reg_3;
  wire en_out_reg_4;
  wire en_out_reg_5;
  wire en_out_reg_6;
  wire en_out_reg_7;
  wire en_out_reg_8;
  wire en_out_reg_9;
  wire [0:0]en_pc_reg_reg;
  wire [0:0]\ir_out_reg[10] ;
  wire [0:0]\ir_out_reg[11] ;
  wire [0:0]\ir_out_reg[11]_0 ;
  wire [0:0]\ir_out_reg[11]_1 ;
  wire [7:0]\ir_out_reg[7] ;
  wire \q_reg[15] ;
  wire [15:0]\q_reg[15]_0 ;
  wire reg_group1_n_0;
  wire [15:0]rs_q;
  wire rst_IBUF;

  alu alu1
       (.CLK(CLK),
        .D({D[11:2],alu_out,D[1:0]}),
        .E(alu_mux1_n_0),
        .O({alu1_n_1,alu1_n_2,O}),
        .Q(\alu_out_reg[15] [14:0]),
        .S({alu_mux1_n_77,alu_mux1_n_78,alu_mux1_n_79,S}),
        .\alu_a_reg[15] ({alu_mux1_n_2,alu_mux1_n_3,alu_mux1_n_4,alu_mux1_n_5}),
        .\alu_b_reg[11] ({alu_mux1_n_84,alu_mux1_n_85,alu_mux1_n_86,alu_mux1_n_87}),
        .\alu_b_reg[7] ({alu_mux1_n_80,alu_mux1_n_81,alu_mux1_n_82,alu_mux1_n_83}),
        .\alu_out_reg[11]_0 (\alu_out_reg[11] ),
        .\alu_out_reg[15]_0 (\alu_out_reg[15]_0 ),
        .\alu_out_reg[7]_0 ({\alu_out_reg[7] ,alu1_n_7,alu1_n_8}),
        .en_alu(en_alu),
        .en_out_reg_0(en_out_reg[2]),
        .\q_reg[15] (\q_reg[15]_0 ),
        .rst(AR));
  alu_mux alu_mux1
       (.CLK(CLK),
        .D(alu_out),
        .E(alu_mux1_n_0),
        .O({alu1_n_1,alu1_n_2}),
        .Q(\alu_out_reg[15] ),
        .S({alu_mux1_n_77,alu_mux1_n_78,alu_mux1_n_79}),
        .\alu_a_reg[0]_0 (AR),
        .\alu_a_reg[0]_1 (\alu_a_reg[0] ),
        .\alu_a_reg[13]_0 (\alu_a_reg[13] ),
        .\alu_a_reg[2]_0 (\alu_a_reg[2] ),
        .\alu_a_reg[7]_0 ({alu1_n_7,alu1_n_8}),
        .\alu_b_reg[0]_0 (\alu_b_reg[0] ),
        .\alu_b_reg[10]_0 (\alu_b_reg[10] ),
        .\alu_b_reg[11]_0 (\alu_b_reg[11] ),
        .\alu_b_reg[12]_0 (\alu_b_reg[12] ),
        .\alu_b_reg[1]_0 (\alu_b_reg[1] ),
        .\alu_b_reg[2]_0 (\alu_b_reg[2] ),
        .\alu_b_reg[2]_1 (\alu_b_reg[2]_0 ),
        .\alu_b_reg[3]_0 (\alu_b_reg[3] ),
        .\alu_b_reg[4]_0 (\alu_b_reg[4] ),
        .\alu_b_reg[5]_0 (\alu_b_reg[5] ),
        .\alu_b_reg[6]_0 (\alu_b_reg[6] ),
        .\alu_b_reg[7]_0 (\alu_b_reg[7] ),
        .\alu_b_reg[8]_0 (\alu_b_reg[8] ),
        .\alu_b_reg[9]_0 (\alu_b_reg[9] ),
        .alu_in_sel(alu_in_sel),
        .\alu_out_reg[0] (\alu_out_reg[0] ),
        .\alu_out_reg[0]_0 (\alu_out_reg[0]_0 ),
        .\alu_out_reg[0]_1 (\alu_out_reg[0]_1 ),
        .\alu_out_reg[10] (\alu_out_reg[10] ),
        .\alu_out_reg[10]_0 (\alu_out_reg[10]_0 ),
        .\alu_out_reg[10]_1 (\alu_out_reg[10]_1 ),
        .\alu_out_reg[11] (\alu_out_reg[11]_0 ),
        .\alu_out_reg[11]_0 (\alu_out_reg[11]_1 ),
        .\alu_out_reg[11]_1 ({alu_mux1_n_84,alu_mux1_n_85,alu_mux1_n_86,alu_mux1_n_87}),
        .\alu_out_reg[11]_2 (\alu_out_reg[11]_2 ),
        .\alu_out_reg[12] (\alu_out_reg[12] ),
        .\alu_out_reg[12]_0 (\alu_out_reg[12]_0 ),
        .\alu_out_reg[12]_1 (\alu_out_reg[12]_1 ),
        .\alu_out_reg[13] (\alu_out_reg[13] ),
        .\alu_out_reg[13]_0 (\alu_out_reg[13]_0 ),
        .\alu_out_reg[13]_1 (\alu_out_reg[13]_1 ),
        .\alu_out_reg[14] (\alu_out_reg[14] ),
        .\alu_out_reg[14]_0 (\alu_out_reg[14]_0 ),
        .\alu_out_reg[15] ({alu_mux1_n_2,alu_mux1_n_3,alu_mux1_n_4,alu_mux1_n_5}),
        .\alu_out_reg[15]_0 (\alu_out_reg[15]_1 ),
        .\alu_out_reg[15]_1 (\alu_out_reg[15]_2 ),
        .\alu_out_reg[15]_2 (\alu_out_reg[15]_3 ),
        .\alu_out_reg[15]_3 (\alu_out_reg[15]_4 ),
        .\alu_out_reg[15]_4 (\alu_out_reg[15]_5 ),
        .\alu_out_reg[1] (\alu_out_reg[1] ),
        .\alu_out_reg[1]_0 (\alu_out_reg[1]_0 ),
        .\alu_out_reg[1]_1 (\alu_out_reg[1]_1 ),
        .\alu_out_reg[5] (\alu_out_reg[5] ),
        .\alu_out_reg[6] (\alu_out_reg[6] ),
        .\alu_out_reg[6]_0 (\alu_out_reg[6]_0 ),
        .\alu_out_reg[6]_1 (\alu_out_reg[6]_1 ),
        .\alu_out_reg[7] (\alu_out_reg[7]_0 ),
        .\alu_out_reg[7]_0 (\alu_out_reg[7]_1 ),
        .\alu_out_reg[7]_1 (\alu_out_reg[7]_2 ),
        .\alu_out_reg[7]_2 ({alu_mux1_n_80,alu_mux1_n_81,alu_mux1_n_82,alu_mux1_n_83}),
        .\alu_out_reg[8] (\alu_out_reg[8] ),
        .\alu_out_reg[8]_0 (\alu_out_reg[8]_0 ),
        .\alu_out_reg[8]_1 (\alu_out_reg[8]_1 ),
        .\alu_out_reg[9] (\alu_out_reg[9] ),
        .\alu_out_reg[9]_0 (\alu_out_reg[9]_0 ),
        .\alu_out_reg[9]_1 (\alu_out_reg[9]_1 ),
        .douta(douta[7:0]),
        .en_out_reg_0(reg_group1_n_0),
        .en_out_reg_1(en_out_reg[1:0]),
        .en_out_reg_10(en_out_reg_8),
        .en_out_reg_11(en_out_reg_9),
        .en_out_reg_2(en_out_reg_0),
        .en_out_reg_3(en_out_reg_1),
        .en_out_reg_4(en_out_reg_2),
        .en_out_reg_5(en_out_reg_3),
        .en_out_reg_6(en_out_reg_4),
        .en_out_reg_7(en_out_reg_5),
        .en_out_reg_8(en_out_reg_6),
        .en_out_reg_9(en_out_reg_7),
        .\rd_q_reg[15] (\alu_a_reg[15] ),
        .\rs_q_reg[15] (rs_q),
        .rst_IBUF(rst_IBUF));
  pc pc1
       (.CLK(CLK),
        .Q(Q),
        .\current_state_reg[0] (\current_state_reg[0] ),
        .en_pc_reg_reg(en_pc_reg_reg),
        .\ir_out_reg[7] (\ir_out_reg[7] ),
        .rst(\q_reg[15] ));
  reg_group reg_group1
       (.CLK(CLK),
        .E(E),
        .Q(rs_q),
        .\alu_a_reg[0] (reg_group1_n_0),
        .\alu_a_reg[15] (\alu_a_reg[15] ),
        .\alu_out_reg[15] (\alu_out_reg[15]_6 ),
        .douta(douta[11:8]),
        .\ir_out_reg[10] (\ir_out_reg[10] ),
        .\ir_out_reg[11] (\ir_out_reg[11] ),
        .\ir_out_reg[11]_0 (\ir_out_reg[11]_0 ),
        .\ir_out_reg[11]_1 (\ir_out_reg[11]_1 ),
        .\q_reg[15] (\q_reg[15] ),
        .rst(AR),
        .rst_IBUF(rst_IBUF));
endmodule

module instruction_memory_module
   (douta,
    E,
    CLK,
    ena,
    Q);
  output [15:0]douta;
  output [0:0]E;
  input CLK;
  input ena;
  input [7:0]Q;

  wire CLK;
  wire [0:0]E;
  wire [7:0]Q;
  wire [15:0]douta;
  wire ena;

  FDRE #(
    .INIT(1'b0)) 
    en_rom_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ena),
        .Q(E),
        .R(1'b0));
  (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
  blk_mem_gen_0 instruction_memory
       (.addra(Q),
        .clka(CLK),
        .douta(douta),
        .ena(ena));
endmodule

module ir
   (en_out,
    \q_reg[15] ,
    \q_reg[15]_0 ,
    \q_reg[15]_1 ,
    \q_reg[15]_2 ,
    Q,
    E,
    clk_IBUF_BUFG,
    rst,
    \current_state_reg[4] ,
    \bbstub_douta[15] );
  output en_out;
  output [0:0]\q_reg[15] ;
  output [0:0]\q_reg[15]_0 ;
  output [0:0]\q_reg[15]_1 ;
  output [0:0]\q_reg[15]_2 ;
  output [11:0]Q;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input rst;
  input \current_state_reg[4] ;
  input [13:0]\bbstub_douta[15] ;

  wire [0:0]E;
  wire [11:0]Q;
  wire [13:0]\bbstub_douta[15] ;
  wire clk_IBUF_BUFG;
  wire \current_state_reg[4] ;
  wire en_out;
  wire [0:0]\q_reg[15] ;
  wire [0:0]\q_reg[15]_0 ;
  wire [0:0]\q_reg[15]_1 ;
  wire [0:0]\q_reg[15]_2 ;
  wire rst;
  wire [1:0]sel0;

  FDPE #(
    .INIT(1'b1)) 
    en_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(E),
        .PRE(rst),
        .Q(en_out));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [8]),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [9]),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [10]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [11]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [12]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [13]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \ir_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst),
        .D(\bbstub_douta[15] [7]),
        .Q(Q[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[15]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\current_state_reg[4] ),
        .O(\q_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[15]_i_1__0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\current_state_reg[4] ),
        .O(\q_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[15]_i_1__1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\current_state_reg[4] ),
        .O(\q_reg[15]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[15]_i_1__2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\current_state_reg[4] ),
        .O(\q_reg[15]_2 ));
endmodule

module pc
   (Q,
    en_pc_reg_reg,
    CLK,
    rst,
    \ir_out_reg[7] ,
    \current_state_reg[0] );
  output [15:0]Q;
  input [0:0]en_pc_reg_reg;
  input CLK;
  input rst;
  input [7:0]\ir_out_reg[7] ;
  input [0:0]\current_state_reg[0] ;

  wire CLK;
  wire [15:0]Q;
  wire [0:0]\current_state_reg[0] ;
  wire [0:0]en_pc_reg_reg;
  wire [7:0]\ir_out_reg[7] ;
  wire [15:0]p_0_in;
  wire [15:1]pc_out0;
  wire pc_out0_carry__0_n_0;
  wire pc_out0_carry__0_n_1;
  wire pc_out0_carry__0_n_2;
  wire pc_out0_carry__0_n_3;
  wire pc_out0_carry__1_n_0;
  wire pc_out0_carry__1_n_1;
  wire pc_out0_carry__1_n_2;
  wire pc_out0_carry__1_n_3;
  wire pc_out0_carry__2_n_2;
  wire pc_out0_carry__2_n_3;
  wire pc_out0_carry_n_0;
  wire pc_out0_carry_n_1;
  wire pc_out0_carry_n_2;
  wire pc_out0_carry_n_3;
  wire rst;
  wire [3:2]NLW_pc_out0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_pc_out0_carry__2_O_UNCONNECTED;

  CARRY4 pc_out0_carry
       (.CI(1'b0),
        .CO({pc_out0_carry_n_0,pc_out0_carry_n_1,pc_out0_carry_n_2,pc_out0_carry_n_3}),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out0[4:1]),
        .S(Q[4:1]));
  CARRY4 pc_out0_carry__0
       (.CI(pc_out0_carry_n_0),
        .CO({pc_out0_carry__0_n_0,pc_out0_carry__0_n_1,pc_out0_carry__0_n_2,pc_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out0[8:5]),
        .S(Q[8:5]));
  CARRY4 pc_out0_carry__1
       (.CI(pc_out0_carry__0_n_0),
        .CO({pc_out0_carry__1_n_0,pc_out0_carry__1_n_1,pc_out0_carry__1_n_2,pc_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out0[12:9]),
        .S(Q[12:9]));
  CARRY4 pc_out0_carry__2
       (.CI(pc_out0_carry__1_n_0),
        .CO({NLW_pc_out0_carry__2_CO_UNCONNECTED[3:2],pc_out0_carry__2_n_2,pc_out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pc_out0_carry__2_O_UNCONNECTED[3],pc_out0[15:13]}),
        .S({1'b0,Q[15:13]}));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \pc_out[0]_i_1 
       (.I0(\ir_out_reg[7] [0]),
        .I1(Q[0]),
        .I2(\current_state_reg[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[10]_i_1 
       (.I0(pc_out0[10]),
        .I1(\current_state_reg[0] ),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[11]_i_1 
       (.I0(pc_out0[11]),
        .I1(\current_state_reg[0] ),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[12]_i_1 
       (.I0(pc_out0[12]),
        .I1(\current_state_reg[0] ),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[13]_i_1 
       (.I0(pc_out0[13]),
        .I1(\current_state_reg[0] ),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[14]_i_1 
       (.I0(pc_out0[14]),
        .I1(\current_state_reg[0] ),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[15]_i_2 
       (.I0(pc_out0[15]),
        .I1(\current_state_reg[0] ),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pc_out[1]_i_1 
       (.I0(\ir_out_reg[7] [1]),
        .I1(pc_out0[1]),
        .I2(\current_state_reg[0] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pc_out[2]_i_1 
       (.I0(\ir_out_reg[7] [2]),
        .I1(pc_out0[2]),
        .I2(\current_state_reg[0] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pc_out[3]_i_1 
       (.I0(\ir_out_reg[7] [3]),
        .I1(pc_out0[3]),
        .I2(\current_state_reg[0] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pc_out[4]_i_1 
       (.I0(\ir_out_reg[7] [4]),
        .I1(pc_out0[4]),
        .I2(\current_state_reg[0] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pc_out[5]_i_1 
       (.I0(\ir_out_reg[7] [5]),
        .I1(pc_out0[5]),
        .I2(\current_state_reg[0] ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pc_out[6]_i_1 
       (.I0(\ir_out_reg[7] [6]),
        .I1(pc_out0[6]),
        .I2(\current_state_reg[0] ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pc_out[7]_i_1 
       (.I0(\ir_out_reg[7] [7]),
        .I1(pc_out0[7]),
        .I2(\current_state_reg[0] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[8]_i_1 
       (.I0(pc_out0[8]),
        .I1(\current_state_reg[0] ),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[9]_i_1 
       (.I0(pc_out0[9]),
        .I1(\current_state_reg[0] ),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[0] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[10] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[11] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[12] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[13] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[14] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[15] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[1] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[2] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[3] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[4] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[5] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[6] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[7] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[8] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[9] 
       (.C(CLK),
        .CE(en_pc_reg_reg),
        .CLR(rst),
        .D(p_0_in[9]),
        .Q(Q[9]));
endmodule

module reg_group
   (\alu_a_reg[0] ,
    \q_reg[15] ,
    Q,
    \alu_a_reg[15] ,
    E,
    CLK,
    rst,
    rst_IBUF,
    \ir_out_reg[11] ,
    \alu_out_reg[15] ,
    \ir_out_reg[11]_0 ,
    \ir_out_reg[10] ,
    \ir_out_reg[11]_1 ,
    douta);
  output [0:0]\alu_a_reg[0] ;
  output \q_reg[15] ;
  output [15:0]Q;
  output [15:0]\alu_a_reg[15] ;
  input [0:0]E;
  input CLK;
  input rst;
  input rst_IBUF;
  input [0:0]\ir_out_reg[11] ;
  input [15:0]\alu_out_reg[15] ;
  input [0:0]\ir_out_reg[11]_0 ;
  input [0:0]\ir_out_reg[10] ;
  input [0:0]\ir_out_reg[11]_1 ;
  input [3:0]douta;

  wire CLK;
  wire [0:0]E;
  wire [15:0]Q;
  wire [0:0]\alu_a_reg[0] ;
  wire [15:0]\alu_a_reg[15] ;
  wire [15:0]\alu_out_reg[15] ;
  wire [3:0]douta;
  wire [0:0]\ir_out_reg[10] ;
  wire [0:0]\ir_out_reg[11] ;
  wire [0:0]\ir_out_reg[11]_0 ;
  wire [0:0]\ir_out_reg[11]_1 ;
  wire [15:0]q;
  wire \q_reg[15] ;
  wire [15:0]rd_q;
  wire reg1_n_0;
  wire reg1_n_1;
  wire reg1_n_10;
  wire reg1_n_11;
  wire reg1_n_12;
  wire reg1_n_13;
  wire reg1_n_14;
  wire reg1_n_15;
  wire reg1_n_2;
  wire reg1_n_3;
  wire reg1_n_4;
  wire reg1_n_5;
  wire reg1_n_6;
  wire reg1_n_7;
  wire reg1_n_8;
  wire reg1_n_9;
  wire reg2_n_0;
  wire reg2_n_1;
  wire reg2_n_10;
  wire reg2_n_11;
  wire reg2_n_12;
  wire reg2_n_13;
  wire reg2_n_14;
  wire reg2_n_15;
  wire reg2_n_2;
  wire reg2_n_3;
  wire reg2_n_4;
  wire reg2_n_5;
  wire reg2_n_6;
  wire reg2_n_7;
  wire reg2_n_8;
  wire reg2_n_9;
  wire reg3_n_16;
  wire reg3_n_17;
  wire reg3_n_18;
  wire reg3_n_19;
  wire reg3_n_20;
  wire reg3_n_21;
  wire reg3_n_22;
  wire reg3_n_23;
  wire reg3_n_24;
  wire reg3_n_25;
  wire reg3_n_26;
  wire reg3_n_27;
  wire reg3_n_28;
  wire reg3_n_29;
  wire reg3_n_30;
  wire reg3_n_31;
  wire [15:0]rs_q;
  wire rst;
  wire rst_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    en_out_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst),
        .D(E),
        .Q(\alu_a_reg[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[0]),
        .Q(\alu_a_reg[15] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[10]),
        .Q(\alu_a_reg[15] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[11]),
        .Q(\alu_a_reg[15] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[12]),
        .Q(\alu_a_reg[15] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[13]),
        .Q(\alu_a_reg[15] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[14]),
        .Q(\alu_a_reg[15] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[15]),
        .Q(\alu_a_reg[15] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[1]),
        .Q(\alu_a_reg[15] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[2]),
        .Q(\alu_a_reg[15] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[3]),
        .Q(\alu_a_reg[15] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[4]),
        .Q(\alu_a_reg[15] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[5]),
        .Q(\alu_a_reg[15] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[6]),
        .Q(\alu_a_reg[15] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[7]),
        .Q(\alu_a_reg[15] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[8]),
        .Q(\alu_a_reg[15] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_q_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rd_q[9]),
        .Q(\alu_a_reg[15] [9]));
  register reg0
       (.CLK(CLK),
        .Q(q),
        .\alu_out_reg[15] (\alu_out_reg[15] ),
        .\ir_out_reg[11] (\ir_out_reg[11] ),
        .\q_reg[15]_0 (\q_reg[15] ),
        .rst_IBUF(rst_IBUF));
  register_0 reg1
       (.CLK(CLK),
        .Q({reg1_n_0,reg1_n_1,reg1_n_2,reg1_n_3,reg1_n_4,reg1_n_5,reg1_n_6,reg1_n_7,reg1_n_8,reg1_n_9,reg1_n_10,reg1_n_11,reg1_n_12,reg1_n_13,reg1_n_14,reg1_n_15}),
        .\alu_out_reg[15] (\alu_out_reg[15] ),
        .\ir_out_reg[11] (\ir_out_reg[11]_0 ),
        .rst(\q_reg[15] ));
  register_1 reg2
       (.CLK(CLK),
        .Q({reg2_n_0,reg2_n_1,reg2_n_2,reg2_n_3,reg2_n_4,reg2_n_5,reg2_n_6,reg2_n_7,reg2_n_8,reg2_n_9,reg2_n_10,reg2_n_11,reg2_n_12,reg2_n_13,reg2_n_14,reg2_n_15}),
        .\alu_out_reg[15] (\alu_out_reg[15] ),
        .\ir_out_reg[10] (\ir_out_reg[10] ),
        .rst(\q_reg[15] ));
  register_2 reg3
       (.CLK(CLK),
        .D(rd_q),
        .Q({reg3_n_16,reg3_n_17,reg3_n_18,reg3_n_19,reg3_n_20,reg3_n_21,reg3_n_22,reg3_n_23,reg3_n_24,reg3_n_25,reg3_n_26,reg3_n_27,reg3_n_28,reg3_n_29,reg3_n_30,reg3_n_31}),
        .\alu_out_reg[15] (\alu_out_reg[15] ),
        .douta(douta[3:2]),
        .\ir_out_reg[11] (\ir_out_reg[11]_1 ),
        .\q_reg[15]_0 ({reg2_n_0,reg2_n_1,reg2_n_2,reg2_n_3,reg2_n_4,reg2_n_5,reg2_n_6,reg2_n_7,reg2_n_8,reg2_n_9,reg2_n_10,reg2_n_11,reg2_n_12,reg2_n_13,reg2_n_14,reg2_n_15}),
        .\q_reg[15]_1 ({reg1_n_0,reg1_n_1,reg1_n_2,reg1_n_3,reg1_n_4,reg1_n_5,reg1_n_6,reg1_n_7,reg1_n_8,reg1_n_9,reg1_n_10,reg1_n_11,reg1_n_12,reg1_n_13,reg1_n_14,reg1_n_15}),
        .\q_reg[15]_2 (q),
        .rst(\q_reg[15] ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[0]_i_1 
       (.I0(reg1_n_15),
        .I1(q[0]),
        .I2(reg3_n_31),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_15),
        .O(rs_q[0]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[10]_i_1 
       (.I0(reg1_n_5),
        .I1(q[10]),
        .I2(reg3_n_21),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_5),
        .O(rs_q[10]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[11]_i_1 
       (.I0(reg1_n_4),
        .I1(q[11]),
        .I2(reg3_n_20),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_4),
        .O(rs_q[11]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[12]_i_1 
       (.I0(reg1_n_3),
        .I1(q[12]),
        .I2(reg3_n_19),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_3),
        .O(rs_q[12]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[13]_i_1 
       (.I0(reg1_n_2),
        .I1(q[13]),
        .I2(reg3_n_18),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_2),
        .O(rs_q[13]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[14]_i_1 
       (.I0(reg1_n_1),
        .I1(q[14]),
        .I2(reg3_n_17),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_1),
        .O(rs_q[14]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[15]_i_1 
       (.I0(reg1_n_0),
        .I1(q[15]),
        .I2(reg3_n_16),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_0),
        .O(rs_q[15]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[1]_i_1 
       (.I0(reg1_n_14),
        .I1(q[1]),
        .I2(reg3_n_30),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_14),
        .O(rs_q[1]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[2]_i_1 
       (.I0(reg1_n_13),
        .I1(q[2]),
        .I2(reg3_n_29),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_13),
        .O(rs_q[2]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[3]_i_1 
       (.I0(reg1_n_12),
        .I1(q[3]),
        .I2(reg3_n_28),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_12),
        .O(rs_q[3]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[4]_i_1 
       (.I0(reg1_n_11),
        .I1(q[4]),
        .I2(reg3_n_27),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_11),
        .O(rs_q[4]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[5]_i_1 
       (.I0(reg1_n_10),
        .I1(q[5]),
        .I2(reg3_n_26),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_10),
        .O(rs_q[5]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[6]_i_1 
       (.I0(reg1_n_9),
        .I1(q[6]),
        .I2(reg3_n_25),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_9),
        .O(rs_q[6]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[7]_i_1 
       (.I0(reg1_n_8),
        .I1(q[7]),
        .I2(reg3_n_24),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_8),
        .O(rs_q[7]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[8]_i_1 
       (.I0(reg1_n_7),
        .I1(q[8]),
        .I2(reg3_n_23),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_7),
        .O(rs_q[8]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rs_q[9]_i_1 
       (.I0(reg1_n_6),
        .I1(q[9]),
        .I2(reg3_n_22),
        .I3(douta[0]),
        .I4(douta[1]),
        .I5(reg2_n_6),
        .O(rs_q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \rs_q_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(rst),
        .D(rs_q[9]),
        .Q(Q[9]));
endmodule

module reg_group_mux
   (Q,
    AR,
    douta,
    \alu_out_reg[15] ,
    ram_select);
  output [15:0]Q;
  input [0:0]AR;
  input [15:0]douta;
  input [15:0]\alu_out_reg[15] ;
  input ram_select;

  wire [0:0]AR;
  wire [15:0]Q;
  wire [15:0]\alu_out_reg[15] ;
  wire [15:0]douta;
  wire ram_select;
  wire \reg_group_mux_out_reg[0]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[10]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[11]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[12]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[13]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[14]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[15]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[1]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[2]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[3]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[4]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[5]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[6]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[7]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[8]_i_1_n_0 ;
  wire \reg_group_mux_out_reg[9]_i_1_n_0 ;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[0] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[0]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[0]_i_1 
       (.I0(douta[0]),
        .I1(\alu_out_reg[15] [0]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[10] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[10]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[10]_i_1 
       (.I0(douta[10]),
        .I1(\alu_out_reg[15] [10]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[11] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[11]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[11]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[11]_i_1 
       (.I0(douta[11]),
        .I1(\alu_out_reg[15] [11]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[12] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[12]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[12]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[12]_i_1 
       (.I0(douta[12]),
        .I1(\alu_out_reg[15] [12]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[13] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[13]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[13]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[13]_i_1 
       (.I0(douta[13]),
        .I1(\alu_out_reg[15] [13]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[14] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[14]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[14]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[14]_i_1 
       (.I0(douta[14]),
        .I1(\alu_out_reg[15] [14]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[15] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[15]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[15]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[15]_i_1 
       (.I0(douta[15]),
        .I1(\alu_out_reg[15] [15]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[15]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[1] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[1]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[1]_i_1 
       (.I0(douta[1]),
        .I1(\alu_out_reg[15] [1]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[2] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[2]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[2]_i_1 
       (.I0(douta[2]),
        .I1(\alu_out_reg[15] [2]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[3] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[3]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[3]_i_1 
       (.I0(douta[3]),
        .I1(\alu_out_reg[15] [3]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[4] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[4]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[4]_i_1 
       (.I0(douta[4]),
        .I1(\alu_out_reg[15] [4]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[5] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[5]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[5]_i_1 
       (.I0(douta[5]),
        .I1(\alu_out_reg[15] [5]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[6] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[6]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[6]_i_1 
       (.I0(douta[6]),
        .I1(\alu_out_reg[15] [6]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[7] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[7]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[7]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[7]_i_1 
       (.I0(douta[7]),
        .I1(\alu_out_reg[15] [7]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[8] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[8]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[8]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[8]_i_1 
       (.I0(douta[8]),
        .I1(\alu_out_reg[15] [8]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_group_mux_out_reg[9] 
       (.CLR(AR),
        .D(\reg_group_mux_out_reg[9]_i_1_n_0 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[9]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_group_mux_out_reg[9]_i_1 
       (.I0(douta[9]),
        .I1(\alu_out_reg[15] [9]),
        .I2(ram_select),
        .O(\reg_group_mux_out_reg[9]_i_1_n_0 ));
endmodule

module register
   (\q_reg[15]_0 ,
    Q,
    rst_IBUF,
    \ir_out_reg[11] ,
    \alu_out_reg[15] ,
    CLK);
  output \q_reg[15]_0 ;
  output [15:0]Q;
  input rst_IBUF;
  input [0:0]\ir_out_reg[11] ;
  input [15:0]\alu_out_reg[15] ;
  input CLK;

  wire CLK;
  wire [15:0]Q;
  wire [15:0]\alu_out_reg[15] ;
  wire [0:0]\ir_out_reg[11] ;
  wire \q_reg[15]_0 ;
  wire rst_IBUF;

  LUT1 #(
    .INIT(2'h1)) 
    en_pc_reg_i_2
       (.I0(rst_IBUF),
        .O(\q_reg[15]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(\q_reg[15]_0 ),
        .D(\alu_out_reg[15] [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_0
   (Q,
    \ir_out_reg[11] ,
    \alu_out_reg[15] ,
    CLK,
    rst);
  output [15:0]Q;
  input [0:0]\ir_out_reg[11] ;
  input [15:0]\alu_out_reg[15] ;
  input CLK;
  input rst;

  wire CLK;
  wire [15:0]Q;
  wire [15:0]\alu_out_reg[15] ;
  wire [0:0]\ir_out_reg[11] ;
  wire rst;

  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_1
   (Q,
    \ir_out_reg[10] ,
    \alu_out_reg[15] ,
    CLK,
    rst);
  output [15:0]Q;
  input [0:0]\ir_out_reg[10] ;
  input [15:0]\alu_out_reg[15] ;
  input CLK;
  input rst;

  wire CLK;
  wire [15:0]Q;
  wire [15:0]\alu_out_reg[15] ;
  wire [0:0]\ir_out_reg[10] ;
  wire rst;

  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(\ir_out_reg[10] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_2
   (D,
    Q,
    \q_reg[15]_0 ,
    douta,
    \q_reg[15]_1 ,
    \q_reg[15]_2 ,
    \ir_out_reg[11] ,
    \alu_out_reg[15] ,
    CLK,
    rst);
  output [15:0]D;
  output [15:0]Q;
  input [15:0]\q_reg[15]_0 ;
  input [1:0]douta;
  input [15:0]\q_reg[15]_1 ;
  input [15:0]\q_reg[15]_2 ;
  input [0:0]\ir_out_reg[11] ;
  input [15:0]\alu_out_reg[15] ;
  input CLK;
  input rst;

  wire CLK;
  wire [15:0]D;
  wire [15:0]Q;
  wire [15:0]\alu_out_reg[15] ;
  wire [1:0]douta;
  wire [0:0]\ir_out_reg[11] ;
  wire [15:0]\q_reg[15]_0 ;
  wire [15:0]\q_reg[15]_1 ;
  wire [15:0]\q_reg[15]_2 ;
  wire rst;

  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(\ir_out_reg[11] ),
        .CLR(rst),
        .D(\alu_out_reg[15] [9]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[0]_i_1 
       (.I0(Q[0]),
        .I1(\q_reg[15]_0 [0]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [0]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[10]_i_1 
       (.I0(Q[10]),
        .I1(\q_reg[15]_0 [10]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [10]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[11]_i_1 
       (.I0(Q[11]),
        .I1(\q_reg[15]_0 [11]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [11]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[12]_i_1 
       (.I0(Q[12]),
        .I1(\q_reg[15]_0 [12]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [12]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[13]_i_1 
       (.I0(Q[13]),
        .I1(\q_reg[15]_0 [13]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [13]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[14]_i_1 
       (.I0(Q[14]),
        .I1(\q_reg[15]_0 [14]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [14]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[15]_i_1 
       (.I0(Q[15]),
        .I1(\q_reg[15]_0 [15]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [15]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[1]_i_1 
       (.I0(Q[1]),
        .I1(\q_reg[15]_0 [1]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [1]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[2]_i_1 
       (.I0(Q[2]),
        .I1(\q_reg[15]_0 [2]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [2]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[3]_i_1 
       (.I0(Q[3]),
        .I1(\q_reg[15]_0 [3]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [3]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[4]_i_1 
       (.I0(Q[4]),
        .I1(\q_reg[15]_0 [4]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [4]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[5]_i_1 
       (.I0(Q[5]),
        .I1(\q_reg[15]_0 [5]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [5]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[6]_i_1 
       (.I0(Q[6]),
        .I1(\q_reg[15]_0 [6]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [6]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[7]_i_1 
       (.I0(Q[7]),
        .I1(\q_reg[15]_0 [7]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [7]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[8]_i_1 
       (.I0(Q[8]),
        .I1(\q_reg[15]_0 [8]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [8]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_q[9]_i_1 
       (.I0(Q[9]),
        .I1(\q_reg[15]_0 [9]),
        .I2(douta[1]),
        .I3(\q_reg[15]_1 [9]),
        .I4(douta[0]),
        .I5(\q_reg[15]_2 [9]),
        .O(D[9]));
endmodule

module state_transition
   (wea,
    alu_in_sel,
    ram_select,
    \pc_out_reg[0] ,
    \pc_out_reg[0]_0 ,
    D,
    Q,
    \alu_out_reg[13] ,
    \alu_out_reg[14] ,
    \alu_out_reg[14]_0 ,
    \alu_out_reg[14]_1 ,
    \alu_out_reg[14]_2 ,
    \alu_out_reg[0] ,
    \alu_out_reg[2] ,
    \alu_out_reg[3] ,
    \alu_out_reg[4] ,
    \alu_out_reg[5] ,
    \alu_out_reg[15] ,
    \alu_out_reg[15]_0 ,
    \alu_out_reg[14]_3 ,
    \alu_out_reg[1] ,
    \alu_out_reg[6] ,
    \alu_out_reg[7] ,
    \alu_out_reg[8] ,
    \alu_out_reg[9] ,
    \alu_out_reg[10] ,
    \alu_out_reg[11] ,
    \alu_out_reg[12] ,
    \alu_out_reg[2]_0 ,
    \alu_out_reg[13]_0 ,
    \alu_out_reg[15]_1 ,
    \alu_out_reg[2]_1 ,
    \alu_out_reg[2]_2 ,
    \alu_out_reg[13]_1 ,
    S,
    ena,
    en_out_reg,
    en_ram_reg,
    \q_reg[15] ,
    AR,
    rst,
    clk_IBUF_BUFG,
    \alu_b_reg[1] ,
    \alu_b_reg[0] ,
    \alu_b_reg[0]_0 ,
    \alu_b_reg[15] ,
    \alu_b_reg[0]_1 ,
    \alu_a_reg[0] ,
    \alu_b_reg[0]_2 ,
    \alu_b_reg[0]_3 ,
    \alu_b_reg[0]_4 ,
    \alu_b_reg[0]_5 ,
    \alu_b_reg[0]_6 ,
    \alu_b_reg[0]_7 ,
    \alu_b_reg[0]_8 ,
    \alu_b_reg[0]_9 ,
    \alu_b_reg[1]_0 ,
    \alu_b_reg[1]_1 ,
    \alu_b_reg[0]_10 ,
    \alu_b_reg[1]_2 ,
    \alu_a_reg[10] ,
    \alu_b_reg[0]_11 ,
    \alu_b_reg[1]_3 ,
    \alu_a_reg[11] ,
    \alu_b_reg[0]_12 ,
    \alu_a_reg[11]_0 ,
    \alu_b_reg[1]_4 ,
    \alu_b_reg[0]_13 ,
    \alu_a_reg[14] ,
    \alu_a_reg[15] ,
    \alu_b_reg[0]_14 ,
    \alu_b_reg[0]_15 ,
    \alu_b_reg[0]_16 ,
    \alu_a_reg[14]_0 ,
    \alu_a_reg[15]_0 ,
    \alu_b_reg[0]_17 ,
    \alu_a_reg[15]_1 ,
    \alu_b_reg[0]_18 ,
    \alu_b_reg[15]_0 ,
    O,
    \alu_a_reg[7] ,
    \alu_a_reg[11]_1 ,
    \alu_a_reg[14]_1 ,
    \alu_b_reg[15]_1 ,
    \alu_b_reg[0]_19 ,
    en_alu,
    \ir_out_reg[15] ,
    en_ram,
    en_out,
    en_in_IBUF,
    rst_IBUF);
  output [0:0]wea;
  output alu_in_sel;
  output ram_select;
  output [0:0]\pc_out_reg[0] ;
  output [0:0]\pc_out_reg[0]_0 ;
  output [11:0]D;
  output [2:0]Q;
  output \alu_out_reg[13] ;
  output \alu_out_reg[14] ;
  output \alu_out_reg[14]_0 ;
  output \alu_out_reg[14]_1 ;
  output \alu_out_reg[14]_2 ;
  output \alu_out_reg[0] ;
  output \alu_out_reg[2] ;
  output \alu_out_reg[3] ;
  output \alu_out_reg[4] ;
  output \alu_out_reg[5] ;
  output \alu_out_reg[15] ;
  output \alu_out_reg[15]_0 ;
  output \alu_out_reg[14]_3 ;
  output \alu_out_reg[1] ;
  output \alu_out_reg[6] ;
  output \alu_out_reg[7] ;
  output \alu_out_reg[8] ;
  output \alu_out_reg[9] ;
  output \alu_out_reg[10] ;
  output \alu_out_reg[11] ;
  output \alu_out_reg[12] ;
  output \alu_out_reg[2]_0 ;
  output \alu_out_reg[13]_0 ;
  output \alu_out_reg[15]_1 ;
  output \alu_out_reg[2]_1 ;
  output \alu_out_reg[2]_2 ;
  output \alu_out_reg[13]_1 ;
  output [0:0]S;
  output ena;
  output [0:0]en_out_reg;
  output en_ram_reg;
  output \q_reg[15] ;
  input [0:0]AR;
  input rst;
  input clk_IBUF_BUFG;
  input \alu_b_reg[1] ;
  input \alu_b_reg[0] ;
  input \alu_b_reg[0]_0 ;
  input \alu_b_reg[15] ;
  input \alu_b_reg[0]_1 ;
  input \alu_a_reg[0] ;
  input \alu_b_reg[0]_2 ;
  input \alu_b_reg[0]_3 ;
  input \alu_b_reg[0]_4 ;
  input \alu_b_reg[0]_5 ;
  input \alu_b_reg[0]_6 ;
  input \alu_b_reg[0]_7 ;
  input \alu_b_reg[0]_8 ;
  input \alu_b_reg[0]_9 ;
  input \alu_b_reg[1]_0 ;
  input \alu_b_reg[1]_1 ;
  input \alu_b_reg[0]_10 ;
  input \alu_b_reg[1]_2 ;
  input \alu_a_reg[10] ;
  input \alu_b_reg[0]_11 ;
  input \alu_b_reg[1]_3 ;
  input \alu_a_reg[11] ;
  input \alu_b_reg[0]_12 ;
  input \alu_a_reg[11]_0 ;
  input \alu_b_reg[1]_4 ;
  input \alu_b_reg[0]_13 ;
  input \alu_a_reg[14] ;
  input \alu_a_reg[15] ;
  input \alu_b_reg[0]_14 ;
  input \alu_b_reg[0]_15 ;
  input \alu_b_reg[0]_16 ;
  input \alu_a_reg[14]_0 ;
  input [15:0]\alu_a_reg[15]_0 ;
  input \alu_b_reg[0]_17 ;
  input \alu_a_reg[15]_1 ;
  input \alu_b_reg[0]_18 ;
  input \alu_b_reg[15]_0 ;
  input [1:0]O;
  input [1:0]\alu_a_reg[7] ;
  input [3:0]\alu_a_reg[11]_1 ;
  input [3:0]\alu_a_reg[14]_1 ;
  input [15:0]\alu_b_reg[15]_1 ;
  input \alu_b_reg[0]_19 ;
  input en_alu;
  input [3:0]\ir_out_reg[15] ;
  input en_ram;
  input en_out;
  input en_in_IBUF;
  input rst_IBUF;

  wire [0:0]AR;
  wire [11:0]D;
  wire [1:0]O;
  wire [2:0]Q;
  wire [0:0]S;
  wire \alu_a_reg[0] ;
  wire \alu_a_reg[10] ;
  wire \alu_a_reg[11] ;
  wire \alu_a_reg[11]_0 ;
  wire [3:0]\alu_a_reg[11]_1 ;
  wire \alu_a_reg[14] ;
  wire \alu_a_reg[14]_0 ;
  wire [3:0]\alu_a_reg[14]_1 ;
  wire \alu_a_reg[15] ;
  wire [15:0]\alu_a_reg[15]_0 ;
  wire \alu_a_reg[15]_1 ;
  wire [1:0]\alu_a_reg[7] ;
  wire \alu_b_reg[0] ;
  wire \alu_b_reg[0]_0 ;
  wire \alu_b_reg[0]_1 ;
  wire \alu_b_reg[0]_10 ;
  wire \alu_b_reg[0]_11 ;
  wire \alu_b_reg[0]_12 ;
  wire \alu_b_reg[0]_13 ;
  wire \alu_b_reg[0]_14 ;
  wire \alu_b_reg[0]_15 ;
  wire \alu_b_reg[0]_16 ;
  wire \alu_b_reg[0]_17 ;
  wire \alu_b_reg[0]_18 ;
  wire \alu_b_reg[0]_19 ;
  wire \alu_b_reg[0]_2 ;
  wire \alu_b_reg[0]_3 ;
  wire \alu_b_reg[0]_4 ;
  wire \alu_b_reg[0]_5 ;
  wire \alu_b_reg[0]_6 ;
  wire \alu_b_reg[0]_7 ;
  wire \alu_b_reg[0]_8 ;
  wire \alu_b_reg[0]_9 ;
  wire \alu_b_reg[15] ;
  wire \alu_b_reg[15]_0 ;
  wire [15:0]\alu_b_reg[15]_1 ;
  wire \alu_b_reg[1] ;
  wire \alu_b_reg[1]_0 ;
  wire \alu_b_reg[1]_1 ;
  wire \alu_b_reg[1]_2 ;
  wire \alu_b_reg[1]_3 ;
  wire \alu_b_reg[1]_4 ;
  wire [3:3]alu_func;
  wire alu_in_sel;
  wire \alu_out[0]_i_2_n_0 ;
  wire \alu_out[0]_i_5_n_0 ;
  wire \alu_out[10]_i_2_n_0 ;
  wire \alu_out[10]_i_6_n_0 ;
  wire \alu_out[11]_i_2_n_0 ;
  wire \alu_out[11]_i_6_n_0 ;
  wire \alu_out[12]_i_2_n_0 ;
  wire \alu_out[12]_i_6_n_0 ;
  wire \alu_out[13]_i_2_n_0 ;
  wire \alu_out[13]_i_3_n_0 ;
  wire \alu_out[14]_i_2_n_0 ;
  wire \alu_out[14]_i_3_n_0 ;
  wire \alu_out[15]_i_2_n_0 ;
  wire \alu_out[15]_i_3_n_0 ;
  wire \alu_out[15]_i_6_n_0 ;
  wire \alu_out[1]_i_2_n_0 ;
  wire \alu_out[1]_i_6_n_0 ;
  wire \alu_out[6]_i_2_n_0 ;
  wire \alu_out[6]_i_6_n_0 ;
  wire \alu_out[7]_i_2_n_0 ;
  wire \alu_out[7]_i_6_n_0 ;
  wire \alu_out[8]_i_2_n_0 ;
  wire \alu_out[8]_i_6_n_0 ;
  wire \alu_out[9]_i_2_n_0 ;
  wire \alu_out[9]_i_6_n_0 ;
  wire \alu_out_reg[0] ;
  wire \alu_out_reg[10] ;
  wire \alu_out_reg[11] ;
  wire \alu_out_reg[12] ;
  wire \alu_out_reg[13] ;
  wire \alu_out_reg[13]_0 ;
  wire \alu_out_reg[13]_1 ;
  wire \alu_out_reg[14] ;
  wire \alu_out_reg[14]_0 ;
  wire \alu_out_reg[14]_1 ;
  wire \alu_out_reg[14]_2 ;
  wire \alu_out_reg[14]_3 ;
  wire \alu_out_reg[15] ;
  wire \alu_out_reg[15]_0 ;
  wire \alu_out_reg[15]_1 ;
  wire \alu_out_reg[1] ;
  wire \alu_out_reg[2] ;
  wire \alu_out_reg[2]_0 ;
  wire \alu_out_reg[2]_1 ;
  wire \alu_out_reg[2]_2 ;
  wire \alu_out_reg[3] ;
  wire \alu_out_reg[4] ;
  wire \alu_out_reg[5] ;
  wire \alu_out_reg[6] ;
  wire \alu_out_reg[7] ;
  wire \alu_out_reg[8] ;
  wire \alu_out_reg[9] ;
  wire clk_IBUF_BUFG;
  wire [4:0]current_state;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[1]_i_3_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[3]_i_2_n_0 ;
  wire \current_state[3]_i_3_n_0 ;
  wire \current_state[3]_i_4_n_0 ;
  wire \current_state[4]_i_2_n_0 ;
  wire en_alu;
  wire en_data_mem;
  wire en_data_mem_reg__0;
  wire en_data_mem_reg_i_1_n_0;
  wire en_data_mem_reg_i_2_n_0;
  wire en_fetch_reg;
  wire en_group;
  wire en_group_reg__0;
  wire en_group_reg_i_1_n_0;
  wire en_group_reg_i_3_n_0;
  wire en_in_IBUF;
  wire en_out;
  wire [0:0]en_out_reg;
  wire en_pc;
  wire en_pc_reg__0;
  wire en_pc_reg_i_1_n_0;
  wire en_pc_reg_i_3_n_0;
  wire en_pc_reg_i_4_n_0;
  wire en_pc_reg_i_5_n_0;
  wire en_ram;
  wire en_ram_reg;
  wire ena;
  wire g0_b0__0_n_0;
  wire g0_b0__1_n_0;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire [3:0]\ir_out_reg[15] ;
  wire [4:0]next_state;
  wire [0:0]pc_ctrl;
  wire \pc_ctrl_reg[0]_i_1_n_0 ;
  wire \pc_ctrl_reg[1]_i_1_n_0 ;
  wire [0:0]\pc_out_reg[0] ;
  wire [0:0]\pc_out_reg[0]_0 ;
  wire \q[15]_i_3_n_0 ;
  wire \q_reg[15] ;
  wire ram_select;
  wire ram_select_reg_i_1_n_0;
  wire ram_select_reg_i_2_n_0;
  wire rst;
  wire rst_IBUF;
  wire we_reg_i_1_n_0;
  wire we_reg_i_2_n_0;
  wire [0:0]wea;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alu_func_reg[0] 
       (.CLR(AR),
        .D(g0_b0__1_n_0),
        .G(en_group_reg_i_1_n_0),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alu_func_reg[1] 
       (.CLR(AR),
        .D(g0_b1_n_0),
        .G(en_group_reg_i_1_n_0),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alu_func_reg[2] 
       (.CLR(AR),
        .D(g0_b2_n_0),
        .G(en_group_reg_i_1_n_0),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alu_func_reg[3] 
       (.CLR(AR),
        .D(g0_b3_n_0),
        .G(en_group_reg_i_1_n_0),
        .GE(1'b1),
        .Q(alu_func));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    alu_in_sel_reg
       (.CLR(AR),
        .D(g0_b0__0_n_0),
        .G(en_group_reg_i_1_n_0),
        .GE(1'b1),
        .Q(alu_in_sel));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \alu_out[0]_i_1 
       (.I0(\alu_out[15]_i_2_n_0 ),
        .I1(\alu_out[0]_i_2_n_0 ),
        .I2(\alu_b_reg[1] ),
        .I3(\alu_b_reg[0] ),
        .I4(\alu_out[0]_i_5_n_0 ),
        .I5(\alu_b_reg[0]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00C80080000000CC)) 
    \alu_out[0]_i_10 
       (.I0(\alu_a_reg[15]_0 [0]),
        .I1(\alu_b_reg[15]_1 [0]),
        .I2(Q[0]),
        .I3(alu_func),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\alu_out_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \alu_out[0]_i_2 
       (.I0(\alu_b_reg[15] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\alu_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA0000000A00A0)) 
    \alu_out[0]_i_5 
       (.I0(O[0]),
        .I1(\alu_a_reg[15]_0 [0]),
        .I2(Q[2]),
        .I3(alu_func),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\alu_out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \alu_out[10]_i_1 
       (.I0(\alu_out[10]_i_2_n_0 ),
        .I1(\alu_b_reg[0]_11 ),
        .I2(\alu_out_reg[13] ),
        .I3(\alu_b_reg[1]_3 ),
        .I4(\alu_a_reg[11] ),
        .I5(\alu_out[10]_i_6_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0D09090110000000)) 
    \alu_out[10]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(alu_func),
        .I3(Q[0]),
        .I4(\alu_a_reg[15]_0 [10]),
        .I5(\alu_b_reg[15]_1 [10]),
        .O(\alu_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA0000000A00A0)) 
    \alu_out[10]_i_6 
       (.I0(\alu_a_reg[11]_1 [2]),
        .I1(\alu_a_reg[15]_0 [10]),
        .I2(Q[2]),
        .I3(alu_func),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\alu_out[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000220002)) 
    \alu_out[10]_i_7 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\alu_b_reg[15]_1 [10]),
        .I5(\alu_a_reg[15]_0 [10]),
        .O(\alu_out_reg[10] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \alu_out[11]_i_1 
       (.I0(\alu_out[11]_i_2_n_0 ),
        .I1(\alu_b_reg[0]_12 ),
        .I2(\alu_out_reg[13] ),
        .I3(\alu_a_reg[11]_0 ),
        .I4(\alu_b_reg[1]_4 ),
        .I5(\alu_out[11]_i_6_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0D09090110000000)) 
    \alu_out[11]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(alu_func),
        .I3(Q[0]),
        .I4(\alu_a_reg[15]_0 [11]),
        .I5(\alu_b_reg[15]_1 [11]),
        .O(\alu_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA0000000A00A0)) 
    \alu_out[11]_i_6 
       (.I0(\alu_a_reg[11]_1 [3]),
        .I1(\alu_a_reg[15]_0 [11]),
        .I2(Q[2]),
        .I3(alu_func),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\alu_out[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000220002)) 
    \alu_out[11]_i_7 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\alu_b_reg[15]_1 [11]),
        .I5(\alu_a_reg[15]_0 [11]),
        .O(\alu_out_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \alu_out[12]_i_1 
       (.I0(\alu_out[12]_i_2_n_0 ),
        .I1(\alu_b_reg[0]_13 ),
        .I2(\alu_out_reg[13] ),
        .I3(\alu_a_reg[14] ),
        .I4(\alu_a_reg[15] ),
        .I5(\alu_out[12]_i_6_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0D09090110000000)) 
    \alu_out[12]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(alu_func),
        .I3(Q[0]),
        .I4(\alu_a_reg[15]_0 [12]),
        .I5(\alu_b_reg[15]_1 [12]),
        .O(\alu_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA0000000A00A0)) 
    \alu_out[12]_i_6 
       (.I0(\alu_a_reg[14]_1 [0]),
        .I1(\alu_a_reg[15]_0 [12]),
        .I2(Q[2]),
        .I3(alu_func),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\alu_out[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000220002)) 
    \alu_out[12]_i_7 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\alu_b_reg[15]_1 [12]),
        .I5(\alu_a_reg[15]_0 [12]),
        .O(\alu_out_reg[12] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \alu_out[13]_i_1 
       (.I0(\alu_out[13]_i_2_n_0 ),
        .I1(\alu_out[13]_i_3_n_0 ),
        .I2(\alu_out_reg[13] ),
        .I3(\alu_b_reg[0]_14 ),
        .I4(\alu_b_reg[0]_15 ),
        .I5(\alu_b_reg[0]_16 ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \alu_out[13]_i_10 
       (.I0(\alu_a_reg[15]_0 [13]),
        .I1(\alu_b_reg[15]_1 [13]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(alu_func),
        .O(\alu_out_reg[13]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \alu_out[13]_i_12 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(alu_func),
        .O(\alu_out_reg[13]_0 ));
  LUT6 #(
    .INIT(64'h0A00080A0800003A)) 
    \alu_out[13]_i_2 
       (.I0(\alu_b_reg[15]_1 [13]),
        .I1(\alu_a_reg[15]_0 [13]),
        .I2(alu_func),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\alu_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAC0C0FFEAC0C0)) 
    \alu_out[13]_i_3 
       (.I0(\alu_out_reg[14]_0 ),
        .I1(\alu_out_reg[14]_1 ),
        .I2(\alu_a_reg[14]_1 [1]),
        .I3(\alu_out_reg[14]_2 ),
        .I4(\alu_a_reg[15]_0 [13]),
        .I5(\alu_b_reg[15]_1 [13]),
        .O(\alu_out[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \alu_out[13]_i_4 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\alu_out_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \alu_out[14]_i_1 
       (.I0(\alu_out[14]_i_2_n_0 ),
        .I1(\alu_out[14]_i_3_n_0 ),
        .I2(\alu_a_reg[14]_0 ),
        .I3(\alu_out_reg[14] ),
        .I4(\alu_a_reg[15]_0 [14]),
        .I5(\alu_b_reg[0]_17 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h2400)) 
    \alu_out[14]_i_10 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(alu_func),
        .O(\alu_out_reg[14]_3 ));
  LUT6 #(
    .INIT(64'hEAEAC0C0FFEAC0C0)) 
    \alu_out[14]_i_2 
       (.I0(\alu_out_reg[14]_0 ),
        .I1(\alu_out_reg[14]_1 ),
        .I2(\alu_a_reg[14]_1 [2]),
        .I3(\alu_out_reg[14]_2 ),
        .I4(\alu_a_reg[15]_0 [14]),
        .I5(\alu_b_reg[15]_1 [14]),
        .O(\alu_out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4451000040330000)) 
    \alu_out[14]_i_3 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\alu_b_reg[15]_1 [14]),
        .I5(\alu_a_reg[15]_0 [14]),
        .O(\alu_out[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \alu_out[14]_i_5 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\alu_out_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \alu_out[14]_i_7 
       (.I0(Q[2]),
        .I1(alu_func),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\alu_out_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0304)) 
    \alu_out[14]_i_8 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(alu_func),
        .I3(Q[1]),
        .O(\alu_out_reg[14]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \alu_out[14]_i_9 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(alu_func),
        .I3(Q[0]),
        .O(\alu_out_reg[14]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAA8)) 
    \alu_out[15]_i_1 
       (.I0(\alu_out[15]_i_2_n_0 ),
        .I1(\alu_out[15]_i_3_n_0 ),
        .I2(\alu_a_reg[15]_1 ),
        .I3(\alu_b_reg[0]_18 ),
        .I4(\alu_out[15]_i_6_n_0 ),
        .I5(\alu_b_reg[15]_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \alu_out[15]_i_11 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\alu_out_reg[15]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2003)) 
    \alu_out[15]_i_15 
       (.I0(Q[0]),
        .I1(alu_func),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\alu_out_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h3202)) 
    \alu_out[15]_i_16 
       (.I0(Q[0]),
        .I1(alu_func),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\alu_out_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \alu_out[15]_i_2 
       (.I0(Q[2]),
        .I1(alu_func),
        .O(\alu_out[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h002D)) 
    \alu_out[15]_i_3 
       (.I0(Q[0]),
        .I1(\alu_b_reg[15]_1 [15]),
        .I2(\alu_a_reg[15]_0 [15]),
        .I3(Q[1]),
        .O(\alu_out[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00CA0000000A00A0)) 
    \alu_out[15]_i_6 
       (.I0(\alu_a_reg[14]_1 [3]),
        .I1(\alu_a_reg[15]_0 [15]),
        .I2(Q[2]),
        .I3(alu_func),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\alu_out[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \alu_out[1]_i_1 
       (.I0(\alu_out[1]_i_2_n_0 ),
        .I1(\alu_b_reg[0]_1 ),
        .I2(\alu_out_reg[13] ),
        .I3(\alu_a_reg[0] ),
        .I4(\alu_b_reg[0]_2 ),
        .I5(\alu_out[1]_i_6_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0D09090110000000)) 
    \alu_out[1]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(alu_func),
        .I3(Q[0]),
        .I4(\alu_a_reg[15]_0 [1]),
        .I5(\alu_b_reg[15]_1 [1]),
        .O(\alu_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA0000000A00A0)) 
    \alu_out[1]_i_6 
       (.I0(O[1]),
        .I1(\alu_a_reg[15]_0 [1]),
        .I2(Q[2]),
        .I3(alu_func),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\alu_out[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000220002)) 
    \alu_out[1]_i_7 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\alu_b_reg[15]_1 [1]),
        .I5(\alu_a_reg[15]_0 [1]),
        .O(\alu_out_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \alu_out[2]_i_3 
       (.I0(\alu_b_reg[0]_19 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(alu_func),
        .O(\alu_out_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \alu_out[2]_i_4 
       (.I0(\alu_b_reg[15]_1 [2]),
        .I1(\alu_a_reg[15]_0 [2]),
        .I2(Q[0]),
        .I3(alu_func),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\alu_out_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0A00080A0800003A)) 
    \alu_out[2]_i_7 
       (.I0(\alu_b_reg[15]_1 [2]),
        .I1(\alu_a_reg[15]_0 [2]),
        .I2(alu_func),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\alu_out_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \alu_out[2]_i_9 
       (.I0(\alu_a_reg[15]_0 [2]),
        .I1(\alu_b_reg[15]_1 [2]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(alu_func),
        .O(\alu_out_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h4451000040330000)) 
    \alu_out[3]_i_5 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\alu_b_reg[15]_1 [3]),
        .I5(\alu_a_reg[15]_0 [3]),
        .O(\alu_out_reg[3] ));
  LUT6 #(
    .INIT(64'h4451000040330000)) 
    \alu_out[4]_i_5 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\alu_b_reg[15]_1 [4]),
        .I5(\alu_a_reg[15]_0 [4]),
        .O(\alu_out_reg[4] ));
  LUT6 #(
    .INIT(64'h4451000040330000)) 
    \alu_out[5]_i_5 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\alu_b_reg[15]_1 [5]),
        .I5(\alu_a_reg[15]_0 [5]),
        .O(\alu_out_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \alu_out[6]_i_1 
       (.I0(\alu_out[6]_i_2_n_0 ),
        .I1(\alu_b_reg[0]_3 ),
        .I2(\alu_out_reg[13] ),
        .I3(\alu_b_reg[0]_4 ),
        .I4(\alu_b_reg[0]_5 ),
        .I5(\alu_out[6]_i_6_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0D09090110000000)) 
    \alu_out[6]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(alu_func),
        .I3(Q[0]),
        .I4(\alu_a_reg[15]_0 [6]),
        .I5(\alu_b_reg[15]_1 [6]),
        .O(\alu_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA0000000A00A0)) 
    \alu_out[6]_i_6 
       (.I0(\alu_a_reg[7] [0]),
        .I1(\alu_a_reg[15]_0 [6]),
        .I2(Q[2]),
        .I3(alu_func),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\alu_out[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000220002)) 
    \alu_out[6]_i_7 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\alu_b_reg[15]_1 [6]),
        .I5(\alu_a_reg[15]_0 [6]),
        .O(\alu_out_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \alu_out[7]_i_1 
       (.I0(\alu_out[7]_i_2_n_0 ),
        .I1(\alu_b_reg[0]_6 ),
        .I2(\alu_out_reg[13] ),
        .I3(\alu_b_reg[0]_7 ),
        .I4(\alu_b_reg[0]_8 ),
        .I5(\alu_out[7]_i_6_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0D09090110000000)) 
    \alu_out[7]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(alu_func),
        .I3(Q[0]),
        .I4(\alu_a_reg[15]_0 [7]),
        .I5(\alu_b_reg[15]_1 [7]),
        .O(\alu_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA0000000A00A0)) 
    \alu_out[7]_i_6 
       (.I0(\alu_a_reg[7] [1]),
        .I1(\alu_a_reg[15]_0 [7]),
        .I2(Q[2]),
        .I3(alu_func),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\alu_out[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000220002)) 
    \alu_out[7]_i_7 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\alu_b_reg[15]_1 [7]),
        .I5(\alu_a_reg[15]_0 [7]),
        .O(\alu_out_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \alu_out[8]_i_1 
       (.I0(\alu_out[8]_i_2_n_0 ),
        .I1(\alu_b_reg[0]_9 ),
        .I2(\alu_out_reg[13] ),
        .I3(\alu_b_reg[1]_0 ),
        .I4(\alu_b_reg[1]_1 ),
        .I5(\alu_out[8]_i_6_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0D09090110000000)) 
    \alu_out[8]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(alu_func),
        .I3(Q[0]),
        .I4(\alu_a_reg[15]_0 [8]),
        .I5(\alu_b_reg[15]_1 [8]),
        .O(\alu_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA0000000A00A0)) 
    \alu_out[8]_i_6 
       (.I0(\alu_a_reg[11]_1 [0]),
        .I1(\alu_a_reg[15]_0 [8]),
        .I2(Q[2]),
        .I3(alu_func),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\alu_out[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000220002)) 
    \alu_out[8]_i_7 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\alu_b_reg[15]_1 [8]),
        .I5(\alu_a_reg[15]_0 [8]),
        .O(\alu_out_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \alu_out[9]_i_1 
       (.I0(\alu_out[9]_i_2_n_0 ),
        .I1(\alu_b_reg[0]_10 ),
        .I2(\alu_out_reg[13] ),
        .I3(\alu_b_reg[1]_2 ),
        .I4(\alu_a_reg[10] ),
        .I5(\alu_out[9]_i_6_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0D09090110000000)) 
    \alu_out[9]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(alu_func),
        .I3(Q[0]),
        .I4(\alu_a_reg[15]_0 [9]),
        .I5(\alu_b_reg[15]_1 [9]),
        .O(\alu_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA0000000A00A0)) 
    \alu_out[9]_i_6 
       (.I0(\alu_a_reg[11]_1 [1]),
        .I1(\alu_a_reg[15]_0 [9]),
        .I2(Q[2]),
        .I3(alu_func),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\alu_out[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000220002)) 
    \alu_out[9]_i_7 
       (.I0(alu_func),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\alu_b_reg[15]_1 [9]),
        .I5(\alu_a_reg[15]_0 [9]),
        .O(\alu_out_reg[9] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF51405050)) 
    \current_state[0]_i_1 
       (.I0(current_state[4]),
        .I1(en_group_reg_i_3_n_0),
        .I2(en_alu),
        .I3(en_ram),
        .I4(current_state[1]),
        .I5(\current_state[0]_i_2_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'hF0F0F0F0FCFC0AFA)) 
    \current_state[0]_i_2 
       (.I0(en_in_IBUF),
        .I1(\ir_out_reg[15] [0]),
        .I2(current_state[0]),
        .I3(en_out),
        .I4(current_state[1]),
        .I5(\current_state[1]_i_2_n_0 ),
        .O(\current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD2D0FFFFC2C0)) 
    \current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(\current_state[1]_i_2_n_0 ),
        .I2(current_state[1]),
        .I3(en_out),
        .I4(\current_state[1]_i_3_n_0 ),
        .I5(\ir_out_reg[15] [1]),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \current_state[1]_i_2 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[4]),
        .O(\current_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h04444444)) 
    \current_state[1]_i_3 
       (.I0(current_state[4]),
        .I1(en_alu),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(\current_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00FF08FF00)) 
    \current_state[2]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[3]),
        .I2(en_ram),
        .I3(\current_state[2]_i_2_n_0 ),
        .I4(current_state[2]),
        .I5(\current_state[3]_i_3_n_0 ),
        .O(next_state[2]));
  LUT6 #(
    .INIT(64'h000000002F222222)) 
    \current_state[2]_i_2 
       (.I0(current_state[2]),
        .I1(en_alu),
        .I2(\current_state[3]_i_4_n_0 ),
        .I3(current_state[4]),
        .I4(\ir_out_reg[15] [2]),
        .I5(current_state[3]),
        .O(\current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00FF08FF00)) 
    \current_state[3]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(en_ram),
        .I3(\current_state[3]_i_2_n_0 ),
        .I4(current_state[3]),
        .I5(\current_state[3]_i_3_n_0 ),
        .O(next_state[3]));
  LUT6 #(
    .INIT(64'h000000002F222222)) 
    \current_state[3]_i_2 
       (.I0(current_state[3]),
        .I1(en_alu),
        .I2(\current_state[3]_i_4_n_0 ),
        .I3(current_state[4]),
        .I4(\ir_out_reg[15] [3]),
        .I5(current_state[2]),
        .O(\current_state[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF01)) 
    \current_state[3]_i_3 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(en_alu),
        .I3(current_state[4]),
        .O(\current_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_state[3]_i_4 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(\current_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEBAFAFFFEFAFA)) 
    \current_state[4]_i_1 
       (.I0(\current_state[4]_i_2_n_0 ),
        .I1(current_state[3]),
        .I2(en_alu),
        .I3(current_state[2]),
        .I4(current_state[4]),
        .I5(current_state[1]),
        .O(next_state[4]));
  LUT6 #(
    .INIT(64'hEFCCCCCCAC0C0C0C)) 
    \current_state[4]_i_2 
       (.I0(en_ram),
        .I1(current_state[4]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .I5(current_state[0]),
        .O(\current_state[4]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state[0]),
        .Q(current_state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state[1]),
        .Q(current_state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state[2]),
        .Q(current_state[2]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state[3]),
        .Q(current_state[3]));
  FDPE #(
    .INIT(1'b1)) 
    \current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[4]),
        .PRE(rst),
        .Q(current_state[4]));
  LUT2 #(
    .INIT(4'h2)) 
    data_memory_i_1
       (.I0(en_data_mem),
        .I1(en_data_mem_reg__0),
        .O(en_ram_reg));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    en_data_mem_reg
       (.CLR(rst),
        .D(en_data_mem_reg_i_1_n_0),
        .G(en_group_reg_i_1_n_0),
        .GE(1'b1),
        .Q(en_data_mem));
  LUT6 #(
    .INIT(64'h0080FFFF00800080)) 
    en_data_mem_reg_i_1
       (.I0(en_pc_reg_i_3_n_0),
        .I1(\ir_out_reg[15] [1]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[4]),
        .I5(en_data_mem_reg_i_2_n_0),
        .O(en_data_mem_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    en_data_mem_reg_i_2
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(en_ram),
        .O(en_data_mem_reg_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    en_data_mem_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(en_data_mem),
        .Q(en_data_mem_reg__0));
  FDCE #(
    .INIT(1'b0)) 
    en_fetch_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(pc_ctrl),
        .Q(en_fetch_reg));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    en_group_reg
       (.CLR(AR),
        .D(g0_b0_n_0),
        .G(en_group_reg_i_1_n_0),
        .GE(1'b1),
        .Q(en_group));
  LUT6 #(
    .INIT(64'hFFFFFFFF550D55FD)) 
    en_group_reg_i_1
       (.I0(en_alu),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(en_group_reg_i_3_n_0),
        .I4(en_ram),
        .I5(current_state[4]),
        .O(en_group_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    en_group_reg_i_3
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .O(en_group_reg_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    en_group_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(en_group),
        .Q(en_group_reg__0));
  LUT2 #(
    .INIT(4'h2)) 
    en_out_i_1
       (.I0(en_group),
        .I1(en_group_reg__0),
        .O(en_out_reg));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    en_pc_reg
       (.CLR(rst),
        .D(en_pc_reg_i_1_n_0),
        .G(en_group_reg_i_1_n_0),
        .GE(1'b1),
        .Q(en_pc));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    en_pc_reg_i_1
       (.I0(en_pc_reg_i_3_n_0),
        .I1(\ir_out_reg[15] [1]),
        .I2(current_state[1]),
        .I3(\ir_out_reg[15] [0]),
        .I4(en_pc_reg_i_4_n_0),
        .O(en_pc_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    en_pc_reg_i_3
       (.I0(\ir_out_reg[15] [3]),
        .I1(\ir_out_reg[15] [2]),
        .I2(current_state[4]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(en_pc_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFF5100)) 
    en_pc_reg_i_4
       (.I0(\current_state[1]_i_2_n_0 ),
        .I1(en_out),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(en_pc_reg_i_5_n_0),
        .O(en_pc_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000040024000)) 
    en_pc_reg_i_5
       (.I0(current_state[4]),
        .I1(current_state[0]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(en_in_IBUF),
        .I5(current_state[1]),
        .O(en_pc_reg_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    en_pc_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(en_pc),
        .Q(en_pc_reg__0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000DFFF)) 
    g0_b0
       (.I0(next_state[0]),
        .I1(next_state[1]),
        .I2(next_state[2]),
        .I3(next_state[3]),
        .I4(next_state[4]),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h000002DA)) 
    g0_b0__0
       (.I0(next_state[0]),
        .I1(next_state[1]),
        .I2(next_state[2]),
        .I3(next_state[3]),
        .I4(next_state[4]),
        .O(g0_b0__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    g0_b0__1
       (.I0(next_state[0]),
        .I1(next_state[4]),
        .O(g0_b0__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    g0_b1
       (.I0(next_state[1]),
        .I1(next_state[4]),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    g0_b2
       (.I0(next_state[2]),
        .I1(next_state[4]),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    g0_b3
       (.I0(next_state[3]),
        .I1(next_state[4]),
        .O(g0_b3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_4
       (.I0(Q[2]),
        .I1(\alu_b_reg[15]_1 [0]),
        .I2(Q[1]),
        .O(S));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    instruction_memory_i_1
       (.I0(pc_ctrl),
        .I1(en_fetch_reg),
        .O(ena));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pc_ctrl_reg[0] 
       (.CLR(rst),
        .D(\pc_ctrl_reg[0]_i_1_n_0 ),
        .G(en_group_reg_i_1_n_0),
        .GE(1'b1),
        .Q(pc_ctrl));
  LUT6 #(
    .INIT(64'hFFFFFFFF51405050)) 
    \pc_ctrl_reg[0]_i_1 
       (.I0(current_state[4]),
        .I1(en_group_reg_i_3_n_0),
        .I2(en_alu),
        .I3(en_ram),
        .I4(current_state[1]),
        .I5(en_pc_reg_i_4_n_0),
        .O(\pc_ctrl_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pc_ctrl_reg[1] 
       (.CLR(rst),
        .D(\pc_ctrl_reg[1]_i_1_n_0 ),
        .G(en_group_reg_i_1_n_0),
        .GE(1'b1),
        .Q(\pc_out_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \pc_ctrl_reg[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\ir_out_reg[15] [0]),
        .I3(\ir_out_reg[15] [1]),
        .I4(en_pc_reg_i_3_n_0),
        .O(\pc_ctrl_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \pc_out[15]_i_1 
       (.I0(en_pc_reg__0),
        .I1(en_pc),
        .I2(\pc_out_reg[0] ),
        .I3(pc_ctrl),
        .O(\pc_out_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h4040404040444040)) 
    \q[15]_i_2 
       (.I0(current_state[4]),
        .I1(rst_IBUF),
        .I2(\q[15]_i_3_n_0 ),
        .I3(current_state[1]),
        .I4(en_alu),
        .I5(current_state[0]),
        .O(\q_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h88F0F0F0)) 
    \q[15]_i_3 
       (.I0(current_state[1]),
        .I1(en_ram),
        .I2(en_alu),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(\q[15]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    ram_select_reg
       (.CLR(rst),
        .D(ram_select_reg_i_1_n_0),
        .G(en_group_reg_i_1_n_0),
        .GE(1'b1),
        .Q(ram_select));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    ram_select_reg_i_1
       (.I0(en_pc_reg_i_3_n_0),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\ir_out_reg[15] [1]),
        .I4(\ir_out_reg[15] [0]),
        .I5(ram_select_reg_i_2_n_0),
        .O(ram_select_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    ram_select_reg_i_2
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[4]),
        .I3(en_ram),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(ram_select_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    we_reg
       (.CLR(rst),
        .D(we_reg_i_1_n_0),
        .G(en_group_reg_i_1_n_0),
        .GE(1'b1),
        .Q(wea));
  LUT6 #(
    .INIT(64'h80808080FF808080)) 
    we_reg_i_1
       (.I0(en_pc_reg_i_3_n_0),
        .I1(we_reg_i_2_n_0),
        .I2(\ir_out_reg[15] [0]),
        .I3(en_data_mem_reg_i_2_n_0),
        .I4(current_state[0]),
        .I5(current_state[4]),
        .O(we_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    we_reg_i_2
       (.I0(\ir_out_reg[15] [1]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(we_reg_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [7:0]addra;

  wire [7:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [7:0]addra;

  wire [7:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [7:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9 ;
  wire [7:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000F0400060F0400050E0400040E0400030E0400020E040001),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addra,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3 ,douta[7:4],\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11 ,douta[3:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19 ,douta[15:12],\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27 ,douta[11:8]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(ena),
        .ENBWREN(ena),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [7:0]addra;

  wire [7:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* C_ADDRA_WIDTH = "8" *) (* C_ADDRB_WIDTH = "8" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "256" *) (* C_READ_DEPTH_B = "256" *) (* C_READ_WIDTH_A = "16" *) 
(* C_READ_WIDTH_B = "16" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "1" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "256" *) (* C_WRITE_DEPTH_B = "256" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [7:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [7:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [7:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [7:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [7:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  assign dbiterr = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_0_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [7:0]addra;

  wire [7:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_1_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [15:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [15:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_1_blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [15:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [15:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_1_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [15:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [15:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9 ;
  wire [7:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000F0000000F0F0000000400000003000000020000000100000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addra,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,dina[7:4],1'b0,1'b0,1'b0,1'b0,dina[3:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,dina[15:12],1'b0,1'b0,1'b0,1'b0,dina[11:8]}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3 ,douta[7:4],\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11 ,douta[3:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19 ,douta[15:12],\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27 ,douta[11:8]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(ena),
        .ENBWREN(ena),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_1_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [15:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [15:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "8" *) (* C_ADDRB_WIDTH = "8" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7211 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "256" *) (* C_READ_DEPTH_B = "256" *) (* C_READ_WIDTH_A = "16" *) 
(* C_READ_WIDTH_B = "16" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "1" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "256" *) (* C_WRITE_DEPTH_B = "256" *) (* C_WRITE_MODE_A = "NO_CHANGE" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_1_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [7:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [7:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [7:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [7:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [7:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_1_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module blk_mem_gen_1_blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [15:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [15:0]dina;
  input [0:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
