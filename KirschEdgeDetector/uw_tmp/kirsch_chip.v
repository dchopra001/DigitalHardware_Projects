// Copyright (C) 1991-2009 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

// DATE "07/23/2014 13:12:26"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module kirsch_chip (	i_clock,
	i_reset,
	i_valid,
	i_pixel,
	o_valid,
	o_edge,
	o_dir,
	o_mode,
	o_row,
	debug_key,
	debug_switch,
	debug_led_red,
	debug_led_grn,
	debug_num_0,
	debug_num_1,
	debug_num_2,
	debug_num_3,
	debug_num_4,
	debug_num_5);
input 	i_clock;
input 	i_reset;
input 	i_valid;
input 	[7:0] i_pixel;
output 	o_valid;
output 	o_edge;
output 	[2:0] o_dir;
output 	[1:0] o_mode;
output 	[7:0] o_row;
input 	[3:1] debug_key;
input 	[17:0] debug_switch;
output 	[17:0] debug_led_red;
output 	[5:0] debug_led_grn;
output 	[3:0] debug_num_0;
output 	[3:0] debug_num_1;
output 	[3:0] debug_num_2;
output 	[3:0] debug_num_3;
output 	[3:0] debug_num_4;
output 	[3:0] debug_num_5;

wire gnd = 1'b0;
wire vcc = 1'b1;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("kirsch_v.sdo");
// synopsys translate_on

wire r17_12_;
wire r18_6_;
wire r18_5_;
wire x_r22_7_;
wire r18_3_;
wire r18_2_;
wire x_r22_4_;
wire x_r22_3_;
wire x_r22_1_;
wire x_r22_12_;
wire r18_9_;
wire x_r22_11_;
wire r18_7_;
wire r17_sub13_10i1_anx63795z1;
wire r17_sub13_10i1_ad_11_;
wire x_r11_7_;
wire r15_6_;
wire x_r11_5_;
wire x_r11_3_;
wire r15_2_;
wire modgen_counter_o_row_anx58250z5;
wire nx11673z2;
wire x_r12_7_;
wire x_r12_4_;
wire x_r12_1_;
wire x_r22_add12_8i1_anx37973z1;
wire x_r22_add12_8i1_anx39967z1;
wire x_r22_add12_8i1_anx40964z1;
wire x_r22_add12_8i1_anx43955z1;
wire x_r12_11_;
wire x_r12_10_;
wire x_r22_add12_8i1_anx63795z5;
wire x_r22_add12_8i1_anx62798z1;
wire x_r22_add12_8i1_anx63795z3;
wire x_r22_add12_8i1_anx63795z1;
wire x_r3_6_;
wire b_d1_2_;
wire r16_7_;
wire r16_5_;
wire r11_4_;
wire r16_3_;
wire r14_8_;
wire r13_6_;
wire r13_4_;
wire r14_3_;
wire r13_0_;
wire x_r12_add11_8i4_anx38970z1;
wire x_r12_add11_8i4_anx41961z1;
wire x_r12_add11_8i4_anx44952z1;
wire x_r12_add11_8i4_anx62798z3;
wire r14_10_;
wire x_r12_add11_8i4_anx62798z1;
wire x_r12_add11_8i4_anx23445z2;
wire x_r12_add11_8i4_anx23445z1;
wire g_6_;
wire r5_6_;
wire x_r5_6_;
wire x_r3_7n3s1f1_6_;
wire x_r5_5_;
wire r5_4_;
wire x_r5_4_;
wire x_r3_7n3s1f1_4_;
wire r5_1_;
wire x_r5_1_;
wire x_r3_7n3s1f1_1_;
wire r9_7_;
wire r10_5_;
wire r10_4_;
wire r10_2_;
wire r9_0_;
wire b_d1_add9_7i10_anx39967z1;
wire r12_7_;
wire r12_5_;
wire r12_2_;
wire r12_1_;
wire r16_add9_7i11_anx40964z1;
wire r16_add9_7i11_anx42958z1;
wire r16_add9_7i11_anx44952z1;
wire d_5_;
wire d_2_;
wire h_5_;
wire h_2_;
wire x_r6_8_;
wire x_r6_6_;
wire x_r6_5_;
wire x_r6_4_;
wire x_r6_3_;
wire x_r6_2_;
wire x_r6_1_;
wire r14_add10_8i3_anx40964z1;
wire r14_add10_8i3_anx45949z1;
wire nx51677z12;
wire r2_6n3s1f2_7_;
wire nx51677z14;
wire r2_6n3s1f2_6_;
wire nx51677z5;
wire r2_6n3s1f1_5_;
wire nx51677z6;
wire r2_6n3s1f1_4_;
wire nx51677z7;
wire r2_6n3s1f1_3_;
wire nx51677z8;
wire r2_6n3s1f1_2_;
wire nx51677z19;
wire r2_6n3s1f2_1_;
wire nx51677z10;
wire r2_6n3s1f1_0_;
wire r14_add10_8i3_anx23445z2;
wire r14_add10_8i3_anx23445z1;
wire nx20419z6;
wire nx34631z1;
wire nx31640z1;
wire i_5_;
wire i_2_;
wire x_r6_add9_8i2_anx38970z1;
wire x_r6_add9_8i2_anx39967z1;
wire x_r6_add9_8i2_anx40964z1;
wire x_r6_add9_8i2_anx41961z1;
wire x_r6_add9_8i2_anx42958z1;
wire x_r6_add9_8i2_anx43955z1;
wire x_r6_add9_8i2_anx45949z1;
wire we_0_;
wire we_1_;
wire we_2_;
wire r18_9__afeeder_combout;
wire r18_7__afeeder_combout;
wire r18_6__afeeder_combout;
wire r18_5__afeeder_combout;
wire r18_3__afeeder_combout;
wire r18_2__afeeder_combout;
wire r15_6__afeeder_combout;
wire r15_2__afeeder_combout;
wire x_r11_7__afeeder_combout;
wire x_r11_5__afeeder_combout;
wire x_r11_3__afeeder_combout;
wire r5_6__afeeder_combout;
wire r5_4__afeeder_combout;
wire r5_1__afeeder_combout;
wire x_r5_6__afeeder_combout;
wire x_r5_5__afeeder_combout;
wire x_r5_4__afeeder_combout;
wire x_r5_1__afeeder_combout;
wire r10_5__afeeder_combout;
wire r10_4__afeeder_combout;
wire r10_2__afeeder_combout;
wire r12_7__afeeder_combout;
wire r12_5__afeeder_combout;
wire r12_2__afeeder_combout;
wire r12_1__afeeder_combout;
wire r9_0__afeeder_combout;
wire r13_4__afeeder_combout;
wire r9_7__afeeder_combout;
wire i_clock_acombout;
wire i_clock_aclkctrl_outclk;
wire modgen_counter_o_row_anx58250z14;
wire modgen_counter_o_row_anx52268z1;
wire i_reset_acombout;
wire modgen_counter_col_anx51271z1;
wire i_valid_acombout;
wire vBit_1_;
wire nx40914z1;
wire modgen_counter_col_anx58250z15;
wire modgen_counter_col_anx58250z14;
wire modgen_counter_col_anx58250z12;
wire modgen_counter_col_anx53265z1;
wire modgen_counter_col_anx58250z11;
wire modgen_counter_col_anx58250z10;
wire modgen_counter_col_anx58250z8;
wire modgen_counter_col_anx55259z1;
wire modgen_counter_col_anx58250z7;
wire modgen_counter_col_anx58250z6;
wire modgen_counter_col_anx58250z4;
wire modgen_counter_col_anx57253z1;
wire modgen_counter_col_anx58250z3;
wire modgen_counter_col_anx58250z2;
wire modgen_counter_col_anx58250z1;
wire modgen_counter_col_anx1041z1;
wire modgen_counter_col_anx56256z1;
wire modgen_counter_col_anx58250z5;
wire nx17322z3;
wire vBit_2_;
wire modgen_counter_col_anx54262z1;
wire modgen_counter_col_anx58250z9;
wire modgen_counter_col_anx52268z1;
wire modgen_counter_col_anx58250z13;
wire nx17322z2;
wire nx17322z1;
wire modgen_counter_o_row_anx57253z3;
wire modgen_counter_o_row_anx58250z13;
wire modgen_counter_o_row_anx58250z12;
wire modgen_counter_o_row_anx53265z1;
wire modgen_counter_o_row_anx58250z11;
wire modgen_counter_o_row_anx58250z10;
wire modgen_counter_o_row_anx54262z1;
wire modgen_counter_o_row_anx58250z9;
wire modgen_counter_o_row_anx58250z8;
wire modgen_counter_o_row_anx55259z1;
wire modgen_counter_o_row_anx58250z7;
wire nx20419z5;
wire nx20419z3;
wire nx20419z4;
wire nx20419z2;
wire nx20419z1;
wire validBit_0_;
wire validBit_1_;
wire validBit_2_;
wire validBit_3_;
wire validBit_4_;
wire validBit_5_;
wire validBit_6_;
wire validBit_7_;
wire o_valid_dup0;
wire nx51677z1;
wire nx28524z1_a_wirecell_combout;
wire state_1_;
wire state_2_;
wire state_2__a_wirecell_combout;
wire nx28524z1;
wire nx20492z1;
wire nx36625z2;
wire c_7_;
wire b_7_;
wire e_7__afeeder_combout;
wire e_7_;
wire f_7_;
wire nx51677z3;
wire nx51677z2;
wire r2_6n3s1f1_7_;
wire nx35628z1;
wire d_6_;
wire nx21489z1;
wire c_6_;
wire b_6_;
wire i_6__afeeder_combout;
wire i_6_;
wire h_6_;
wire e_6_;
wire f_6_;
wire nx51677z4;
wire r2_6n3s1f1_6_;
wire nx22486z1;
wire c_5_;
wire b_5_;
wire a_5_;
wire nx51677z11;
wire e_5_;
wire nx51677z13;
wire nx51677z15;
wire f_5_;
wire g_5__afeeder_combout;
wire g_5_;
wire r2_6n3s1f2_5_;
wire nx23483z1;
wire c_4_;
wire b_4_;
wire a_4_;
wire e_4_;
wire nx51677z16;
wire r2_6n3s1f2_4_;
wire e_3_;
wire f_3_;
wire g_3__afeeder_combout;
wire g_3_;
wire nx51677z17;
wire r2_6n3s1f2_3_;
wire e_2__afeeder_combout;
wire e_2_;
wire f_2_;
wire g_2__afeeder_combout;
wire g_2_;
wire nx25477z1;
wire c_2_;
wire nx51677z18;
wire r2_6n3s1f2_2_;
wire nx30643z1;
wire d_1_;
wire nx26474z1;
wire c_1_;
wire b_1_;
wire e_1_;
wire f_1_;
wire i_1_;
wire h_1_;
wire nx51677z9;
wire r2_6n3s1f1_1_;
wire e_0_;
wire f_0_;
wire g_0_;
wire nx51677z20;
wire r2_6n3s1f2_0_;
wire r2_add8_6i49_anx44952z22;
wire r2_add8_6i49_anx44952z19;
wire r2_add8_6i49_anx44952z16;
wire r2_add8_6i49_anx44952z13;
wire r2_add8_6i49_anx44952z10;
wire r2_add8_6i49_anx44952z7;
wire r2_add8_6i49_anx44952z4;
wire r2_add8_6i49_anx23445z2;
wire r2_add8_6i49_anx23445z1;
wire nx250z1;
wire r13_8_;
wire r2_add8_6i49_anx44952z1;
wire r2_7_;
wire r2_add8_6i49_anx43955z1;
wire r9_6__afeeder_combout;
wire r9_6_;
wire r2_add8_6i49_anx42958z1;
wire r2_5__afeeder_combout;
wire r2_5_;
wire r2_add8_6i49_anx41961z1;
wire r2_4__afeeder_combout;
wire r2_4_;
wire r2_add8_6i49_anx40964z1;
wire r9_3__afeeder_combout;
wire r9_3_;
wire r2_add8_6i49_anx39967z1;
wire r9_2__afeeder_combout;
wire r9_2_;
wire r2_add8_6i49_anx38970z1;
wire r9_1__afeeder_combout;
wire r9_1_;
wire r2_add8_6i49_anx37973z1;
wire r2_0__afeeder_combout;
wire r2_0_;
wire x_r6_add9_8i2_anx45949z25;
wire x_r6_add9_8i2_anx45949z22;
wire x_r6_add9_8i2_anx45949z19;
wire x_r6_add9_8i2_anx45949z16;
wire x_r6_add9_8i2_anx45949z13;
wire x_r6_add9_8i2_anx45949z10;
wire x_r6_add9_8i2_anx45949z7;
wire x_r6_add9_8i2_anx44952z1;
wire x_r6_7_;
wire r2_6_;
wire r2_3_;
wire r2_2__afeeder_combout;
wire r2_2_;
wire r2_1__afeeder_combout;
wire r2_1_;
wire x_r6_add9_8i2_anx37973z1;
wire x_r6_0_;
wire r14_add10_8i3_anx46946z27;
wire r14_add10_8i3_anx46946z24;
wire r14_add10_8i3_anx46946z21;
wire r14_add10_8i3_anx46946z18;
wire r14_add10_8i3_anx46946z15;
wire r14_add10_8i3_anx46946z12;
wire r14_add10_8i3_anx46946z9;
wire r14_add10_8i3_anx44952z1;
wire nx16422z1;
wire r14_7_;
wire r14_add10_8i3_anx43955z1;
wire r14_6_;
wire r14_add10_8i3_anx42958z1;
wire r14_5_;
wire r14_add10_8i3_anx41961z1;
wire r14_4_;
wire r13_3_;
wire r14_add10_8i3_anx39967z1;
wire r14_2_;
wire r14_add10_8i3_anx38970z1;
wire r14_1_;
wire r14_add10_8i3_anx37973z1;
wire r14_0_;
wire x_r12_add11_8i4_anx62798z29;
wire x_r12_add11_8i4_anx62798z26;
wire x_r12_add11_8i4_anx62798z23;
wire x_r12_add11_8i4_anx62798z20;
wire x_r12_add11_8i4_anx62798z17;
wire x_r12_add11_8i4_anx62798z14;
wire x_r12_add11_8i4_anx62798z11;
wire x_r12_add11_8i4_anx62798z8;
wire x_r12_add11_8i4_anx45949z1;
wire nx58464z1;
wire x_r12_8_;
wire x_r12_add11_8i4_anx43955z1;
wire x_r12_6_;
wire x_r12_add11_8i4_anx42958z1;
wire x_r12_5_;
wire x_r12_add11_8i4_anx40964z1;
wire x_r12_3_;
wire x_r12_add11_8i4_anx39967z1;
wire x_r12_2_;
wire x_r12_add11_8i4_anx37973z1;
wire x_r12_0_;
wire x_r22_add12_8i1_anx63795z23;
wire x_r22_add12_8i1_anx63795z21;
wire x_r22_add12_8i1_anx63795z19;
wire x_r22_add12_8i1_anx63795z17;
wire x_r22_add12_8i1_anx63795z15;
wire x_r22_add12_8i1_anx63795z13;
wire x_r22_add12_8i1_anx63795z11;
wire x_r22_add12_8i1_anx44952z1;
wire nx65254z1;
wire x_r22_8_;
wire r5_3__afeeder_combout;
wire nx24480z1;
wire c_3_;
wire b_3_;
wire f_4_;
wire g_4_;
wire b_2_;
wire g_1_;
wire ix7380z18833_anx100z22;
wire ix7380z18833_anx100z19;
wire ix7380z18833_anx100z16;
wire ix7380z18833_anx100z13;
wire ix7380z18833_anx100z10;
wire ix7380z18833_anx100z7;
wire ix7380z18833_anx100z4;
wire ix7380z18833_anx100z1;
wire nx7380z1;
wire r5_3_;
wire x_r5_3__afeeder_combout;
wire nx27471z1;
wire c_0_;
wire ix27953z18832_anx100z22;
wire ix27953z18832_anx100z19;
wire ix27953z18832_anx100z16;
wire ix27953z18832_anx100z13;
wire ix27953z18832_anx100z10;
wire ix27953z18832_anx100z7;
wire ix27953z18832_anx100z4;
wire ix27953z18832_anx100z1;
wire nx27953z1;
wire x_r5_3_;
wire x_r3_7n3s1f1_3_;
wire r5_2__afeeder_combout;
wire r5_2_;
wire x_r5_2__afeeder_combout;
wire x_r5_2_;
wire x_r3_7n3s1f1_2_;
wire x_r5_0__afeeder_combout;
wire x_r5_0_;
wire r5_0__afeeder_combout;
wire b_0_;
wire r5_0_;
wire x_r3_7n3s1f1_0_;
wire x_r3_add9_7i9_anx45949z24;
wire x_r3_add9_7i9_anx45949z21;
wire x_r3_add9_7i9_anx45949z18;
wire x_r3_add9_7i9_anx45949z15;
wire x_r3_add9_7i9_anx41961z1;
wire nx56415z1;
wire x_r3_4_;
wire r15_4__afeeder_combout;
wire r9_4__afeeder_combout;
wire r9_4_;
wire a_3_;
wire r10_3__afeeder_combout;
wire nx32637z1;
wire d_3_;
wire a_7_;
wire nx33634z1;
wire d_4_;
wire a_2_;
wire a_1_;
wire a_0_;
wire ix48448z18833_anx100z22;
wire ix48448z18833_anx100z19;
wire ix48448z18833_anx100z16;
wire ix48448z18833_anx100z13;
wire ix48448z18833_anx100z10;
wire ix48448z18833_anx100z7;
wire ix48448z18833_anx100z4;
wire ix48448z18833_anx100z1;
wire r10_3_;
wire r10_1__afeeder_combout;
wire r10_1_;
wire r10_0__afeeder_combout;
wire nx29646z1;
wire d_0_;
wire r10_0_;
wire b_d1_add9_7i10_anx45949z24;
wire b_d1_add9_7i10_anx45949z21;
wire b_d1_add9_7i10_anx45949z18;
wire b_d1_add9_7i10_anx45949z15;
wire b_d1_add9_7i10_anx41961z1;
wire b_d1_4_;
wire r9_8__afeeder_combout;
wire r9_8_;
wire r10_7__afeeder_combout;
wire nx36625z1;
wire d_7_;
wire r10_7_;
wire a_6_;
wire r10_6__afeeder_combout;
wire r10_6_;
wire r9_5__afeeder_combout;
wire r9_5_;
wire b_d1_add9_7i10_anx45949z12;
wire b_d1_add9_7i10_anx45949z9;
wire b_d1_add9_7i10_anx45949z6;
wire b_d1_add9_7i10_anx45949z3;
wire b_d1_add9_7i10_anx23445z2;
wire b_d1_add9_7i10_anx23445z1;
wire b_d1_9_;
wire g_7_;
wire r5_7__afeeder_combout;
wire r5_7_;
wire x_r5_7__afeeder_combout;
wire x_r5_7_;
wire x_r3_7n3s1f1_7_;
wire r5_5__afeeder_combout;
wire r5_5_;
wire x_r3_7n3s1f1_5_;
wire x_r3_add9_7i9_anx45949z12;
wire x_r3_add9_7i9_anx45949z9;
wire x_r3_add9_7i9_anx45949z6;
wire x_r3_add9_7i9_anx45949z3;
wire x_r3_add9_7i9_anx23445z2;
wire x_r3_add9_7i9_anx23445z1;
wire x_r3_9_;
wire x_r3_add9_7i9_anx45949z1;
wire x_r3_8_;
wire x_r3_add9_7i9_anx44952z1;
wire x_r3_7_;
wire b_d1_add9_7i10_anx43955z1;
wire b_d1_6_;
wire x_r3_add9_7i9_anx42958z1;
wire x_r3_5_;
wire b_d1_add9_7i10_anx40964z1;
wire b_d1_3_;
wire x_r3_add9_7i9_anx39967z1;
wire x_r3_2_;
wire x_r3_add9_7i9_anx38970z1;
wire x_r3_1__afeeder_combout;
wire x_r3_1_;
wire x_r3_add9_7i9_anx37973z1;
wire x_r3_0_;
wire ix23013z52805_anx100z28;
wire ix23013z52805_anx100z25;
wire ix23013z52805_anx100z22;
wire ix23013z52805_anx100z19;
wire ix23013z52805_anx100z16;
wire ix23013z52805_anx100z13;
wire ix23013z52805_anx100z10;
wire ix23013z52805_anx100z7;
wire ix23013z52805_anx100z4;
wire ix23013z52805_anx100z1;
wire r15_4_;
wire r18_4__afeeder_combout;
wire x_r11_4__afeeder_combout;
wire r12_4__afeeder_combout;
wire i_4__afeeder_combout;
wire i_4_;
wire h_4__afeeder_combout;
wire h_4_;
wire i_7__afeeder_combout;
wire i_7_;
wire h_7__afeeder_combout;
wire h_7_;
wire i_3_;
wire h_3_;
wire i_0_;
wire h_0_;
wire ix250z18831_anx100z22;
wire ix250z18831_anx100z19;
wire ix250z18831_anx100z16;
wire ix250z18831_anx100z13;
wire ix250z18831_anx100z10;
wire ix250z18831_anx100z7;
wire ix250z18831_anx100z4;
wire ix250z18831_anx100z1;
wire r12_4_;
wire r12_3__afeeder_combout;
wire r12_3_;
wire r13_2__afeeder_combout;
wire r13_2_;
wire r13_1__afeeder_combout;
wire r13_1_;
wire r12_0__afeeder_combout;
wire r12_0_;
wire r16_add9_7i11_anx45949z24;
wire r16_add9_7i11_anx45949z21;
wire r16_add9_7i11_anx45949z18;
wire r16_add9_7i11_anx45949z15;
wire r16_add9_7i11_anx41961z1;
wire nx34104z1;
wire r16_4_;
wire r13_7_;
wire r12_6__afeeder_combout;
wire r12_6_;
wire r13_5_;
wire r16_add9_7i11_anx45949z12;
wire r16_add9_7i11_anx45949z9;
wire r16_add9_7i11_anx45949z6;
wire r16_add9_7i11_anx45949z3;
wire r16_add9_7i11_anx23445z2;
wire r16_add9_7i11_anx23445z1;
wire r16_9_;
wire nx54873z1;
wire r11_9_;
wire r11_8_;
wire r11_7_;
wire r16_add9_7i11_anx43955z1;
wire r16_6_;
wire r11_5_;
wire x_r3_add9_7i9_anx40964z1;
wire r11_3_;
wire r11_2_;
wire r11_1_;
wire r16_add9_7i11_anx37973z1;
wire r16_0_;
wire ix42030z52807_anx100z28;
wire ix42030z52807_anx100z25;
wire ix42030z52807_anx100z22;
wire ix42030z52807_anx100z19;
wire ix42030z52807_anx100z16;
wire ix42030z52807_anx100z13;
wire ix42030z52807_anx100z10;
wire ix42030z52807_anx100z7;
wire ix42030z52807_anx100z4;
wire ix42030z52807_anx100z1;
wire nx42030z1;
wire x_r11_4_;
wire r15_9__afeeder_combout;
wire r15_9_;
wire x_r11_9__afeeder_combout;
wire x_r11_9_;
wire x_r11_8__afeeder_combout;
wire r16_add9_7i11_anx45949z1;
wire r16_8_;
wire x_r11_8_;
wire r15_7__afeeder_combout;
wire b_d1_add9_7i10_anx44952z1;
wire b_d1_7_;
wire r15_7_;
wire x_r3_add9_7i9_anx43955z1;
wire r11_6_;
wire x_r11_6__afeeder_combout;
wire x_r11_6_;
wire r15_5__afeeder_combout;
wire b_d1_add9_7i10_anx42958z1;
wire b_d1_5_;
wire r15_5_;
wire x_r3_3_;
wire r15_3__afeeder_combout;
wire r15_3_;
wire x_r11_2__afeeder_combout;
wire r16_add9_7i11_anx39967z1;
wire r16_2_;
wire x_r11_2_;
wire r15_1__afeeder_combout;
wire b_d1_add9_7i10_anx38970z1;
wire b_d1_1_;
wire r15_1_;
wire r15_0__afeeder_combout;
wire b_d1_add9_7i10_anx37973z1;
wire b_d1_0_;
wire r15_0_;
wire ix17266z52808_anx100z28;
wire ix17266z52808_anx100z25;
wire ix17266z52808_anx100z22;
wire ix17266z52808_anx100z19;
wire ix17266z52808_anx100z16;
wire ix17266z52808_anx100z13;
wire ix17266z52808_anx100z10;
wire ix17266z52808_anx100z7;
wire ix17266z52808_anx100z4;
wire ix17266z52808_anx100z1;
wire nx17266z1;
wire r18_4_;
wire x_r22_add12_8i1_anx42958z1;
wire x_r22_6_;
wire x_r22_add12_8i1_anx41961z1;
wire x_r22_5_;
wire r18_1__afeeder_combout;
wire x_r11_1__afeeder_combout;
wire r16_add9_7i11_anx38970z1;
wire r16_1_;
wire x_r11_1_;
wire r18_1_;
wire r18_0__afeeder_combout;
wire r11_0_;
wire x_r11_0__afeeder_combout;
wire x_r11_0_;
wire r18_0_;
wire x_r22_add12_8i1_anx38970z1;
wire x_r22_2_;
wire x_r22_0_;
wire r17_sub13_10i1_anx63795z11;
wire r17_sub13_10i1_anx63795z10;
wire r17_sub13_10i1_anx63795z9;
wire r17_sub13_10i1_anx63795z8;
wire r17_sub13_10i1_anx63795z7;
wire r17_sub13_10i1_anx63795z6;
wire r17_sub13_10i1_anx63795z5;
wire r17_sub13_10i1_ad_7_;
wire r17_8_;
wire r17_sub13_10i1_ad_6_;
wire r17_7_;
wire nx36874z2;
wire r2_8__afeeder_combout;
wire r2_8_;
wire x_r6_add9_8i2_anx45949z4;
wire x_r6_add9_8i2_anx23445z2;
wire x_r6_add9_8i2_anx23445z1;
wire x_r6_9_;
wire r14_add10_8i3_anx46946z6;
wire r14_add10_8i3_anx46946z3;
wire r14_add10_8i3_anx46946z1;
wire r14_9_;
wire x_r12_add11_8i4_anx62798z5;
wire x_r12_add11_8i4_anx46946z1;
wire x_r12_9_;
wire x_r22_add12_8i1_anx63795z9;
wire x_r22_add12_8i1_anx63795z7;
wire x_r22_add12_8i1_anx46946z1;
wire x_r22_10_;
wire x_r22_add12_8i1_anx45949z1;
wire x_r22_9_;
wire r17_sub13_10i1_anx63795z4;
wire r17_sub13_10i1_anx63795z3;
wire r17_sub13_10i1_ad_9_;
wire r17_10_;
wire r15_8__afeeder_combout;
wire b_d1_add9_7i10_anx45949z1;
wire b_d1_8_;
wire r15_8_;
wire r18_8__afeeder_combout;
wire r18_8_;
wire r17_sub13_10i1_anx63795z2;
wire r17_sub13_10i1_ad_10_;
wire r17_11_;
wire nx36874z1;
wire r17_sub13_10i1_ad_8_;
wire r17_9_;
wire o_edge_dup0;
wire ix7380z18833_anx100z1_a_wirecell_combout;
wire stage1_wNw_0_;
wire first_cw_9n1ss1_0_;
wire first_cw_0_;
wire final_dir_0__afeeder_combout;
wire stage1_eSe_2_;
wire second_cw_9n2ss1_0_;
wire second_cw_0_;
wire final_dir_0_;
wire o_dir_dup0_0_;
wire first_cw_1_;
wire final_dir_1__afeeder_combout;
wire second_cw_1_;
wire final_dir_1_;
wire o_dir_dup0_1_;
wire stage1_wNw_2_;
wire first_cw_2__afeeder_combout;
wire stage1_nNe_2_;
wire first_cw_2_;
wire final_dir_2__afeeder_combout;
wire second_cw_2__afeeder_combout;
wire stage1_sSw_2_;
wire second_cw_2_;
wire final_dir_2_;
wire o_dir_dup0_2_;
wire modgen_counter_o_row_anx58250z6;
wire modgen_counter_o_row_anx58250z4;
wire modgen_counter_o_row_anx57253z1;
wire modgen_counter_o_row_anx58250z3;
wire modgen_counter_o_row_anx58250z2;
wire modgen_counter_o_row_anx58250z1;
wire modgen_counter_o_row_anx1041z1;
wire modgen_counter_o_row_anx51271z1;
wire modgen_counter_o_row_anx58250z15;
wire nx11673z3;
wire nx11673z1;
wire nx47893z1;
wire o_mode_dup0_1__afeeder_combout;
wire o_mode_dup0_1_;
wire nx16335z1_afeeder_combout;
wire nx16335z1;
wire nx17332z1_afeeder_combout;
wire nx17332z1;
wire nx18329z1_afeeder_combout;
wire nx18329z1;
wire nx19326z1;
wire nx20323z1;
wire modgen_counter_o_row_anx56256z1;
wire nx21320z1_afeeder_combout;
wire nx21320z1;
wire nx22317z1;
wire nx23314z1_afeeder_combout;
wire nx23314z1;
wire [7:0] Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a;
wire [7:0] i_pixel_acombout;
wire [7:0] Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a;
wire [7:0] Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a;

wire [7:0] Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [7:0] Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [7:0] Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus;

assign Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[0] = Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[1] = Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[2] = Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[3] = Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[4] = Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[5] = Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[6] = Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[7] = Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[0] = Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[1] = Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[2] = Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[3] = Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[4] = Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[5] = Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[6] = Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[7] = Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[0] = Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[1] = Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[2] = Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[3] = Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[4] = Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[5] = Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[6] = Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[7] = Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

// atom is at LCFF_X59_Y14_N25
cycloneii_lcell_ff reg_r17_12_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r17_sub13_10i1_ad_11_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_7_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r17_12_));

// atom is at LCFF_X58_Y13_N7
cycloneii_lcell_ff reg_r18_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r18_6__afeeder_combout),
	.sdata(x_r11_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix17266z52808_anx100z1),
	.ena(nx17266z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r18_6_));

// atom is at LCFF_X58_Y13_N25
cycloneii_lcell_ff reg_r18_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r18_5__afeeder_combout),
	.sdata(x_r11_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix17266z52808_anx100z1),
	.ena(nx17266z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r18_5_));

// atom is at LCFF_X58_Y14_N21
cycloneii_lcell_ff reg_x_r22_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r22_add12_8i1_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65254z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r22_7_));

// atom is at LCFF_X58_Y13_N29
cycloneii_lcell_ff reg_r18_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r18_3__afeeder_combout),
	.sdata(x_r11_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix17266z52808_anx100z1),
	.ena(nx17266z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r18_3_));

// atom is at LCFF_X58_Y13_N23
cycloneii_lcell_ff reg_r18_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r18_2__afeeder_combout),
	.sdata(x_r11_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix17266z52808_anx100z1),
	.ena(nx17266z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r18_2_));

// atom is at LCFF_X58_Y14_N15
cycloneii_lcell_ff reg_x_r22_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r22_add12_8i1_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65254z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r22_4_));

// atom is at LCFF_X58_Y14_N13
cycloneii_lcell_ff reg_x_r22_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r22_add12_8i1_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65254z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r22_3_));

// atom is at LCFF_X58_Y14_N9
cycloneii_lcell_ff reg_x_r22_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r22_add12_8i1_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65254z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r22_1_));

// atom is at LCFF_X58_Y14_N31
cycloneii_lcell_ff reg_x_r22_12_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r22_add12_8i1_anx63795z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65254z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r22_12_));

// atom is at LCFF_X58_Y13_N21
cycloneii_lcell_ff reg_r18_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r18_9__afeeder_combout),
	.sdata(x_r11_9_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix17266z52808_anx100z1),
	.ena(nx17266z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r18_9_));

// atom is at LCFF_X58_Y14_N29
cycloneii_lcell_ff reg_x_r22_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r22_add12_8i1_anx62798z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65254z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r22_11_));

// atom is at LCFF_X58_Y13_N9
cycloneii_lcell_ff reg_r18_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r18_7__afeeder_combout),
	.sdata(x_r11_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix17266z52808_anx100z1),
	.ena(nx17266z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r18_7_));

// atom is at LCCOMB_X59_Y14_N22
cycloneii_lcell_comb r17_sub13_10i1_aix63795z52925(
// Equation(s):
// r17_sub13_10i1_ad_10_ = (x_r22_11_ $ r18_8_ $ r17_sub13_10i1_anx63795z2) # GND
// r17_sub13_10i1_anx63795z1 = CARRY(x_r22_11_ & r18_8_ & !r17_sub13_10i1_anx63795z2 # !x_r22_11_ & (r18_8_ # !r17_sub13_10i1_anx63795z2))

	.dataa(x_r22_11_),
	.datab(r18_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(r17_sub13_10i1_anx63795z2),
	.combout(r17_sub13_10i1_ad_10_),
	.cout(r17_sub13_10i1_anx63795z1));
// synopsys translate_off
defparam r17_sub13_10i1_aix63795z52925.lut_mask = 16'h964D;
defparam r17_sub13_10i1_aix63795z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y14_N24
cycloneii_lcell_comb r17_sub13_10i1_aix63795z52923(
// Equation(s):
// r17_sub13_10i1_ad_11_ = x_r22_12_ $ r17_sub13_10i1_anx63795z1 $ !r18_9_

	.dataa(x_r22_12_),
	.datab(vcc),
	.datac(vcc),
	.datad(r18_9_),
	.cin(r17_sub13_10i1_anx63795z1),
	.combout(r17_sub13_10i1_ad_11_),
	.cout());
// synopsys translate_off
defparam r17_sub13_10i1_aix63795z52923.lut_mask = 16'h5AA5;
defparam r17_sub13_10i1_aix63795z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X58_Y15_N7
cycloneii_lcell_ff reg_x_r11_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r11_7__afeeder_combout),
	.sdata(r16_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix42030z52807_anx100z1),
	.ena(nx42030z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r11_7_));

// atom is at LCFF_X55_Y13_N3
cycloneii_lcell_ff reg_r15_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r15_6__afeeder_combout),
	.sdata(b_d1_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix23013z52805_anx100z1),
	.ena(validBit_3_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_6_));

// atom is at LCFF_X58_Y15_N19
cycloneii_lcell_ff reg_x_r11_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r11_5__afeeder_combout),
	.sdata(r16_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix42030z52807_anx100z1),
	.ena(nx42030z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r11_5_));

// atom is at LCFF_X58_Y15_N31
cycloneii_lcell_ff reg_x_r11_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r11_3__afeeder_combout),
	.sdata(r16_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix42030z52807_anx100z1),
	.ena(nx42030z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r11_3_));

// atom is at LCFF_X57_Y13_N7
cycloneii_lcell_ff reg_r15_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r15_2__afeeder_combout),
	.sdata(b_d1_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix23013z52805_anx100z1),
	.ena(validBit_3_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_2_));

// atom is at LCFF_X50_Y16_N21
cycloneii_lcell_ff modgen_counter_o_row_areg_q_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx56256z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z5));

// atom is at LCCOMB_X53_Y14_N12
cycloneii_lcell_comb ix11673z52924(
// Equation(s):
// nx11673z2 = modgen_counter_col_anx1041z1 # modgen_counter_col_anx58250z13 # modgen_counter_col_anx58250z3 # modgen_counter_col_anx58250z15

	.dataa(modgen_counter_col_anx1041z1),
	.datab(modgen_counter_col_anx58250z13),
	.datac(modgen_counter_col_anx58250z3),
	.datad(modgen_counter_col_anx58250z15),
	.cin(gnd),
	.combout(nx11673z2),
	.cout());
// synopsys translate_off
defparam ix11673z52924.lut_mask = 16'hFFFE;
defparam ix11673z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y14_N15
cycloneii_lcell_ff reg_x_r12_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r12_add11_8i4_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx58464z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r12_7_));

// atom is at LCFF_X57_Y14_N9
cycloneii_lcell_ff reg_x_r12_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r12_add11_8i4_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx58464z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r12_4_));

// atom is at LCFF_X57_Y14_N3
cycloneii_lcell_ff reg_x_r12_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r12_add11_8i4_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx58464z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r12_1_));

// atom is at LCCOMB_X58_Y14_N8
cycloneii_lcell_comb x_r22_add12_8i1_aix63795z52935(
// Equation(s):
// x_r22_add12_8i1_anx37973z1 = x_r12_1_ & (x_r12_0_ $ VCC) # !x_r12_1_ & x_r12_0_ & VCC
// x_r22_add12_8i1_anx63795z23 = CARRY(x_r12_1_ & x_r12_0_)

	.dataa(x_r12_1_),
	.datab(x_r12_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(x_r22_add12_8i1_anx37973z1),
	.cout(x_r22_add12_8i1_anx63795z23));
// synopsys translate_off
defparam x_r22_add12_8i1_aix63795z52935.lut_mask = 16'h6688;
defparam x_r22_add12_8i1_aix63795z52935.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y14_N12
cycloneii_lcell_comb x_r22_add12_8i1_aix63795z52933(
// Equation(s):
// x_r22_add12_8i1_anx39967z1 = (x_r12_3_ $ x_r12_2_ $ !x_r22_add12_8i1_anx63795z21) # GND
// x_r22_add12_8i1_anx63795z19 = CARRY(x_r12_3_ & (x_r12_2_ # !x_r22_add12_8i1_anx63795z21) # !x_r12_3_ & x_r12_2_ & !x_r22_add12_8i1_anx63795z21)

	.dataa(x_r12_3_),
	.datab(x_r12_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r22_add12_8i1_anx63795z21),
	.combout(x_r22_add12_8i1_anx39967z1),
	.cout(x_r22_add12_8i1_anx63795z19));
// synopsys translate_off
defparam x_r22_add12_8i1_aix63795z52933.lut_mask = 16'h698E;
defparam x_r22_add12_8i1_aix63795z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y14_N14
cycloneii_lcell_comb x_r22_add12_8i1_aix63795z52932(
// Equation(s):
// x_r22_add12_8i1_anx40964z1 = x_r12_4_ & (x_r12_3_ & x_r22_add12_8i1_anx63795z19 & VCC # !x_r12_3_ & !x_r22_add12_8i1_anx63795z19) # !x_r12_4_ & (x_r12_3_ & !x_r22_add12_8i1_anx63795z19 # !x_r12_3_ & (x_r22_add12_8i1_anx63795z19 # GND))
// x_r22_add12_8i1_anx63795z17 = CARRY(x_r12_4_ & !x_r12_3_ & !x_r22_add12_8i1_anx63795z19 # !x_r12_4_ & (!x_r22_add12_8i1_anx63795z19 # !x_r12_3_))

	.dataa(x_r12_4_),
	.datab(x_r12_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r22_add12_8i1_anx63795z19),
	.combout(x_r22_add12_8i1_anx40964z1),
	.cout(x_r22_add12_8i1_anx63795z17));
// synopsys translate_off
defparam x_r22_add12_8i1_aix63795z52932.lut_mask = 16'h9617;
defparam x_r22_add12_8i1_aix63795z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y14_N20
cycloneii_lcell_comb x_r22_add12_8i1_aix63795z52929(
// Equation(s):
// x_r22_add12_8i1_anx43955z1 = (x_r12_7_ $ x_r12_6_ $ !x_r22_add12_8i1_anx63795z13) # GND
// x_r22_add12_8i1_anx63795z11 = CARRY(x_r12_7_ & (x_r12_6_ # !x_r22_add12_8i1_anx63795z13) # !x_r12_7_ & x_r12_6_ & !x_r22_add12_8i1_anx63795z13)

	.dataa(x_r12_7_),
	.datab(x_r12_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r22_add12_8i1_anx63795z13),
	.combout(x_r22_add12_8i1_anx43955z1),
	.cout(x_r22_add12_8i1_anx63795z11));
// synopsys translate_off
defparam x_r22_add12_8i1_aix63795z52929.lut_mask = 16'h698E;
defparam x_r22_add12_8i1_aix63795z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X57_Y14_N23
cycloneii_lcell_ff reg_x_r12_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r12_add11_8i4_anx23445z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx58464z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r12_11_));

// atom is at LCFF_X57_Y14_N21
cycloneii_lcell_ff reg_x_r12_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r12_add11_8i4_anx62798z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx58464z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r12_10_));

// atom is at LCCOMB_X58_Y14_N26
cycloneii_lcell_comb x_r22_add12_8i1_aix63795z52926(
// Equation(s):
// x_r22_add12_8i1_anx46946z1 = x_r12_10_ & (x_r12_9_ & x_r22_add12_8i1_anx63795z7 & VCC # !x_r12_9_ & !x_r22_add12_8i1_anx63795z7) # !x_r12_10_ & (x_r12_9_ & !x_r22_add12_8i1_anx63795z7 # !x_r12_9_ & (x_r22_add12_8i1_anx63795z7 # GND))
// x_r22_add12_8i1_anx63795z5 = CARRY(x_r12_10_ & !x_r12_9_ & !x_r22_add12_8i1_anx63795z7 # !x_r12_10_ & (!x_r22_add12_8i1_anx63795z7 # !x_r12_9_))

	.dataa(x_r12_10_),
	.datab(x_r12_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r22_add12_8i1_anx63795z7),
	.combout(x_r22_add12_8i1_anx46946z1),
	.cout(x_r22_add12_8i1_anx63795z5));
// synopsys translate_off
defparam x_r22_add12_8i1_aix63795z52926.lut_mask = 16'h9617;
defparam x_r22_add12_8i1_aix63795z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y14_N28
cycloneii_lcell_comb x_r22_add12_8i1_aix63795z52925(
// Equation(s):
// x_r22_add12_8i1_anx62798z1 = (x_r12_10_ $ x_r12_11_ $ !x_r22_add12_8i1_anx63795z5) # GND
// x_r22_add12_8i1_anx63795z3 = CARRY(x_r12_10_ & (x_r12_11_ # !x_r22_add12_8i1_anx63795z5) # !x_r12_10_ & x_r12_11_ & !x_r22_add12_8i1_anx63795z5)

	.dataa(x_r12_10_),
	.datab(x_r12_11_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r22_add12_8i1_anx63795z5),
	.combout(x_r22_add12_8i1_anx62798z1),
	.cout(x_r22_add12_8i1_anx63795z3));
// synopsys translate_off
defparam x_r22_add12_8i1_aix63795z52925.lut_mask = 16'h698E;
defparam x_r22_add12_8i1_aix63795z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y14_N30
cycloneii_lcell_comb x_r22_add12_8i1_aix63795z52923(
// Equation(s):
// x_r22_add12_8i1_anx63795z1 = x_r22_add12_8i1_anx63795z3 $ x_r12_11_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(x_r12_11_),
	.cin(x_r22_add12_8i1_anx63795z3),
	.combout(x_r22_add12_8i1_anx63795z1),
	.cout());
// synopsys translate_off
defparam x_r22_add12_8i1_aix63795z52923.lut_mask = 16'h0FF0;
defparam x_r22_add12_8i1_aix63795z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y13_N13
cycloneii_lcell_ff reg_x_r3_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(x_r3_add9_7i9_anx43955z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx56415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r3_6_));

// atom is at LCFF_X54_Y13_N13
cycloneii_lcell_ff reg_b_d1_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_d1_add9_7i10_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_d1_2_));

// atom is at LCFF_X55_Y15_N23
cycloneii_lcell_ff reg_r16_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r16_add9_7i11_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx34104z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r16_7_));

// atom is at LCFF_X55_Y15_N19
cycloneii_lcell_ff reg_r16_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r16_add9_7i11_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx34104z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r16_5_));

// atom is at LCFF_X57_Y15_N21
cycloneii_lcell_ff reg_r11_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(x_r3_add9_7i9_anx41961z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx54873z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_4_));

// atom is at LCFF_X55_Y15_N15
cycloneii_lcell_ff reg_r16_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r16_add9_7i11_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx34104z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r16_3_));

// atom is at LCFF_X56_Y14_N21
cycloneii_lcell_ff reg_r14_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_add10_8i3_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx16422z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_8_));

// atom is at LCFF_X54_Y14_N11
cycloneii_lcell_ff reg_r13_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r2_add8_6i49_anx43955z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_6_));

// atom is at LCFF_X54_Y14_N25
cycloneii_lcell_ff reg_r13_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r13_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_4_));

// atom is at LCFF_X56_Y14_N11
cycloneii_lcell_ff reg_r14_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_add10_8i3_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx16422z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_3_));

// atom is at LCFF_X54_Y14_N3
cycloneii_lcell_ff reg_r13_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r2_add8_6i49_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_0_));

// atom is at LCCOMB_X57_Y14_N2
cycloneii_lcell_comb x_r12_add11_8i4_aix62798z52933(
// Equation(s):
// x_r12_add11_8i4_anx38970z1 = r13_1_ & (r14_1_ & x_r12_add11_8i4_anx62798z29 & VCC # !r14_1_ & !x_r12_add11_8i4_anx62798z29) # !r13_1_ & (r14_1_ & !x_r12_add11_8i4_anx62798z29 # !r14_1_ & (x_r12_add11_8i4_anx62798z29 # GND))
// x_r12_add11_8i4_anx62798z26 = CARRY(r13_1_ & !r14_1_ & !x_r12_add11_8i4_anx62798z29 # !r13_1_ & (!x_r12_add11_8i4_anx62798z29 # !r14_1_))

	.dataa(r13_1_),
	.datab(r14_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r12_add11_8i4_anx62798z29),
	.combout(x_r12_add11_8i4_anx38970z1),
	.cout(x_r12_add11_8i4_anx62798z26));
// synopsys translate_off
defparam x_r12_add11_8i4_aix62798z52933.lut_mask = 16'h9617;
defparam x_r12_add11_8i4_aix62798z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y14_N8
cycloneii_lcell_comb x_r12_add11_8i4_aix62798z52930(
// Equation(s):
// x_r12_add11_8i4_anx41961z1 = (r13_4_ $ r14_4_ $ !x_r12_add11_8i4_anx62798z20) # GND
// x_r12_add11_8i4_anx62798z17 = CARRY(r13_4_ & (r14_4_ # !x_r12_add11_8i4_anx62798z20) # !r13_4_ & r14_4_ & !x_r12_add11_8i4_anx62798z20)

	.dataa(r13_4_),
	.datab(r14_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r12_add11_8i4_anx62798z20),
	.combout(x_r12_add11_8i4_anx41961z1),
	.cout(x_r12_add11_8i4_anx62798z17));
// synopsys translate_off
defparam x_r12_add11_8i4_aix62798z52930.lut_mask = 16'h698E;
defparam x_r12_add11_8i4_aix62798z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y14_N14
cycloneii_lcell_comb x_r12_add11_8i4_aix62798z52927(
// Equation(s):
// x_r12_add11_8i4_anx44952z1 = r13_7_ & (r14_7_ & x_r12_add11_8i4_anx62798z11 & VCC # !r14_7_ & !x_r12_add11_8i4_anx62798z11) # !r13_7_ & (r14_7_ & !x_r12_add11_8i4_anx62798z11 # !r14_7_ & (x_r12_add11_8i4_anx62798z11 # GND))
// x_r12_add11_8i4_anx62798z8 = CARRY(r13_7_ & !r14_7_ & !x_r12_add11_8i4_anx62798z11 # !r13_7_ & (!x_r12_add11_8i4_anx62798z11 # !r14_7_))

	.dataa(r13_7_),
	.datab(r14_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r12_add11_8i4_anx62798z11),
	.combout(x_r12_add11_8i4_anx44952z1),
	.cout(x_r12_add11_8i4_anx62798z8));
// synopsys translate_off
defparam x_r12_add11_8i4_aix62798z52927.lut_mask = 16'h9617;
defparam x_r12_add11_8i4_aix62798z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y14_N18
cycloneii_lcell_comb x_r12_add11_8i4_aix62798z52925(
// Equation(s):
// x_r12_add11_8i4_anx46946z1 = r14_9_ & !x_r12_add11_8i4_anx62798z5 # !r14_9_ & (x_r12_add11_8i4_anx62798z5 # GND)
// x_r12_add11_8i4_anx62798z3 = CARRY(!x_r12_add11_8i4_anx62798z5 # !r14_9_)

	.dataa(vcc),
	.datab(r14_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r12_add11_8i4_anx62798z5),
	.combout(x_r12_add11_8i4_anx46946z1),
	.cout(x_r12_add11_8i4_anx62798z3));
// synopsys translate_off
defparam x_r12_add11_8i4_aix62798z52925.lut_mask = 16'h3C3F;
defparam x_r12_add11_8i4_aix62798z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y14_N25
cycloneii_lcell_ff reg_r14_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_add10_8i3_anx23445z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx16422z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_10_));

// atom is at LCCOMB_X57_Y14_N20
cycloneii_lcell_comb x_r12_add11_8i4_aix62798z52923(
// Equation(s):
// x_r12_add11_8i4_anx62798z1 = r14_10_ & (x_r12_add11_8i4_anx62798z3 $ GND) # !r14_10_ & !x_r12_add11_8i4_anx62798z3 & VCC
// x_r12_add11_8i4_anx23445z2 = CARRY(r14_10_ & !x_r12_add11_8i4_anx62798z3)

	.dataa(r14_10_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r12_add11_8i4_anx62798z3),
	.combout(x_r12_add11_8i4_anx62798z1),
	.cout(x_r12_add11_8i4_anx23445z2));
// synopsys translate_off
defparam x_r12_add11_8i4_aix62798z52923.lut_mask = 16'hA50A;
defparam x_r12_add11_8i4_aix62798z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y14_N22
cycloneii_lcell_comb x_r12_add11_8i4_aix23445z52923(
// Equation(s):
// x_r12_add11_8i4_anx23445z1 = x_r12_add11_8i4_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r12_add11_8i4_anx23445z2),
	.combout(x_r12_add11_8i4_anx23445z1),
	.cout());
// synopsys translate_off
defparam x_r12_add11_8i4_aix23445z52923.lut_mask = 16'hF0F0;
defparam x_r12_add11_8i4_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y16_N29
cycloneii_lcell_ff reg_g_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_6_));

// atom is at LCFF_X56_Y16_N7
cycloneii_lcell_ff reg_r5_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_6__afeeder_combout),
	.sdata(b_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix7380z18833_anx100z1),
	.ena(nx7380z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_6_));

// atom is at LCFF_X57_Y16_N11
cycloneii_lcell_ff reg_x_r5_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r5_6__afeeder_combout),
	.sdata(f_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix27953z18832_anx100z1),
	.ena(nx27953z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r5_6_));

// atom is at LCCOMB_X56_Y16_N16
cycloneii_lcell_comb ix8431z52924(
// Equation(s):
// x_r3_7n3s1f1_6_ = validBit_2_ & r5_6_ # !validBit_2_ & (x_r5_6_)

	.dataa(r5_6_),
	.datab(vcc),
	.datac(x_r5_6_),
	.datad(validBit_2_),
	.cin(gnd),
	.combout(x_r3_7n3s1f1_6_),
	.cout());
// synopsys translate_off
defparam ix8431z52924.lut_mask = 16'hAAF0;
defparam ix8431z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y16_N21
cycloneii_lcell_ff reg_x_r5_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r5_5__afeeder_combout),
	.sdata(f_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix27953z18832_anx100z1),
	.ena(nx27953z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r5_5_));

// atom is at LCFF_X56_Y16_N21
cycloneii_lcell_ff reg_r5_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_4__afeeder_combout),
	.sdata(b_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix7380z18833_anx100z1),
	.ena(nx7380z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_4_));

// atom is at LCFF_X57_Y16_N23
cycloneii_lcell_ff reg_x_r5_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r5_4__afeeder_combout),
	.sdata(f_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix27953z18832_anx100z1),
	.ena(nx27953z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r5_4_));

// atom is at LCCOMB_X56_Y15_N20
cycloneii_lcell_comb ix8431z52926(
// Equation(s):
// x_r3_7n3s1f1_4_ = validBit_2_ & (r5_4_) # !validBit_2_ & x_r5_4_

	.dataa(x_r5_4_),
	.datab(r5_4_),
	.datac(vcc),
	.datad(validBit_2_),
	.cin(gnd),
	.combout(x_r3_7n3s1f1_4_),
	.cout());
// synopsys translate_off
defparam ix8431z52926.lut_mask = 16'hCCAA;
defparam ix8431z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N19
cycloneii_lcell_ff reg_r5_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_1__afeeder_combout),
	.sdata(b_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix7380z18833_anx100z1),
	.ena(nx7380z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_1_));

// atom is at LCFF_X57_Y16_N5
cycloneii_lcell_ff reg_x_r5_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r5_1__afeeder_combout),
	.sdata(f_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix27953z18832_anx100z1),
	.ena(nx27953z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r5_1_));

// atom is at LCCOMB_X56_Y15_N28
cycloneii_lcell_comb ix8431z52929(
// Equation(s):
// x_r3_7n3s1f1_1_ = validBit_2_ & r5_1_ # !validBit_2_ & (x_r5_1_)

	.dataa(vcc),
	.datab(r5_1_),
	.datac(x_r5_1_),
	.datad(validBit_2_),
	.cin(gnd),
	.combout(x_r3_7n3s1f1_1_),
	.cout());
// synopsys translate_off
defparam ix8431z52929.lut_mask = 16'hCCF0;
defparam ix8431z52929.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N3
cycloneii_lcell_ff reg_r9_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r9_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_7_));

// atom is at LCFF_X53_Y13_N9
cycloneii_lcell_ff reg_r10_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r10_5__afeeder_combout),
	.sdata(d_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix48448z18833_anx100z1),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r10_5_));

// atom is at LCFF_X54_Y13_N7
cycloneii_lcell_ff reg_r10_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r10_4__afeeder_combout),
	.sdata(d_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix48448z18833_anx100z1),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r10_4_));

// atom is at LCFF_X55_Y14_N1
cycloneii_lcell_ff reg_r10_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r10_2__afeeder_combout),
	.sdata(d_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix48448z18833_anx100z1),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r10_2_));

// atom is at LCFF_X55_Y14_N29
cycloneii_lcell_ff reg_r9_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r9_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_0_));

// atom is at LCCOMB_X54_Y13_N12
cycloneii_lcell_comb b_d1_add9_7i10_aix45949z52930(
// Equation(s):
// b_d1_add9_7i10_anx39967z1 = (r10_2_ $ r9_2_ $ !b_d1_add9_7i10_anx45949z21) # GND
// b_d1_add9_7i10_anx45949z18 = CARRY(r10_2_ & (r9_2_ # !b_d1_add9_7i10_anx45949z21) # !r10_2_ & r9_2_ & !b_d1_add9_7i10_anx45949z21)

	.dataa(r10_2_),
	.datab(r9_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(b_d1_add9_7i10_anx45949z21),
	.combout(b_d1_add9_7i10_anx39967z1),
	.cout(b_d1_add9_7i10_anx45949z18));
// synopsys translate_off
defparam b_d1_add9_7i10_aix45949z52930.lut_mask = 16'h698E;
defparam b_d1_add9_7i10_aix45949z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N17
cycloneii_lcell_ff reg_r12_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_7__afeeder_combout),
	.sdata(h_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix250z18831_anx100z1),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_7_));

// atom is at LCFF_X56_Y17_N27
cycloneii_lcell_ff reg_r12_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_5__afeeder_combout),
	.sdata(h_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix250z18831_anx100z1),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_5_));

// atom is at LCFF_X55_Y15_N7
cycloneii_lcell_ff reg_r12_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_2__afeeder_combout),
	.sdata(h_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix250z18831_anx100z1),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_2_));

// atom is at LCFF_X55_Y15_N5
cycloneii_lcell_ff reg_r12_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_1__afeeder_combout),
	.sdata(h_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix250z18831_anx100z1),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_1_));

// atom is at LCCOMB_X55_Y15_N14
cycloneii_lcell_comb r16_add9_7i11_aix45949z52929(
// Equation(s):
// r16_add9_7i11_anx40964z1 = r13_3_ & (r12_3_ & r16_add9_7i11_anx45949z18 & VCC # !r12_3_ & !r16_add9_7i11_anx45949z18) # !r13_3_ & (r12_3_ & !r16_add9_7i11_anx45949z18 # !r12_3_ & (r16_add9_7i11_anx45949z18 # GND))
// r16_add9_7i11_anx45949z15 = CARRY(r13_3_ & !r12_3_ & !r16_add9_7i11_anx45949z18 # !r13_3_ & (!r16_add9_7i11_anx45949z18 # !r12_3_))

	.dataa(r13_3_),
	.datab(r12_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(r16_add9_7i11_anx45949z18),
	.combout(r16_add9_7i11_anx40964z1),
	.cout(r16_add9_7i11_anx45949z15));
// synopsys translate_off
defparam r16_add9_7i11_aix45949z52929.lut_mask = 16'h9617;
defparam r16_add9_7i11_aix45949z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y15_N18
cycloneii_lcell_comb r16_add9_7i11_aix45949z52927(
// Equation(s):
// r16_add9_7i11_anx42958z1 = r12_5_ & (r13_5_ & r16_add9_7i11_anx45949z12 & VCC # !r13_5_ & !r16_add9_7i11_anx45949z12) # !r12_5_ & (r13_5_ & !r16_add9_7i11_anx45949z12 # !r13_5_ & (r16_add9_7i11_anx45949z12 # GND))
// r16_add9_7i11_anx45949z9 = CARRY(r12_5_ & !r13_5_ & !r16_add9_7i11_anx45949z12 # !r12_5_ & (!r16_add9_7i11_anx45949z12 # !r13_5_))

	.dataa(r12_5_),
	.datab(r13_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(r16_add9_7i11_anx45949z12),
	.combout(r16_add9_7i11_anx42958z1),
	.cout(r16_add9_7i11_anx45949z9));
// synopsys translate_off
defparam r16_add9_7i11_aix45949z52927.lut_mask = 16'h9617;
defparam r16_add9_7i11_aix45949z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y15_N22
cycloneii_lcell_comb r16_add9_7i11_aix45949z52925(
// Equation(s):
// r16_add9_7i11_anx44952z1 = r12_7_ & (r13_7_ & r16_add9_7i11_anx45949z6 & VCC # !r13_7_ & !r16_add9_7i11_anx45949z6) # !r12_7_ & (r13_7_ & !r16_add9_7i11_anx45949z6 # !r13_7_ & (r16_add9_7i11_anx45949z6 # GND))
// r16_add9_7i11_anx45949z3 = CARRY(r12_7_ & !r13_7_ & !r16_add9_7i11_anx45949z6 # !r12_7_ & (!r16_add9_7i11_anx45949z6 # !r13_7_))

	.dataa(r12_7_),
	.datab(r13_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(r16_add9_7i11_anx45949z6),
	.combout(r16_add9_7i11_anx44952z1),
	.cout(r16_add9_7i11_anx45949z3));
// synopsys translate_off
defparam r16_add9_7i11_aix45949z52925.lut_mask = 16'h9617;
defparam r16_add9_7i11_aix45949z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y15_N29
cycloneii_lcell_ff reg_d_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx34631z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!nx28524z1),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_5_));

// atom is at LCFF_X53_Y15_N27
cycloneii_lcell_ff reg_d_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx31640z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!nx28524z1),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_2_));

// atom is at LCFF_X53_Y17_N27
cycloneii_lcell_ff reg_h_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_5_));

// atom is at LCFF_X55_Y17_N7
cycloneii_lcell_ff reg_h_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_2_));

// atom is at LCFF_X55_Y14_N21
cycloneii_lcell_ff reg_x_r6_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r6_add9_8i2_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_2_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r6_8_));

// atom is at LCFF_X55_Y14_N17
cycloneii_lcell_ff reg_x_r6_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r6_add9_8i2_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_2_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r6_6_));

// atom is at LCFF_X55_Y14_N15
cycloneii_lcell_ff reg_x_r6_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r6_add9_8i2_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_2_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r6_5_));

// atom is at LCFF_X55_Y14_N13
cycloneii_lcell_ff reg_x_r6_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r6_add9_8i2_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_2_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r6_4_));

// atom is at LCFF_X55_Y14_N11
cycloneii_lcell_ff reg_x_r6_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r6_add9_8i2_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_2_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r6_3_));

// atom is at LCFF_X55_Y14_N9
cycloneii_lcell_ff reg_x_r6_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r6_add9_8i2_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_2_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r6_2_));

// atom is at LCFF_X55_Y14_N7
cycloneii_lcell_ff reg_x_r6_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r6_add9_8i2_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_2_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r6_1_));

// atom is at LCCOMB_X56_Y14_N10
cycloneii_lcell_comb r14_add10_8i3_aix46946z52930(
// Equation(s):
// r14_add10_8i3_anx40964z1 = x_r6_3_ & (r2_3_ & r14_add10_8i3_anx46946z21 & VCC # !r2_3_ & !r14_add10_8i3_anx46946z21) # !x_r6_3_ & (r2_3_ & !r14_add10_8i3_anx46946z21 # !r2_3_ & (r14_add10_8i3_anx46946z21 # GND))
// r14_add10_8i3_anx46946z18 = CARRY(x_r6_3_ & !r2_3_ & !r14_add10_8i3_anx46946z21 # !x_r6_3_ & (!r14_add10_8i3_anx46946z21 # !r2_3_))

	.dataa(x_r6_3_),
	.datab(r2_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(r14_add10_8i3_anx46946z21),
	.combout(r14_add10_8i3_anx40964z1),
	.cout(r14_add10_8i3_anx46946z18));
// synopsys translate_off
defparam r14_add10_8i3_aix46946z52930.lut_mask = 16'h9617;
defparam r14_add10_8i3_aix46946z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y14_N20
cycloneii_lcell_comb r14_add10_8i3_aix46946z52925(
// Equation(s):
// r14_add10_8i3_anx45949z1 = (x_r6_8_ $ r2_8_ $ !r14_add10_8i3_anx46946z6) # GND
// r14_add10_8i3_anx46946z3 = CARRY(x_r6_8_ & (r2_8_ # !r14_add10_8i3_anx46946z6) # !x_r6_8_ & r2_8_ & !r14_add10_8i3_anx46946z6)

	.dataa(x_r6_8_),
	.datab(r2_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(r14_add10_8i3_anx46946z6),
	.combout(r14_add10_8i3_anx45949z1),
	.cout(r14_add10_8i3_anx46946z3));
// synopsys translate_off
defparam r14_add10_8i3_aix46946z52925.lut_mask = 16'h698E;
defparam r14_add10_8i3_aix46946z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y16_N6
cycloneii_lcell_comb ix51677z52943(
// Equation(s):
// nx51677z12 = nx51677z11 & (nx51677z13) # !nx51677z11 & (nx51677z13 & (c_7_) # !nx51677z13 & e_7_)

	.dataa(e_7_),
	.datab(c_7_),
	.datac(nx51677z11),
	.datad(nx51677z13),
	.cin(gnd),
	.combout(nx51677z12),
	.cout());
// synopsys translate_off
defparam ix51677z52943.lut_mask = 16'hFC0A;
defparam ix51677z52943.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y16_N0
cycloneii_lcell_comb ix51677z52941(
// Equation(s):
// r2_6n3s1f2_7_ = nx51677z11 & (nx51677z12 & g_7_ # !nx51677z12 & (a_7_)) # !nx51677z11 & (nx51677z12)

	.dataa(nx51677z11),
	.datab(g_7_),
	.datac(a_7_),
	.datad(nx51677z12),
	.cin(gnd),
	.combout(r2_6n3s1f2_7_),
	.cout());
// synopsys translate_off
defparam ix51677z52941.lut_mask = 16'hDDA0;
defparam ix51677z52941.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y16_N0
cycloneii_lcell_comb ix51677z52946(
// Equation(s):
// nx51677z14 = nx51677z11 & (nx51677z13) # !nx51677z11 & (nx51677z13 & c_6_ # !nx51677z13 & (e_6_))

	.dataa(c_6_),
	.datab(nx51677z11),
	.datac(e_6_),
	.datad(nx51677z13),
	.cin(gnd),
	.combout(nx51677z14),
	.cout());
// synopsys translate_off
defparam ix51677z52946.lut_mask = 16'hEE30;
defparam ix51677z52946.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y16_N28
cycloneii_lcell_comb ix51677z52945(
// Equation(s):
// r2_6n3s1f2_6_ = nx51677z11 & (nx51677z14 & (g_6_) # !nx51677z14 & a_6_) # !nx51677z11 & (nx51677z14)

	.dataa(a_6_),
	.datab(nx51677z11),
	.datac(g_6_),
	.datad(nx51677z14),
	.cin(gnd),
	.combout(r2_6n3s1f2_6_),
	.cout());
// synopsys translate_off
defparam ix51677z52945.lut_mask = 16'hF388;
defparam ix51677z52945.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N26
cycloneii_lcell_comb ix51677z52930(
// Equation(s):
// nx51677z5 = nx51677z3 & (h_5_ # nx51677z1) # !nx51677z3 & f_5_ & (!nx51677z1)

	.dataa(f_5_),
	.datab(nx51677z3),
	.datac(h_5_),
	.datad(nx51677z1),
	.cin(gnd),
	.combout(nx51677z5),
	.cout());
// synopsys translate_off
defparam ix51677z52930.lut_mask = 16'hCCE2;
defparam ix51677z52930.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N22
cycloneii_lcell_comb ix51677z52929(
// Equation(s):
// r2_6n3s1f1_5_ = nx51677z5 & (d_5_ # !nx51677z1) # !nx51677z5 & (b_5_ & nx51677z1)

	.dataa(d_5_),
	.datab(nx51677z5),
	.datac(b_5_),
	.datad(nx51677z1),
	.cin(gnd),
	.combout(r2_6n3s1f1_5_),
	.cout());
// synopsys translate_off
defparam ix51677z52929.lut_mask = 16'hB8CC;
defparam ix51677z52929.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y16_N2
cycloneii_lcell_comb ix51677z52932(
// Equation(s):
// nx51677z6 = nx51677z3 & (h_4_ # nx51677z1) # !nx51677z3 & (f_4_ & !nx51677z1)

	.dataa(h_4_),
	.datab(nx51677z3),
	.datac(f_4_),
	.datad(nx51677z1),
	.cin(gnd),
	.combout(nx51677z6),
	.cout());
// synopsys translate_off
defparam ix51677z52932.lut_mask = 16'hCCB8;
defparam ix51677z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y16_N4
cycloneii_lcell_comb ix51677z52931(
// Equation(s):
// r2_6n3s1f1_4_ = nx51677z1 & (nx51677z6 & d_4_ # !nx51677z6 & (b_4_)) # !nx51677z1 & (nx51677z6)

	.dataa(d_4_),
	.datab(nx51677z1),
	.datac(b_4_),
	.datad(nx51677z6),
	.cin(gnd),
	.combout(r2_6n3s1f1_4_),
	.cout());
// synopsys translate_off
defparam ix51677z52931.lut_mask = 16'hBBC0;
defparam ix51677z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N30
cycloneii_lcell_comb ix51677z52934(
// Equation(s):
// nx51677z7 = nx51677z3 & (nx51677z1 # h_3_) # !nx51677z3 & !nx51677z1 & (f_3_)

	.dataa(nx51677z3),
	.datab(nx51677z1),
	.datac(h_3_),
	.datad(f_3_),
	.cin(gnd),
	.combout(nx51677z7),
	.cout());
// synopsys translate_off
defparam ix51677z52934.lut_mask = 16'hB9A8;
defparam ix51677z52934.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N26
cycloneii_lcell_comb ix51677z52933(
// Equation(s):
// r2_6n3s1f1_3_ = nx51677z1 & (nx51677z7 & d_3_ # !nx51677z7 & (b_3_)) # !nx51677z1 & (nx51677z7)

	.dataa(d_3_),
	.datab(nx51677z1),
	.datac(b_3_),
	.datad(nx51677z7),
	.cin(gnd),
	.combout(r2_6n3s1f1_3_),
	.cout());
// synopsys translate_off
defparam ix51677z52933.lut_mask = 16'hBBC0;
defparam ix51677z52933.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N6
cycloneii_lcell_comb ix51677z52936(
// Equation(s):
// nx51677z8 = nx51677z1 & (nx51677z3) # !nx51677z1 & (nx51677z3 & (h_2_) # !nx51677z3 & f_2_)

	.dataa(f_2_),
	.datab(nx51677z1),
	.datac(h_2_),
	.datad(nx51677z3),
	.cin(gnd),
	.combout(nx51677z8),
	.cout());
// synopsys translate_off
defparam ix51677z52936.lut_mask = 16'hFC22;
defparam ix51677z52936.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N2
cycloneii_lcell_comb ix51677z52935(
// Equation(s):
// r2_6n3s1f1_2_ = nx51677z1 & (nx51677z8 & d_2_ # !nx51677z8 & (b_2_)) # !nx51677z1 & (nx51677z8)

	.dataa(d_2_),
	.datab(nx51677z1),
	.datac(b_2_),
	.datad(nx51677z8),
	.cin(gnd),
	.combout(r2_6n3s1f1_2_),
	.cout());
// synopsys translate_off
defparam ix51677z52935.lut_mask = 16'hBBC0;
defparam ix51677z52935.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y16_N26
cycloneii_lcell_comb ix51677z52956(
// Equation(s):
// nx51677z19 = nx51677z11 & (nx51677z13) # !nx51677z11 & (nx51677z13 & c_1_ # !nx51677z13 & (e_1_))

	.dataa(c_1_),
	.datab(nx51677z11),
	.datac(e_1_),
	.datad(nx51677z13),
	.cin(gnd),
	.combout(nx51677z19),
	.cout());
// synopsys translate_off
defparam ix51677z52956.lut_mask = 16'hEE30;
defparam ix51677z52956.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y16_N22
cycloneii_lcell_comb ix51677z52955(
// Equation(s):
// r2_6n3s1f2_1_ = nx51677z11 & (nx51677z19 & g_1_ # !nx51677z19 & (a_1_)) # !nx51677z11 & (nx51677z19)

	.dataa(g_1_),
	.datab(nx51677z11),
	.datac(a_1_),
	.datad(nx51677z19),
	.cin(gnd),
	.combout(r2_6n3s1f2_1_),
	.cout());
// synopsys translate_off
defparam ix51677z52955.lut_mask = 16'hBBC0;
defparam ix51677z52955.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N2
cycloneii_lcell_comb ix51677z52940(
// Equation(s):
// nx51677z10 = nx51677z3 & (h_0_ # nx51677z1) # !nx51677z3 & f_0_ & (!nx51677z1)

	.dataa(f_0_),
	.datab(nx51677z3),
	.datac(h_0_),
	.datad(nx51677z1),
	.cin(gnd),
	.combout(nx51677z10),
	.cout());
// synopsys translate_off
defparam ix51677z52940.lut_mask = 16'hCCE2;
defparam ix51677z52940.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N28
cycloneii_lcell_comb ix51677z52939(
// Equation(s):
// r2_6n3s1f1_0_ = nx51677z1 & (nx51677z10 & d_0_ # !nx51677z10 & (b_0_)) # !nx51677z1 & (nx51677z10)

	.dataa(nx51677z1),
	.datab(d_0_),
	.datac(b_0_),
	.datad(nx51677z10),
	.cin(gnd),
	.combout(r2_6n3s1f1_0_),
	.cout());
// synopsys translate_off
defparam ix51677z52939.lut_mask = 16'hDDA0;
defparam ix51677z52939.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y14_N22
cycloneii_lcell_comb r14_add10_8i3_aix46946z52923(
// Equation(s):
// r14_add10_8i3_anx46946z1 = x_r6_9_ & !r14_add10_8i3_anx46946z3 # !x_r6_9_ & (r14_add10_8i3_anx46946z3 # GND)
// r14_add10_8i3_anx23445z2 = CARRY(!r14_add10_8i3_anx46946z3 # !x_r6_9_)

	.dataa(vcc),
	.datab(x_r6_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(r14_add10_8i3_anx46946z3),
	.combout(r14_add10_8i3_anx46946z1),
	.cout(r14_add10_8i3_anx23445z2));
// synopsys translate_off
defparam r14_add10_8i3_aix46946z52923.lut_mask = 16'h3C3F;
defparam r14_add10_8i3_aix46946z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y14_N24
cycloneii_lcell_comb r14_add10_8i3_aix23445z52923(
// Equation(s):
// r14_add10_8i3_anx23445z1 = !r14_add10_8i3_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(r14_add10_8i3_anx23445z2),
	.combout(r14_add10_8i3_anx23445z1),
	.cout());
// synopsys translate_off
defparam r14_add10_8i3_aix23445z52923.lut_mask = 16'h0F0F;
defparam r14_add10_8i3_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y14_N10
cycloneii_lcell_comb ix20419z52928(
// Equation(s):
// nx20419z6 = modgen_counter_o_row_anx1041z1 # modgen_counter_o_row_anx58250z3

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_row_anx1041z1),
	.datad(modgen_counter_o_row_anx58250z3),
	.cin(gnd),
	.combout(nx20419z6),
	.cout());
// synopsys translate_off
defparam ix20419z52928.lut_mask = 16'hFFF0;
defparam ix20419z52928.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at M4K_X52_Y14
cycloneii_ram_block Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0(
	.portawe(we_1_),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({modgen_counter_col_anx1041z1,modgen_counter_col_anx58250z3,modgen_counter_col_anx58250z5,modgen_counter_col_anx58250z7,modgen_counter_col_anx58250z9,modgen_counter_col_anx58250z11,modgen_counter_col_anx58250z13,modgen_counter_col_anx58250z15}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_1:Generate_mem_1_u_mem0_mem|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// atom is at LCCOMB_X53_Y15_N28
cycloneii_lcell_comb ix34631z52923(
// Equation(s):
// nx34631z1 = state_2_ & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[5] # !state_2_ & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[5])

	.dataa(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[5]),
	.datab(state_2_),
	.datac(vcc),
	.datad(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx34631z1),
	.cout());
// synopsys translate_off
defparam ix34631z52923.lut_mask = 16'hBB88;
defparam ix34631z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y15_N26
cycloneii_lcell_comb ix31640z52923(
// Equation(s):
// nx31640z1 = state_2_ & (Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[2]) # !state_2_ & Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[2]

	.dataa(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[2]),
	.datab(state_2_),
	.datac(vcc),
	.datad(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(nx31640z1),
	.cout());
// synopsys translate_off
defparam ix31640z52923.lut_mask = 16'hEE22;
defparam ix31640z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y17_N11
cycloneii_lcell_ff reg_i_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_5_));

// atom is at LCFF_X55_Y17_N13
cycloneii_lcell_ff reg_i_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_2_));

// atom is at LCCOMB_X55_Y14_N6
cycloneii_lcell_comb x_r6_add9_8i2_aix45949z52931(
// Equation(s):
// x_r6_add9_8i2_anx38970z1 = r2_1_ & (r9_1_ & x_r6_add9_8i2_anx45949z25 & VCC # !r9_1_ & !x_r6_add9_8i2_anx45949z25) # !r2_1_ & (r9_1_ & !x_r6_add9_8i2_anx45949z25 # !r9_1_ & (x_r6_add9_8i2_anx45949z25 # GND))
// x_r6_add9_8i2_anx45949z22 = CARRY(r2_1_ & !r9_1_ & !x_r6_add9_8i2_anx45949z25 # !r2_1_ & (!x_r6_add9_8i2_anx45949z25 # !r9_1_))

	.dataa(r2_1_),
	.datab(r9_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r6_add9_8i2_anx45949z25),
	.combout(x_r6_add9_8i2_anx38970z1),
	.cout(x_r6_add9_8i2_anx45949z22));
// synopsys translate_off
defparam x_r6_add9_8i2_aix45949z52931.lut_mask = 16'h9617;
defparam x_r6_add9_8i2_aix45949z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y14_N8
cycloneii_lcell_comb x_r6_add9_8i2_aix45949z52930(
// Equation(s):
// x_r6_add9_8i2_anx39967z1 = (r2_2_ $ r9_2_ $ !x_r6_add9_8i2_anx45949z22) # GND
// x_r6_add9_8i2_anx45949z19 = CARRY(r2_2_ & (r9_2_ # !x_r6_add9_8i2_anx45949z22) # !r2_2_ & r9_2_ & !x_r6_add9_8i2_anx45949z22)

	.dataa(r2_2_),
	.datab(r9_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r6_add9_8i2_anx45949z22),
	.combout(x_r6_add9_8i2_anx39967z1),
	.cout(x_r6_add9_8i2_anx45949z19));
// synopsys translate_off
defparam x_r6_add9_8i2_aix45949z52930.lut_mask = 16'h698E;
defparam x_r6_add9_8i2_aix45949z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y14_N10
cycloneii_lcell_comb x_r6_add9_8i2_aix45949z52929(
// Equation(s):
// x_r6_add9_8i2_anx40964z1 = r2_3_ & (r9_3_ & x_r6_add9_8i2_anx45949z19 & VCC # !r9_3_ & !x_r6_add9_8i2_anx45949z19) # !r2_3_ & (r9_3_ & !x_r6_add9_8i2_anx45949z19 # !r9_3_ & (x_r6_add9_8i2_anx45949z19 # GND))
// x_r6_add9_8i2_anx45949z16 = CARRY(r2_3_ & !r9_3_ & !x_r6_add9_8i2_anx45949z19 # !r2_3_ & (!x_r6_add9_8i2_anx45949z19 # !r9_3_))

	.dataa(r2_3_),
	.datab(r9_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r6_add9_8i2_anx45949z19),
	.combout(x_r6_add9_8i2_anx40964z1),
	.cout(x_r6_add9_8i2_anx45949z16));
// synopsys translate_off
defparam x_r6_add9_8i2_aix45949z52929.lut_mask = 16'h9617;
defparam x_r6_add9_8i2_aix45949z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y14_N12
cycloneii_lcell_comb x_r6_add9_8i2_aix45949z52928(
// Equation(s):
// x_r6_add9_8i2_anx41961z1 = (r9_4_ $ r2_4_ $ !x_r6_add9_8i2_anx45949z16) # GND
// x_r6_add9_8i2_anx45949z13 = CARRY(r9_4_ & (r2_4_ # !x_r6_add9_8i2_anx45949z16) # !r9_4_ & r2_4_ & !x_r6_add9_8i2_anx45949z16)

	.dataa(r9_4_),
	.datab(r2_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r6_add9_8i2_anx45949z16),
	.combout(x_r6_add9_8i2_anx41961z1),
	.cout(x_r6_add9_8i2_anx45949z13));
// synopsys translate_off
defparam x_r6_add9_8i2_aix45949z52928.lut_mask = 16'h698E;
defparam x_r6_add9_8i2_aix45949z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y14_N14
cycloneii_lcell_comb x_r6_add9_8i2_aix45949z52927(
// Equation(s):
// x_r6_add9_8i2_anx42958z1 = r9_5_ & (r2_5_ & x_r6_add9_8i2_anx45949z13 & VCC # !r2_5_ & !x_r6_add9_8i2_anx45949z13) # !r9_5_ & (r2_5_ & !x_r6_add9_8i2_anx45949z13 # !r2_5_ & (x_r6_add9_8i2_anx45949z13 # GND))
// x_r6_add9_8i2_anx45949z10 = CARRY(r9_5_ & !r2_5_ & !x_r6_add9_8i2_anx45949z13 # !r9_5_ & (!x_r6_add9_8i2_anx45949z13 # !r2_5_))

	.dataa(r9_5_),
	.datab(r2_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r6_add9_8i2_anx45949z13),
	.combout(x_r6_add9_8i2_anx42958z1),
	.cout(x_r6_add9_8i2_anx45949z10));
// synopsys translate_off
defparam x_r6_add9_8i2_aix45949z52927.lut_mask = 16'h9617;
defparam x_r6_add9_8i2_aix45949z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y14_N16
cycloneii_lcell_comb x_r6_add9_8i2_aix45949z52926(
// Equation(s):
// x_r6_add9_8i2_anx43955z1 = (r2_6_ $ r9_6_ $ !x_r6_add9_8i2_anx45949z10) # GND
// x_r6_add9_8i2_anx45949z7 = CARRY(r2_6_ & (r9_6_ # !x_r6_add9_8i2_anx45949z10) # !r2_6_ & r9_6_ & !x_r6_add9_8i2_anx45949z10)

	.dataa(r2_6_),
	.datab(r9_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r6_add9_8i2_anx45949z10),
	.combout(x_r6_add9_8i2_anx43955z1),
	.cout(x_r6_add9_8i2_anx45949z7));
// synopsys translate_off
defparam x_r6_add9_8i2_aix45949z52926.lut_mask = 16'h698E;
defparam x_r6_add9_8i2_aix45949z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y14_N20
cycloneii_lcell_comb x_r6_add9_8i2_aix45949z52923(
// Equation(s):
// x_r6_add9_8i2_anx45949z1 = (r9_8_ $ r2_8_ $ !x_r6_add9_8i2_anx45949z4) # GND
// x_r6_add9_8i2_anx23445z2 = CARRY(r9_8_ & (r2_8_ # !x_r6_add9_8i2_anx45949z4) # !r9_8_ & r2_8_ & !x_r6_add9_8i2_anx45949z4)

	.dataa(r9_8_),
	.datab(r2_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r6_add9_8i2_anx45949z4),
	.combout(x_r6_add9_8i2_anx45949z1),
	.cout(x_r6_add9_8i2_anx23445z2));
// synopsys translate_off
defparam x_r6_add9_8i2_aix45949z52923.lut_mask = 16'h698E;
defparam x_r6_add9_8i2_aix45949z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y14_N4
cycloneii_lcell_comb ix7740z52931(
// Equation(s):
// we_0_ = i_valid_acombout & !nx28524z1

	.dataa(vcc),
	.datab(vcc),
	.datac(i_valid_acombout),
	.datad(nx28524z1),
	.cin(gnd),
	.combout(we_0_),
	.cout());
// synopsys translate_off
defparam ix7740z52931.lut_mask = 16'h00F0;
defparam ix7740z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y14_N14
cycloneii_lcell_comb ix62017z52923(
// Equation(s):
// we_1_ = i_valid_acombout & state_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(i_valid_acombout),
	.datad(state_1_),
	.cin(gnd),
	.combout(we_1_),
	.cout());
// synopsys translate_off
defparam ix62017z52923.lut_mask = 16'hF000;
defparam ix62017z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y16_N18
cycloneii_lcell_comb ix64834z52923(
// Equation(s):
// we_2_ = i_valid_acombout & state_2_

	.dataa(vcc),
	.datab(i_valid_acombout),
	.datac(state_2_),
	.datad(vcc),
	.cin(gnd),
	.combout(we_2_),
	.cout());
// synopsys translate_off
defparam ix64834z52923.lut_mask = 16'hC0C0;
defparam ix64834z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y13_N20
cycloneii_lcell_comb r18_9__afeeder(
// Equation(s):
// r18_9__afeeder_combout = r15_9_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r15_9_),
	.cin(gnd),
	.combout(r18_9__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r18_9__afeeder.lut_mask = 16'hFF00;
defparam r18_9__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y13_N8
cycloneii_lcell_comb r18_7__afeeder(
// Equation(s):
// r18_7__afeeder_combout = r15_7_

	.dataa(vcc),
	.datab(r15_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r18_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r18_7__afeeder.lut_mask = 16'hCCCC;
defparam r18_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y13_N6
cycloneii_lcell_comb r18_6__afeeder(
// Equation(s):
// r18_6__afeeder_combout = r15_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r15_6_),
	.cin(gnd),
	.combout(r18_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r18_6__afeeder.lut_mask = 16'hFF00;
defparam r18_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y13_N24
cycloneii_lcell_comb r18_5__afeeder(
// Equation(s):
// r18_5__afeeder_combout = r15_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r15_5_),
	.cin(gnd),
	.combout(r18_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r18_5__afeeder.lut_mask = 16'hFF00;
defparam r18_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y13_N28
cycloneii_lcell_comb r18_3__afeeder(
// Equation(s):
// r18_3__afeeder_combout = r15_3_

	.dataa(vcc),
	.datab(r15_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r18_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r18_3__afeeder.lut_mask = 16'hCCCC;
defparam r18_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y13_N22
cycloneii_lcell_comb r18_2__afeeder(
// Equation(s):
// r18_2__afeeder_combout = r15_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r15_2_),
	.cin(gnd),
	.combout(r18_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r18_2__afeeder.lut_mask = 16'hFF00;
defparam r18_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y13_N2
cycloneii_lcell_comb r15_6__afeeder(
// Equation(s):
// r15_6__afeeder_combout = x_r3_6_

	.dataa(vcc),
	.datab(x_r3_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r15_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r15_6__afeeder.lut_mask = 16'hCCCC;
defparam r15_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y13_N6
cycloneii_lcell_comb r15_2__afeeder(
// Equation(s):
// r15_2__afeeder_combout = x_r3_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(x_r3_2_),
	.cin(gnd),
	.combout(r15_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r15_2__afeeder.lut_mask = 16'hFF00;
defparam r15_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y15_N6
cycloneii_lcell_comb x_r11_7__afeeder(
// Equation(s):
// x_r11_7__afeeder_combout = r11_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_7_),
	.cin(gnd),
	.combout(x_r11_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r11_7__afeeder.lut_mask = 16'hFF00;
defparam x_r11_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y15_N18
cycloneii_lcell_comb x_r11_5__afeeder(
// Equation(s):
// x_r11_5__afeeder_combout = r11_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_5_),
	.cin(gnd),
	.combout(x_r11_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r11_5__afeeder.lut_mask = 16'hFF00;
defparam x_r11_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y15_N30
cycloneii_lcell_comb x_r11_3__afeeder(
// Equation(s):
// x_r11_3__afeeder_combout = r11_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_3_),
	.cin(gnd),
	.combout(x_r11_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r11_3__afeeder.lut_mask = 16'hFF00;
defparam x_r11_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y16_N6
cycloneii_lcell_comb r5_6__afeeder(
// Equation(s):
// r5_6__afeeder_combout = g_6_

	.dataa(g_6_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r5_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_6__afeeder.lut_mask = 16'hAAAA;
defparam r5_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y16_N20
cycloneii_lcell_comb r5_4__afeeder(
// Equation(s):
// r5_4__afeeder_combout = g_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(g_4_),
	.cin(gnd),
	.combout(r5_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_4__afeeder.lut_mask = 16'hFF00;
defparam r5_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y16_N18
cycloneii_lcell_comb r5_1__afeeder(
// Equation(s):
// r5_1__afeeder_combout = g_1_

	.dataa(g_1_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r5_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_1__afeeder.lut_mask = 16'hAAAA;
defparam r5_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y16_N10
cycloneii_lcell_comb x_r5_6__afeeder(
// Equation(s):
// x_r5_6__afeeder_combout = c_6_

	.dataa(vcc),
	.datab(c_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(x_r5_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r5_6__afeeder.lut_mask = 16'hCCCC;
defparam x_r5_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y16_N20
cycloneii_lcell_comb x_r5_5__afeeder(
// Equation(s):
// x_r5_5__afeeder_combout = c_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(c_5_),
	.cin(gnd),
	.combout(x_r5_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r5_5__afeeder.lut_mask = 16'hFF00;
defparam x_r5_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y16_N22
cycloneii_lcell_comb x_r5_4__afeeder(
// Equation(s):
// x_r5_4__afeeder_combout = c_4_

	.dataa(vcc),
	.datab(c_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(x_r5_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r5_4__afeeder.lut_mask = 16'hCCCC;
defparam x_r5_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y16_N4
cycloneii_lcell_comb x_r5_1__afeeder(
// Equation(s):
// x_r5_1__afeeder_combout = c_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(c_1_),
	.cin(gnd),
	.combout(x_r5_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r5_1__afeeder.lut_mask = 16'hFF00;
defparam x_r5_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y13_N8
cycloneii_lcell_comb r10_5__afeeder(
// Equation(s):
// r10_5__afeeder_combout = a_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(a_5_),
	.cin(gnd),
	.combout(r10_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r10_5__afeeder.lut_mask = 16'hFF00;
defparam r10_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N6
cycloneii_lcell_comb r10_4__afeeder(
// Equation(s):
// r10_4__afeeder_combout = a_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(a_4_),
	.cin(gnd),
	.combout(r10_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r10_4__afeeder.lut_mask = 16'hFF00;
defparam r10_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y14_N0
cycloneii_lcell_comb r10_2__afeeder(
// Equation(s):
// r10_2__afeeder_combout = a_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(a_2_),
	.cin(gnd),
	.combout(r10_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r10_2__afeeder.lut_mask = 16'hFF00;
defparam r10_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N16
cycloneii_lcell_comb r12_7__afeeder(
// Equation(s):
// r12_7__afeeder_combout = e_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(e_7_),
	.cin(gnd),
	.combout(r12_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_7__afeeder.lut_mask = 16'hFF00;
defparam r12_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N26
cycloneii_lcell_comb r12_5__afeeder(
// Equation(s):
// r12_5__afeeder_combout = e_5_

	.dataa(e_5_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r12_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_5__afeeder.lut_mask = 16'hAAAA;
defparam r12_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y15_N6
cycloneii_lcell_comb r12_2__afeeder(
// Equation(s):
// r12_2__afeeder_combout = e_2_

	.dataa(e_2_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r12_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_2__afeeder.lut_mask = 16'hAAAA;
defparam r12_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y15_N4
cycloneii_lcell_comb r12_1__afeeder(
// Equation(s):
// r12_1__afeeder_combout = e_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(e_1_),
	.cin(gnd),
	.combout(r12_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_1__afeeder.lut_mask = 16'hFF00;
defparam r12_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y14_N28
cycloneii_lcell_comb r9_0__afeeder(
// Equation(s):
// r9_0__afeeder_combout = r2_add8_6i49_anx37973z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_add8_6i49_anx37973z1),
	.cin(gnd),
	.combout(r9_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r9_0__afeeder.lut_mask = 16'hFF00;
defparam r9_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y14_N24
cycloneii_lcell_comb r13_4__afeeder(
// Equation(s):
// r13_4__afeeder_combout = r2_add8_6i49_anx41961z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_add8_6i49_anx41961z1),
	.cin(gnd),
	.combout(r13_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r13_4__afeeder.lut_mask = 16'hFF00;
defparam r13_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N2
cycloneii_lcell_comb r9_7__afeeder(
// Equation(s):
// r9_7__afeeder_combout = r2_add8_6i49_anx44952z1

	.dataa(vcc),
	.datab(vcc),
	.datac(r2_add8_6i49_anx44952z1),
	.datad(vcc),
	.cin(gnd),
	.combout(r9_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r9_7__afeeder.lut_mask = 16'hF0F0;
defparam r9_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_P2
cycloneii_io i_clock_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_clock_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_clock));
// synopsys translate_off
defparam i_clock_ibuf.input_async_reset = "none";
defparam i_clock_ibuf.input_power_up = "low";
defparam i_clock_ibuf.input_register_mode = "none";
defparam i_clock_ibuf.input_sync_reset = "none";
defparam i_clock_ibuf.oe_async_reset = "none";
defparam i_clock_ibuf.oe_power_up = "low";
defparam i_clock_ibuf.oe_register_mode = "none";
defparam i_clock_ibuf.oe_sync_reset = "none";
defparam i_clock_ibuf.operation_mode = "input";
defparam i_clock_ibuf.output_async_reset = "none";
defparam i_clock_ibuf.output_power_up = "low";
defparam i_clock_ibuf.output_register_mode = "none";
defparam i_clock_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at CLKCTRL_G3
cycloneii_clkctrl i_clock_aclkctrl(
	.ena(vcc),
	.inclk({gnd,gnd,gnd,i_clock_acombout}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(i_clock_aclkctrl_outclk));
// synopsys translate_off
defparam i_clock_aclkctrl.clock_type = "global clock";
defparam i_clock_aclkctrl.ena_register_mode = "falling edge";
// synopsys translate_on

// atom is at LCCOMB_X50_Y16_N10
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52931(
// Equation(s):
// modgen_counter_o_row_anx51271z1 = modgen_counter_o_row_anx58250z15 $ VCC
// modgen_counter_o_row_anx58250z14 = CARRY(modgen_counter_o_row_anx58250z15)

	.dataa(modgen_counter_o_row_anx58250z15),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_o_row_anx51271z1),
	.cout(modgen_counter_o_row_anx58250z14));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52931.lut_mask = 16'h55AA;
defparam modgen_counter_o_row_aix58250z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y16_N12
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52930(
// Equation(s):
// modgen_counter_o_row_anx52268z1 = modgen_counter_o_row_anx58250z13 & !modgen_counter_o_row_anx58250z14 # !modgen_counter_o_row_anx58250z13 & (modgen_counter_o_row_anx58250z14 # GND)
// modgen_counter_o_row_anx58250z12 = CARRY(!modgen_counter_o_row_anx58250z14 # !modgen_counter_o_row_anx58250z13)

	.dataa(vcc),
	.datab(modgen_counter_o_row_anx58250z13),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z14),
	.combout(modgen_counter_o_row_anx52268z1),
	.cout(modgen_counter_o_row_anx58250z12));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52930.lut_mask = 16'h3C3F;
defparam modgen_counter_o_row_aix58250z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_C13
cycloneii_io i_reset_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_reset_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_reset));
// synopsys translate_off
defparam i_reset_ibuf.input_async_reset = "none";
defparam i_reset_ibuf.input_power_up = "low";
defparam i_reset_ibuf.input_register_mode = "none";
defparam i_reset_ibuf.input_sync_reset = "none";
defparam i_reset_ibuf.oe_async_reset = "none";
defparam i_reset_ibuf.oe_power_up = "low";
defparam i_reset_ibuf.oe_register_mode = "none";
defparam i_reset_ibuf.oe_sync_reset = "none";
defparam i_reset_ibuf.operation_mode = "input";
defparam i_reset_ibuf.output_async_reset = "none";
defparam i_reset_ibuf.output_power_up = "low";
defparam i_reset_ibuf.output_register_mode = "none";
defparam i_reset_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X51_Y15_N14
cycloneii_lcell_comb modgen_counter_col_aix58250z52931(
// Equation(s):
// modgen_counter_col_anx51271z1 = modgen_counter_col_anx58250z15 $ VCC
// modgen_counter_col_anx58250z14 = CARRY(modgen_counter_col_anx58250z15)

	.dataa(vcc),
	.datab(modgen_counter_col_anx58250z15),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_col_anx51271z1),
	.cout(modgen_counter_col_anx58250z14));
// synopsys translate_off
defparam modgen_counter_col_aix58250z52931.lut_mask = 16'h33CC;
defparam modgen_counter_col_aix58250z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_D13
cycloneii_io ix13876z43919(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_valid_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_valid));
// synopsys translate_off
defparam ix13876z43919.input_async_reset = "none";
defparam ix13876z43919.input_power_up = "low";
defparam ix13876z43919.input_register_mode = "none";
defparam ix13876z43919.input_sync_reset = "none";
defparam ix13876z43919.oe_async_reset = "none";
defparam ix13876z43919.oe_power_up = "low";
defparam ix13876z43919.oe_register_mode = "none";
defparam ix13876z43919.oe_sync_reset = "none";
defparam ix13876z43919.operation_mode = "input";
defparam ix13876z43919.output_async_reset = "none";
defparam ix13876z43919.output_power_up = "low";
defparam ix13876z43919.output_register_mode = "none";
defparam ix13876z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X51_Y14_N19
cycloneii_lcell_ff reg_in_i_valid_ibuf(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_valid_acombout),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(vBit_1_));

// atom is at LCCOMB_X51_Y14_N18
cycloneii_lcell_comb ix40914z52923(
// Equation(s):
// nx40914z1 = i_reset_acombout # vBit_1_

	.dataa(vcc),
	.datab(i_reset_acombout),
	.datac(vBit_1_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx40914z1),
	.cout());
// synopsys translate_off
defparam ix40914z52923.lut_mask = 16'hFCFC;
defparam ix40914z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y15_N15
cycloneii_lcell_ff modgen_counter_col_areg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_col_anx51271z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx40914z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_col_anx58250z15));

// atom is at LCCOMB_X51_Y15_N16
cycloneii_lcell_comb modgen_counter_col_aix58250z52930(
// Equation(s):
// modgen_counter_col_anx52268z1 = modgen_counter_col_anx58250z13 & !modgen_counter_col_anx58250z14 # !modgen_counter_col_anx58250z13 & (modgen_counter_col_anx58250z14 # GND)
// modgen_counter_col_anx58250z12 = CARRY(!modgen_counter_col_anx58250z14 # !modgen_counter_col_anx58250z13)

	.dataa(modgen_counter_col_anx58250z13),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_col_anx58250z14),
	.combout(modgen_counter_col_anx52268z1),
	.cout(modgen_counter_col_anx58250z12));
// synopsys translate_off
defparam modgen_counter_col_aix58250z52930.lut_mask = 16'h5A5F;
defparam modgen_counter_col_aix58250z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y15_N18
cycloneii_lcell_comb modgen_counter_col_aix58250z52929(
// Equation(s):
// modgen_counter_col_anx53265z1 = modgen_counter_col_anx58250z11 & (modgen_counter_col_anx58250z12 $ GND) # !modgen_counter_col_anx58250z11 & !modgen_counter_col_anx58250z12 & VCC
// modgen_counter_col_anx58250z10 = CARRY(modgen_counter_col_anx58250z11 & !modgen_counter_col_anx58250z12)

	.dataa(vcc),
	.datab(modgen_counter_col_anx58250z11),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_col_anx58250z12),
	.combout(modgen_counter_col_anx53265z1),
	.cout(modgen_counter_col_anx58250z10));
// synopsys translate_off
defparam modgen_counter_col_aix58250z52929.lut_mask = 16'hC30C;
defparam modgen_counter_col_aix58250z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X51_Y15_N19
cycloneii_lcell_ff modgen_counter_col_areg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_col_anx53265z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx40914z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_col_anx58250z11));

// atom is at LCCOMB_X51_Y15_N20
cycloneii_lcell_comb modgen_counter_col_aix58250z52928(
// Equation(s):
// modgen_counter_col_anx54262z1 = modgen_counter_col_anx58250z9 & !modgen_counter_col_anx58250z10 # !modgen_counter_col_anx58250z9 & (modgen_counter_col_anx58250z10 # GND)
// modgen_counter_col_anx58250z8 = CARRY(!modgen_counter_col_anx58250z10 # !modgen_counter_col_anx58250z9)

	.dataa(modgen_counter_col_anx58250z9),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_col_anx58250z10),
	.combout(modgen_counter_col_anx54262z1),
	.cout(modgen_counter_col_anx58250z8));
// synopsys translate_off
defparam modgen_counter_col_aix58250z52928.lut_mask = 16'h5A5F;
defparam modgen_counter_col_aix58250z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y15_N22
cycloneii_lcell_comb modgen_counter_col_aix58250z52927(
// Equation(s):
// modgen_counter_col_anx55259z1 = modgen_counter_col_anx58250z7 & (modgen_counter_col_anx58250z8 $ GND) # !modgen_counter_col_anx58250z7 & !modgen_counter_col_anx58250z8 & VCC
// modgen_counter_col_anx58250z6 = CARRY(modgen_counter_col_anx58250z7 & !modgen_counter_col_anx58250z8)

	.dataa(vcc),
	.datab(modgen_counter_col_anx58250z7),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_col_anx58250z8),
	.combout(modgen_counter_col_anx55259z1),
	.cout(modgen_counter_col_anx58250z6));
// synopsys translate_off
defparam modgen_counter_col_aix58250z52927.lut_mask = 16'hC30C;
defparam modgen_counter_col_aix58250z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X51_Y15_N23
cycloneii_lcell_ff modgen_counter_col_areg_q_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_col_anx55259z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx40914z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_col_anx58250z7));

// atom is at LCCOMB_X51_Y15_N24
cycloneii_lcell_comb modgen_counter_col_aix58250z52926(
// Equation(s):
// modgen_counter_col_anx56256z1 = modgen_counter_col_anx58250z5 & !modgen_counter_col_anx58250z6 # !modgen_counter_col_anx58250z5 & (modgen_counter_col_anx58250z6 # GND)
// modgen_counter_col_anx58250z4 = CARRY(!modgen_counter_col_anx58250z6 # !modgen_counter_col_anx58250z5)

	.dataa(modgen_counter_col_anx58250z5),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_col_anx58250z6),
	.combout(modgen_counter_col_anx56256z1),
	.cout(modgen_counter_col_anx58250z4));
// synopsys translate_off
defparam modgen_counter_col_aix58250z52926.lut_mask = 16'h5A5F;
defparam modgen_counter_col_aix58250z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y15_N26
cycloneii_lcell_comb modgen_counter_col_aix58250z52925(
// Equation(s):
// modgen_counter_col_anx57253z1 = modgen_counter_col_anx58250z3 & (modgen_counter_col_anx58250z4 $ GND) # !modgen_counter_col_anx58250z3 & !modgen_counter_col_anx58250z4 & VCC
// modgen_counter_col_anx58250z2 = CARRY(modgen_counter_col_anx58250z3 & !modgen_counter_col_anx58250z4)

	.dataa(vcc),
	.datab(modgen_counter_col_anx58250z3),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_col_anx58250z4),
	.combout(modgen_counter_col_anx57253z1),
	.cout(modgen_counter_col_anx58250z2));
// synopsys translate_off
defparam modgen_counter_col_aix58250z52925.lut_mask = 16'hC30C;
defparam modgen_counter_col_aix58250z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X51_Y15_N27
cycloneii_lcell_ff modgen_counter_col_areg_q_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_col_anx57253z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx40914z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_col_anx58250z3));

// atom is at LCCOMB_X51_Y15_N28
cycloneii_lcell_comb modgen_counter_col_aix58250z52923(
// Equation(s):
// modgen_counter_col_anx58250z1 = modgen_counter_col_anx58250z2 $ modgen_counter_col_anx1041z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_col_anx1041z1),
	.cin(modgen_counter_col_anx58250z2),
	.combout(modgen_counter_col_anx58250z1),
	.cout());
// synopsys translate_off
defparam modgen_counter_col_aix58250z52923.lut_mask = 16'h0FF0;
defparam modgen_counter_col_aix58250z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X51_Y15_N29
cycloneii_lcell_ff modgen_counter_col_areg_q_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_col_anx58250z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx40914z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_col_anx1041z1));

// atom is at LCFF_X51_Y15_N25
cycloneii_lcell_ff modgen_counter_col_areg_q_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_col_anx56256z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx40914z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_col_anx58250z5));

// atom is at LCCOMB_X53_Y14_N16
cycloneii_lcell_comb ix17322z52925(
// Equation(s):
// nx17322z3 = !modgen_counter_col_anx58250z3 & !modgen_counter_col_anx58250z7 & !modgen_counter_col_anx1041z1 & !modgen_counter_col_anx58250z5

	.dataa(modgen_counter_col_anx58250z3),
	.datab(modgen_counter_col_anx58250z7),
	.datac(modgen_counter_col_anx1041z1),
	.datad(modgen_counter_col_anx58250z5),
	.cin(gnd),
	.combout(nx17322z3),
	.cout());
// synopsys translate_off
defparam ix17322z52925.lut_mask = 16'h0001;
defparam ix17322z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y14_N1
cycloneii_lcell_ff reg_vBit_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(vBit_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(vBit_2_));

// atom is at LCFF_X51_Y15_N21
cycloneii_lcell_ff modgen_counter_col_areg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_col_anx54262z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx40914z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_col_anx58250z9));

// atom is at LCFF_X51_Y15_N17
cycloneii_lcell_ff modgen_counter_col_areg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_col_anx52268z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx40914z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_col_anx58250z13));

// atom is at LCCOMB_X53_Y14_N6
cycloneii_lcell_comb ix17322z52924(
// Equation(s):
// nx17322z2 = !modgen_counter_col_anx58250z11 & !modgen_counter_col_anx58250z9 & !modgen_counter_col_anx58250z13 & !modgen_counter_col_anx58250z15

	.dataa(modgen_counter_col_anx58250z11),
	.datab(modgen_counter_col_anx58250z9),
	.datac(modgen_counter_col_anx58250z13),
	.datad(modgen_counter_col_anx58250z15),
	.cin(gnd),
	.combout(nx17322z2),
	.cout());
// synopsys translate_off
defparam ix17322z52924.lut_mask = 16'h0001;
defparam ix17322z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y14_N0
cycloneii_lcell_comb ix17322z52923(
// Equation(s):
// nx17322z1 = !i_valid_acombout & nx17322z3 & vBit_2_ & nx17322z2

	.dataa(i_valid_acombout),
	.datab(nx17322z3),
	.datac(vBit_2_),
	.datad(nx17322z2),
	.cin(gnd),
	.combout(nx17322z1),
	.cout());
// synopsys translate_off
defparam ix17322z52923.lut_mask = 16'h4000;
defparam ix17322z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y16_N26
cycloneii_lcell_comb modgen_counter_o_row_aix57253z52923(
// Equation(s):
// modgen_counter_o_row_anx57253z3 = i_reset_acombout # nx17322z1

	.dataa(vcc),
	.datab(vcc),
	.datac(i_reset_acombout),
	.datad(nx17322z1),
	.cin(gnd),
	.combout(modgen_counter_o_row_anx57253z3),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_row_aix57253z52923.lut_mask = 16'hFFF0;
defparam modgen_counter_o_row_aix57253z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y16_N13
cycloneii_lcell_ff modgen_counter_o_row_areg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx52268z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z13));

// atom is at LCCOMB_X50_Y16_N14
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52929(
// Equation(s):
// modgen_counter_o_row_anx53265z1 = modgen_counter_o_row_anx58250z11 & (modgen_counter_o_row_anx58250z12 $ GND) # !modgen_counter_o_row_anx58250z11 & !modgen_counter_o_row_anx58250z12 & VCC
// modgen_counter_o_row_anx58250z10 = CARRY(modgen_counter_o_row_anx58250z11 & !modgen_counter_o_row_anx58250z12)

	.dataa(vcc),
	.datab(modgen_counter_o_row_anx58250z11),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z12),
	.combout(modgen_counter_o_row_anx53265z1),
	.cout(modgen_counter_o_row_anx58250z10));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52929.lut_mask = 16'hC30C;
defparam modgen_counter_o_row_aix58250z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X50_Y16_N15
cycloneii_lcell_ff modgen_counter_o_row_areg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx53265z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z11));

// atom is at LCCOMB_X50_Y16_N16
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52928(
// Equation(s):
// modgen_counter_o_row_anx54262z1 = modgen_counter_o_row_anx58250z9 & !modgen_counter_o_row_anx58250z10 # !modgen_counter_o_row_anx58250z9 & (modgen_counter_o_row_anx58250z10 # GND)
// modgen_counter_o_row_anx58250z8 = CARRY(!modgen_counter_o_row_anx58250z10 # !modgen_counter_o_row_anx58250z9)

	.dataa(modgen_counter_o_row_anx58250z9),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z10),
	.combout(modgen_counter_o_row_anx54262z1),
	.cout(modgen_counter_o_row_anx58250z8));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52928.lut_mask = 16'h5A5F;
defparam modgen_counter_o_row_aix58250z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X50_Y16_N17
cycloneii_lcell_ff modgen_counter_o_row_areg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx54262z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z9));

// atom is at LCCOMB_X50_Y16_N18
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52927(
// Equation(s):
// modgen_counter_o_row_anx55259z1 = modgen_counter_o_row_anx58250z7 & (modgen_counter_o_row_anx58250z8 $ GND) # !modgen_counter_o_row_anx58250z7 & !modgen_counter_o_row_anx58250z8 & VCC
// modgen_counter_o_row_anx58250z6 = CARRY(modgen_counter_o_row_anx58250z7 & !modgen_counter_o_row_anx58250z8)

	.dataa(vcc),
	.datab(modgen_counter_o_row_anx58250z7),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z8),
	.combout(modgen_counter_o_row_anx55259z1),
	.cout(modgen_counter_o_row_anx58250z6));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52927.lut_mask = 16'hC30C;
defparam modgen_counter_o_row_aix58250z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X51_Y16_N7
cycloneii_lcell_ff modgen_counter_o_row_areg_q_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_row_anx55259z1),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z7));

// atom is at LCCOMB_X51_Y16_N6
cycloneii_lcell_comb ix20419z52927(
// Equation(s):
// nx20419z5 = modgen_counter_o_row_anx58250z5 # modgen_counter_o_row_anx58250z9 # modgen_counter_o_row_anx58250z7 # modgen_counter_o_row_anx58250z11

	.dataa(modgen_counter_o_row_anx58250z5),
	.datab(modgen_counter_o_row_anx58250z9),
	.datac(modgen_counter_o_row_anx58250z7),
	.datad(modgen_counter_o_row_anx58250z11),
	.cin(gnd),
	.combout(nx20419z5),
	.cout());
// synopsys translate_off
defparam ix20419z52927.lut_mask = 16'hFFFE;
defparam ix20419z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y14_N30
cycloneii_lcell_comb ix20419z52925(
// Equation(s):
// nx20419z3 = modgen_counter_col_anx1041z1 # modgen_counter_col_anx58250z3

	.dataa(modgen_counter_col_anx1041z1),
	.datab(vcc),
	.datac(modgen_counter_col_anx58250z3),
	.datad(vcc),
	.cin(gnd),
	.combout(nx20419z3),
	.cout());
// synopsys translate_off
defparam ix20419z52925.lut_mask = 16'hFAFA;
defparam ix20419z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y14_N2
cycloneii_lcell_comb ix20419z52926(
// Equation(s):
// nx20419z4 = modgen_counter_col_anx58250z5 # modgen_counter_col_anx58250z7 # modgen_counter_col_anx58250z9 # modgen_counter_col_anx58250z11

	.dataa(modgen_counter_col_anx58250z5),
	.datab(modgen_counter_col_anx58250z7),
	.datac(modgen_counter_col_anx58250z9),
	.datad(modgen_counter_col_anx58250z11),
	.cin(gnd),
	.combout(nx20419z4),
	.cout());
// synopsys translate_off
defparam ix20419z52926.lut_mask = 16'hFFFE;
defparam ix20419z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y14_N0
cycloneii_lcell_comb ix20419z52924(
// Equation(s):
// nx20419z2 = i_valid_acombout & (nx20419z3 # modgen_counter_col_anx58250z13 # nx20419z4)

	.dataa(i_valid_acombout),
	.datab(nx20419z3),
	.datac(modgen_counter_col_anx58250z13),
	.datad(nx20419z4),
	.cin(gnd),
	.combout(nx20419z2),
	.cout());
// synopsys translate_off
defparam ix20419z52924.lut_mask = 16'hAAA8;
defparam ix20419z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y14_N26
cycloneii_lcell_comb ix20419z52923(
// Equation(s):
// nx20419z1 = nx20419z2 & (nx20419z6 # nx20419z5 # modgen_counter_o_row_anx58250z13)

	.dataa(nx20419z6),
	.datab(nx20419z5),
	.datac(modgen_counter_o_row_anx58250z13),
	.datad(nx20419z2),
	.cin(gnd),
	.combout(nx20419z1),
	.cout());
// synopsys translate_off
defparam ix20419z52923.lut_mask = 16'hFE00;
defparam ix20419z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y14_N27
cycloneii_lcell_ff reg_validBit_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx20419z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(validBit_0_));

// atom is at LCFF_X54_Y17_N1
cycloneii_lcell_ff reg_validBit_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(validBit_0_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(validBit_1_));

// atom is at LCFF_X54_Y17_N23
cycloneii_lcell_ff reg_validBit_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(validBit_1_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(validBit_2_));

// atom is at LCFF_X54_Y17_N3
cycloneii_lcell_ff reg_validBit_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(validBit_2_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(validBit_3_));

// atom is at LCFF_X54_Y17_N29
cycloneii_lcell_ff reg_validBit_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(validBit_3_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(validBit_4_));

// atom is at LCFF_X54_Y17_N19
cycloneii_lcell_ff reg_validBit_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(validBit_4_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(validBit_5_));

// atom is at LCFF_X54_Y17_N31
cycloneii_lcell_ff reg_validBit_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(validBit_5_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(validBit_6_));

// atom is at LCFF_X54_Y17_N11
cycloneii_lcell_ff reg_validBit_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(validBit_6_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(validBit_7_));

// atom is at LCFF_X51_Y16_N25
cycloneii_lcell_ff reg_validBit_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(validBit_7_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_valid_dup0));

// atom is at LCCOMB_X54_Y17_N4
cycloneii_lcell_comb ix51677z52924(
// Equation(s):
// nx51677z1 = validBit_0_ # !validBit_1_ & validBit_2_

	.dataa(vcc),
	.datab(validBit_1_),
	.datac(validBit_2_),
	.datad(validBit_0_),
	.cin(gnd),
	.combout(nx51677z1),
	.cout());
// synopsys translate_off
defparam ix51677z52924.lut_mask = 16'hFF30;
defparam ix51677z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y16_N30
cycloneii_lcell_comb nx28524z1_a_wirecell(
// Equation(s):
// nx28524z1_a_wirecell_combout = !nx28524z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx28524z1),
	.cin(gnd),
	.combout(nx28524z1_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam nx28524z1_a_wirecell.lut_mask = 16'h00FF;
defparam nx28524z1_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y16_N31
cycloneii_lcell_ff reg_state_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx28524z1_a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(state_1_));

// atom is at LCFF_X51_Y16_N19
cycloneii_lcell_ff reg_state_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(state_1_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(state_2_));

// atom is at LCCOMB_X50_Y16_N28
cycloneii_lcell_comb state_2__a_wirecell(
// Equation(s):
// state_2__a_wirecell_combout = !state_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(state_2_),
	.cin(gnd),
	.combout(state_2__a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam state_2__a_wirecell.lut_mask = 16'h00FF;
defparam state_2__a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y16_N29
cycloneii_lcell_ff reg_state_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(state_2__a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx28524z1));

// atom is at PIN_AE20
cycloneii_io ix7740z43926(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[0]));
// synopsys translate_off
defparam ix7740z43926.input_async_reset = "none";
defparam ix7740z43926.input_power_up = "low";
defparam ix7740z43926.input_register_mode = "none";
defparam ix7740z43926.input_sync_reset = "none";
defparam ix7740z43926.oe_async_reset = "none";
defparam ix7740z43926.oe_power_up = "low";
defparam ix7740z43926.oe_register_mode = "none";
defparam ix7740z43926.oe_sync_reset = "none";
defparam ix7740z43926.operation_mode = "input";
defparam ix7740z43926.output_async_reset = "none";
defparam ix7740z43926.output_power_up = "low";
defparam ix7740z43926.output_register_mode = "none";
defparam ix7740z43926.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA18
cycloneii_io ix7740z43925(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[1]));
// synopsys translate_off
defparam ix7740z43925.input_async_reset = "none";
defparam ix7740z43925.input_power_up = "low";
defparam ix7740z43925.input_register_mode = "none";
defparam ix7740z43925.input_sync_reset = "none";
defparam ix7740z43925.oe_async_reset = "none";
defparam ix7740z43925.oe_power_up = "low";
defparam ix7740z43925.oe_register_mode = "none";
defparam ix7740z43925.oe_sync_reset = "none";
defparam ix7740z43925.operation_mode = "input";
defparam ix7740z43925.output_async_reset = "none";
defparam ix7740z43925.output_power_up = "low";
defparam ix7740z43925.output_register_mode = "none";
defparam ix7740z43925.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T20
cycloneii_io ix7740z43924(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[2]));
// synopsys translate_off
defparam ix7740z43924.input_async_reset = "none";
defparam ix7740z43924.input_power_up = "low";
defparam ix7740z43924.input_register_mode = "none";
defparam ix7740z43924.input_sync_reset = "none";
defparam ix7740z43924.oe_async_reset = "none";
defparam ix7740z43924.oe_power_up = "low";
defparam ix7740z43924.oe_register_mode = "none";
defparam ix7740z43924.oe_sync_reset = "none";
defparam ix7740z43924.operation_mode = "input";
defparam ix7740z43924.output_async_reset = "none";
defparam ix7740z43924.output_power_up = "low";
defparam ix7740z43924.output_register_mode = "none";
defparam ix7740z43924.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R17
cycloneii_io ix7740z43923(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[3]));
// synopsys translate_off
defparam ix7740z43923.input_async_reset = "none";
defparam ix7740z43923.input_power_up = "low";
defparam ix7740z43923.input_register_mode = "none";
defparam ix7740z43923.input_sync_reset = "none";
defparam ix7740z43923.oe_async_reset = "none";
defparam ix7740z43923.oe_power_up = "low";
defparam ix7740z43923.oe_register_mode = "none";
defparam ix7740z43923.oe_sync_reset = "none";
defparam ix7740z43923.operation_mode = "input";
defparam ix7740z43923.output_async_reset = "none";
defparam ix7740z43923.output_power_up = "low";
defparam ix7740z43923.output_register_mode = "none";
defparam ix7740z43923.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE21
cycloneii_io ix7740z43922(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[4]));
// synopsys translate_off
defparam ix7740z43922.input_async_reset = "none";
defparam ix7740z43922.input_power_up = "low";
defparam ix7740z43922.input_register_mode = "none";
defparam ix7740z43922.input_sync_reset = "none";
defparam ix7740z43922.oe_async_reset = "none";
defparam ix7740z43922.oe_power_up = "low";
defparam ix7740z43922.oe_register_mode = "none";
defparam ix7740z43922.oe_sync_reset = "none";
defparam ix7740z43922.operation_mode = "input";
defparam ix7740z43922.output_async_reset = "none";
defparam ix7740z43922.output_power_up = "low";
defparam ix7740z43922.output_register_mode = "none";
defparam ix7740z43922.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF20
cycloneii_io ix7740z43921(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[5]));
// synopsys translate_off
defparam ix7740z43921.input_async_reset = "none";
defparam ix7740z43921.input_power_up = "low";
defparam ix7740z43921.input_register_mode = "none";
defparam ix7740z43921.input_sync_reset = "none";
defparam ix7740z43921.oe_async_reset = "none";
defparam ix7740z43921.oe_power_up = "low";
defparam ix7740z43921.oe_register_mode = "none";
defparam ix7740z43921.oe_sync_reset = "none";
defparam ix7740z43921.operation_mode = "input";
defparam ix7740z43921.output_async_reset = "none";
defparam ix7740z43921.output_power_up = "low";
defparam ix7740z43921.output_register_mode = "none";
defparam ix7740z43921.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A19
cycloneii_io ix7740z43920(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[6]));
// synopsys translate_off
defparam ix7740z43920.input_async_reset = "none";
defparam ix7740z43920.input_power_up = "low";
defparam ix7740z43920.input_register_mode = "none";
defparam ix7740z43920.input_sync_reset = "none";
defparam ix7740z43920.oe_async_reset = "none";
defparam ix7740z43920.oe_power_up = "low";
defparam ix7740z43920.oe_register_mode = "none";
defparam ix7740z43920.oe_sync_reset = "none";
defparam ix7740z43920.operation_mode = "input";
defparam ix7740z43920.output_async_reset = "none";
defparam ix7740z43920.output_power_up = "low";
defparam ix7740z43920.output_register_mode = "none";
defparam ix7740z43920.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T21
cycloneii_io ix7740z43919(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_pixel_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[7]));
// synopsys translate_off
defparam ix7740z43919.input_async_reset = "none";
defparam ix7740z43919.input_power_up = "low";
defparam ix7740z43919.input_register_mode = "none";
defparam ix7740z43919.input_sync_reset = "none";
defparam ix7740z43919.oe_async_reset = "none";
defparam ix7740z43919.oe_power_up = "low";
defparam ix7740z43919.oe_register_mode = "none";
defparam ix7740z43919.oe_sync_reset = "none";
defparam ix7740z43919.operation_mode = "input";
defparam ix7740z43919.output_async_reset = "none";
defparam ix7740z43919.output_power_up = "low";
defparam ix7740z43919.output_register_mode = "none";
defparam ix7740z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X54_Y15_N8
cycloneii_lcell_comb ix20492z52923(
// Equation(s):
// nx20492z1 = nx28524z1 & Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[7] # !nx28524z1 & (Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[7])

	.dataa(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[7]),
	.datab(nx28524z1),
	.datac(vcc),
	.datad(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx20492z1),
	.cout());
// synopsys translate_off
defparam ix20492z52923.lut_mask = 16'hBB88;
defparam ix20492z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at M4K_X52_Y16
cycloneii_ram_block Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0(
	.portawe(we_2_),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({modgen_counter_col_anx1041z1,modgen_counter_col_anx58250z3,modgen_counter_col_anx58250z5,modgen_counter_col_anx58250z7,modgen_counter_col_anx58250z9,modgen_counter_col_anx58250z11,modgen_counter_col_anx58250z13,modgen_counter_col_anx58250z15}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_2:Generate_mem_2_u_mem0_mem|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// atom is at LCCOMB_X53_Y14_N28
cycloneii_lcell_comb ix36625z52924(
// Equation(s):
// nx36625z2 = !i_reset_acombout & i_valid_acombout

	.dataa(vcc),
	.datab(i_reset_acombout),
	.datac(i_valid_acombout),
	.datad(vcc),
	.cin(gnd),
	.combout(nx36625z2),
	.cout());
// synopsys translate_off
defparam ix36625z52924.lut_mask = 16'h3030;
defparam ix36625z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y15_N9
cycloneii_lcell_ff reg_c_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx20492z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(state_1_),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_7_));

// atom is at LCFF_X55_Y16_N11
cycloneii_lcell_ff reg_b_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_7_));

// atom is at LCCOMB_X54_Y16_N10
cycloneii_lcell_comb e_7__afeeder(
// Equation(s):
// e_7__afeeder_combout = i_pixel_acombout[7]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(i_pixel_acombout[7]),
	.cin(gnd),
	.combout(e_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam e_7__afeeder.lut_mask = 16'hFF00;
defparam e_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y16_N11
cycloneii_lcell_ff reg_in_i_pixel_ibuf_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(e_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_7_));

// atom is at LCFF_X55_Y17_N25
cycloneii_lcell_ff reg_f_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_7_));

// atom is at LCCOMB_X54_Y17_N10
cycloneii_lcell_comb ix51677z52926(
// Equation(s):
// nx51677z3 = !validBit_0_ & (validBit_2_ # validBit_1_)

	.dataa(validBit_2_),
	.datab(validBit_1_),
	.datac(vcc),
	.datad(validBit_0_),
	.cin(gnd),
	.combout(nx51677z3),
	.cout());
// synopsys translate_off
defparam ix51677z52926.lut_mask = 16'h00EE;
defparam ix51677z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N24
cycloneii_lcell_comb ix51677z52925(
// Equation(s):
// nx51677z2 = nx51677z1 & (nx51677z3) # !nx51677z1 & (nx51677z3 & h_7_ # !nx51677z3 & (f_7_))

	.dataa(h_7_),
	.datab(nx51677z1),
	.datac(f_7_),
	.datad(nx51677z3),
	.cin(gnd),
	.combout(nx51677z2),
	.cout());
// synopsys translate_off
defparam ix51677z52925.lut_mask = 16'hEE30;
defparam ix51677z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y16_N10
cycloneii_lcell_comb ix51677z52923(
// Equation(s):
// r2_6n3s1f1_7_ = nx51677z1 & (nx51677z2 & d_7_ # !nx51677z2 & (b_7_)) # !nx51677z1 & (nx51677z2)

	.dataa(d_7_),
	.datab(nx51677z1),
	.datac(b_7_),
	.datad(nx51677z2),
	.cin(gnd),
	.combout(r2_6n3s1f1_7_),
	.cout());
// synopsys translate_off
defparam ix51677z52923.lut_mask = 16'hBBC0;
defparam ix51677z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at M4K_X52_Y15
cycloneii_ram_block Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0(
	.portawe(we_0_),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({modgen_counter_col_anx1041z1,modgen_counter_col_anx58250z3,modgen_counter_col_anx58250z5,modgen_counter_col_anx58250z7,modgen_counter_col_anx58250z9,modgen_counter_col_anx58250z11,modgen_counter_col_anx58250z13,modgen_counter_col_anx58250z15}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_0:Generate_mem_0_u_mem0_mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// atom is at LCCOMB_X53_Y15_N18
cycloneii_lcell_comb ix35628z52923(
// Equation(s):
// nx35628z1 = state_2_ & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[6] # !state_2_ & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[6])

	.dataa(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[6]),
	.datab(state_2_),
	.datac(vcc),
	.datad(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx35628z1),
	.cout());
// synopsys translate_off
defparam ix35628z52923.lut_mask = 16'hBB88;
defparam ix35628z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y15_N19
cycloneii_lcell_ff reg_d_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx35628z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!nx28524z1),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_6_));

// atom is at LCCOMB_X54_Y15_N10
cycloneii_lcell_comb ix21489z52923(
// Equation(s):
// nx21489z1 = nx28524z1 & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[6]) # !nx28524z1 & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[6]

	.dataa(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[6]),
	.datab(nx28524z1),
	.datac(vcc),
	.datad(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx21489z1),
	.cout());
// synopsys translate_off
defparam ix21489z52923.lut_mask = 16'hEE22;
defparam ix21489z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y15_N11
cycloneii_lcell_ff reg_c_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx21489z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(state_1_),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_6_));

// atom is at LCFF_X53_Y17_N19
cycloneii_lcell_ff reg_b_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_6_));

// atom is at LCCOMB_X54_Y16_N8
cycloneii_lcell_comb i_6__afeeder(
// Equation(s):
// i_6__afeeder_combout = d_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(d_6_),
	.cin(gnd),
	.combout(i_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam i_6__afeeder.lut_mask = 16'hFF00;
defparam i_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y16_N9
cycloneii_lcell_ff reg_i_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(i_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_6_));

// atom is at LCFF_X53_Y17_N31
cycloneii_lcell_ff reg_h_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_6_));

// atom is at LCFF_X53_Y16_N15
cycloneii_lcell_ff reg_in_i_pixel_ibuf_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[6]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_6_));

// atom is at LCFF_X53_Y16_N1
cycloneii_lcell_ff reg_f_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_6_));

// atom is at LCCOMB_X53_Y17_N30
cycloneii_lcell_comb ix51677z52928(
// Equation(s):
// nx51677z4 = nx51677z1 & nx51677z3 # !nx51677z1 & (nx51677z3 & h_6_ # !nx51677z3 & (f_6_))

	.dataa(nx51677z1),
	.datab(nx51677z3),
	.datac(h_6_),
	.datad(f_6_),
	.cin(gnd),
	.combout(nx51677z4),
	.cout());
// synopsys translate_off
defparam ix51677z52928.lut_mask = 16'hD9C8;
defparam ix51677z52928.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N0
cycloneii_lcell_comb ix51677z52927(
// Equation(s):
// r2_6n3s1f1_6_ = nx51677z1 & (nx51677z4 & d_6_ # !nx51677z4 & (b_6_)) # !nx51677z1 & (nx51677z4)

	.dataa(nx51677z1),
	.datab(d_6_),
	.datac(b_6_),
	.datad(nx51677z4),
	.cin(gnd),
	.combout(r2_6n3s1f1_6_),
	.cout());
// synopsys translate_off
defparam ix51677z52927.lut_mask = 16'hDDA0;
defparam ix51677z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y15_N4
cycloneii_lcell_comb ix22486z52923(
// Equation(s):
// nx22486z1 = nx28524z1 & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[5]) # !nx28524z1 & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[5]

	.dataa(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[5]),
	.datab(nx28524z1),
	.datac(vcc),
	.datad(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx22486z1),
	.cout());
// synopsys translate_off
defparam ix22486z52923.lut_mask = 16'hEE22;
defparam ix22486z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y15_N5
cycloneii_lcell_ff reg_c_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx22486z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(state_1_),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_5_));

// atom is at LCFF_X53_Y17_N17
cycloneii_lcell_ff reg_b_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_5_));

// atom is at LCFF_X53_Y17_N23
cycloneii_lcell_ff reg_a_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_5_));

// atom is at LCCOMB_X54_Y17_N12
cycloneii_lcell_comb ix51677z52942(
// Equation(s):
// nx51677z11 = !validBit_0_ & (validBit_1_ # !validBit_2_)

	.dataa(vcc),
	.datab(validBit_1_),
	.datac(validBit_2_),
	.datad(validBit_0_),
	.cin(gnd),
	.combout(nx51677z11),
	.cout());
// synopsys translate_off
defparam ix51677z52942.lut_mask = 16'h00CF;
defparam ix51677z52942.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y16_N13
cycloneii_lcell_ff reg_in_i_pixel_ibuf_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[5]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_5_));

// atom is at LCCOMB_X54_Y17_N30
cycloneii_lcell_comb ix51677z52944(
// Equation(s):
// nx51677z13 = validBit_0_ # !validBit_2_ & !validBit_1_

	.dataa(validBit_2_),
	.datab(validBit_1_),
	.datac(vcc),
	.datad(validBit_0_),
	.cin(gnd),
	.combout(nx51677z13),
	.cout());
// synopsys translate_off
defparam ix51677z52944.lut_mask = 16'hFF11;
defparam ix51677z52944.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y16_N30
cycloneii_lcell_comb ix51677z52948(
// Equation(s):
// nx51677z15 = nx51677z11 & (nx51677z13) # !nx51677z11 & (nx51677z13 & c_5_ # !nx51677z13 & (e_5_))

	.dataa(c_5_),
	.datab(nx51677z11),
	.datac(e_5_),
	.datad(nx51677z13),
	.cin(gnd),
	.combout(nx51677z15),
	.cout());
// synopsys translate_off
defparam ix51677z52948.lut_mask = 16'hEE30;
defparam ix51677z52948.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y16_N31
cycloneii_lcell_ff reg_f_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_5_));

// atom is at LCCOMB_X54_Y16_N2
cycloneii_lcell_comb g_5__afeeder(
// Equation(s):
// g_5__afeeder_combout = f_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_5_),
	.cin(gnd),
	.combout(g_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam g_5__afeeder.lut_mask = 16'hFF00;
defparam g_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y16_N3
cycloneii_lcell_ff reg_g_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(g_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_5_));

// atom is at LCCOMB_X54_Y16_N16
cycloneii_lcell_comb ix51677z52947(
// Equation(s):
// r2_6n3s1f2_5_ = nx51677z11 & (nx51677z15 & (g_5_) # !nx51677z15 & a_5_) # !nx51677z11 & (nx51677z15)

	.dataa(nx51677z11),
	.datab(a_5_),
	.datac(nx51677z15),
	.datad(g_5_),
	.cin(gnd),
	.combout(r2_6n3s1f2_5_),
	.cout());
// synopsys translate_off
defparam ix51677z52947.lut_mask = 16'hF858;
defparam ix51677z52947.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y15_N22
cycloneii_lcell_comb ix23483z52923(
// Equation(s):
// nx23483z1 = nx28524z1 & Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[4] # !nx28524z1 & (Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[4])

	.dataa(nx28524z1),
	.datab(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[4]),
	.datac(vcc),
	.datad(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx23483z1),
	.cout());
// synopsys translate_off
defparam ix23483z52923.lut_mask = 16'hDD88;
defparam ix23483z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y15_N23
cycloneii_lcell_ff reg_c_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx23483z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(state_1_),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_4_));

// atom is at LCFF_X55_Y16_N5
cycloneii_lcell_ff reg_b_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_4_));

// atom is at LCFF_X55_Y16_N13
cycloneii_lcell_ff reg_a_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_4_));

// atom is at LCFF_X55_Y16_N1
cycloneii_lcell_ff reg_in_i_pixel_ibuf_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[4]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_4_));

// atom is at LCCOMB_X55_Y16_N0
cycloneii_lcell_comb ix51677z52950(
// Equation(s):
// nx51677z16 = nx51677z11 & (nx51677z13) # !nx51677z11 & (nx51677z13 & c_4_ # !nx51677z13 & (e_4_))

	.dataa(nx51677z11),
	.datab(c_4_),
	.datac(e_4_),
	.datad(nx51677z13),
	.cin(gnd),
	.combout(nx51677z16),
	.cout());
// synopsys translate_off
defparam ix51677z52950.lut_mask = 16'hEE50;
defparam ix51677z52950.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y16_N12
cycloneii_lcell_comb ix51677z52949(
// Equation(s):
// r2_6n3s1f2_4_ = nx51677z11 & (nx51677z16 & g_4_ # !nx51677z16 & (a_4_)) # !nx51677z11 & (nx51677z16)

	.dataa(g_4_),
	.datab(nx51677z11),
	.datac(a_4_),
	.datad(nx51677z16),
	.cin(gnd),
	.combout(r2_6n3s1f2_4_),
	.cout());
// synopsys translate_off
defparam ix51677z52949.lut_mask = 16'hBBC0;
defparam ix51677z52949.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y16_N9
cycloneii_lcell_ff reg_in_i_pixel_ibuf_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_3_));

// atom is at LCFF_X53_Y16_N19
cycloneii_lcell_ff reg_f_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_3_));

// atom is at LCCOMB_X54_Y16_N28
cycloneii_lcell_comb g_3__afeeder(
// Equation(s):
// g_3__afeeder_combout = f_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_3_),
	.cin(gnd),
	.combout(g_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam g_3__afeeder.lut_mask = 16'hFF00;
defparam g_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y16_N29
cycloneii_lcell_ff reg_g_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(g_3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_3_));

// atom is at LCCOMB_X53_Y16_N18
cycloneii_lcell_comb ix51677z52952(
// Equation(s):
// nx51677z17 = nx51677z13 & (c_3_ # nx51677z11) # !nx51677z13 & (e_3_ & !nx51677z11)

	.dataa(c_3_),
	.datab(nx51677z13),
	.datac(e_3_),
	.datad(nx51677z11),
	.cin(gnd),
	.combout(nx51677z17),
	.cout());
// synopsys translate_off
defparam ix51677z52952.lut_mask = 16'hCCB8;
defparam ix51677z52952.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y16_N26
cycloneii_lcell_comb ix51677z52951(
// Equation(s):
// r2_6n3s1f2_3_ = nx51677z11 & (nx51677z17 & (g_3_) # !nx51677z17 & a_3_) # !nx51677z11 & (nx51677z17)

	.dataa(a_3_),
	.datab(g_3_),
	.datac(nx51677z11),
	.datad(nx51677z17),
	.cin(gnd),
	.combout(r2_6n3s1f2_3_),
	.cout());
// synopsys translate_off
defparam ix51677z52951.lut_mask = 16'hCFA0;
defparam ix51677z52951.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N4
cycloneii_lcell_comb e_2__afeeder(
// Equation(s):
// e_2__afeeder_combout = i_pixel_acombout[2]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(i_pixel_acombout[2]),
	.cin(gnd),
	.combout(e_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam e_2__afeeder.lut_mask = 16'hFF00;
defparam e_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N5
cycloneii_lcell_ff reg_in_i_pixel_ibuf_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(e_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_2_));

// atom is at LCFF_X55_Y17_N29
cycloneii_lcell_ff reg_f_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_2_));

// atom is at LCCOMB_X54_Y16_N14
cycloneii_lcell_comb g_2__afeeder(
// Equation(s):
// g_2__afeeder_combout = f_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(f_2_),
	.cin(gnd),
	.combout(g_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam g_2__afeeder.lut_mask = 16'hFF00;
defparam g_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y16_N15
cycloneii_lcell_ff reg_g_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(g_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_2_));

// atom is at LCCOMB_X54_Y15_N2
cycloneii_lcell_comb ix25477z52923(
// Equation(s):
// nx25477z1 = nx28524z1 & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[2]) # !nx28524z1 & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[2]

	.dataa(nx28524z1),
	.datab(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[2]),
	.datac(vcc),
	.datad(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(nx25477z1),
	.cout());
// synopsys translate_off
defparam ix25477z52923.lut_mask = 16'hEE44;
defparam ix25477z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y15_N3
cycloneii_lcell_ff reg_c_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx25477z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(state_1_),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_2_));

// atom is at LCCOMB_X55_Y17_N28
cycloneii_lcell_comb ix51677z52954(
// Equation(s):
// nx51677z18 = nx51677z13 & (c_2_ # nx51677z11) # !nx51677z13 & (e_2_ & !nx51677z11)

	.dataa(nx51677z13),
	.datab(c_2_),
	.datac(e_2_),
	.datad(nx51677z11),
	.cin(gnd),
	.combout(nx51677z18),
	.cout());
// synopsys translate_off
defparam ix51677z52954.lut_mask = 16'hAAD8;
defparam ix51677z52954.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y16_N12
cycloneii_lcell_comb ix51677z52953(
// Equation(s):
// r2_6n3s1f2_2_ = nx51677z11 & (nx51677z18 & (g_2_) # !nx51677z18 & a_2_) # !nx51677z11 & (nx51677z18)

	.dataa(a_2_),
	.datab(g_2_),
	.datac(nx51677z11),
	.datad(nx51677z18),
	.cin(gnd),
	.combout(r2_6n3s1f2_2_),
	.cout());
// synopsys translate_off
defparam ix51677z52953.lut_mask = 16'hCFA0;
defparam ix51677z52953.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y15_N12
cycloneii_lcell_comb ix30643z52923(
// Equation(s):
// nx30643z1 = state_2_ & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[1] # !state_2_ & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[1])

	.dataa(state_2_),
	.datab(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[1]),
	.datac(vcc),
	.datad(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx30643z1),
	.cout());
// synopsys translate_off
defparam ix30643z52923.lut_mask = 16'hDD88;
defparam ix30643z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y15_N13
cycloneii_lcell_ff reg_d_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx30643z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!nx28524z1),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_1_));

// atom is at LCCOMB_X54_Y15_N12
cycloneii_lcell_comb ix26474z52923(
// Equation(s):
// nx26474z1 = nx28524z1 & Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[1] # !nx28524z1 & (Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[1])

	.dataa(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[1]),
	.datab(nx28524z1),
	.datac(vcc),
	.datad(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx26474z1),
	.cout());
// synopsys translate_off
defparam ix26474z52923.lut_mask = 16'hBB88;
defparam ix26474z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y15_N13
cycloneii_lcell_ff reg_c_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx26474z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(state_1_),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_1_));

// atom is at LCFF_X55_Y16_N7
cycloneii_lcell_ff reg_b_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_1_));

// atom is at LCFF_X53_Y16_N5
cycloneii_lcell_ff reg_in_i_pixel_ibuf_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_1_));

// atom is at LCFF_X53_Y16_N27
cycloneii_lcell_ff reg_f_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_1_));

// atom is at LCFF_X55_Y16_N17
cycloneii_lcell_ff reg_i_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_1_));

// atom is at LCFF_X55_Y16_N9
cycloneii_lcell_ff reg_h_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_1_));

// atom is at LCCOMB_X55_Y16_N8
cycloneii_lcell_comb ix51677z52938(
// Equation(s):
// nx51677z9 = nx51677z1 & (nx51677z3) # !nx51677z1 & (nx51677z3 & (h_1_) # !nx51677z3 & f_1_)

	.dataa(nx51677z1),
	.datab(f_1_),
	.datac(h_1_),
	.datad(nx51677z3),
	.cin(gnd),
	.combout(nx51677z9),
	.cout());
// synopsys translate_off
defparam ix51677z52938.lut_mask = 16'hFA44;
defparam ix51677z52938.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y16_N6
cycloneii_lcell_comb ix51677z52937(
// Equation(s):
// r2_6n3s1f1_1_ = nx51677z1 & (nx51677z9 & d_1_ # !nx51677z9 & (b_1_)) # !nx51677z1 & (nx51677z9)

	.dataa(nx51677z1),
	.datab(d_1_),
	.datac(b_1_),
	.datad(nx51677z9),
	.cin(gnd),
	.combout(r2_6n3s1f1_1_),
	.cout());
// synopsys translate_off
defparam ix51677z52937.lut_mask = 16'hDDA0;
defparam ix51677z52937.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y16_N3
cycloneii_lcell_ff reg_in_i_pixel_ibuf_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_0_));

// atom is at LCFF_X53_Y16_N25
cycloneii_lcell_ff reg_f_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_0_));

// atom is at LCFF_X53_Y16_N21
cycloneii_lcell_ff reg_g_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_0_));

// atom is at LCCOMB_X53_Y16_N24
cycloneii_lcell_comb ix51677z52958(
// Equation(s):
// nx51677z20 = nx51677z13 & (c_0_ # nx51677z11) # !nx51677z13 & (e_0_ & !nx51677z11)

	.dataa(c_0_),
	.datab(nx51677z13),
	.datac(e_0_),
	.datad(nx51677z11),
	.cin(gnd),
	.combout(nx51677z20),
	.cout());
// synopsys translate_off
defparam ix51677z52958.lut_mask = 16'hCCB8;
defparam ix51677z52958.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y16_N20
cycloneii_lcell_comb ix51677z52957(
// Equation(s):
// r2_6n3s1f2_0_ = nx51677z11 & (nx51677z20 & (g_0_) # !nx51677z20 & a_0_) # !nx51677z11 & (nx51677z20)

	.dataa(a_0_),
	.datab(nx51677z11),
	.datac(g_0_),
	.datad(nx51677z20),
	.cin(gnd),
	.combout(r2_6n3s1f2_0_),
	.cout());
// synopsys translate_off
defparam ix51677z52957.lut_mask = 16'hF388;
defparam ix51677z52957.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y14_N2
cycloneii_lcell_comb r2_add8_6i49_aix44952z52931(
// Equation(s):
// r2_add8_6i49_anx37973z1 = r2_6n3s1f1_0_ & (r2_6n3s1f2_0_ $ VCC) # !r2_6n3s1f1_0_ & r2_6n3s1f2_0_ & VCC
// r2_add8_6i49_anx44952z22 = CARRY(r2_6n3s1f1_0_ & r2_6n3s1f2_0_)

	.dataa(r2_6n3s1f1_0_),
	.datab(r2_6n3s1f2_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r2_add8_6i49_anx37973z1),
	.cout(r2_add8_6i49_anx44952z22));
// synopsys translate_off
defparam r2_add8_6i49_aix44952z52931.lut_mask = 16'h6688;
defparam r2_add8_6i49_aix44952z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y14_N4
cycloneii_lcell_comb r2_add8_6i49_aix44952z52930(
// Equation(s):
// r2_add8_6i49_anx38970z1 = r2_6n3s1f2_1_ & (r2_6n3s1f1_1_ & r2_add8_6i49_anx44952z22 & VCC # !r2_6n3s1f1_1_ & !r2_add8_6i49_anx44952z22) # !r2_6n3s1f2_1_ & (r2_6n3s1f1_1_ & !r2_add8_6i49_anx44952z22 # !r2_6n3s1f1_1_ & (r2_add8_6i49_anx44952z22 # GND))
// r2_add8_6i49_anx44952z19 = CARRY(r2_6n3s1f2_1_ & !r2_6n3s1f1_1_ & !r2_add8_6i49_anx44952z22 # !r2_6n3s1f2_1_ & (!r2_add8_6i49_anx44952z22 # !r2_6n3s1f1_1_))

	.dataa(r2_6n3s1f2_1_),
	.datab(r2_6n3s1f1_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(r2_add8_6i49_anx44952z22),
	.combout(r2_add8_6i49_anx38970z1),
	.cout(r2_add8_6i49_anx44952z19));
// synopsys translate_off
defparam r2_add8_6i49_aix44952z52930.lut_mask = 16'h9617;
defparam r2_add8_6i49_aix44952z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y14_N6
cycloneii_lcell_comb r2_add8_6i49_aix44952z52929(
// Equation(s):
// r2_add8_6i49_anx39967z1 = (r2_6n3s1f1_2_ $ r2_6n3s1f2_2_ $ !r2_add8_6i49_anx44952z19) # GND
// r2_add8_6i49_anx44952z16 = CARRY(r2_6n3s1f1_2_ & (r2_6n3s1f2_2_ # !r2_add8_6i49_anx44952z19) # !r2_6n3s1f1_2_ & r2_6n3s1f2_2_ & !r2_add8_6i49_anx44952z19)

	.dataa(r2_6n3s1f1_2_),
	.datab(r2_6n3s1f2_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(r2_add8_6i49_anx44952z19),
	.combout(r2_add8_6i49_anx39967z1),
	.cout(r2_add8_6i49_anx44952z16));
// synopsys translate_off
defparam r2_add8_6i49_aix44952z52929.lut_mask = 16'h698E;
defparam r2_add8_6i49_aix44952z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y14_N8
cycloneii_lcell_comb r2_add8_6i49_aix44952z52928(
// Equation(s):
// r2_add8_6i49_anx40964z1 = r2_6n3s1f1_3_ & (r2_6n3s1f2_3_ & r2_add8_6i49_anx44952z16 & VCC # !r2_6n3s1f2_3_ & !r2_add8_6i49_anx44952z16) # !r2_6n3s1f1_3_ & (r2_6n3s1f2_3_ & !r2_add8_6i49_anx44952z16 # !r2_6n3s1f2_3_ & (r2_add8_6i49_anx44952z16 # GND))
// r2_add8_6i49_anx44952z13 = CARRY(r2_6n3s1f1_3_ & !r2_6n3s1f2_3_ & !r2_add8_6i49_anx44952z16 # !r2_6n3s1f1_3_ & (!r2_add8_6i49_anx44952z16 # !r2_6n3s1f2_3_))

	.dataa(r2_6n3s1f1_3_),
	.datab(r2_6n3s1f2_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(r2_add8_6i49_anx44952z16),
	.combout(r2_add8_6i49_anx40964z1),
	.cout(r2_add8_6i49_anx44952z13));
// synopsys translate_off
defparam r2_add8_6i49_aix44952z52928.lut_mask = 16'h9617;
defparam r2_add8_6i49_aix44952z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y14_N10
cycloneii_lcell_comb r2_add8_6i49_aix44952z52927(
// Equation(s):
// r2_add8_6i49_anx41961z1 = (r2_6n3s1f1_4_ $ r2_6n3s1f2_4_ $ !r2_add8_6i49_anx44952z13) # GND
// r2_add8_6i49_anx44952z10 = CARRY(r2_6n3s1f1_4_ & (r2_6n3s1f2_4_ # !r2_add8_6i49_anx44952z13) # !r2_6n3s1f1_4_ & r2_6n3s1f2_4_ & !r2_add8_6i49_anx44952z13)

	.dataa(r2_6n3s1f1_4_),
	.datab(r2_6n3s1f2_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(r2_add8_6i49_anx44952z13),
	.combout(r2_add8_6i49_anx41961z1),
	.cout(r2_add8_6i49_anx44952z10));
// synopsys translate_off
defparam r2_add8_6i49_aix44952z52927.lut_mask = 16'h698E;
defparam r2_add8_6i49_aix44952z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y14_N12
cycloneii_lcell_comb r2_add8_6i49_aix44952z52926(
// Equation(s):
// r2_add8_6i49_anx42958z1 = r2_6n3s1f1_5_ & (r2_6n3s1f2_5_ & r2_add8_6i49_anx44952z10 & VCC # !r2_6n3s1f2_5_ & !r2_add8_6i49_anx44952z10) # !r2_6n3s1f1_5_ & (r2_6n3s1f2_5_ & !r2_add8_6i49_anx44952z10 # !r2_6n3s1f2_5_ & (r2_add8_6i49_anx44952z10 # GND))
// r2_add8_6i49_anx44952z7 = CARRY(r2_6n3s1f1_5_ & !r2_6n3s1f2_5_ & !r2_add8_6i49_anx44952z10 # !r2_6n3s1f1_5_ & (!r2_add8_6i49_anx44952z10 # !r2_6n3s1f2_5_))

	.dataa(r2_6n3s1f1_5_),
	.datab(r2_6n3s1f2_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(r2_add8_6i49_anx44952z10),
	.combout(r2_add8_6i49_anx42958z1),
	.cout(r2_add8_6i49_anx44952z7));
// synopsys translate_off
defparam r2_add8_6i49_aix44952z52926.lut_mask = 16'h9617;
defparam r2_add8_6i49_aix44952z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y14_N14
cycloneii_lcell_comb r2_add8_6i49_aix44952z52925(
// Equation(s):
// r2_add8_6i49_anx43955z1 = (r2_6n3s1f2_6_ $ r2_6n3s1f1_6_ $ !r2_add8_6i49_anx44952z7) # GND
// r2_add8_6i49_anx44952z4 = CARRY(r2_6n3s1f2_6_ & (r2_6n3s1f1_6_ # !r2_add8_6i49_anx44952z7) # !r2_6n3s1f2_6_ & r2_6n3s1f1_6_ & !r2_add8_6i49_anx44952z7)

	.dataa(r2_6n3s1f2_6_),
	.datab(r2_6n3s1f1_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(r2_add8_6i49_anx44952z7),
	.combout(r2_add8_6i49_anx43955z1),
	.cout(r2_add8_6i49_anx44952z4));
// synopsys translate_off
defparam r2_add8_6i49_aix44952z52925.lut_mask = 16'h698E;
defparam r2_add8_6i49_aix44952z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y14_N16
cycloneii_lcell_comb r2_add8_6i49_aix44952z52923(
// Equation(s):
// r2_add8_6i49_anx44952z1 = r2_6n3s1f2_7_ & (r2_6n3s1f1_7_ & r2_add8_6i49_anx44952z4 & VCC # !r2_6n3s1f1_7_ & !r2_add8_6i49_anx44952z4) # !r2_6n3s1f2_7_ & (r2_6n3s1f1_7_ & !r2_add8_6i49_anx44952z4 # !r2_6n3s1f1_7_ & (r2_add8_6i49_anx44952z4 # GND))
// r2_add8_6i49_anx23445z2 = CARRY(r2_6n3s1f2_7_ & !r2_6n3s1f1_7_ & !r2_add8_6i49_anx44952z4 # !r2_6n3s1f2_7_ & (!r2_add8_6i49_anx44952z4 # !r2_6n3s1f1_7_))

	.dataa(r2_6n3s1f2_7_),
	.datab(r2_6n3s1f1_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(r2_add8_6i49_anx44952z4),
	.combout(r2_add8_6i49_anx44952z1),
	.cout(r2_add8_6i49_anx23445z2));
// synopsys translate_off
defparam r2_add8_6i49_aix44952z52923.lut_mask = 16'h9617;
defparam r2_add8_6i49_aix44952z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y14_N18
cycloneii_lcell_comb r2_add8_6i49_aix23445z52923(
// Equation(s):
// r2_add8_6i49_anx23445z1 = !r2_add8_6i49_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(r2_add8_6i49_anx23445z2),
	.combout(r2_add8_6i49_anx23445z1),
	.cout());
// synopsys translate_off
defparam r2_add8_6i49_aix23445z52923.lut_mask = 16'h0F0F;
defparam r2_add8_6i49_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N24
cycloneii_lcell_comb ix250z52923(
// Equation(s):
// nx250z1 = !validBit_1_ & !validBit_0_ & !validBit_2_ & validBit_3_

	.dataa(validBit_1_),
	.datab(validBit_0_),
	.datac(validBit_2_),
	.datad(validBit_3_),
	.cin(gnd),
	.combout(nx250z1),
	.cout());
// synopsys translate_off
defparam ix250z52923.lut_mask = 16'h0100;
defparam ix250z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y14_N19
cycloneii_lcell_ff reg_r13_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r2_add8_6i49_anx23445z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_8_));

// atom is at LCFF_X54_Y14_N17
cycloneii_lcell_ff reg_r2_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r2_add8_6i49_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx51677z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_7_));

// atom is at LCCOMB_X53_Y14_N20
cycloneii_lcell_comb r9_6__afeeder(
// Equation(s):
// r9_6__afeeder_combout = r2_add8_6i49_anx43955z1

	.dataa(vcc),
	.datab(vcc),
	.datac(r2_add8_6i49_anx43955z1),
	.datad(vcc),
	.cin(gnd),
	.combout(r9_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r9_6__afeeder.lut_mask = 16'hF0F0;
defparam r9_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y14_N21
cycloneii_lcell_ff reg_r9_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r9_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_6_));

// atom is at LCCOMB_X54_Y14_N26
cycloneii_lcell_comb r2_5__afeeder(
// Equation(s):
// r2_5__afeeder_combout = r2_add8_6i49_anx42958z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_add8_6i49_anx42958z1),
	.cin(gnd),
	.combout(r2_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r2_5__afeeder.lut_mask = 16'hFF00;
defparam r2_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y14_N27
cycloneii_lcell_ff reg_r2_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r2_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx51677z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_5_));

// atom is at LCCOMB_X54_Y14_N20
cycloneii_lcell_comb r2_4__afeeder(
// Equation(s):
// r2_4__afeeder_combout = r2_add8_6i49_anx41961z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_add8_6i49_anx41961z1),
	.cin(gnd),
	.combout(r2_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r2_4__afeeder.lut_mask = 16'hFF00;
defparam r2_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y14_N21
cycloneii_lcell_ff reg_r2_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r2_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx51677z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_4_));

// atom is at LCCOMB_X55_Y14_N2
cycloneii_lcell_comb r9_3__afeeder(
// Equation(s):
// r9_3__afeeder_combout = r2_add8_6i49_anx40964z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_add8_6i49_anx40964z1),
	.cin(gnd),
	.combout(r9_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r9_3__afeeder.lut_mask = 16'hFF00;
defparam r9_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y14_N3
cycloneii_lcell_ff reg_r9_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r9_3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_3_));

// atom is at LCCOMB_X55_Y14_N26
cycloneii_lcell_comb r9_2__afeeder(
// Equation(s):
// r9_2__afeeder_combout = r2_add8_6i49_anx39967z1

	.dataa(vcc),
	.datab(vcc),
	.datac(r2_add8_6i49_anx39967z1),
	.datad(vcc),
	.cin(gnd),
	.combout(r9_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r9_2__afeeder.lut_mask = 16'hF0F0;
defparam r9_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y14_N27
cycloneii_lcell_ff reg_r9_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r9_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_2_));

// atom is at LCCOMB_X53_Y14_N18
cycloneii_lcell_comb r9_1__afeeder(
// Equation(s):
// r9_1__afeeder_combout = r2_add8_6i49_anx38970z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_add8_6i49_anx38970z1),
	.cin(gnd),
	.combout(r9_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r9_1__afeeder.lut_mask = 16'hFF00;
defparam r9_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y14_N19
cycloneii_lcell_ff reg_r9_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r9_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_1_));

// atom is at LCCOMB_X56_Y14_N28
cycloneii_lcell_comb r2_0__afeeder(
// Equation(s):
// r2_0__afeeder_combout = r2_add8_6i49_anx37973z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_add8_6i49_anx37973z1),
	.cin(gnd),
	.combout(r2_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r2_0__afeeder.lut_mask = 16'hFF00;
defparam r2_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y14_N29
cycloneii_lcell_ff reg_r2_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r2_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx51677z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_0_));

// atom is at LCCOMB_X55_Y14_N4
cycloneii_lcell_comb x_r6_add9_8i2_aix45949z52932(
// Equation(s):
// x_r6_add9_8i2_anx37973z1 = r9_0_ & (r2_0_ $ VCC) # !r9_0_ & r2_0_ & VCC
// x_r6_add9_8i2_anx45949z25 = CARRY(r9_0_ & r2_0_)

	.dataa(r9_0_),
	.datab(r2_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(x_r6_add9_8i2_anx37973z1),
	.cout(x_r6_add9_8i2_anx45949z25));
// synopsys translate_off
defparam x_r6_add9_8i2_aix45949z52932.lut_mask = 16'h6688;
defparam x_r6_add9_8i2_aix45949z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y14_N18
cycloneii_lcell_comb x_r6_add9_8i2_aix45949z52925(
// Equation(s):
// x_r6_add9_8i2_anx44952z1 = r9_7_ & (r2_7_ & x_r6_add9_8i2_anx45949z7 & VCC # !r2_7_ & !x_r6_add9_8i2_anx45949z7) # !r9_7_ & (r2_7_ & !x_r6_add9_8i2_anx45949z7 # !r2_7_ & (x_r6_add9_8i2_anx45949z7 # GND))
// x_r6_add9_8i2_anx45949z4 = CARRY(r9_7_ & !r2_7_ & !x_r6_add9_8i2_anx45949z7 # !r9_7_ & (!x_r6_add9_8i2_anx45949z7 # !r2_7_))

	.dataa(r9_7_),
	.datab(r2_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r6_add9_8i2_anx45949z7),
	.combout(x_r6_add9_8i2_anx44952z1),
	.cout(x_r6_add9_8i2_anx45949z4));
// synopsys translate_off
defparam x_r6_add9_8i2_aix45949z52925.lut_mask = 16'h9617;
defparam x_r6_add9_8i2_aix45949z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y14_N19
cycloneii_lcell_ff reg_x_r6_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r6_add9_8i2_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_2_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r6_7_));

// atom is at LCFF_X54_Y14_N15
cycloneii_lcell_ff reg_r2_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r2_add8_6i49_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx51677z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_6_));

// atom is at LCFF_X54_Y14_N31
cycloneii_lcell_ff reg_r2_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r2_add8_6i49_anx40964z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx51677z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_3_));

// atom is at LCCOMB_X56_Y14_N2
cycloneii_lcell_comb r2_2__afeeder(
// Equation(s):
// r2_2__afeeder_combout = r2_add8_6i49_anx39967z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_add8_6i49_anx39967z1),
	.cin(gnd),
	.combout(r2_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r2_2__afeeder.lut_mask = 16'hFF00;
defparam r2_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y14_N3
cycloneii_lcell_ff reg_r2_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r2_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx51677z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_2_));

// atom is at LCCOMB_X56_Y14_N26
cycloneii_lcell_comb r2_1__afeeder(
// Equation(s):
// r2_1__afeeder_combout = r2_add8_6i49_anx38970z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_add8_6i49_anx38970z1),
	.cin(gnd),
	.combout(r2_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r2_1__afeeder.lut_mask = 16'hFF00;
defparam r2_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y14_N27
cycloneii_lcell_ff reg_r2_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r2_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx51677z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_1_));

// atom is at LCFF_X55_Y14_N5
cycloneii_lcell_ff reg_x_r6_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r6_add9_8i2_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_2_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r6_0_));

// atom is at LCCOMB_X56_Y14_N4
cycloneii_lcell_comb r14_add10_8i3_aix46946z52933(
// Equation(s):
// r14_add10_8i3_anx37973z1 = r2_0_ & (x_r6_0_ $ VCC) # !r2_0_ & x_r6_0_ & VCC
// r14_add10_8i3_anx46946z27 = CARRY(r2_0_ & x_r6_0_)

	.dataa(r2_0_),
	.datab(x_r6_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r14_add10_8i3_anx37973z1),
	.cout(r14_add10_8i3_anx46946z27));
// synopsys translate_off
defparam r14_add10_8i3_aix46946z52933.lut_mask = 16'h6688;
defparam r14_add10_8i3_aix46946z52933.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y14_N6
cycloneii_lcell_comb r14_add10_8i3_aix46946z52932(
// Equation(s):
// r14_add10_8i3_anx38970z1 = x_r6_1_ & (r2_1_ & r14_add10_8i3_anx46946z27 & VCC # !r2_1_ & !r14_add10_8i3_anx46946z27) # !x_r6_1_ & (r2_1_ & !r14_add10_8i3_anx46946z27 # !r2_1_ & (r14_add10_8i3_anx46946z27 # GND))
// r14_add10_8i3_anx46946z24 = CARRY(x_r6_1_ & !r2_1_ & !r14_add10_8i3_anx46946z27 # !x_r6_1_ & (!r14_add10_8i3_anx46946z27 # !r2_1_))

	.dataa(x_r6_1_),
	.datab(r2_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(r14_add10_8i3_anx46946z27),
	.combout(r14_add10_8i3_anx38970z1),
	.cout(r14_add10_8i3_anx46946z24));
// synopsys translate_off
defparam r14_add10_8i3_aix46946z52932.lut_mask = 16'h9617;
defparam r14_add10_8i3_aix46946z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y14_N8
cycloneii_lcell_comb r14_add10_8i3_aix46946z52931(
// Equation(s):
// r14_add10_8i3_anx39967z1 = (x_r6_2_ $ r2_2_ $ !r14_add10_8i3_anx46946z24) # GND
// r14_add10_8i3_anx46946z21 = CARRY(x_r6_2_ & (r2_2_ # !r14_add10_8i3_anx46946z24) # !x_r6_2_ & r2_2_ & !r14_add10_8i3_anx46946z24)

	.dataa(x_r6_2_),
	.datab(r2_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(r14_add10_8i3_anx46946z24),
	.combout(r14_add10_8i3_anx39967z1),
	.cout(r14_add10_8i3_anx46946z21));
// synopsys translate_off
defparam r14_add10_8i3_aix46946z52931.lut_mask = 16'h698E;
defparam r14_add10_8i3_aix46946z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y14_N12
cycloneii_lcell_comb r14_add10_8i3_aix46946z52929(
// Equation(s):
// r14_add10_8i3_anx41961z1 = (x_r6_4_ $ r2_4_ $ !r14_add10_8i3_anx46946z18) # GND
// r14_add10_8i3_anx46946z15 = CARRY(x_r6_4_ & (r2_4_ # !r14_add10_8i3_anx46946z18) # !x_r6_4_ & r2_4_ & !r14_add10_8i3_anx46946z18)

	.dataa(x_r6_4_),
	.datab(r2_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(r14_add10_8i3_anx46946z18),
	.combout(r14_add10_8i3_anx41961z1),
	.cout(r14_add10_8i3_anx46946z15));
// synopsys translate_off
defparam r14_add10_8i3_aix46946z52929.lut_mask = 16'h698E;
defparam r14_add10_8i3_aix46946z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y14_N14
cycloneii_lcell_comb r14_add10_8i3_aix46946z52928(
// Equation(s):
// r14_add10_8i3_anx42958z1 = x_r6_5_ & (r2_5_ & r14_add10_8i3_anx46946z15 & VCC # !r2_5_ & !r14_add10_8i3_anx46946z15) # !x_r6_5_ & (r2_5_ & !r14_add10_8i3_anx46946z15 # !r2_5_ & (r14_add10_8i3_anx46946z15 # GND))
// r14_add10_8i3_anx46946z12 = CARRY(x_r6_5_ & !r2_5_ & !r14_add10_8i3_anx46946z15 # !x_r6_5_ & (!r14_add10_8i3_anx46946z15 # !r2_5_))

	.dataa(x_r6_5_),
	.datab(r2_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(r14_add10_8i3_anx46946z15),
	.combout(r14_add10_8i3_anx42958z1),
	.cout(r14_add10_8i3_anx46946z12));
// synopsys translate_off
defparam r14_add10_8i3_aix46946z52928.lut_mask = 16'h9617;
defparam r14_add10_8i3_aix46946z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y14_N16
cycloneii_lcell_comb r14_add10_8i3_aix46946z52927(
// Equation(s):
// r14_add10_8i3_anx43955z1 = (x_r6_6_ $ r2_6_ $ !r14_add10_8i3_anx46946z12) # GND
// r14_add10_8i3_anx46946z9 = CARRY(x_r6_6_ & (r2_6_ # !r14_add10_8i3_anx46946z12) # !x_r6_6_ & r2_6_ & !r14_add10_8i3_anx46946z12)

	.dataa(x_r6_6_),
	.datab(r2_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(r14_add10_8i3_anx46946z12),
	.combout(r14_add10_8i3_anx43955z1),
	.cout(r14_add10_8i3_anx46946z9));
// synopsys translate_off
defparam r14_add10_8i3_aix46946z52927.lut_mask = 16'h698E;
defparam r14_add10_8i3_aix46946z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y14_N18
cycloneii_lcell_comb r14_add10_8i3_aix46946z52926(
// Equation(s):
// r14_add10_8i3_anx44952z1 = r2_7_ & (x_r6_7_ & r14_add10_8i3_anx46946z9 & VCC # !x_r6_7_ & !r14_add10_8i3_anx46946z9) # !r2_7_ & (x_r6_7_ & !r14_add10_8i3_anx46946z9 # !x_r6_7_ & (r14_add10_8i3_anx46946z9 # GND))
// r14_add10_8i3_anx46946z6 = CARRY(r2_7_ & !x_r6_7_ & !r14_add10_8i3_anx46946z9 # !r2_7_ & (!r14_add10_8i3_anx46946z9 # !x_r6_7_))

	.dataa(r2_7_),
	.datab(x_r6_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(r14_add10_8i3_anx46946z9),
	.combout(r14_add10_8i3_anx44952z1),
	.cout(r14_add10_8i3_anx46946z6));
// synopsys translate_off
defparam r14_add10_8i3_aix46946z52926.lut_mask = 16'h9617;
defparam r14_add10_8i3_aix46946z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y14_N30
cycloneii_lcell_comb ix16422z52923(
// Equation(s):
// nx16422z1 = validBit_3_ & !validBit_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(validBit_3_),
	.datad(validBit_2_),
	.cin(gnd),
	.combout(nx16422z1),
	.cout());
// synopsys translate_off
defparam ix16422z52923.lut_mask = 16'h00F0;
defparam ix16422z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y14_N19
cycloneii_lcell_ff reg_r14_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_add10_8i3_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx16422z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_7_));

// atom is at LCFF_X56_Y14_N17
cycloneii_lcell_ff reg_r14_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_add10_8i3_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx16422z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_6_));

// atom is at LCFF_X56_Y14_N15
cycloneii_lcell_ff reg_r14_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_add10_8i3_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx16422z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_5_));

// atom is at LCFF_X56_Y14_N13
cycloneii_lcell_ff reg_r14_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_add10_8i3_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx16422z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_4_));

// atom is at LCFF_X54_Y14_N29
cycloneii_lcell_ff reg_r13_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r2_add8_6i49_anx40964z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_3_));

// atom is at LCFF_X56_Y14_N9
cycloneii_lcell_ff reg_r14_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_add10_8i3_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx16422z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_2_));

// atom is at LCFF_X56_Y14_N7
cycloneii_lcell_ff reg_r14_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_add10_8i3_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx16422z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_1_));

// atom is at LCFF_X56_Y14_N5
cycloneii_lcell_ff reg_r14_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_add10_8i3_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx16422z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_0_));

// atom is at LCCOMB_X57_Y14_N0
cycloneii_lcell_comb x_r12_add11_8i4_aix62798z52934(
// Equation(s):
// x_r12_add11_8i4_anx37973z1 = r13_0_ & (r14_0_ $ VCC) # !r13_0_ & r14_0_ & VCC
// x_r12_add11_8i4_anx62798z29 = CARRY(r13_0_ & r14_0_)

	.dataa(r13_0_),
	.datab(r14_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(x_r12_add11_8i4_anx37973z1),
	.cout(x_r12_add11_8i4_anx62798z29));
// synopsys translate_off
defparam x_r12_add11_8i4_aix62798z52934.lut_mask = 16'h6688;
defparam x_r12_add11_8i4_aix62798z52934.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y14_N4
cycloneii_lcell_comb x_r12_add11_8i4_aix62798z52932(
// Equation(s):
// x_r12_add11_8i4_anx39967z1 = (r13_2_ $ r14_2_ $ !x_r12_add11_8i4_anx62798z26) # GND
// x_r12_add11_8i4_anx62798z23 = CARRY(r13_2_ & (r14_2_ # !x_r12_add11_8i4_anx62798z26) # !r13_2_ & r14_2_ & !x_r12_add11_8i4_anx62798z26)

	.dataa(r13_2_),
	.datab(r14_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r12_add11_8i4_anx62798z26),
	.combout(x_r12_add11_8i4_anx39967z1),
	.cout(x_r12_add11_8i4_anx62798z23));
// synopsys translate_off
defparam x_r12_add11_8i4_aix62798z52932.lut_mask = 16'h698E;
defparam x_r12_add11_8i4_aix62798z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y14_N6
cycloneii_lcell_comb x_r12_add11_8i4_aix62798z52931(
// Equation(s):
// x_r12_add11_8i4_anx40964z1 = r14_3_ & (r13_3_ & x_r12_add11_8i4_anx62798z23 & VCC # !r13_3_ & !x_r12_add11_8i4_anx62798z23) # !r14_3_ & (r13_3_ & !x_r12_add11_8i4_anx62798z23 # !r13_3_ & (x_r12_add11_8i4_anx62798z23 # GND))
// x_r12_add11_8i4_anx62798z20 = CARRY(r14_3_ & !r13_3_ & !x_r12_add11_8i4_anx62798z23 # !r14_3_ & (!x_r12_add11_8i4_anx62798z23 # !r13_3_))

	.dataa(r14_3_),
	.datab(r13_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r12_add11_8i4_anx62798z23),
	.combout(x_r12_add11_8i4_anx40964z1),
	.cout(x_r12_add11_8i4_anx62798z20));
// synopsys translate_off
defparam x_r12_add11_8i4_aix62798z52931.lut_mask = 16'h9617;
defparam x_r12_add11_8i4_aix62798z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y14_N10
cycloneii_lcell_comb x_r12_add11_8i4_aix62798z52929(
// Equation(s):
// x_r12_add11_8i4_anx42958z1 = r13_5_ & (r14_5_ & x_r12_add11_8i4_anx62798z17 & VCC # !r14_5_ & !x_r12_add11_8i4_anx62798z17) # !r13_5_ & (r14_5_ & !x_r12_add11_8i4_anx62798z17 # !r14_5_ & (x_r12_add11_8i4_anx62798z17 # GND))
// x_r12_add11_8i4_anx62798z14 = CARRY(r13_5_ & !r14_5_ & !x_r12_add11_8i4_anx62798z17 # !r13_5_ & (!x_r12_add11_8i4_anx62798z17 # !r14_5_))

	.dataa(r13_5_),
	.datab(r14_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r12_add11_8i4_anx62798z17),
	.combout(x_r12_add11_8i4_anx42958z1),
	.cout(x_r12_add11_8i4_anx62798z14));
// synopsys translate_off
defparam x_r12_add11_8i4_aix62798z52929.lut_mask = 16'h9617;
defparam x_r12_add11_8i4_aix62798z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y14_N12
cycloneii_lcell_comb x_r12_add11_8i4_aix62798z52928(
// Equation(s):
// x_r12_add11_8i4_anx43955z1 = (r13_6_ $ r14_6_ $ !x_r12_add11_8i4_anx62798z14) # GND
// x_r12_add11_8i4_anx62798z11 = CARRY(r13_6_ & (r14_6_ # !x_r12_add11_8i4_anx62798z14) # !r13_6_ & r14_6_ & !x_r12_add11_8i4_anx62798z14)

	.dataa(r13_6_),
	.datab(r14_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r12_add11_8i4_anx62798z14),
	.combout(x_r12_add11_8i4_anx43955z1),
	.cout(x_r12_add11_8i4_anx62798z11));
// synopsys translate_off
defparam x_r12_add11_8i4_aix62798z52928.lut_mask = 16'h698E;
defparam x_r12_add11_8i4_aix62798z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y14_N16
cycloneii_lcell_comb x_r12_add11_8i4_aix62798z52926(
// Equation(s):
// x_r12_add11_8i4_anx45949z1 = (r14_8_ $ r13_8_ $ !x_r12_add11_8i4_anx62798z8) # GND
// x_r12_add11_8i4_anx62798z5 = CARRY(r14_8_ & (r13_8_ # !x_r12_add11_8i4_anx62798z8) # !r14_8_ & r13_8_ & !x_r12_add11_8i4_anx62798z8)

	.dataa(r14_8_),
	.datab(r13_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r12_add11_8i4_anx62798z8),
	.combout(x_r12_add11_8i4_anx45949z1),
	.cout(x_r12_add11_8i4_anx62798z5));
// synopsys translate_off
defparam x_r12_add11_8i4_aix62798z52926.lut_mask = 16'h698E;
defparam x_r12_add11_8i4_aix62798z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N28
cycloneii_lcell_comb ix58464z52923(
// Equation(s):
// nx58464z1 = !validBit_2_ & validBit_4_ & !validBit_3_

	.dataa(vcc),
	.datab(validBit_2_),
	.datac(validBit_4_),
	.datad(validBit_3_),
	.cin(gnd),
	.combout(nx58464z1),
	.cout());
// synopsys translate_off
defparam ix58464z52923.lut_mask = 16'h0030;
defparam ix58464z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y14_N17
cycloneii_lcell_ff reg_x_r12_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r12_add11_8i4_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx58464z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r12_8_));

// atom is at LCFF_X57_Y14_N13
cycloneii_lcell_ff reg_x_r12_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r12_add11_8i4_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx58464z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r12_6_));

// atom is at LCFF_X57_Y14_N11
cycloneii_lcell_ff reg_x_r12_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r12_add11_8i4_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx58464z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r12_5_));

// atom is at LCFF_X57_Y14_N7
cycloneii_lcell_ff reg_x_r12_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r12_add11_8i4_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx58464z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r12_3_));

// atom is at LCFF_X57_Y14_N5
cycloneii_lcell_ff reg_x_r12_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r12_add11_8i4_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx58464z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r12_2_));

// atom is at LCFF_X57_Y14_N1
cycloneii_lcell_ff reg_x_r12_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r12_add11_8i4_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx58464z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r12_0_));

// atom is at LCCOMB_X58_Y14_N10
cycloneii_lcell_comb x_r22_add12_8i1_aix63795z52934(
// Equation(s):
// x_r22_add12_8i1_anx38970z1 = x_r12_1_ & (x_r12_2_ & x_r22_add12_8i1_anx63795z23 & VCC # !x_r12_2_ & !x_r22_add12_8i1_anx63795z23) # !x_r12_1_ & (x_r12_2_ & !x_r22_add12_8i1_anx63795z23 # !x_r12_2_ & (x_r22_add12_8i1_anx63795z23 # GND))
// x_r22_add12_8i1_anx63795z21 = CARRY(x_r12_1_ & !x_r12_2_ & !x_r22_add12_8i1_anx63795z23 # !x_r12_1_ & (!x_r22_add12_8i1_anx63795z23 # !x_r12_2_))

	.dataa(x_r12_1_),
	.datab(x_r12_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r22_add12_8i1_anx63795z23),
	.combout(x_r22_add12_8i1_anx38970z1),
	.cout(x_r22_add12_8i1_anx63795z21));
// synopsys translate_off
defparam x_r22_add12_8i1_aix63795z52934.lut_mask = 16'h9617;
defparam x_r22_add12_8i1_aix63795z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y14_N16
cycloneii_lcell_comb x_r22_add12_8i1_aix63795z52931(
// Equation(s):
// x_r22_add12_8i1_anx41961z1 = (x_r12_4_ $ x_r12_5_ $ !x_r22_add12_8i1_anx63795z17) # GND
// x_r22_add12_8i1_anx63795z15 = CARRY(x_r12_4_ & (x_r12_5_ # !x_r22_add12_8i1_anx63795z17) # !x_r12_4_ & x_r12_5_ & !x_r22_add12_8i1_anx63795z17)

	.dataa(x_r12_4_),
	.datab(x_r12_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r22_add12_8i1_anx63795z17),
	.combout(x_r22_add12_8i1_anx41961z1),
	.cout(x_r22_add12_8i1_anx63795z15));
// synopsys translate_off
defparam x_r22_add12_8i1_aix63795z52931.lut_mask = 16'h698E;
defparam x_r22_add12_8i1_aix63795z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y14_N18
cycloneii_lcell_comb x_r22_add12_8i1_aix63795z52930(
// Equation(s):
// x_r22_add12_8i1_anx42958z1 = x_r12_5_ & (x_r12_6_ & x_r22_add12_8i1_anx63795z15 & VCC # !x_r12_6_ & !x_r22_add12_8i1_anx63795z15) # !x_r12_5_ & (x_r12_6_ & !x_r22_add12_8i1_anx63795z15 # !x_r12_6_ & (x_r22_add12_8i1_anx63795z15 # GND))
// x_r22_add12_8i1_anx63795z13 = CARRY(x_r12_5_ & !x_r12_6_ & !x_r22_add12_8i1_anx63795z15 # !x_r12_5_ & (!x_r22_add12_8i1_anx63795z15 # !x_r12_6_))

	.dataa(x_r12_5_),
	.datab(x_r12_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r22_add12_8i1_anx63795z15),
	.combout(x_r22_add12_8i1_anx42958z1),
	.cout(x_r22_add12_8i1_anx63795z13));
// synopsys translate_off
defparam x_r22_add12_8i1_aix63795z52930.lut_mask = 16'h9617;
defparam x_r22_add12_8i1_aix63795z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y14_N22
cycloneii_lcell_comb x_r22_add12_8i1_aix63795z52928(
// Equation(s):
// x_r22_add12_8i1_anx44952z1 = x_r12_7_ & (x_r12_8_ & x_r22_add12_8i1_anx63795z11 & VCC # !x_r12_8_ & !x_r22_add12_8i1_anx63795z11) # !x_r12_7_ & (x_r12_8_ & !x_r22_add12_8i1_anx63795z11 # !x_r12_8_ & (x_r22_add12_8i1_anx63795z11 # GND))
// x_r22_add12_8i1_anx63795z9 = CARRY(x_r12_7_ & !x_r12_8_ & !x_r22_add12_8i1_anx63795z11 # !x_r12_7_ & (!x_r22_add12_8i1_anx63795z11 # !x_r12_8_))

	.dataa(x_r12_7_),
	.datab(x_r12_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r22_add12_8i1_anx63795z11),
	.combout(x_r22_add12_8i1_anx44952z1),
	.cout(x_r22_add12_8i1_anx63795z9));
// synopsys translate_off
defparam x_r22_add12_8i1_aix63795z52928.lut_mask = 16'h9617;
defparam x_r22_add12_8i1_aix63795z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N2
cycloneii_lcell_comb ix65254z52923(
// Equation(s):
// nx65254z1 = validBit_5_ & !validBit_4_ & !validBit_3_ & !validBit_2_

	.dataa(validBit_5_),
	.datab(validBit_4_),
	.datac(validBit_3_),
	.datad(validBit_2_),
	.cin(gnd),
	.combout(nx65254z1),
	.cout());
// synopsys translate_off
defparam ix65254z52923.lut_mask = 16'h0002;
defparam ix65254z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y14_N23
cycloneii_lcell_ff reg_x_r22_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r22_add12_8i1_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65254z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r22_8_));

// atom is at LCCOMB_X56_Y16_N22
cycloneii_lcell_comb r5_3__afeeder(
// Equation(s):
// r5_3__afeeder_combout = g_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(g_3_),
	.cin(gnd),
	.combout(r5_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_3__afeeder.lut_mask = 16'hFF00;
defparam r5_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y15_N0
cycloneii_lcell_comb ix24480z52923(
// Equation(s):
// nx24480z1 = nx28524z1 & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[3]) # !nx28524z1 & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[3]

	.dataa(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[3]),
	.datab(nx28524z1),
	.datac(vcc),
	.datad(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(nx24480z1),
	.cout());
// synopsys translate_off
defparam ix24480z52923.lut_mask = 16'hEE22;
defparam ix24480z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y15_N1
cycloneii_lcell_ff reg_c_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx24480z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(state_1_),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_3_));

// atom is at LCFF_X55_Y17_N27
cycloneii_lcell_ff reg_b_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_3_));

// atom is at LCFF_X55_Y16_N3
cycloneii_lcell_ff reg_f_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_4_));

// atom is at LCFF_X55_Y16_N23
cycloneii_lcell_ff reg_g_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_4_));

// atom is at LCFF_X55_Y17_N3
cycloneii_lcell_ff reg_b_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_2_));

// atom is at LCFF_X55_Y16_N31
cycloneii_lcell_ff reg_g_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_1_));

// atom is at LCCOMB_X55_Y16_N14
cycloneii_lcell_comb ix7380z18833_aix100z52931(
// Equation(s):
// ix7380z18833_anx100z22 = CARRY(b_0_ & !g_0_)

	.dataa(b_0_),
	.datab(g_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix7380z18833_anx100z22));
// synopsys translate_off
defparam ix7380z18833_aix100z52931.lut_mask = 16'h0022;
defparam ix7380z18833_aix100z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y16_N16
cycloneii_lcell_comb ix7380z18833_aix100z52930(
// Equation(s):
// ix7380z18833_anx100z19 = CARRY(b_1_ & g_1_ & !ix7380z18833_anx100z22 # !b_1_ & (g_1_ # !ix7380z18833_anx100z22))

	.dataa(b_1_),
	.datab(g_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix7380z18833_anx100z22),
	.combout(),
	.cout(ix7380z18833_anx100z19));
// synopsys translate_off
defparam ix7380z18833_aix100z52930.lut_mask = 16'h004D;
defparam ix7380z18833_aix100z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y16_N18
cycloneii_lcell_comb ix7380z18833_aix100z52929(
// Equation(s):
// ix7380z18833_anx100z16 = CARRY(g_2_ & b_2_ & !ix7380z18833_anx100z19 # !g_2_ & (b_2_ # !ix7380z18833_anx100z19))

	.dataa(g_2_),
	.datab(b_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix7380z18833_anx100z19),
	.combout(),
	.cout(ix7380z18833_anx100z16));
// synopsys translate_off
defparam ix7380z18833_aix100z52929.lut_mask = 16'h004D;
defparam ix7380z18833_aix100z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y16_N20
cycloneii_lcell_comb ix7380z18833_aix100z52928(
// Equation(s):
// ix7380z18833_anx100z13 = CARRY(b_3_ & g_3_ & !ix7380z18833_anx100z16 # !b_3_ & (g_3_ # !ix7380z18833_anx100z16))

	.dataa(b_3_),
	.datab(g_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix7380z18833_anx100z16),
	.combout(),
	.cout(ix7380z18833_anx100z13));
// synopsys translate_off
defparam ix7380z18833_aix100z52928.lut_mask = 16'h004D;
defparam ix7380z18833_aix100z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y16_N22
cycloneii_lcell_comb ix7380z18833_aix100z52927(
// Equation(s):
// ix7380z18833_anx100z10 = CARRY(b_4_ & (!ix7380z18833_anx100z13 # !g_4_) # !b_4_ & !g_4_ & !ix7380z18833_anx100z13)

	.dataa(b_4_),
	.datab(g_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix7380z18833_anx100z13),
	.combout(),
	.cout(ix7380z18833_anx100z10));
// synopsys translate_off
defparam ix7380z18833_aix100z52927.lut_mask = 16'h002B;
defparam ix7380z18833_aix100z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y16_N24
cycloneii_lcell_comb ix7380z18833_aix100z52926(
// Equation(s):
// ix7380z18833_anx100z7 = CARRY(g_5_ & (!ix7380z18833_anx100z10 # !b_5_) # !g_5_ & !b_5_ & !ix7380z18833_anx100z10)

	.dataa(g_5_),
	.datab(b_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix7380z18833_anx100z10),
	.combout(),
	.cout(ix7380z18833_anx100z7));
// synopsys translate_off
defparam ix7380z18833_aix100z52926.lut_mask = 16'h002B;
defparam ix7380z18833_aix100z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y16_N26
cycloneii_lcell_comb ix7380z18833_aix100z52925(
// Equation(s):
// ix7380z18833_anx100z4 = CARRY(g_6_ & b_6_ & !ix7380z18833_anx100z7 # !g_6_ & (b_6_ # !ix7380z18833_anx100z7))

	.dataa(g_6_),
	.datab(b_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix7380z18833_anx100z7),
	.combout(),
	.cout(ix7380z18833_anx100z4));
// synopsys translate_off
defparam ix7380z18833_aix100z52925.lut_mask = 16'h004D;
defparam ix7380z18833_aix100z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y16_N28
cycloneii_lcell_comb ix7380z18833_aix100z52923(
// Equation(s):
// ix7380z18833_anx100z1 = g_7_ & ix7380z18833_anx100z4 & b_7_ # !g_7_ & (ix7380z18833_anx100z4 # b_7_)

	.dataa(g_7_),
	.datab(vcc),
	.datac(vcc),
	.datad(b_7_),
	.cin(ix7380z18833_anx100z4),
	.combout(ix7380z18833_anx100z1),
	.cout());
// synopsys translate_off
defparam ix7380z18833_aix100z52923.lut_mask = 16'hF550;
defparam ix7380z18833_aix100z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N8
cycloneii_lcell_comb ix7380z52923(
// Equation(s):
// nx7380z1 = validBit_1_ & !validBit_0_

	.dataa(validBit_1_),
	.datab(vcc),
	.datac(validBit_0_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx7380z1),
	.cout());
// synopsys translate_off
defparam ix7380z52923.lut_mask = 16'h0A0A;
defparam ix7380z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N23
cycloneii_lcell_ff reg_r5_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_3__afeeder_combout),
	.sdata(b_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix7380z18833_anx100z1),
	.ena(nx7380z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_3_));

// atom is at LCCOMB_X57_Y16_N16
cycloneii_lcell_comb x_r5_3__afeeder(
// Equation(s):
// x_r5_3__afeeder_combout = c_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(c_3_),
	.cin(gnd),
	.combout(x_r5_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r5_3__afeeder.lut_mask = 16'hFF00;
defparam x_r5_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y15_N30
cycloneii_lcell_comb ix27471z52923(
// Equation(s):
// nx27471z1 = nx28524z1 & Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[0] # !nx28524z1 & (Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[0])

	.dataa(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[0]),
	.datab(nx28524z1),
	.datac(vcc),
	.datad(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx27471z1),
	.cout());
// synopsys translate_off
defparam ix27471z52923.lut_mask = 16'hBB88;
defparam ix27471z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y15_N31
cycloneii_lcell_ff reg_c_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx27471z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(state_1_),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_0_));

// atom is at LCCOMB_X53_Y16_N2
cycloneii_lcell_comb ix27953z18832_aix100z52931(
// Equation(s):
// ix27953z18832_anx100z22 = CARRY(f_0_ & !c_0_)

	.dataa(f_0_),
	.datab(c_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix27953z18832_anx100z22));
// synopsys translate_off
defparam ix27953z18832_aix100z52931.lut_mask = 16'h0022;
defparam ix27953z18832_aix100z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y16_N4
cycloneii_lcell_comb ix27953z18832_aix100z52930(
// Equation(s):
// ix27953z18832_anx100z19 = CARRY(f_1_ & c_1_ & !ix27953z18832_anx100z22 # !f_1_ & (c_1_ # !ix27953z18832_anx100z22))

	.dataa(f_1_),
	.datab(c_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix27953z18832_anx100z22),
	.combout(),
	.cout(ix27953z18832_anx100z19));
// synopsys translate_off
defparam ix27953z18832_aix100z52930.lut_mask = 16'h004D;
defparam ix27953z18832_aix100z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y16_N6
cycloneii_lcell_comb ix27953z18832_aix100z52929(
// Equation(s):
// ix27953z18832_anx100z16 = CARRY(c_2_ & f_2_ & !ix27953z18832_anx100z19 # !c_2_ & (f_2_ # !ix27953z18832_anx100z19))

	.dataa(c_2_),
	.datab(f_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix27953z18832_anx100z19),
	.combout(),
	.cout(ix27953z18832_anx100z16));
// synopsys translate_off
defparam ix27953z18832_aix100z52929.lut_mask = 16'h004D;
defparam ix27953z18832_aix100z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y16_N8
cycloneii_lcell_comb ix27953z18832_aix100z52928(
// Equation(s):
// ix27953z18832_anx100z13 = CARRY(c_3_ & (!ix27953z18832_anx100z16 # !f_3_) # !c_3_ & !f_3_ & !ix27953z18832_anx100z16)

	.dataa(c_3_),
	.datab(f_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix27953z18832_anx100z16),
	.combout(),
	.cout(ix27953z18832_anx100z13));
// synopsys translate_off
defparam ix27953z18832_aix100z52928.lut_mask = 16'h002B;
defparam ix27953z18832_aix100z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y16_N10
cycloneii_lcell_comb ix27953z18832_aix100z52927(
// Equation(s):
// ix27953z18832_anx100z10 = CARRY(c_4_ & f_4_ & !ix27953z18832_anx100z13 # !c_4_ & (f_4_ # !ix27953z18832_anx100z13))

	.dataa(c_4_),
	.datab(f_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix27953z18832_anx100z13),
	.combout(),
	.cout(ix27953z18832_anx100z10));
// synopsys translate_off
defparam ix27953z18832_aix100z52927.lut_mask = 16'h004D;
defparam ix27953z18832_aix100z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y16_N12
cycloneii_lcell_comb ix27953z18832_aix100z52926(
// Equation(s):
// ix27953z18832_anx100z7 = CARRY(f_5_ & c_5_ & !ix27953z18832_anx100z10 # !f_5_ & (c_5_ # !ix27953z18832_anx100z10))

	.dataa(f_5_),
	.datab(c_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix27953z18832_anx100z10),
	.combout(),
	.cout(ix27953z18832_anx100z7));
// synopsys translate_off
defparam ix27953z18832_aix100z52926.lut_mask = 16'h004D;
defparam ix27953z18832_aix100z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y16_N14
cycloneii_lcell_comb ix27953z18832_aix100z52925(
// Equation(s):
// ix27953z18832_anx100z4 = CARRY(c_6_ & f_6_ & !ix27953z18832_anx100z7 # !c_6_ & (f_6_ # !ix27953z18832_anx100z7))

	.dataa(c_6_),
	.datab(f_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix27953z18832_anx100z7),
	.combout(),
	.cout(ix27953z18832_anx100z4));
// synopsys translate_off
defparam ix27953z18832_aix100z52925.lut_mask = 16'h004D;
defparam ix27953z18832_aix100z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y16_N16
cycloneii_lcell_comb ix27953z18832_aix100z52923(
// Equation(s):
// ix27953z18832_anx100z1 = c_7_ & ix27953z18832_anx100z4 & f_7_ # !c_7_ & (ix27953z18832_anx100z4 # f_7_)

	.dataa(c_7_),
	.datab(vcc),
	.datac(vcc),
	.datad(f_7_),
	.cin(ix27953z18832_anx100z4),
	.combout(ix27953z18832_anx100z1),
	.cout());
// synopsys translate_off
defparam ix27953z18832_aix100z52923.lut_mask = 16'hF550;
defparam ix27953z18832_aix100z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N16
cycloneii_lcell_comb ix27953z52923(
// Equation(s):
// nx27953z1 = !validBit_0_ & validBit_2_ & !validBit_1_

	.dataa(validBit_0_),
	.datab(validBit_2_),
	.datac(validBit_1_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx27953z1),
	.cout());
// synopsys translate_off
defparam ix27953z52923.lut_mask = 16'h0404;
defparam ix27953z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y16_N17
cycloneii_lcell_ff reg_x_r5_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r5_3__afeeder_combout),
	.sdata(f_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix27953z18832_anx100z1),
	.ena(nx27953z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r5_3_));

// atom is at LCCOMB_X56_Y15_N26
cycloneii_lcell_comb ix8431z52927(
// Equation(s):
// x_r3_7n3s1f1_3_ = validBit_2_ & r5_3_ # !validBit_2_ & (x_r5_3_)

	.dataa(validBit_2_),
	.datab(vcc),
	.datac(r5_3_),
	.datad(x_r5_3_),
	.cin(gnd),
	.combout(x_r3_7n3s1f1_3_),
	.cout());
// synopsys translate_off
defparam ix8431z52927.lut_mask = 16'hF5A0;
defparam ix8431z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y16_N24
cycloneii_lcell_comb r5_2__afeeder(
// Equation(s):
// r5_2__afeeder_combout = g_2_

	.dataa(g_2_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r5_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_2__afeeder.lut_mask = 16'hAAAA;
defparam r5_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N25
cycloneii_lcell_ff reg_r5_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_2__afeeder_combout),
	.sdata(b_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix7380z18833_anx100z1),
	.ena(nx7380z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_2_));

// atom is at LCCOMB_X57_Y16_N18
cycloneii_lcell_comb x_r5_2__afeeder(
// Equation(s):
// x_r5_2__afeeder_combout = c_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(c_2_),
	.cin(gnd),
	.combout(x_r5_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r5_2__afeeder.lut_mask = 16'hFF00;
defparam x_r5_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y16_N19
cycloneii_lcell_ff reg_x_r5_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r5_2__afeeder_combout),
	.sdata(f_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix27953z18832_anx100z1),
	.ena(nx27953z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r5_2_));

// atom is at LCCOMB_X56_Y14_N0
cycloneii_lcell_comb ix8431z52928(
// Equation(s):
// x_r3_7n3s1f1_2_ = validBit_2_ & r5_2_ # !validBit_2_ & (x_r5_2_)

	.dataa(vcc),
	.datab(validBit_2_),
	.datac(r5_2_),
	.datad(x_r5_2_),
	.cin(gnd),
	.combout(x_r3_7n3s1f1_2_),
	.cout());
// synopsys translate_off
defparam ix8431z52928.lut_mask = 16'hF3C0;
defparam ix8431z52928.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y16_N6
cycloneii_lcell_comb x_r5_0__afeeder(
// Equation(s):
// x_r5_0__afeeder_combout = c_0_

	.dataa(vcc),
	.datab(c_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(x_r5_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r5_0__afeeder.lut_mask = 16'hCCCC;
defparam x_r5_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y16_N7
cycloneii_lcell_ff reg_x_r5_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r5_0__afeeder_combout),
	.sdata(f_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix27953z18832_anx100z1),
	.ena(nx27953z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r5_0_));

// atom is at LCCOMB_X56_Y16_N12
cycloneii_lcell_comb r5_0__afeeder(
// Equation(s):
// r5_0__afeeder_combout = g_0_

	.dataa(g_0_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r5_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_0__afeeder.lut_mask = 16'hAAAA;
defparam r5_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y17_N7
cycloneii_lcell_ff reg_b_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_0_));

// atom is at LCFF_X56_Y16_N13
cycloneii_lcell_ff reg_r5_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_0__afeeder_combout),
	.sdata(b_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix7380z18833_anx100z1),
	.ena(nx7380z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_0_));

// atom is at LCCOMB_X56_Y15_N22
cycloneii_lcell_comb ix8431z52930(
// Equation(s):
// x_r3_7n3s1f1_0_ = validBit_2_ & (r5_0_) # !validBit_2_ & x_r5_0_

	.dataa(vcc),
	.datab(x_r5_0_),
	.datac(r5_0_),
	.datad(validBit_2_),
	.cin(gnd),
	.combout(x_r3_7n3s1f1_0_),
	.cout());
// synopsys translate_off
defparam ix8431z52930.lut_mask = 16'hF0CC;
defparam ix8431z52930.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y15_N0
cycloneii_lcell_comb x_r3_add9_7i9_aix45949z52932(
// Equation(s):
// x_r3_add9_7i9_anx37973z1 = r2_0_ & (x_r3_7n3s1f1_0_ $ VCC) # !r2_0_ & x_r3_7n3s1f1_0_ & VCC
// x_r3_add9_7i9_anx45949z24 = CARRY(r2_0_ & x_r3_7n3s1f1_0_)

	.dataa(r2_0_),
	.datab(x_r3_7n3s1f1_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(x_r3_add9_7i9_anx37973z1),
	.cout(x_r3_add9_7i9_anx45949z24));
// synopsys translate_off
defparam x_r3_add9_7i9_aix45949z52932.lut_mask = 16'h6688;
defparam x_r3_add9_7i9_aix45949z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y15_N2
cycloneii_lcell_comb x_r3_add9_7i9_aix45949z52931(
// Equation(s):
// x_r3_add9_7i9_anx38970z1 = x_r3_7n3s1f1_1_ & (r2_1_ & x_r3_add9_7i9_anx45949z24 & VCC # !r2_1_ & !x_r3_add9_7i9_anx45949z24) # !x_r3_7n3s1f1_1_ & (r2_1_ & !x_r3_add9_7i9_anx45949z24 # !r2_1_ & (x_r3_add9_7i9_anx45949z24 # GND))
// x_r3_add9_7i9_anx45949z21 = CARRY(x_r3_7n3s1f1_1_ & !r2_1_ & !x_r3_add9_7i9_anx45949z24 # !x_r3_7n3s1f1_1_ & (!x_r3_add9_7i9_anx45949z24 # !r2_1_))

	.dataa(x_r3_7n3s1f1_1_),
	.datab(r2_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r3_add9_7i9_anx45949z24),
	.combout(x_r3_add9_7i9_anx38970z1),
	.cout(x_r3_add9_7i9_anx45949z21));
// synopsys translate_off
defparam x_r3_add9_7i9_aix45949z52931.lut_mask = 16'h9617;
defparam x_r3_add9_7i9_aix45949z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y15_N4
cycloneii_lcell_comb x_r3_add9_7i9_aix45949z52930(
// Equation(s):
// x_r3_add9_7i9_anx39967z1 = (r2_2_ $ x_r3_7n3s1f1_2_ $ !x_r3_add9_7i9_anx45949z21) # GND
// x_r3_add9_7i9_anx45949z18 = CARRY(r2_2_ & (x_r3_7n3s1f1_2_ # !x_r3_add9_7i9_anx45949z21) # !r2_2_ & x_r3_7n3s1f1_2_ & !x_r3_add9_7i9_anx45949z21)

	.dataa(r2_2_),
	.datab(x_r3_7n3s1f1_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r3_add9_7i9_anx45949z21),
	.combout(x_r3_add9_7i9_anx39967z1),
	.cout(x_r3_add9_7i9_anx45949z18));
// synopsys translate_off
defparam x_r3_add9_7i9_aix45949z52930.lut_mask = 16'h698E;
defparam x_r3_add9_7i9_aix45949z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y15_N6
cycloneii_lcell_comb x_r3_add9_7i9_aix45949z52929(
// Equation(s):
// x_r3_add9_7i9_anx40964z1 = r2_3_ & (x_r3_7n3s1f1_3_ & x_r3_add9_7i9_anx45949z18 & VCC # !x_r3_7n3s1f1_3_ & !x_r3_add9_7i9_anx45949z18) # !r2_3_ & (x_r3_7n3s1f1_3_ & !x_r3_add9_7i9_anx45949z18 # !x_r3_7n3s1f1_3_ & (x_r3_add9_7i9_anx45949z18 # GND))
// x_r3_add9_7i9_anx45949z15 = CARRY(r2_3_ & !x_r3_7n3s1f1_3_ & !x_r3_add9_7i9_anx45949z18 # !r2_3_ & (!x_r3_add9_7i9_anx45949z18 # !x_r3_7n3s1f1_3_))

	.dataa(r2_3_),
	.datab(x_r3_7n3s1f1_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r3_add9_7i9_anx45949z18),
	.combout(x_r3_add9_7i9_anx40964z1),
	.cout(x_r3_add9_7i9_anx45949z15));
// synopsys translate_off
defparam x_r3_add9_7i9_aix45949z52929.lut_mask = 16'h9617;
defparam x_r3_add9_7i9_aix45949z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y15_N8
cycloneii_lcell_comb x_r3_add9_7i9_aix45949z52928(
// Equation(s):
// x_r3_add9_7i9_anx41961z1 = (x_r3_7n3s1f1_4_ $ r2_4_ $ !x_r3_add9_7i9_anx45949z15) # GND
// x_r3_add9_7i9_anx45949z12 = CARRY(x_r3_7n3s1f1_4_ & (r2_4_ # !x_r3_add9_7i9_anx45949z15) # !x_r3_7n3s1f1_4_ & r2_4_ & !x_r3_add9_7i9_anx45949z15)

	.dataa(x_r3_7n3s1f1_4_),
	.datab(r2_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r3_add9_7i9_anx45949z15),
	.combout(x_r3_add9_7i9_anx41961z1),
	.cout(x_r3_add9_7i9_anx45949z12));
// synopsys translate_off
defparam x_r3_add9_7i9_aix45949z52928.lut_mask = 16'h698E;
defparam x_r3_add9_7i9_aix45949z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N6
cycloneii_lcell_comb ix56415z52923(
// Equation(s):
// nx56415z1 = validBit_2_ & !validBit_1_

	.dataa(vcc),
	.datab(validBit_2_),
	.datac(validBit_1_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx56415z1),
	.cout());
// synopsys translate_off
defparam ix56415z52923.lut_mask = 16'h0C0C;
defparam ix56415z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y15_N31
cycloneii_lcell_ff reg_x_r3_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(x_r3_add9_7i9_anx41961z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx56415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r3_4_));

// atom is at LCCOMB_X55_Y13_N22
cycloneii_lcell_comb r15_4__afeeder(
// Equation(s):
// r15_4__afeeder_combout = x_r3_4_

	.dataa(vcc),
	.datab(x_r3_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r15_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r15_4__afeeder.lut_mask = 16'hCCCC;
defparam r15_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y14_N8
cycloneii_lcell_comb r9_4__afeeder(
// Equation(s):
// r9_4__afeeder_combout = r2_add8_6i49_anx41961z1

	.dataa(vcc),
	.datab(vcc),
	.datac(r2_add8_6i49_anx41961z1),
	.datad(vcc),
	.cin(gnd),
	.combout(r9_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r9_4__afeeder.lut_mask = 16'hF0F0;
defparam r9_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y14_N9
cycloneii_lcell_ff reg_r9_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r9_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_4_));

// atom is at LCFF_X53_Y17_N5
cycloneii_lcell_ff reg_a_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_3_));

// atom is at LCCOMB_X54_Y13_N28
cycloneii_lcell_comb r10_3__afeeder(
// Equation(s):
// r10_3__afeeder_combout = a_3_

	.dataa(vcc),
	.datab(a_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r10_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r10_3__afeeder.lut_mask = 16'hCCCC;
defparam r10_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y15_N0
cycloneii_lcell_comb ix32637z52923(
// Equation(s):
// nx32637z1 = state_2_ & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[3] # !state_2_ & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[3])

	.dataa(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[3]),
	.datab(state_2_),
	.datac(vcc),
	.datad(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(nx32637z1),
	.cout());
// synopsys translate_off
defparam ix32637z52923.lut_mask = 16'hBB88;
defparam ix32637z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y15_N1
cycloneii_lcell_ff reg_d_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx32637z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!nx28524z1),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_3_));

// atom is at LCFF_X54_Y16_N1
cycloneii_lcell_ff reg_a_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_7_));

// atom is at LCCOMB_X53_Y15_N22
cycloneii_lcell_comb ix33634z52923(
// Equation(s):
// nx33634z1 = state_2_ & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[4] # !state_2_ & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[4])

	.dataa(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[4]),
	.datab(state_2_),
	.datac(vcc),
	.datad(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx33634z1),
	.cout());
// synopsys translate_off
defparam ix33634z52923.lut_mask = 16'hBB88;
defparam ix33634z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y15_N23
cycloneii_lcell_ff reg_d_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx33634z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!nx28524z1),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_4_));

// atom is at LCFF_X53_Y17_N25
cycloneii_lcell_ff reg_a_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_2_));

// atom is at LCFF_X53_Y16_N23
cycloneii_lcell_ff reg_a_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_1_));

// atom is at LCFF_X53_Y17_N29
cycloneii_lcell_ff reg_a_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_0_));

// atom is at LCCOMB_X53_Y17_N6
cycloneii_lcell_comb ix48448z18833_aix100z52931(
// Equation(s):
// ix48448z18833_anx100z22 = CARRY(d_0_ & !a_0_)

	.dataa(d_0_),
	.datab(a_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix48448z18833_anx100z22));
// synopsys translate_off
defparam ix48448z18833_aix100z52931.lut_mask = 16'h0022;
defparam ix48448z18833_aix100z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N8
cycloneii_lcell_comb ix48448z18833_aix100z52930(
// Equation(s):
// ix48448z18833_anx100z19 = CARRY(d_1_ & a_1_ & !ix48448z18833_anx100z22 # !d_1_ & (a_1_ # !ix48448z18833_anx100z22))

	.dataa(d_1_),
	.datab(a_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix48448z18833_anx100z22),
	.combout(),
	.cout(ix48448z18833_anx100z19));
// synopsys translate_off
defparam ix48448z18833_aix100z52930.lut_mask = 16'h004D;
defparam ix48448z18833_aix100z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N10
cycloneii_lcell_comb ix48448z18833_aix100z52929(
// Equation(s):
// ix48448z18833_anx100z16 = CARRY(d_2_ & (!ix48448z18833_anx100z19 # !a_2_) # !d_2_ & !a_2_ & !ix48448z18833_anx100z19)

	.dataa(d_2_),
	.datab(a_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix48448z18833_anx100z19),
	.combout(),
	.cout(ix48448z18833_anx100z16));
// synopsys translate_off
defparam ix48448z18833_aix100z52929.lut_mask = 16'h002B;
defparam ix48448z18833_aix100z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N12
cycloneii_lcell_comb ix48448z18833_aix100z52928(
// Equation(s):
// ix48448z18833_anx100z13 = CARRY(d_3_ & a_3_ & !ix48448z18833_anx100z16 # !d_3_ & (a_3_ # !ix48448z18833_anx100z16))

	.dataa(d_3_),
	.datab(a_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix48448z18833_anx100z16),
	.combout(),
	.cout(ix48448z18833_anx100z13));
// synopsys translate_off
defparam ix48448z18833_aix100z52928.lut_mask = 16'h004D;
defparam ix48448z18833_aix100z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N14
cycloneii_lcell_comb ix48448z18833_aix100z52927(
// Equation(s):
// ix48448z18833_anx100z10 = CARRY(a_4_ & d_4_ & !ix48448z18833_anx100z13 # !a_4_ & (d_4_ # !ix48448z18833_anx100z13))

	.dataa(a_4_),
	.datab(d_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix48448z18833_anx100z13),
	.combout(),
	.cout(ix48448z18833_anx100z10));
// synopsys translate_off
defparam ix48448z18833_aix100z52927.lut_mask = 16'h004D;
defparam ix48448z18833_aix100z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N16
cycloneii_lcell_comb ix48448z18833_aix100z52926(
// Equation(s):
// ix48448z18833_anx100z7 = CARRY(d_5_ & a_5_ & !ix48448z18833_anx100z10 # !d_5_ & (a_5_ # !ix48448z18833_anx100z10))

	.dataa(d_5_),
	.datab(a_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix48448z18833_anx100z10),
	.combout(),
	.cout(ix48448z18833_anx100z7));
// synopsys translate_off
defparam ix48448z18833_aix100z52926.lut_mask = 16'h004D;
defparam ix48448z18833_aix100z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N18
cycloneii_lcell_comb ix48448z18833_aix100z52925(
// Equation(s):
// ix48448z18833_anx100z4 = CARRY(a_6_ & d_6_ & !ix48448z18833_anx100z7 # !a_6_ & (d_6_ # !ix48448z18833_anx100z7))

	.dataa(a_6_),
	.datab(d_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix48448z18833_anx100z7),
	.combout(),
	.cout(ix48448z18833_anx100z4));
// synopsys translate_off
defparam ix48448z18833_aix100z52925.lut_mask = 16'h004D;
defparam ix48448z18833_aix100z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y17_N20
cycloneii_lcell_comb ix48448z18833_aix100z52923(
// Equation(s):
// ix48448z18833_anx100z1 = d_7_ & (ix48448z18833_anx100z4 # !a_7_) # !d_7_ & ix48448z18833_anx100z4 & !a_7_

	.dataa(d_7_),
	.datab(vcc),
	.datac(vcc),
	.datad(a_7_),
	.cin(ix48448z18833_anx100z4),
	.combout(ix48448z18833_anx100z1),
	.cout());
// synopsys translate_off
defparam ix48448z18833_aix100z52923.lut_mask = 16'hA0FA;
defparam ix48448z18833_aix100z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N29
cycloneii_lcell_ff reg_r10_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r10_3__afeeder_combout),
	.sdata(d_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix48448z18833_anx100z1),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r10_3_));

// atom is at LCCOMB_X54_Y13_N30
cycloneii_lcell_comb r10_1__afeeder(
// Equation(s):
// r10_1__afeeder_combout = a_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(a_1_),
	.cin(gnd),
	.combout(r10_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r10_1__afeeder.lut_mask = 16'hFF00;
defparam r10_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N31
cycloneii_lcell_ff reg_r10_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r10_1__afeeder_combout),
	.sdata(d_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix48448z18833_anx100z1),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r10_1_));

// atom is at LCCOMB_X55_Y14_N30
cycloneii_lcell_comb r10_0__afeeder(
// Equation(s):
// r10_0__afeeder_combout = a_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(a_0_),
	.cin(gnd),
	.combout(r10_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r10_0__afeeder.lut_mask = 16'hFF00;
defparam r10_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y15_N6
cycloneii_lcell_comb ix29646z52923(
// Equation(s):
// nx29646z1 = state_2_ & (Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[0]) # !state_2_ & Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[0]

	.dataa(state_2_),
	.datab(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[0]),
	.datac(vcc),
	.datad(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx29646z1),
	.cout());
// synopsys translate_off
defparam ix29646z52923.lut_mask = 16'hEE44;
defparam ix29646z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y15_N7
cycloneii_lcell_ff reg_d_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx29646z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!nx28524z1),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_0_));

// atom is at LCFF_X55_Y14_N31
cycloneii_lcell_ff reg_r10_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r10_0__afeeder_combout),
	.sdata(d_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix48448z18833_anx100z1),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r10_0_));

// atom is at LCCOMB_X54_Y13_N8
cycloneii_lcell_comb b_d1_add9_7i10_aix45949z52932(
// Equation(s):
// b_d1_add9_7i10_anx37973z1 = r9_0_ & (r10_0_ $ VCC) # !r9_0_ & r10_0_ & VCC
// b_d1_add9_7i10_anx45949z24 = CARRY(r9_0_ & r10_0_)

	.dataa(r9_0_),
	.datab(r10_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(b_d1_add9_7i10_anx37973z1),
	.cout(b_d1_add9_7i10_anx45949z24));
// synopsys translate_off
defparam b_d1_add9_7i10_aix45949z52932.lut_mask = 16'h6688;
defparam b_d1_add9_7i10_aix45949z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N10
cycloneii_lcell_comb b_d1_add9_7i10_aix45949z52931(
// Equation(s):
// b_d1_add9_7i10_anx38970z1 = r9_1_ & (r10_1_ & b_d1_add9_7i10_anx45949z24 & VCC # !r10_1_ & !b_d1_add9_7i10_anx45949z24) # !r9_1_ & (r10_1_ & !b_d1_add9_7i10_anx45949z24 # !r10_1_ & (b_d1_add9_7i10_anx45949z24 # GND))
// b_d1_add9_7i10_anx45949z21 = CARRY(r9_1_ & !r10_1_ & !b_d1_add9_7i10_anx45949z24 # !r9_1_ & (!b_d1_add9_7i10_anx45949z24 # !r10_1_))

	.dataa(r9_1_),
	.datab(r10_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(b_d1_add9_7i10_anx45949z24),
	.combout(b_d1_add9_7i10_anx38970z1),
	.cout(b_d1_add9_7i10_anx45949z21));
// synopsys translate_off
defparam b_d1_add9_7i10_aix45949z52931.lut_mask = 16'h9617;
defparam b_d1_add9_7i10_aix45949z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N14
cycloneii_lcell_comb b_d1_add9_7i10_aix45949z52929(
// Equation(s):
// b_d1_add9_7i10_anx40964z1 = r9_3_ & (r10_3_ & b_d1_add9_7i10_anx45949z18 & VCC # !r10_3_ & !b_d1_add9_7i10_anx45949z18) # !r9_3_ & (r10_3_ & !b_d1_add9_7i10_anx45949z18 # !r10_3_ & (b_d1_add9_7i10_anx45949z18 # GND))
// b_d1_add9_7i10_anx45949z15 = CARRY(r9_3_ & !r10_3_ & !b_d1_add9_7i10_anx45949z18 # !r9_3_ & (!b_d1_add9_7i10_anx45949z18 # !r10_3_))

	.dataa(r9_3_),
	.datab(r10_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(b_d1_add9_7i10_anx45949z18),
	.combout(b_d1_add9_7i10_anx40964z1),
	.cout(b_d1_add9_7i10_anx45949z15));
// synopsys translate_off
defparam b_d1_add9_7i10_aix45949z52929.lut_mask = 16'h9617;
defparam b_d1_add9_7i10_aix45949z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N16
cycloneii_lcell_comb b_d1_add9_7i10_aix45949z52928(
// Equation(s):
// b_d1_add9_7i10_anx41961z1 = (r10_4_ $ r9_4_ $ !b_d1_add9_7i10_anx45949z15) # GND
// b_d1_add9_7i10_anx45949z12 = CARRY(r10_4_ & (r9_4_ # !b_d1_add9_7i10_anx45949z15) # !r10_4_ & r9_4_ & !b_d1_add9_7i10_anx45949z15)

	.dataa(r10_4_),
	.datab(r9_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(b_d1_add9_7i10_anx45949z15),
	.combout(b_d1_add9_7i10_anx41961z1),
	.cout(b_d1_add9_7i10_anx45949z12));
// synopsys translate_off
defparam b_d1_add9_7i10_aix45949z52928.lut_mask = 16'h698E;
defparam b_d1_add9_7i10_aix45949z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N17
cycloneii_lcell_ff reg_b_d1_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_d1_add9_7i10_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_d1_4_));

// atom is at LCCOMB_X55_Y14_N24
cycloneii_lcell_comb r9_8__afeeder(
// Equation(s):
// r9_8__afeeder_combout = r2_add8_6i49_anx23445z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_add8_6i49_anx23445z1),
	.cin(gnd),
	.combout(r9_8__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r9_8__afeeder.lut_mask = 16'hFF00;
defparam r9_8__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y14_N25
cycloneii_lcell_ff reg_r9_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r9_8__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_8_));

// atom is at LCCOMB_X54_Y13_N0
cycloneii_lcell_comb r10_7__afeeder(
// Equation(s):
// r10_7__afeeder_combout = a_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(a_7_),
	.cin(gnd),
	.combout(r10_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r10_7__afeeder.lut_mask = 16'hFF00;
defparam r10_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y15_N16
cycloneii_lcell_comb ix36625z52923(
// Equation(s):
// nx36625z1 = state_2_ & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[7] # !state_2_ & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[7])

	.dataa(Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a[7]),
	.datab(state_2_),
	.datac(vcc),
	.datad(Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx36625z1),
	.cout());
// synopsys translate_off
defparam ix36625z52923.lut_mask = 16'hBB88;
defparam ix36625z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y15_N17
cycloneii_lcell_ff reg_d_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx36625z1),
	.sdata(Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!nx28524z1),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_7_));

// atom is at LCFF_X54_Y13_N1
cycloneii_lcell_ff reg_r10_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r10_7__afeeder_combout),
	.sdata(d_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix48448z18833_anx100z1),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r10_7_));

// atom is at LCFF_X53_Y17_N1
cycloneii_lcell_ff reg_a_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_6_));

// atom is at LCCOMB_X54_Y13_N4
cycloneii_lcell_comb r10_6__afeeder(
// Equation(s):
// r10_6__afeeder_combout = a_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(a_6_),
	.cin(gnd),
	.combout(r10_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r10_6__afeeder.lut_mask = 16'hFF00;
defparam r10_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N5
cycloneii_lcell_ff reg_r10_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r10_6__afeeder_combout),
	.sdata(d_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix48448z18833_anx100z1),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r10_6_));

// atom is at LCCOMB_X53_Y14_N22
cycloneii_lcell_comb r9_5__afeeder(
// Equation(s):
// r9_5__afeeder_combout = r2_add8_6i49_anx42958z1

	.dataa(vcc),
	.datab(vcc),
	.datac(r2_add8_6i49_anx42958z1),
	.datad(vcc),
	.cin(gnd),
	.combout(r9_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r9_5__afeeder.lut_mask = 16'hF0F0;
defparam r9_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y14_N23
cycloneii_lcell_ff reg_r9_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r9_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_5_));

// atom is at LCCOMB_X54_Y13_N18
cycloneii_lcell_comb b_d1_add9_7i10_aix45949z52927(
// Equation(s):
// b_d1_add9_7i10_anx42958z1 = r10_5_ & (r9_5_ & b_d1_add9_7i10_anx45949z12 & VCC # !r9_5_ & !b_d1_add9_7i10_anx45949z12) # !r10_5_ & (r9_5_ & !b_d1_add9_7i10_anx45949z12 # !r9_5_ & (b_d1_add9_7i10_anx45949z12 # GND))
// b_d1_add9_7i10_anx45949z9 = CARRY(r10_5_ & !r9_5_ & !b_d1_add9_7i10_anx45949z12 # !r10_5_ & (!b_d1_add9_7i10_anx45949z12 # !r9_5_))

	.dataa(r10_5_),
	.datab(r9_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(b_d1_add9_7i10_anx45949z12),
	.combout(b_d1_add9_7i10_anx42958z1),
	.cout(b_d1_add9_7i10_anx45949z9));
// synopsys translate_off
defparam b_d1_add9_7i10_aix45949z52927.lut_mask = 16'h9617;
defparam b_d1_add9_7i10_aix45949z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N20
cycloneii_lcell_comb b_d1_add9_7i10_aix45949z52926(
// Equation(s):
// b_d1_add9_7i10_anx43955z1 = (r9_6_ $ r10_6_ $ !b_d1_add9_7i10_anx45949z9) # GND
// b_d1_add9_7i10_anx45949z6 = CARRY(r9_6_ & (r10_6_ # !b_d1_add9_7i10_anx45949z9) # !r9_6_ & r10_6_ & !b_d1_add9_7i10_anx45949z9)

	.dataa(r9_6_),
	.datab(r10_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(b_d1_add9_7i10_anx45949z9),
	.combout(b_d1_add9_7i10_anx43955z1),
	.cout(b_d1_add9_7i10_anx45949z6));
// synopsys translate_off
defparam b_d1_add9_7i10_aix45949z52926.lut_mask = 16'h698E;
defparam b_d1_add9_7i10_aix45949z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N22
cycloneii_lcell_comb b_d1_add9_7i10_aix45949z52925(
// Equation(s):
// b_d1_add9_7i10_anx44952z1 = r9_7_ & (r10_7_ & b_d1_add9_7i10_anx45949z6 & VCC # !r10_7_ & !b_d1_add9_7i10_anx45949z6) # !r9_7_ & (r10_7_ & !b_d1_add9_7i10_anx45949z6 # !r10_7_ & (b_d1_add9_7i10_anx45949z6 # GND))
// b_d1_add9_7i10_anx45949z3 = CARRY(r9_7_ & !r10_7_ & !b_d1_add9_7i10_anx45949z6 # !r9_7_ & (!b_d1_add9_7i10_anx45949z6 # !r10_7_))

	.dataa(r9_7_),
	.datab(r10_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(b_d1_add9_7i10_anx45949z6),
	.combout(b_d1_add9_7i10_anx44952z1),
	.cout(b_d1_add9_7i10_anx45949z3));
// synopsys translate_off
defparam b_d1_add9_7i10_aix45949z52925.lut_mask = 16'h9617;
defparam b_d1_add9_7i10_aix45949z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N24
cycloneii_lcell_comb b_d1_add9_7i10_aix45949z52923(
// Equation(s):
// b_d1_add9_7i10_anx45949z1 = r9_8_ & (b_d1_add9_7i10_anx45949z3 $ GND) # !r9_8_ & !b_d1_add9_7i10_anx45949z3 & VCC
// b_d1_add9_7i10_anx23445z2 = CARRY(r9_8_ & !b_d1_add9_7i10_anx45949z3)

	.dataa(vcc),
	.datab(r9_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(b_d1_add9_7i10_anx45949z3),
	.combout(b_d1_add9_7i10_anx45949z1),
	.cout(b_d1_add9_7i10_anx23445z2));
// synopsys translate_off
defparam b_d1_add9_7i10_aix45949z52923.lut_mask = 16'hC30C;
defparam b_d1_add9_7i10_aix45949z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N26
cycloneii_lcell_comb b_d1_add9_7i10_aix23445z52923(
// Equation(s):
// b_d1_add9_7i10_anx23445z1 = b_d1_add9_7i10_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(b_d1_add9_7i10_anx23445z2),
	.combout(b_d1_add9_7i10_anx23445z1),
	.cout());
// synopsys translate_off
defparam b_d1_add9_7i10_aix23445z52923.lut_mask = 16'hF0F0;
defparam b_d1_add9_7i10_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N27
cycloneii_lcell_ff reg_b_d1_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_d1_add9_7i10_anx23445z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_d1_9_));

// atom is at LCFF_X54_Y16_N25
cycloneii_lcell_ff reg_g_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_7_));

// atom is at LCCOMB_X56_Y16_N26
cycloneii_lcell_comb r5_7__afeeder(
// Equation(s):
// r5_7__afeeder_combout = g_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(g_7_),
	.cin(gnd),
	.combout(r5_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_7__afeeder.lut_mask = 16'hFF00;
defparam r5_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N27
cycloneii_lcell_ff reg_r5_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_7__afeeder_combout),
	.sdata(b_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix7380z18833_anx100z1),
	.ena(nx7380z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_7_));

// atom is at LCCOMB_X57_Y16_N8
cycloneii_lcell_comb x_r5_7__afeeder(
// Equation(s):
// x_r5_7__afeeder_combout = c_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(c_7_),
	.cin(gnd),
	.combout(x_r5_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r5_7__afeeder.lut_mask = 16'hFF00;
defparam x_r5_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y16_N9
cycloneii_lcell_ff reg_x_r5_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r5_7__afeeder_combout),
	.sdata(f_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix27953z18832_anx100z1),
	.ena(nx27953z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r5_7_));

// atom is at LCCOMB_X56_Y16_N4
cycloneii_lcell_comb ix8431z52923(
// Equation(s):
// x_r3_7n3s1f1_7_ = validBit_2_ & r5_7_ # !validBit_2_ & (x_r5_7_)

	.dataa(vcc),
	.datab(r5_7_),
	.datac(x_r5_7_),
	.datad(validBit_2_),
	.cin(gnd),
	.combout(x_r3_7n3s1f1_7_),
	.cout());
// synopsys translate_off
defparam ix8431z52923.lut_mask = 16'hCCF0;
defparam ix8431z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y16_N2
cycloneii_lcell_comb r5_5__afeeder(
// Equation(s):
// r5_5__afeeder_combout = g_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(g_5_),
	.cin(gnd),
	.combout(r5_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_5__afeeder.lut_mask = 16'hFF00;
defparam r5_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N3
cycloneii_lcell_ff reg_r5_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_5__afeeder_combout),
	.sdata(b_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix7380z18833_anx100z1),
	.ena(nx7380z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_5_));

// atom is at LCCOMB_X56_Y15_N30
cycloneii_lcell_comb ix8431z52925(
// Equation(s):
// x_r3_7n3s1f1_5_ = validBit_2_ & (r5_5_) # !validBit_2_ & x_r5_5_

	.dataa(x_r5_5_),
	.datab(r5_5_),
	.datac(vcc),
	.datad(validBit_2_),
	.cin(gnd),
	.combout(x_r3_7n3s1f1_5_),
	.cout());
// synopsys translate_off
defparam ix8431z52925.lut_mask = 16'hCCAA;
defparam ix8431z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y15_N10
cycloneii_lcell_comb x_r3_add9_7i9_aix45949z52927(
// Equation(s):
// x_r3_add9_7i9_anx42958z1 = r2_5_ & (x_r3_7n3s1f1_5_ & x_r3_add9_7i9_anx45949z12 & VCC # !x_r3_7n3s1f1_5_ & !x_r3_add9_7i9_anx45949z12) # !r2_5_ & (x_r3_7n3s1f1_5_ & !x_r3_add9_7i9_anx45949z12 # !x_r3_7n3s1f1_5_ & (x_r3_add9_7i9_anx45949z12 # GND))
// x_r3_add9_7i9_anx45949z9 = CARRY(r2_5_ & !x_r3_7n3s1f1_5_ & !x_r3_add9_7i9_anx45949z12 # !r2_5_ & (!x_r3_add9_7i9_anx45949z12 # !x_r3_7n3s1f1_5_))

	.dataa(r2_5_),
	.datab(x_r3_7n3s1f1_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r3_add9_7i9_anx45949z12),
	.combout(x_r3_add9_7i9_anx42958z1),
	.cout(x_r3_add9_7i9_anx45949z9));
// synopsys translate_off
defparam x_r3_add9_7i9_aix45949z52927.lut_mask = 16'h9617;
defparam x_r3_add9_7i9_aix45949z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y15_N12
cycloneii_lcell_comb x_r3_add9_7i9_aix45949z52926(
// Equation(s):
// x_r3_add9_7i9_anx43955z1 = (x_r3_7n3s1f1_6_ $ r2_6_ $ !x_r3_add9_7i9_anx45949z9) # GND
// x_r3_add9_7i9_anx45949z6 = CARRY(x_r3_7n3s1f1_6_ & (r2_6_ # !x_r3_add9_7i9_anx45949z9) # !x_r3_7n3s1f1_6_ & r2_6_ & !x_r3_add9_7i9_anx45949z9)

	.dataa(x_r3_7n3s1f1_6_),
	.datab(r2_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r3_add9_7i9_anx45949z9),
	.combout(x_r3_add9_7i9_anx43955z1),
	.cout(x_r3_add9_7i9_anx45949z6));
// synopsys translate_off
defparam x_r3_add9_7i9_aix45949z52926.lut_mask = 16'h698E;
defparam x_r3_add9_7i9_aix45949z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y15_N14
cycloneii_lcell_comb x_r3_add9_7i9_aix45949z52925(
// Equation(s):
// x_r3_add9_7i9_anx44952z1 = r2_7_ & (x_r3_7n3s1f1_7_ & x_r3_add9_7i9_anx45949z6 & VCC # !x_r3_7n3s1f1_7_ & !x_r3_add9_7i9_anx45949z6) # !r2_7_ & (x_r3_7n3s1f1_7_ & !x_r3_add9_7i9_anx45949z6 # !x_r3_7n3s1f1_7_ & (x_r3_add9_7i9_anx45949z6 # GND))
// x_r3_add9_7i9_anx45949z3 = CARRY(r2_7_ & !x_r3_7n3s1f1_7_ & !x_r3_add9_7i9_anx45949z6 # !r2_7_ & (!x_r3_add9_7i9_anx45949z6 # !x_r3_7n3s1f1_7_))

	.dataa(r2_7_),
	.datab(x_r3_7n3s1f1_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r3_add9_7i9_anx45949z6),
	.combout(x_r3_add9_7i9_anx44952z1),
	.cout(x_r3_add9_7i9_anx45949z3));
// synopsys translate_off
defparam x_r3_add9_7i9_aix45949z52925.lut_mask = 16'h9617;
defparam x_r3_add9_7i9_aix45949z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y15_N16
cycloneii_lcell_comb x_r3_add9_7i9_aix45949z52923(
// Equation(s):
// x_r3_add9_7i9_anx45949z1 = r2_8_ & (x_r3_add9_7i9_anx45949z3 $ GND) # !r2_8_ & !x_r3_add9_7i9_anx45949z3 & VCC
// x_r3_add9_7i9_anx23445z2 = CARRY(r2_8_ & !x_r3_add9_7i9_anx45949z3)

	.dataa(r2_8_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r3_add9_7i9_anx45949z3),
	.combout(x_r3_add9_7i9_anx45949z1),
	.cout(x_r3_add9_7i9_anx23445z2));
// synopsys translate_off
defparam x_r3_add9_7i9_aix45949z52923.lut_mask = 16'hA50A;
defparam x_r3_add9_7i9_aix45949z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y15_N18
cycloneii_lcell_comb x_r3_add9_7i9_aix23445z52923(
// Equation(s):
// x_r3_add9_7i9_anx23445z1 = x_r3_add9_7i9_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r3_add9_7i9_anx23445z2),
	.combout(x_r3_add9_7i9_anx23445z1),
	.cout());
// synopsys translate_off
defparam x_r3_add9_7i9_aix23445z52923.lut_mask = 16'hF0F0;
defparam x_r3_add9_7i9_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y15_N19
cycloneii_lcell_ff reg_x_r3_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r3_add9_7i9_anx23445z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx56415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r3_9_));

// atom is at LCFF_X56_Y15_N17
cycloneii_lcell_ff reg_x_r3_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r3_add9_7i9_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx56415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r3_8_));

// atom is at LCFF_X56_Y15_N15
cycloneii_lcell_ff reg_x_r3_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r3_add9_7i9_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx56415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r3_7_));

// atom is at LCFF_X54_Y13_N21
cycloneii_lcell_ff reg_b_d1_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_d1_add9_7i10_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_d1_6_));

// atom is at LCFF_X56_Y15_N21
cycloneii_lcell_ff reg_x_r3_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(x_r3_add9_7i9_anx42958z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx56415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r3_5_));

// atom is at LCFF_X54_Y13_N15
cycloneii_lcell_ff reg_b_d1_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_d1_add9_7i10_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_d1_3_));

// atom is at LCFF_X56_Y13_N29
cycloneii_lcell_ff reg_x_r3_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(x_r3_add9_7i9_anx39967z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx56415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r3_2_));

// atom is at LCCOMB_X56_Y15_N24
cycloneii_lcell_comb x_r3_1__afeeder(
// Equation(s):
// x_r3_1__afeeder_combout = x_r3_add9_7i9_anx38970z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(x_r3_add9_7i9_anx38970z1),
	.cin(gnd),
	.combout(x_r3_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r3_1__afeeder.lut_mask = 16'hFF00;
defparam x_r3_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y15_N25
cycloneii_lcell_ff reg_x_r3_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r3_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx56415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r3_1_));

// atom is at LCFF_X56_Y13_N23
cycloneii_lcell_ff reg_x_r3_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(x_r3_add9_7i9_anx37973z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx56415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r3_0_));

// atom is at LCCOMB_X56_Y13_N0
cycloneii_lcell_comb ix23013z52805_aix100z52933(
// Equation(s):
// ix23013z52805_anx100z28 = CARRY(b_d1_0_ & !x_r3_0_)

	.dataa(b_d1_0_),
	.datab(x_r3_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix23013z52805_anx100z28));
// synopsys translate_off
defparam ix23013z52805_aix100z52933.lut_mask = 16'h0022;
defparam ix23013z52805_aix100z52933.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y13_N2
cycloneii_lcell_comb ix23013z52805_aix100z52932(
// Equation(s):
// ix23013z52805_anx100z25 = CARRY(b_d1_1_ & x_r3_1_ & !ix23013z52805_anx100z28 # !b_d1_1_ & (x_r3_1_ # !ix23013z52805_anx100z28))

	.dataa(b_d1_1_),
	.datab(x_r3_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix23013z52805_anx100z28),
	.combout(),
	.cout(ix23013z52805_anx100z25));
// synopsys translate_off
defparam ix23013z52805_aix100z52932.lut_mask = 16'h004D;
defparam ix23013z52805_aix100z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y13_N4
cycloneii_lcell_comb ix23013z52805_aix100z52931(
// Equation(s):
// ix23013z52805_anx100z22 = CARRY(b_d1_2_ & (!ix23013z52805_anx100z25 # !x_r3_2_) # !b_d1_2_ & !x_r3_2_ & !ix23013z52805_anx100z25)

	.dataa(b_d1_2_),
	.datab(x_r3_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix23013z52805_anx100z25),
	.combout(),
	.cout(ix23013z52805_anx100z22));
// synopsys translate_off
defparam ix23013z52805_aix100z52931.lut_mask = 16'h002B;
defparam ix23013z52805_aix100z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y13_N6
cycloneii_lcell_comb ix23013z52805_aix100z52930(
// Equation(s):
// ix23013z52805_anx100z19 = CARRY(x_r3_3_ & (!ix23013z52805_anx100z22 # !b_d1_3_) # !x_r3_3_ & !b_d1_3_ & !ix23013z52805_anx100z22)

	.dataa(x_r3_3_),
	.datab(b_d1_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix23013z52805_anx100z22),
	.combout(),
	.cout(ix23013z52805_anx100z19));
// synopsys translate_off
defparam ix23013z52805_aix100z52930.lut_mask = 16'h002B;
defparam ix23013z52805_aix100z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y13_N8
cycloneii_lcell_comb ix23013z52805_aix100z52929(
// Equation(s):
// ix23013z52805_anx100z16 = CARRY(x_r3_4_ & b_d1_4_ & !ix23013z52805_anx100z19 # !x_r3_4_ & (b_d1_4_ # !ix23013z52805_anx100z19))

	.dataa(x_r3_4_),
	.datab(b_d1_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix23013z52805_anx100z19),
	.combout(),
	.cout(ix23013z52805_anx100z16));
// synopsys translate_off
defparam ix23013z52805_aix100z52929.lut_mask = 16'h004D;
defparam ix23013z52805_aix100z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y13_N10
cycloneii_lcell_comb ix23013z52805_aix100z52928(
// Equation(s):
// ix23013z52805_anx100z13 = CARRY(b_d1_5_ & x_r3_5_ & !ix23013z52805_anx100z16 # !b_d1_5_ & (x_r3_5_ # !ix23013z52805_anx100z16))

	.dataa(b_d1_5_),
	.datab(x_r3_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix23013z52805_anx100z16),
	.combout(),
	.cout(ix23013z52805_anx100z13));
// synopsys translate_off
defparam ix23013z52805_aix100z52928.lut_mask = 16'h004D;
defparam ix23013z52805_aix100z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y13_N12
cycloneii_lcell_comb ix23013z52805_aix100z52927(
// Equation(s):
// ix23013z52805_anx100z10 = CARRY(x_r3_6_ & b_d1_6_ & !ix23013z52805_anx100z13 # !x_r3_6_ & (b_d1_6_ # !ix23013z52805_anx100z13))

	.dataa(x_r3_6_),
	.datab(b_d1_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix23013z52805_anx100z13),
	.combout(),
	.cout(ix23013z52805_anx100z10));
// synopsys translate_off
defparam ix23013z52805_aix100z52927.lut_mask = 16'h004D;
defparam ix23013z52805_aix100z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y13_N14
cycloneii_lcell_comb ix23013z52805_aix100z52926(
// Equation(s):
// ix23013z52805_anx100z7 = CARRY(b_d1_7_ & x_r3_7_ & !ix23013z52805_anx100z10 # !b_d1_7_ & (x_r3_7_ # !ix23013z52805_anx100z10))

	.dataa(b_d1_7_),
	.datab(x_r3_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix23013z52805_anx100z10),
	.combout(),
	.cout(ix23013z52805_anx100z7));
// synopsys translate_off
defparam ix23013z52805_aix100z52926.lut_mask = 16'h004D;
defparam ix23013z52805_aix100z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y13_N16
cycloneii_lcell_comb ix23013z52805_aix100z52925(
// Equation(s):
// ix23013z52805_anx100z4 = CARRY(b_d1_8_ & (!ix23013z52805_anx100z7 # !x_r3_8_) # !b_d1_8_ & !x_r3_8_ & !ix23013z52805_anx100z7)

	.dataa(b_d1_8_),
	.datab(x_r3_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix23013z52805_anx100z7),
	.combout(),
	.cout(ix23013z52805_anx100z4));
// synopsys translate_off
defparam ix23013z52805_aix100z52925.lut_mask = 16'h002B;
defparam ix23013z52805_aix100z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y13_N18
cycloneii_lcell_comb ix23013z52805_aix100z52923(
// Equation(s):
// ix23013z52805_anx100z1 = b_d1_9_ & (ix23013z52805_anx100z4 # !x_r3_9_) # !b_d1_9_ & ix23013z52805_anx100z4 & !x_r3_9_

	.dataa(vcc),
	.datab(b_d1_9_),
	.datac(vcc),
	.datad(x_r3_9_),
	.cin(ix23013z52805_anx100z4),
	.combout(ix23013z52805_anx100z1),
	.cout());
// synopsys translate_off
defparam ix23013z52805_aix100z52923.lut_mask = 16'hC0FC;
defparam ix23013z52805_aix100z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y13_N23
cycloneii_lcell_ff reg_r15_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r15_4__afeeder_combout),
	.sdata(b_d1_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix23013z52805_anx100z1),
	.ena(validBit_3_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_4_));

// atom is at LCCOMB_X58_Y13_N18
cycloneii_lcell_comb r18_4__afeeder(
// Equation(s):
// r18_4__afeeder_combout = r15_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r15_4_),
	.cin(gnd),
	.combout(r18_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r18_4__afeeder.lut_mask = 16'hFF00;
defparam r18_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y15_N20
cycloneii_lcell_comb x_r11_4__afeeder(
// Equation(s):
// x_r11_4__afeeder_combout = r11_4_

	.dataa(r11_4_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(x_r11_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r11_4__afeeder.lut_mask = 16'hAAAA;
defparam x_r11_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y17_N12
cycloneii_lcell_comb r12_4__afeeder(
// Equation(s):
// r12_4__afeeder_combout = e_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(e_4_),
	.cin(gnd),
	.combout(r12_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_4__afeeder.lut_mask = 16'hFF00;
defparam r12_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y16_N18
cycloneii_lcell_comb i_4__afeeder(
// Equation(s):
// i_4__afeeder_combout = d_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(d_4_),
	.cin(gnd),
	.combout(i_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam i_4__afeeder.lut_mask = 16'hFF00;
defparam i_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y16_N19
cycloneii_lcell_ff reg_i_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(i_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_4_));

// atom is at LCCOMB_X55_Y17_N0
cycloneii_lcell_comb h_4__afeeder(
// Equation(s):
// h_4__afeeder_combout = i_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(i_4_),
	.cin(gnd),
	.combout(h_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam h_4__afeeder.lut_mask = 16'hFF00;
defparam h_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N1
cycloneii_lcell_ff reg_h_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(h_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_4_));

// atom is at LCCOMB_X54_Y16_N22
cycloneii_lcell_comb i_7__afeeder(
// Equation(s):
// i_7__afeeder_combout = d_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(d_7_),
	.cin(gnd),
	.combout(i_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam i_7__afeeder.lut_mask = 16'hFF00;
defparam i_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y16_N23
cycloneii_lcell_ff reg_i_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(i_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_7_));

// atom is at LCCOMB_X54_Y16_N20
cycloneii_lcell_comb h_7__afeeder(
// Equation(s):
// h_7__afeeder_combout = i_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(i_7_),
	.cin(gnd),
	.combout(h_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam h_7__afeeder.lut_mask = 16'hFF00;
defparam h_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y16_N21
cycloneii_lcell_ff reg_h_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(h_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_7_));

// atom is at LCFF_X55_Y17_N17
cycloneii_lcell_ff reg_i_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_3_));

// atom is at LCFF_X55_Y17_N31
cycloneii_lcell_ff reg_h_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_3_));

// atom is at LCFF_X53_Y17_N13
cycloneii_lcell_ff reg_i_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_0_));

// atom is at LCFF_X53_Y17_N3
cycloneii_lcell_ff reg_h_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx36625z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_0_));

// atom is at LCCOMB_X55_Y17_N8
cycloneii_lcell_comb ix250z18831_aix100z52931(
// Equation(s):
// ix250z18831_anx100z22 = CARRY(!e_0_ & h_0_)

	.dataa(e_0_),
	.datab(h_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix250z18831_anx100z22));
// synopsys translate_off
defparam ix250z18831_aix100z52931.lut_mask = 16'h0044;
defparam ix250z18831_aix100z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N10
cycloneii_lcell_comb ix250z18831_aix100z52930(
// Equation(s):
// ix250z18831_anx100z19 = CARRY(h_1_ & e_1_ & !ix250z18831_anx100z22 # !h_1_ & (e_1_ # !ix250z18831_anx100z22))

	.dataa(h_1_),
	.datab(e_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix250z18831_anx100z22),
	.combout(),
	.cout(ix250z18831_anx100z19));
// synopsys translate_off
defparam ix250z18831_aix100z52930.lut_mask = 16'h004D;
defparam ix250z18831_aix100z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N12
cycloneii_lcell_comb ix250z18831_aix100z52929(
// Equation(s):
// ix250z18831_anx100z16 = CARRY(h_2_ & (!ix250z18831_anx100z19 # !e_2_) # !h_2_ & !e_2_ & !ix250z18831_anx100z19)

	.dataa(h_2_),
	.datab(e_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix250z18831_anx100z19),
	.combout(),
	.cout(ix250z18831_anx100z16));
// synopsys translate_off
defparam ix250z18831_aix100z52929.lut_mask = 16'h002B;
defparam ix250z18831_aix100z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N14
cycloneii_lcell_comb ix250z18831_aix100z52928(
// Equation(s):
// ix250z18831_anx100z13 = CARRY(e_3_ & (!ix250z18831_anx100z16 # !h_3_) # !e_3_ & !h_3_ & !ix250z18831_anx100z16)

	.dataa(e_3_),
	.datab(h_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix250z18831_anx100z16),
	.combout(),
	.cout(ix250z18831_anx100z13));
// synopsys translate_off
defparam ix250z18831_aix100z52928.lut_mask = 16'h002B;
defparam ix250z18831_aix100z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N16
cycloneii_lcell_comb ix250z18831_aix100z52927(
// Equation(s):
// ix250z18831_anx100z10 = CARRY(h_4_ & (!ix250z18831_anx100z13 # !e_4_) # !h_4_ & !e_4_ & !ix250z18831_anx100z13)

	.dataa(h_4_),
	.datab(e_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix250z18831_anx100z13),
	.combout(),
	.cout(ix250z18831_anx100z10));
// synopsys translate_off
defparam ix250z18831_aix100z52927.lut_mask = 16'h002B;
defparam ix250z18831_aix100z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N18
cycloneii_lcell_comb ix250z18831_aix100z52926(
// Equation(s):
// ix250z18831_anx100z7 = CARRY(h_5_ & e_5_ & !ix250z18831_anx100z10 # !h_5_ & (e_5_ # !ix250z18831_anx100z10))

	.dataa(h_5_),
	.datab(e_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix250z18831_anx100z10),
	.combout(),
	.cout(ix250z18831_anx100z7));
// synopsys translate_off
defparam ix250z18831_aix100z52926.lut_mask = 16'h004D;
defparam ix250z18831_aix100z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N20
cycloneii_lcell_comb ix250z18831_aix100z52925(
// Equation(s):
// ix250z18831_anx100z4 = CARRY(e_6_ & h_6_ & !ix250z18831_anx100z7 # !e_6_ & (h_6_ # !ix250z18831_anx100z7))

	.dataa(e_6_),
	.datab(h_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix250z18831_anx100z7),
	.combout(),
	.cout(ix250z18831_anx100z4));
// synopsys translate_off
defparam ix250z18831_aix100z52925.lut_mask = 16'h004D;
defparam ix250z18831_aix100z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y17_N22
cycloneii_lcell_comb ix250z18831_aix100z52923(
// Equation(s):
// ix250z18831_anx100z1 = h_7_ & (ix250z18831_anx100z4 # !e_7_) # !h_7_ & ix250z18831_anx100z4 & !e_7_

	.dataa(vcc),
	.datab(h_7_),
	.datac(vcc),
	.datad(e_7_),
	.cin(ix250z18831_anx100z4),
	.combout(ix250z18831_anx100z1),
	.cout());
// synopsys translate_off
defparam ix250z18831_aix100z52923.lut_mask = 16'hC0FC;
defparam ix250z18831_aix100z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y17_N13
cycloneii_lcell_ff reg_r12_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_4__afeeder_combout),
	.sdata(h_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix250z18831_anx100z1),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_4_));

// atom is at LCCOMB_X55_Y15_N28
cycloneii_lcell_comb r12_3__afeeder(
// Equation(s):
// r12_3__afeeder_combout = e_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(e_3_),
	.cin(gnd),
	.combout(r12_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_3__afeeder.lut_mask = 16'hFF00;
defparam r12_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y15_N29
cycloneii_lcell_ff reg_r12_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_3__afeeder_combout),
	.sdata(h_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix250z18831_anx100z1),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_3_));

// atom is at LCCOMB_X54_Y14_N22
cycloneii_lcell_comb r13_2__afeeder(
// Equation(s):
// r13_2__afeeder_combout = r2_add8_6i49_anx39967z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_add8_6i49_anx39967z1),
	.cin(gnd),
	.combout(r13_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r13_2__afeeder.lut_mask = 16'hFF00;
defparam r13_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y14_N23
cycloneii_lcell_ff reg_r13_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r13_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_2_));

// atom is at LCCOMB_X55_Y15_N0
cycloneii_lcell_comb r13_1__afeeder(
// Equation(s):
// r13_1__afeeder_combout = r2_add8_6i49_anx38970z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_add8_6i49_anx38970z1),
	.cin(gnd),
	.combout(r13_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r13_1__afeeder.lut_mask = 16'hFF00;
defparam r13_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y15_N1
cycloneii_lcell_ff reg_r13_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r13_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_1_));

// atom is at LCCOMB_X55_Y15_N30
cycloneii_lcell_comb r12_0__afeeder(
// Equation(s):
// r12_0__afeeder_combout = e_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(e_0_),
	.cin(gnd),
	.combout(r12_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_0__afeeder.lut_mask = 16'hFF00;
defparam r12_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y15_N31
cycloneii_lcell_ff reg_r12_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_0__afeeder_combout),
	.sdata(h_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix250z18831_anx100z1),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_0_));

// atom is at LCCOMB_X55_Y15_N8
cycloneii_lcell_comb r16_add9_7i11_aix45949z52932(
// Equation(s):
// r16_add9_7i11_anx37973z1 = r13_0_ & (r12_0_ $ VCC) # !r13_0_ & r12_0_ & VCC
// r16_add9_7i11_anx45949z24 = CARRY(r13_0_ & r12_0_)

	.dataa(r13_0_),
	.datab(r12_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r16_add9_7i11_anx37973z1),
	.cout(r16_add9_7i11_anx45949z24));
// synopsys translate_off
defparam r16_add9_7i11_aix45949z52932.lut_mask = 16'h6688;
defparam r16_add9_7i11_aix45949z52932.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y15_N10
cycloneii_lcell_comb r16_add9_7i11_aix45949z52931(
// Equation(s):
// r16_add9_7i11_anx38970z1 = r12_1_ & (r13_1_ & r16_add9_7i11_anx45949z24 & VCC # !r13_1_ & !r16_add9_7i11_anx45949z24) # !r12_1_ & (r13_1_ & !r16_add9_7i11_anx45949z24 # !r13_1_ & (r16_add9_7i11_anx45949z24 # GND))
// r16_add9_7i11_anx45949z21 = CARRY(r12_1_ & !r13_1_ & !r16_add9_7i11_anx45949z24 # !r12_1_ & (!r16_add9_7i11_anx45949z24 # !r13_1_))

	.dataa(r12_1_),
	.datab(r13_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(r16_add9_7i11_anx45949z24),
	.combout(r16_add9_7i11_anx38970z1),
	.cout(r16_add9_7i11_anx45949z21));
// synopsys translate_off
defparam r16_add9_7i11_aix45949z52931.lut_mask = 16'h9617;
defparam r16_add9_7i11_aix45949z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y15_N12
cycloneii_lcell_comb r16_add9_7i11_aix45949z52930(
// Equation(s):
// r16_add9_7i11_anx39967z1 = (r12_2_ $ r13_2_ $ !r16_add9_7i11_anx45949z21) # GND
// r16_add9_7i11_anx45949z18 = CARRY(r12_2_ & (r13_2_ # !r16_add9_7i11_anx45949z21) # !r12_2_ & r13_2_ & !r16_add9_7i11_anx45949z21)

	.dataa(r12_2_),
	.datab(r13_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(r16_add9_7i11_anx45949z21),
	.combout(r16_add9_7i11_anx39967z1),
	.cout(r16_add9_7i11_anx45949z18));
// synopsys translate_off
defparam r16_add9_7i11_aix45949z52930.lut_mask = 16'h698E;
defparam r16_add9_7i11_aix45949z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y15_N16
cycloneii_lcell_comb r16_add9_7i11_aix45949z52928(
// Equation(s):
// r16_add9_7i11_anx41961z1 = (r13_4_ $ r12_4_ $ !r16_add9_7i11_anx45949z15) # GND
// r16_add9_7i11_anx45949z12 = CARRY(r13_4_ & (r12_4_ # !r16_add9_7i11_anx45949z15) # !r13_4_ & r12_4_ & !r16_add9_7i11_anx45949z15)

	.dataa(r13_4_),
	.datab(r12_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(r16_add9_7i11_anx45949z15),
	.combout(r16_add9_7i11_anx41961z1),
	.cout(r16_add9_7i11_anx45949z12));
// synopsys translate_off
defparam r16_add9_7i11_aix45949z52928.lut_mask = 16'h698E;
defparam r16_add9_7i11_aix45949z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N26
cycloneii_lcell_comb ix34104z52923(
// Equation(s):
// nx34104z1 = !validBit_1_ & validBit_4_ & !validBit_2_ & !validBit_3_

	.dataa(validBit_1_),
	.datab(validBit_4_),
	.datac(validBit_2_),
	.datad(validBit_3_),
	.cin(gnd),
	.combout(nx34104z1),
	.cout());
// synopsys translate_off
defparam ix34104z52923.lut_mask = 16'h0004;
defparam ix34104z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y15_N17
cycloneii_lcell_ff reg_r16_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r16_add9_7i11_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx34104z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r16_4_));

// atom is at LCFF_X54_Y14_N9
cycloneii_lcell_ff reg_r13_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r2_add8_6i49_anx44952z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_7_));

// atom is at LCCOMB_X55_Y15_N2
cycloneii_lcell_comb r12_6__afeeder(
// Equation(s):
// r12_6__afeeder_combout = e_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(e_6_),
	.cin(gnd),
	.combout(r12_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_6__afeeder.lut_mask = 16'hFF00;
defparam r12_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y15_N3
cycloneii_lcell_ff reg_r12_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_6__afeeder_combout),
	.sdata(h_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix250z18831_anx100z1),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_6_));

// atom is at LCFF_X54_Y14_N13
cycloneii_lcell_ff reg_r13_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r2_add8_6i49_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_5_));

// atom is at LCCOMB_X55_Y15_N20
cycloneii_lcell_comb r16_add9_7i11_aix45949z52926(
// Equation(s):
// r16_add9_7i11_anx43955z1 = (r13_6_ $ r12_6_ $ !r16_add9_7i11_anx45949z9) # GND
// r16_add9_7i11_anx45949z6 = CARRY(r13_6_ & (r12_6_ # !r16_add9_7i11_anx45949z9) # !r13_6_ & r12_6_ & !r16_add9_7i11_anx45949z9)

	.dataa(r13_6_),
	.datab(r12_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(r16_add9_7i11_anx45949z9),
	.combout(r16_add9_7i11_anx43955z1),
	.cout(r16_add9_7i11_anx45949z6));
// synopsys translate_off
defparam r16_add9_7i11_aix45949z52926.lut_mask = 16'h698E;
defparam r16_add9_7i11_aix45949z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y15_N24
cycloneii_lcell_comb r16_add9_7i11_aix45949z52923(
// Equation(s):
// r16_add9_7i11_anx45949z1 = r13_8_ & (r16_add9_7i11_anx45949z3 $ GND) # !r13_8_ & !r16_add9_7i11_anx45949z3 & VCC
// r16_add9_7i11_anx23445z2 = CARRY(r13_8_ & !r16_add9_7i11_anx45949z3)

	.dataa(vcc),
	.datab(r13_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(r16_add9_7i11_anx45949z3),
	.combout(r16_add9_7i11_anx45949z1),
	.cout(r16_add9_7i11_anx23445z2));
// synopsys translate_off
defparam r16_add9_7i11_aix45949z52923.lut_mask = 16'hC30C;
defparam r16_add9_7i11_aix45949z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X55_Y15_N26
cycloneii_lcell_comb r16_add9_7i11_aix23445z52923(
// Equation(s):
// r16_add9_7i11_anx23445z1 = r16_add9_7i11_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(r16_add9_7i11_anx23445z2),
	.combout(r16_add9_7i11_anx23445z1),
	.cout());
// synopsys translate_off
defparam r16_add9_7i11_aix23445z52923.lut_mask = 16'hF0F0;
defparam r16_add9_7i11_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y15_N27
cycloneii_lcell_ff reg_r16_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r16_add9_7i11_anx23445z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx34104z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r16_9_));

// atom is at LCCOMB_X54_Y17_N20
cycloneii_lcell_comb ix54873z52923(
// Equation(s):
// nx54873z1 = !validBit_2_ & !validBit_1_ & validBit_3_

	.dataa(vcc),
	.datab(validBit_2_),
	.datac(validBit_1_),
	.datad(validBit_3_),
	.cin(gnd),
	.combout(nx54873z1),
	.cout());
// synopsys translate_off
defparam ix54873z52923.lut_mask = 16'h0300;
defparam ix54873z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y15_N3
cycloneii_lcell_ff reg_r11_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(x_r3_add9_7i9_anx23445z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx54873z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_9_));

// atom is at LCFF_X57_Y15_N29
cycloneii_lcell_ff reg_r11_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(x_r3_add9_7i9_anx45949z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx54873z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_8_));

// atom is at LCFF_X57_Y15_N27
cycloneii_lcell_ff reg_r11_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(x_r3_add9_7i9_anx44952z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx54873z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_7_));

// atom is at LCFF_X55_Y15_N21
cycloneii_lcell_ff reg_r16_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r16_add9_7i11_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx34104z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r16_6_));

// atom is at LCFF_X57_Y15_N23
cycloneii_lcell_ff reg_r11_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(x_r3_add9_7i9_anx42958z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx54873z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_5_));

// atom is at LCFF_X56_Y15_N7
cycloneii_lcell_ff reg_r11_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r3_add9_7i9_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx54873z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_3_));

// atom is at LCFF_X56_Y15_N5
cycloneii_lcell_ff reg_r11_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r3_add9_7i9_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx54873z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_2_));

// atom is at LCFF_X57_Y15_N15
cycloneii_lcell_ff reg_r11_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(x_r3_add9_7i9_anx38970z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx54873z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_1_));

// atom is at LCFF_X55_Y15_N9
cycloneii_lcell_ff reg_r16_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r16_add9_7i11_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx34104z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r16_0_));

// atom is at LCCOMB_X57_Y15_N12
cycloneii_lcell_comb ix42030z52807_aix100z52933(
// Equation(s):
// ix42030z52807_anx100z28 = CARRY(!r11_0_ & r16_0_)

	.dataa(r11_0_),
	.datab(r16_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix42030z52807_anx100z28));
// synopsys translate_off
defparam ix42030z52807_aix100z52933.lut_mask = 16'h0044;
defparam ix42030z52807_aix100z52933.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y15_N14
cycloneii_lcell_comb ix42030z52807_aix100z52932(
// Equation(s):
// ix42030z52807_anx100z25 = CARRY(r16_1_ & r11_1_ & !ix42030z52807_anx100z28 # !r16_1_ & (r11_1_ # !ix42030z52807_anx100z28))

	.dataa(r16_1_),
	.datab(r11_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix42030z52807_anx100z28),
	.combout(),
	.cout(ix42030z52807_anx100z25));
// synopsys translate_off
defparam ix42030z52807_aix100z52932.lut_mask = 16'h004D;
defparam ix42030z52807_aix100z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y15_N16
cycloneii_lcell_comb ix42030z52807_aix100z52931(
// Equation(s):
// ix42030z52807_anx100z22 = CARRY(r16_2_ & (!ix42030z52807_anx100z25 # !r11_2_) # !r16_2_ & !r11_2_ & !ix42030z52807_anx100z25)

	.dataa(r16_2_),
	.datab(r11_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix42030z52807_anx100z25),
	.combout(),
	.cout(ix42030z52807_anx100z22));
// synopsys translate_off
defparam ix42030z52807_aix100z52931.lut_mask = 16'h002B;
defparam ix42030z52807_aix100z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y15_N18
cycloneii_lcell_comb ix42030z52807_aix100z52930(
// Equation(s):
// ix42030z52807_anx100z19 = CARRY(r16_3_ & r11_3_ & !ix42030z52807_anx100z22 # !r16_3_ & (r11_3_ # !ix42030z52807_anx100z22))

	.dataa(r16_3_),
	.datab(r11_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix42030z52807_anx100z22),
	.combout(),
	.cout(ix42030z52807_anx100z19));
// synopsys translate_off
defparam ix42030z52807_aix100z52930.lut_mask = 16'h004D;
defparam ix42030z52807_aix100z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y15_N20
cycloneii_lcell_comb ix42030z52807_aix100z52929(
// Equation(s):
// ix42030z52807_anx100z16 = CARRY(r11_4_ & r16_4_ & !ix42030z52807_anx100z19 # !r11_4_ & (r16_4_ # !ix42030z52807_anx100z19))

	.dataa(r11_4_),
	.datab(r16_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix42030z52807_anx100z19),
	.combout(),
	.cout(ix42030z52807_anx100z16));
// synopsys translate_off
defparam ix42030z52807_aix100z52929.lut_mask = 16'h004D;
defparam ix42030z52807_aix100z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y15_N22
cycloneii_lcell_comb ix42030z52807_aix100z52928(
// Equation(s):
// ix42030z52807_anx100z13 = CARRY(r16_5_ & r11_5_ & !ix42030z52807_anx100z16 # !r16_5_ & (r11_5_ # !ix42030z52807_anx100z16))

	.dataa(r16_5_),
	.datab(r11_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix42030z52807_anx100z16),
	.combout(),
	.cout(ix42030z52807_anx100z13));
// synopsys translate_off
defparam ix42030z52807_aix100z52928.lut_mask = 16'h004D;
defparam ix42030z52807_aix100z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y15_N24
cycloneii_lcell_comb ix42030z52807_aix100z52927(
// Equation(s):
// ix42030z52807_anx100z10 = CARRY(r11_6_ & r16_6_ & !ix42030z52807_anx100z13 # !r11_6_ & (r16_6_ # !ix42030z52807_anx100z13))

	.dataa(r11_6_),
	.datab(r16_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix42030z52807_anx100z13),
	.combout(),
	.cout(ix42030z52807_anx100z10));
// synopsys translate_off
defparam ix42030z52807_aix100z52927.lut_mask = 16'h004D;
defparam ix42030z52807_aix100z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y15_N26
cycloneii_lcell_comb ix42030z52807_aix100z52926(
// Equation(s):
// ix42030z52807_anx100z7 = CARRY(r16_7_ & r11_7_ & !ix42030z52807_anx100z10 # !r16_7_ & (r11_7_ # !ix42030z52807_anx100z10))

	.dataa(r16_7_),
	.datab(r11_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix42030z52807_anx100z10),
	.combout(),
	.cout(ix42030z52807_anx100z7));
// synopsys translate_off
defparam ix42030z52807_aix100z52926.lut_mask = 16'h004D;
defparam ix42030z52807_aix100z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y15_N28
cycloneii_lcell_comb ix42030z52807_aix100z52925(
// Equation(s):
// ix42030z52807_anx100z4 = CARRY(r16_8_ & (!ix42030z52807_anx100z7 # !r11_8_) # !r16_8_ & !r11_8_ & !ix42030z52807_anx100z7)

	.dataa(r16_8_),
	.datab(r11_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix42030z52807_anx100z7),
	.combout(),
	.cout(ix42030z52807_anx100z4));
// synopsys translate_off
defparam ix42030z52807_aix100z52925.lut_mask = 16'h002B;
defparam ix42030z52807_aix100z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y15_N30
cycloneii_lcell_comb ix42030z52807_aix100z52923(
// Equation(s):
// ix42030z52807_anx100z1 = r16_9_ & (ix42030z52807_anx100z4 # !r11_9_) # !r16_9_ & ix42030z52807_anx100z4 & !r11_9_

	.dataa(vcc),
	.datab(r16_9_),
	.datac(vcc),
	.datad(r11_9_),
	.cin(ix42030z52807_anx100z4),
	.combout(ix42030z52807_anx100z1),
	.cout());
// synopsys translate_off
defparam ix42030z52807_aix100z52923.lut_mask = 16'hC0FC;
defparam ix42030z52807_aix100z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N18
cycloneii_lcell_comb ix42030z52923(
// Equation(s):
// nx42030z1 = validBit_5_ & !validBit_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(validBit_5_),
	.datad(validBit_3_),
	.cin(gnd),
	.combout(nx42030z1),
	.cout());
// synopsys translate_off
defparam ix42030z52923.lut_mask = 16'h00F0;
defparam ix42030z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y15_N21
cycloneii_lcell_ff reg_x_r11_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r11_4__afeeder_combout),
	.sdata(r16_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix42030z52807_anx100z1),
	.ena(nx42030z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r11_4_));

// atom is at LCCOMB_X57_Y13_N0
cycloneii_lcell_comb r15_9__afeeder(
// Equation(s):
// r15_9__afeeder_combout = x_r3_9_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(x_r3_9_),
	.cin(gnd),
	.combout(r15_9__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r15_9__afeeder.lut_mask = 16'hFF00;
defparam r15_9__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y13_N1
cycloneii_lcell_ff reg_r15_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r15_9__afeeder_combout),
	.sdata(b_d1_9_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix23013z52805_anx100z1),
	.ena(validBit_3_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_9_));

// atom is at LCCOMB_X58_Y15_N2
cycloneii_lcell_comb x_r11_9__afeeder(
// Equation(s):
// x_r11_9__afeeder_combout = r11_9_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_9_),
	.cin(gnd),
	.combout(x_r11_9__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r11_9__afeeder.lut_mask = 16'hFF00;
defparam x_r11_9__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y15_N3
cycloneii_lcell_ff reg_x_r11_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r11_9__afeeder_combout),
	.sdata(r16_9_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix42030z52807_anx100z1),
	.ena(nx42030z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r11_9_));

// atom is at LCCOMB_X58_Y15_N28
cycloneii_lcell_comb x_r11_8__afeeder(
// Equation(s):
// x_r11_8__afeeder_combout = r11_8_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_8_),
	.cin(gnd),
	.combout(x_r11_8__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r11_8__afeeder.lut_mask = 16'hFF00;
defparam x_r11_8__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y15_N25
cycloneii_lcell_ff reg_r16_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r16_add9_7i11_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx34104z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r16_8_));

// atom is at LCFF_X58_Y15_N29
cycloneii_lcell_ff reg_x_r11_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r11_8__afeeder_combout),
	.sdata(r16_8_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix42030z52807_anx100z1),
	.ena(nx42030z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r11_8_));

// atom is at LCCOMB_X55_Y13_N0
cycloneii_lcell_comb r15_7__afeeder(
// Equation(s):
// r15_7__afeeder_combout = x_r3_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(x_r3_7_),
	.cin(gnd),
	.combout(r15_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r15_7__afeeder.lut_mask = 16'hFF00;
defparam r15_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N23
cycloneii_lcell_ff reg_b_d1_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_d1_add9_7i10_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_d1_7_));

// atom is at LCFF_X55_Y13_N1
cycloneii_lcell_ff reg_r15_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r15_7__afeeder_combout),
	.sdata(b_d1_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix23013z52805_anx100z1),
	.ena(validBit_3_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_7_));

// atom is at LCFF_X56_Y15_N13
cycloneii_lcell_ff reg_r11_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r3_add9_7i9_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx54873z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_6_));

// atom is at LCCOMB_X58_Y15_N24
cycloneii_lcell_comb x_r11_6__afeeder(
// Equation(s):
// x_r11_6__afeeder_combout = r11_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_6_),
	.cin(gnd),
	.combout(x_r11_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r11_6__afeeder.lut_mask = 16'hFF00;
defparam x_r11_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y15_N25
cycloneii_lcell_ff reg_x_r11_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r11_6__afeeder_combout),
	.sdata(r16_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix42030z52807_anx100z1),
	.ena(nx42030z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r11_6_));

// atom is at LCCOMB_X55_Y13_N12
cycloneii_lcell_comb r15_5__afeeder(
// Equation(s):
// r15_5__afeeder_combout = x_r3_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(x_r3_5_),
	.cin(gnd),
	.combout(r15_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r15_5__afeeder.lut_mask = 16'hFF00;
defparam r15_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N19
cycloneii_lcell_ff reg_b_d1_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_d1_add9_7i10_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_d1_5_));

// atom is at LCFF_X55_Y13_N13
cycloneii_lcell_ff reg_r15_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r15_5__afeeder_combout),
	.sdata(b_d1_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix23013z52805_anx100z1),
	.ena(validBit_3_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_5_));

// atom is at LCFF_X56_Y13_N7
cycloneii_lcell_ff reg_x_r3_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(x_r3_add9_7i9_anx40964z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx56415z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r3_3_));

// atom is at LCCOMB_X57_Y13_N4
cycloneii_lcell_comb r15_3__afeeder(
// Equation(s):
// r15_3__afeeder_combout = x_r3_3_

	.dataa(vcc),
	.datab(x_r3_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r15_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r15_3__afeeder.lut_mask = 16'hCCCC;
defparam r15_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y13_N5
cycloneii_lcell_ff reg_r15_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r15_3__afeeder_combout),
	.sdata(b_d1_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix23013z52805_anx100z1),
	.ena(validBit_3_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_3_));

// atom is at LCCOMB_X58_Y15_N16
cycloneii_lcell_comb x_r11_2__afeeder(
// Equation(s):
// x_r11_2__afeeder_combout = r11_2_

	.dataa(vcc),
	.datab(r11_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(x_r11_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r11_2__afeeder.lut_mask = 16'hCCCC;
defparam x_r11_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y15_N13
cycloneii_lcell_ff reg_r16_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r16_add9_7i11_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx34104z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r16_2_));

// atom is at LCFF_X58_Y15_N17
cycloneii_lcell_ff reg_x_r11_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r11_2__afeeder_combout),
	.sdata(r16_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix42030z52807_anx100z1),
	.ena(nx42030z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r11_2_));

// atom is at LCCOMB_X57_Y13_N8
cycloneii_lcell_comb r15_1__afeeder(
// Equation(s):
// r15_1__afeeder_combout = x_r3_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(x_r3_1_),
	.cin(gnd),
	.combout(r15_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r15_1__afeeder.lut_mask = 16'hFF00;
defparam r15_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N11
cycloneii_lcell_ff reg_b_d1_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_d1_add9_7i10_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_d1_1_));

// atom is at LCFF_X57_Y13_N9
cycloneii_lcell_ff reg_r15_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r15_1__afeeder_combout),
	.sdata(b_d1_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix23013z52805_anx100z1),
	.ena(validBit_3_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_1_));

// atom is at LCCOMB_X57_Y13_N2
cycloneii_lcell_comb r15_0__afeeder(
// Equation(s):
// r15_0__afeeder_combout = x_r3_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(x_r3_0_),
	.cin(gnd),
	.combout(r15_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r15_0__afeeder.lut_mask = 16'hFF00;
defparam r15_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N9
cycloneii_lcell_ff reg_b_d1_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_d1_add9_7i10_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_d1_0_));

// atom is at LCFF_X57_Y13_N3
cycloneii_lcell_ff reg_r15_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r15_0__afeeder_combout),
	.sdata(b_d1_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix23013z52805_anx100z1),
	.ena(validBit_3_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_0_));

// atom is at LCCOMB_X57_Y13_N12
cycloneii_lcell_comb ix17266z52808_aix100z52933(
// Equation(s):
// ix17266z52808_anx100z28 = CARRY(x_r11_0_ & !r15_0_)

	.dataa(x_r11_0_),
	.datab(r15_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix17266z52808_anx100z28));
// synopsys translate_off
defparam ix17266z52808_aix100z52933.lut_mask = 16'h0022;
defparam ix17266z52808_aix100z52933.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y13_N14
cycloneii_lcell_comb ix17266z52808_aix100z52932(
// Equation(s):
// ix17266z52808_anx100z25 = CARRY(x_r11_1_ & r15_1_ & !ix17266z52808_anx100z28 # !x_r11_1_ & (r15_1_ # !ix17266z52808_anx100z28))

	.dataa(x_r11_1_),
	.datab(r15_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix17266z52808_anx100z28),
	.combout(),
	.cout(ix17266z52808_anx100z25));
// synopsys translate_off
defparam ix17266z52808_aix100z52932.lut_mask = 16'h004D;
defparam ix17266z52808_aix100z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y13_N16
cycloneii_lcell_comb ix17266z52808_aix100z52931(
// Equation(s):
// ix17266z52808_anx100z22 = CARRY(r15_2_ & x_r11_2_ & !ix17266z52808_anx100z25 # !r15_2_ & (x_r11_2_ # !ix17266z52808_anx100z25))

	.dataa(r15_2_),
	.datab(x_r11_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix17266z52808_anx100z25),
	.combout(),
	.cout(ix17266z52808_anx100z22));
// synopsys translate_off
defparam ix17266z52808_aix100z52931.lut_mask = 16'h004D;
defparam ix17266z52808_aix100z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y13_N18
cycloneii_lcell_comb ix17266z52808_aix100z52930(
// Equation(s):
// ix17266z52808_anx100z19 = CARRY(x_r11_3_ & r15_3_ & !ix17266z52808_anx100z22 # !x_r11_3_ & (r15_3_ # !ix17266z52808_anx100z22))

	.dataa(x_r11_3_),
	.datab(r15_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix17266z52808_anx100z22),
	.combout(),
	.cout(ix17266z52808_anx100z19));
// synopsys translate_off
defparam ix17266z52808_aix100z52930.lut_mask = 16'h004D;
defparam ix17266z52808_aix100z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y13_N20
cycloneii_lcell_comb ix17266z52808_aix100z52929(
// Equation(s):
// ix17266z52808_anx100z16 = CARRY(r15_4_ & x_r11_4_ & !ix17266z52808_anx100z19 # !r15_4_ & (x_r11_4_ # !ix17266z52808_anx100z19))

	.dataa(r15_4_),
	.datab(x_r11_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix17266z52808_anx100z19),
	.combout(),
	.cout(ix17266z52808_anx100z16));
// synopsys translate_off
defparam ix17266z52808_aix100z52929.lut_mask = 16'h004D;
defparam ix17266z52808_aix100z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y13_N22
cycloneii_lcell_comb ix17266z52808_aix100z52928(
// Equation(s):
// ix17266z52808_anx100z13 = CARRY(x_r11_5_ & r15_5_ & !ix17266z52808_anx100z16 # !x_r11_5_ & (r15_5_ # !ix17266z52808_anx100z16))

	.dataa(x_r11_5_),
	.datab(r15_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix17266z52808_anx100z16),
	.combout(),
	.cout(ix17266z52808_anx100z13));
// synopsys translate_off
defparam ix17266z52808_aix100z52928.lut_mask = 16'h004D;
defparam ix17266z52808_aix100z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y13_N24
cycloneii_lcell_comb ix17266z52808_aix100z52927(
// Equation(s):
// ix17266z52808_anx100z10 = CARRY(r15_6_ & x_r11_6_ & !ix17266z52808_anx100z13 # !r15_6_ & (x_r11_6_ # !ix17266z52808_anx100z13))

	.dataa(r15_6_),
	.datab(x_r11_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix17266z52808_anx100z13),
	.combout(),
	.cout(ix17266z52808_anx100z10));
// synopsys translate_off
defparam ix17266z52808_aix100z52927.lut_mask = 16'h004D;
defparam ix17266z52808_aix100z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y13_N26
cycloneii_lcell_comb ix17266z52808_aix100z52926(
// Equation(s):
// ix17266z52808_anx100z7 = CARRY(x_r11_7_ & r15_7_ & !ix17266z52808_anx100z10 # !x_r11_7_ & (r15_7_ # !ix17266z52808_anx100z10))

	.dataa(x_r11_7_),
	.datab(r15_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix17266z52808_anx100z10),
	.combout(),
	.cout(ix17266z52808_anx100z7));
// synopsys translate_off
defparam ix17266z52808_aix100z52926.lut_mask = 16'h004D;
defparam ix17266z52808_aix100z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y13_N28
cycloneii_lcell_comb ix17266z52808_aix100z52925(
// Equation(s):
// ix17266z52808_anx100z4 = CARRY(r15_8_ & x_r11_8_ & !ix17266z52808_anx100z7 # !r15_8_ & (x_r11_8_ # !ix17266z52808_anx100z7))

	.dataa(r15_8_),
	.datab(x_r11_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix17266z52808_anx100z7),
	.combout(),
	.cout(ix17266z52808_anx100z4));
// synopsys translate_off
defparam ix17266z52808_aix100z52925.lut_mask = 16'h004D;
defparam ix17266z52808_aix100z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X57_Y13_N30
cycloneii_lcell_comb ix17266z52808_aix100z52923(
// Equation(s):
// ix17266z52808_anx100z1 = r15_9_ & ix17266z52808_anx100z4 & x_r11_9_ # !r15_9_ & (ix17266z52808_anx100z4 # x_r11_9_)

	.dataa(vcc),
	.datab(r15_9_),
	.datac(vcc),
	.datad(x_r11_9_),
	.cin(ix17266z52808_anx100z4),
	.combout(ix17266z52808_anx100z1),
	.cout());
// synopsys translate_off
defparam ix17266z52808_aix100z52923.lut_mask = 16'hF330;
defparam ix17266z52808_aix100z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y17_N22
cycloneii_lcell_comb ix17266z52923(
// Equation(s):
// nx17266z1 = !validBit_3_ & validBit_6_ & !validBit_5_

	.dataa(validBit_3_),
	.datab(validBit_6_),
	.datac(vcc),
	.datad(validBit_5_),
	.cin(gnd),
	.combout(nx17266z1),
	.cout());
// synopsys translate_off
defparam ix17266z52923.lut_mask = 16'h0044;
defparam ix17266z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y13_N19
cycloneii_lcell_ff reg_r18_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r18_4__afeeder_combout),
	.sdata(x_r11_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix17266z52808_anx100z1),
	.ena(nx17266z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r18_4_));

// atom is at LCFF_X58_Y14_N19
cycloneii_lcell_ff reg_x_r22_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r22_add12_8i1_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65254z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r22_6_));

// atom is at LCFF_X58_Y14_N17
cycloneii_lcell_ff reg_x_r22_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r22_add12_8i1_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65254z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r22_5_));

// atom is at LCCOMB_X58_Y13_N0
cycloneii_lcell_comb r18_1__afeeder(
// Equation(s):
// r18_1__afeeder_combout = r15_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r15_1_),
	.cin(gnd),
	.combout(r18_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r18_1__afeeder.lut_mask = 16'hFF00;
defparam r18_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y15_N26
cycloneii_lcell_comb x_r11_1__afeeder(
// Equation(s):
// x_r11_1__afeeder_combout = r11_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_1_),
	.cin(gnd),
	.combout(x_r11_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r11_1__afeeder.lut_mask = 16'hFF00;
defparam x_r11_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y15_N11
cycloneii_lcell_ff reg_r16_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r16_add9_7i11_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx34104z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r16_1_));

// atom is at LCFF_X58_Y15_N27
cycloneii_lcell_ff reg_x_r11_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r11_1__afeeder_combout),
	.sdata(r16_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix42030z52807_anx100z1),
	.ena(nx42030z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r11_1_));

// atom is at LCFF_X58_Y13_N1
cycloneii_lcell_ff reg_r18_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r18_1__afeeder_combout),
	.sdata(x_r11_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix17266z52808_anx100z1),
	.ena(nx17266z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r18_1_));

// atom is at LCCOMB_X58_Y13_N2
cycloneii_lcell_comb r18_0__afeeder(
// Equation(s):
// r18_0__afeeder_combout = r15_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r15_0_),
	.cin(gnd),
	.combout(r18_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r18_0__afeeder.lut_mask = 16'hFF00;
defparam r18_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y15_N1
cycloneii_lcell_ff reg_r11_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r3_add9_7i9_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx54873z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_0_));

// atom is at LCCOMB_X58_Y15_N12
cycloneii_lcell_comb x_r11_0__afeeder(
// Equation(s):
// x_r11_0__afeeder_combout = r11_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_0_),
	.cin(gnd),
	.combout(x_r11_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam x_r11_0__afeeder.lut_mask = 16'hFF00;
defparam x_r11_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y15_N13
cycloneii_lcell_ff reg_x_r11_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r11_0__afeeder_combout),
	.sdata(r16_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix42030z52807_anx100z1),
	.ena(nx42030z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r11_0_));

// atom is at LCFF_X58_Y13_N3
cycloneii_lcell_ff reg_r18_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r18_0__afeeder_combout),
	.sdata(x_r11_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix17266z52808_anx100z1),
	.ena(nx17266z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r18_0_));

// atom is at LCFF_X58_Y14_N11
cycloneii_lcell_ff reg_x_r22_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r22_add12_8i1_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65254z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r22_2_));

// atom is at LCFF_X59_Y14_N3
cycloneii_lcell_ff reg_x_r22_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(x_r12_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx65254z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r22_0_));

// atom is at LCCOMB_X59_Y14_N2
cycloneii_lcell_comb r17_sub13_10i1_aix63795z52935(
// Equation(s):
// r17_sub13_10i1_anx63795z11 = CARRY(!x_r22_1_ & !x_r22_0_)

	.dataa(x_r22_1_),
	.datab(x_r22_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(r17_sub13_10i1_anx63795z11));
// synopsys translate_off
defparam r17_sub13_10i1_aix63795z52935.lut_mask = 16'h0011;
defparam r17_sub13_10i1_aix63795z52935.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y14_N4
cycloneii_lcell_comb r17_sub13_10i1_aix63795z52934(
// Equation(s):
// r17_sub13_10i1_anx63795z10 = CARRY(x_r22_2_ # !r17_sub13_10i1_anx63795z11)

	.dataa(vcc),
	.datab(x_r22_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(r17_sub13_10i1_anx63795z11),
	.combout(),
	.cout(r17_sub13_10i1_anx63795z10));
// synopsys translate_off
defparam r17_sub13_10i1_aix63795z52934.lut_mask = 16'h00CF;
defparam r17_sub13_10i1_aix63795z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y14_N6
cycloneii_lcell_comb r17_sub13_10i1_aix63795z52933(
// Equation(s):
// r17_sub13_10i1_anx63795z9 = CARRY(x_r22_3_ & r18_0_ & !r17_sub13_10i1_anx63795z10 # !x_r22_3_ & (r18_0_ # !r17_sub13_10i1_anx63795z10))

	.dataa(x_r22_3_),
	.datab(r18_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(r17_sub13_10i1_anx63795z10),
	.combout(),
	.cout(r17_sub13_10i1_anx63795z9));
// synopsys translate_off
defparam r17_sub13_10i1_aix63795z52933.lut_mask = 16'h004D;
defparam r17_sub13_10i1_aix63795z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y14_N8
cycloneii_lcell_comb r17_sub13_10i1_aix63795z52932(
// Equation(s):
// r17_sub13_10i1_anx63795z8 = CARRY(x_r22_4_ & (!r17_sub13_10i1_anx63795z9 # !r18_1_) # !x_r22_4_ & !r18_1_ & !r17_sub13_10i1_anx63795z9)

	.dataa(x_r22_4_),
	.datab(r18_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(r17_sub13_10i1_anx63795z9),
	.combout(),
	.cout(r17_sub13_10i1_anx63795z8));
// synopsys translate_off
defparam r17_sub13_10i1_aix63795z52932.lut_mask = 16'h002B;
defparam r17_sub13_10i1_aix63795z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y14_N10
cycloneii_lcell_comb r17_sub13_10i1_aix63795z52931(
// Equation(s):
// r17_sub13_10i1_anx63795z7 = CARRY(r18_2_ & (!r17_sub13_10i1_anx63795z8 # !x_r22_5_) # !r18_2_ & !x_r22_5_ & !r17_sub13_10i1_anx63795z8)

	.dataa(r18_2_),
	.datab(x_r22_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(r17_sub13_10i1_anx63795z8),
	.combout(),
	.cout(r17_sub13_10i1_anx63795z7));
// synopsys translate_off
defparam r17_sub13_10i1_aix63795z52931.lut_mask = 16'h002B;
defparam r17_sub13_10i1_aix63795z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y14_N12
cycloneii_lcell_comb r17_sub13_10i1_aix63795z52930(
// Equation(s):
// r17_sub13_10i1_anx63795z6 = CARRY(r18_3_ & x_r22_6_ & !r17_sub13_10i1_anx63795z7 # !r18_3_ & (x_r22_6_ # !r17_sub13_10i1_anx63795z7))

	.dataa(r18_3_),
	.datab(x_r22_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(r17_sub13_10i1_anx63795z7),
	.combout(),
	.cout(r17_sub13_10i1_anx63795z6));
// synopsys translate_off
defparam r17_sub13_10i1_aix63795z52930.lut_mask = 16'h004D;
defparam r17_sub13_10i1_aix63795z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y14_N14
cycloneii_lcell_comb r17_sub13_10i1_aix63795z52929(
// Equation(s):
// r17_sub13_10i1_ad_6_ = (x_r22_7_ $ r18_4_ $ r17_sub13_10i1_anx63795z6) # GND
// r17_sub13_10i1_anx63795z5 = CARRY(x_r22_7_ & r18_4_ & !r17_sub13_10i1_anx63795z6 # !x_r22_7_ & (r18_4_ # !r17_sub13_10i1_anx63795z6))

	.dataa(x_r22_7_),
	.datab(r18_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(r17_sub13_10i1_anx63795z6),
	.combout(r17_sub13_10i1_ad_6_),
	.cout(r17_sub13_10i1_anx63795z5));
// synopsys translate_off
defparam r17_sub13_10i1_aix63795z52929.lut_mask = 16'h964D;
defparam r17_sub13_10i1_aix63795z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y14_N16
cycloneii_lcell_comb r17_sub13_10i1_aix63795z52928(
// Equation(s):
// r17_sub13_10i1_ad_7_ = r18_5_ & (x_r22_8_ & !r17_sub13_10i1_anx63795z5 # !x_r22_8_ & r17_sub13_10i1_anx63795z5 & VCC) # !r18_5_ & (x_r22_8_ & (r17_sub13_10i1_anx63795z5 # GND) # !x_r22_8_ & !r17_sub13_10i1_anx63795z5)
// r17_sub13_10i1_anx63795z4 = CARRY(r18_5_ & x_r22_8_ & !r17_sub13_10i1_anx63795z5 # !r18_5_ & (x_r22_8_ # !r17_sub13_10i1_anx63795z5))

	.dataa(r18_5_),
	.datab(x_r22_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(r17_sub13_10i1_anx63795z5),
	.combout(r17_sub13_10i1_ad_7_),
	.cout(r17_sub13_10i1_anx63795z4));
// synopsys translate_off
defparam r17_sub13_10i1_aix63795z52928.lut_mask = 16'h694D;
defparam r17_sub13_10i1_aix63795z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X59_Y14_N17
cycloneii_lcell_ff reg_r17_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r17_sub13_10i1_ad_7_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_7_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r17_8_));

// atom is at LCFF_X59_Y14_N15
cycloneii_lcell_ff reg_r17_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r17_sub13_10i1_ad_6_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_7_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r17_7_));

// atom is at LCCOMB_X51_Y16_N12
cycloneii_lcell_comb ix36874z52925(
// Equation(s):
// nx36874z2 = r17_8_ & r17_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(r17_8_),
	.datad(r17_7_),
	.cin(gnd),
	.combout(nx36874z2),
	.cout());
// synopsys translate_off
defparam ix36874z52925.lut_mask = 16'hF000;
defparam ix36874z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y14_N0
cycloneii_lcell_comb r2_8__afeeder(
// Equation(s):
// r2_8__afeeder_combout = r2_add8_6i49_anx23445z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_add8_6i49_anx23445z1),
	.cin(gnd),
	.combout(r2_8__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r2_8__afeeder.lut_mask = 16'hFF00;
defparam r2_8__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y14_N1
cycloneii_lcell_ff reg_r2_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r2_8__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx51677z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_8_));

// atom is at LCCOMB_X55_Y14_N22
cycloneii_lcell_comb x_r6_add9_8i2_aix23445z52923(
// Equation(s):
// x_r6_add9_8i2_anx23445z1 = x_r6_add9_8i2_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r6_add9_8i2_anx23445z2),
	.combout(x_r6_add9_8i2_anx23445z1),
	.cout());
// synopsys translate_off
defparam x_r6_add9_8i2_aix23445z52923.lut_mask = 16'hF0F0;
defparam x_r6_add9_8i2_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X55_Y14_N23
cycloneii_lcell_ff reg_x_r6_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r6_add9_8i2_anx23445z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_2_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r6_9_));

// atom is at LCFF_X56_Y14_N23
cycloneii_lcell_ff reg_r14_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_add10_8i3_anx46946z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx16422z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_9_));

// atom is at LCFF_X57_Y14_N19
cycloneii_lcell_ff reg_x_r12_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r12_add11_8i4_anx46946z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx58464z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r12_9_));

// atom is at LCCOMB_X58_Y14_N24
cycloneii_lcell_comb x_r22_add12_8i1_aix63795z52927(
// Equation(s):
// x_r22_add12_8i1_anx45949z1 = (x_r12_9_ $ x_r12_8_ $ !x_r22_add12_8i1_anx63795z9) # GND
// x_r22_add12_8i1_anx63795z7 = CARRY(x_r12_9_ & (x_r12_8_ # !x_r22_add12_8i1_anx63795z9) # !x_r12_9_ & x_r12_8_ & !x_r22_add12_8i1_anx63795z9)

	.dataa(x_r12_9_),
	.datab(x_r12_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(x_r22_add12_8i1_anx63795z9),
	.combout(x_r22_add12_8i1_anx45949z1),
	.cout(x_r22_add12_8i1_anx63795z7));
// synopsys translate_off
defparam x_r22_add12_8i1_aix63795z52927.lut_mask = 16'h698E;
defparam x_r22_add12_8i1_aix63795z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X58_Y14_N27
cycloneii_lcell_ff reg_x_r22_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r22_add12_8i1_anx46946z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65254z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r22_10_));

// atom is at LCFF_X58_Y14_N25
cycloneii_lcell_ff reg_x_r22_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_r22_add12_8i1_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65254z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_r22_9_));

// atom is at LCCOMB_X59_Y14_N18
cycloneii_lcell_comb r17_sub13_10i1_aix63795z52927(
// Equation(s):
// r17_sub13_10i1_ad_8_ = (r18_6_ $ x_r22_9_ $ r17_sub13_10i1_anx63795z4) # GND
// r17_sub13_10i1_anx63795z3 = CARRY(r18_6_ & (!r17_sub13_10i1_anx63795z4 # !x_r22_9_) # !r18_6_ & !x_r22_9_ & !r17_sub13_10i1_anx63795z4)

	.dataa(r18_6_),
	.datab(x_r22_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(r17_sub13_10i1_anx63795z4),
	.combout(r17_sub13_10i1_ad_8_),
	.cout(r17_sub13_10i1_anx63795z3));
// synopsys translate_off
defparam r17_sub13_10i1_aix63795z52927.lut_mask = 16'h962B;
defparam r17_sub13_10i1_aix63795z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y14_N20
cycloneii_lcell_comb r17_sub13_10i1_aix63795z52926(
// Equation(s):
// r17_sub13_10i1_ad_9_ = r18_7_ & (x_r22_10_ & !r17_sub13_10i1_anx63795z3 # !x_r22_10_ & r17_sub13_10i1_anx63795z3 & VCC) # !r18_7_ & (x_r22_10_ & (r17_sub13_10i1_anx63795z3 # GND) # !x_r22_10_ & !r17_sub13_10i1_anx63795z3)
// r17_sub13_10i1_anx63795z2 = CARRY(r18_7_ & x_r22_10_ & !r17_sub13_10i1_anx63795z3 # !r18_7_ & (x_r22_10_ # !r17_sub13_10i1_anx63795z3))

	.dataa(r18_7_),
	.datab(x_r22_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(r17_sub13_10i1_anx63795z3),
	.combout(r17_sub13_10i1_ad_9_),
	.cout(r17_sub13_10i1_anx63795z2));
// synopsys translate_off
defparam r17_sub13_10i1_aix63795z52926.lut_mask = 16'h694D;
defparam r17_sub13_10i1_aix63795z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X59_Y14_N21
cycloneii_lcell_ff reg_r17_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r17_sub13_10i1_ad_9_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_7_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r17_10_));

// atom is at LCCOMB_X57_Y13_N10
cycloneii_lcell_comb r15_8__afeeder(
// Equation(s):
// r15_8__afeeder_combout = x_r3_8_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(x_r3_8_),
	.cin(gnd),
	.combout(r15_8__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r15_8__afeeder.lut_mask = 16'hFF00;
defparam r15_8__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N25
cycloneii_lcell_ff reg_b_d1_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_d1_add9_7i10_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_d1_8_));

// atom is at LCFF_X57_Y13_N11
cycloneii_lcell_ff reg_r15_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r15_8__afeeder_combout),
	.sdata(b_d1_8_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix23013z52805_anx100z1),
	.ena(validBit_3_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_8_));

// atom is at LCCOMB_X58_Y13_N30
cycloneii_lcell_comb r18_8__afeeder(
// Equation(s):
// r18_8__afeeder_combout = r15_8_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r15_8_),
	.cin(gnd),
	.combout(r18_8__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r18_8__afeeder.lut_mask = 16'hFF00;
defparam r18_8__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y13_N31
cycloneii_lcell_ff reg_r18_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r18_8__afeeder_combout),
	.sdata(x_r11_8_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix17266z52808_anx100z1),
	.ena(nx17266z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r18_8_));

// atom is at LCFF_X59_Y14_N23
cycloneii_lcell_ff reg_r17_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r17_sub13_10i1_ad_10_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_7_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r17_11_));

// atom is at LCCOMB_X51_Y16_N2
cycloneii_lcell_comb ix36874z52924(
// Equation(s):
// nx36874z1 = o_valid_dup0 & (r17_12_ # r17_10_ # r17_11_)

	.dataa(r17_12_),
	.datab(r17_10_),
	.datac(o_valid_dup0),
	.datad(r17_11_),
	.cin(gnd),
	.combout(nx36874z1),
	.cout());
// synopsys translate_off
defparam ix36874z52924.lut_mask = 16'hF0E0;
defparam ix36874z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X59_Y14_N19
cycloneii_lcell_ff reg_r17_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r17_sub13_10i1_ad_8_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_7_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r17_9_));

// atom is at LCCOMB_X51_Y16_N24
cycloneii_lcell_comb ix36874z52923(
// Equation(s):
// o_edge_dup0 = nx36874z1 # o_valid_dup0 & (nx36874z2 # r17_9_)

	.dataa(nx36874z2),
	.datab(nx36874z1),
	.datac(o_valid_dup0),
	.datad(r17_9_),
	.cin(gnd),
	.combout(o_edge_dup0),
	.cout());
// synopsys translate_off
defparam ix36874z52923.lut_mask = 16'hFCEC;
defparam ix36874z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y16_N0
cycloneii_lcell_comb ix7380z18833_anx100z1_a_wirecell(
// Equation(s):
// ix7380z18833_anx100z1_a_wirecell_combout = !ix7380z18833_anx100z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(ix7380z18833_anx100z1),
	.cin(gnd),
	.combout(ix7380z18833_anx100z1_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam ix7380z18833_anx100z1_a_wirecell.lut_mask = 16'h00FF;
defparam ix7380z18833_anx100z1_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y16_N1
cycloneii_lcell_ff reg_stage1_wNw_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix7380z18833_anx100z1_a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx7380z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(stage1_wNw_0_));

// atom is at LCCOMB_X54_Y17_N14
cycloneii_lcell_comb ix45375z52923(
// Equation(s):
// first_cw_9n1ss1_0_ = !ix23013z52805_anx100z1 & stage1_wNw_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(ix23013z52805_anx100z1),
	.datad(stage1_wNw_0_),
	.cin(gnd),
	.combout(first_cw_9n1ss1_0_),
	.cout());
// synopsys translate_off
defparam ix45375z52923.lut_mask = 16'h0F00;
defparam ix45375z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y17_N15
cycloneii_lcell_ff reg_first_cw_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(first_cw_9n1ss1_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_3_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(first_cw_0_));

// atom is at LCCOMB_X58_Y13_N16
cycloneii_lcell_comb final_dir_0__afeeder(
// Equation(s):
// final_dir_0__afeeder_combout = first_cw_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(first_cw_0_),
	.cin(gnd),
	.combout(final_dir_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam final_dir_0__afeeder.lut_mask = 16'hFF00;
defparam final_dir_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y16_N17
cycloneii_lcell_ff reg_stage1_eSe_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix27953z18832_anx100z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx27953z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(stage1_eSe_2_));

// atom is at LCCOMB_X58_Y15_N8
cycloneii_lcell_comb ix1457z52923(
// Equation(s):
// second_cw_9n2ss1_0_ = ix42030z52807_anx100z1 # stage1_eSe_2_

	.dataa(vcc),
	.datab(ix42030z52807_anx100z1),
	.datac(vcc),
	.datad(stage1_eSe_2_),
	.cin(gnd),
	.combout(second_cw_9n2ss1_0_),
	.cout());
// synopsys translate_off
defparam ix1457z52923.lut_mask = 16'hFFCC;
defparam ix1457z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y15_N9
cycloneii_lcell_ff reg_second_cw_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(second_cw_9n2ss1_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx42030z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(second_cw_0_));

// atom is at LCFF_X58_Y13_N17
cycloneii_lcell_ff reg_final_dir_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(final_dir_0__afeeder_combout),
	.sdata(second_cw_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix17266z52808_anx100z1),
	.ena(nx17266z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(final_dir_0_));

// atom is at LCCOMB_X51_Y16_N22
cycloneii_lcell_comb ix33603z52923(
// Equation(s):
// o_dir_dup0_0_ = o_edge_dup0 & final_dir_0_

	.dataa(vcc),
	.datab(o_edge_dup0),
	.datac(vcc),
	.datad(final_dir_0_),
	.cin(gnd),
	.combout(o_dir_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix33603z52923.lut_mask = 16'hCC00;
defparam ix33603z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y13_N19
cycloneii_lcell_ff reg_first_cw_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix23013z52805_anx100z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_3_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(first_cw_1_));

// atom is at LCCOMB_X58_Y13_N10
cycloneii_lcell_comb final_dir_1__afeeder(
// Equation(s):
// final_dir_1__afeeder_combout = first_cw_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(first_cw_1_),
	.cin(gnd),
	.combout(final_dir_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam final_dir_1__afeeder.lut_mask = 16'hFF00;
defparam final_dir_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y15_N31
cycloneii_lcell_ff reg_second_cw_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix42030z52807_anx100z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx42030z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(second_cw_1_));

// atom is at LCFF_X58_Y13_N11
cycloneii_lcell_ff reg_final_dir_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(final_dir_1__afeeder_combout),
	.sdata(second_cw_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix17266z52808_anx100z1),
	.ena(nx17266z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(final_dir_1_));

// atom is at LCCOMB_X51_Y16_N8
cycloneii_lcell_comb ix32606z52923(
// Equation(s):
// o_dir_dup0_1_ = o_edge_dup0 & final_dir_1_

	.dataa(vcc),
	.datab(o_edge_dup0),
	.datac(vcc),
	.datad(final_dir_1_),
	.cin(gnd),
	.combout(o_dir_dup0_1_),
	.cout());
// synopsys translate_off
defparam ix32606z52923.lut_mask = 16'hCC00;
defparam ix32606z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y16_N29
cycloneii_lcell_ff reg_stage1_wNw_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix7380z18833_anx100z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx7380z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(stage1_wNw_2_));

// atom is at LCCOMB_X55_Y13_N16
cycloneii_lcell_comb first_cw_2__afeeder(
// Equation(s):
// first_cw_2__afeeder_combout = stage1_wNw_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(stage1_wNw_2_),
	.cin(gnd),
	.combout(first_cw_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam first_cw_2__afeeder.lut_mask = 16'hFF00;
defparam first_cw_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y17_N21
cycloneii_lcell_ff reg_stage1_nNe_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix48448z18833_anx100z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(validBit_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(stage1_nNe_2_));

// atom is at LCFF_X55_Y13_N17
cycloneii_lcell_ff reg_first_cw_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(first_cw_2__afeeder_combout),
	.sdata(stage1_nNe_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix23013z52805_anx100z1),
	.ena(validBit_3_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(first_cw_2_));

// atom is at LCCOMB_X58_Y13_N4
cycloneii_lcell_comb final_dir_2__afeeder(
// Equation(s):
// final_dir_2__afeeder_combout = first_cw_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(first_cw_2_),
	.cin(gnd),
	.combout(final_dir_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam final_dir_2__afeeder.lut_mask = 16'hFF00;
defparam final_dir_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y15_N14
cycloneii_lcell_comb second_cw_2__afeeder(
// Equation(s):
// second_cw_2__afeeder_combout = stage1_eSe_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(stage1_eSe_2_),
	.cin(gnd),
	.combout(second_cw_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam second_cw_2__afeeder.lut_mask = 16'hFF00;
defparam second_cw_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y17_N23
cycloneii_lcell_ff reg_stage1_sSw_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(ix250z18831_anx100z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx250z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(stage1_sSw_2_));

// atom is at LCFF_X58_Y15_N15
cycloneii_lcell_ff reg_second_cw_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(second_cw_2__afeeder_combout),
	.sdata(stage1_sSw_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix42030z52807_anx100z1),
	.ena(nx42030z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(second_cw_2_));

// atom is at LCFF_X58_Y13_N5
cycloneii_lcell_ff reg_final_dir_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(final_dir_2__afeeder_combout),
	.sdata(second_cw_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(ix17266z52808_anx100z1),
	.ena(nx17266z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(final_dir_2_));

// atom is at LCCOMB_X51_Y16_N10
cycloneii_lcell_comb ix31609z52923(
// Equation(s):
// o_dir_dup0_2_ = o_edge_dup0 & final_dir_2_

	.dataa(vcc),
	.datab(o_edge_dup0),
	.datac(vcc),
	.datad(final_dir_2_),
	.cin(gnd),
	.combout(o_dir_dup0_2_),
	.cout());
// synopsys translate_off
defparam ix31609z52923.lut_mask = 16'hCC00;
defparam ix31609z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X50_Y16_N20
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52926(
// Equation(s):
// modgen_counter_o_row_anx56256z1 = modgen_counter_o_row_anx58250z5 & !modgen_counter_o_row_anx58250z6 # !modgen_counter_o_row_anx58250z5 & (modgen_counter_o_row_anx58250z6 # GND)
// modgen_counter_o_row_anx58250z4 = CARRY(!modgen_counter_o_row_anx58250z6 # !modgen_counter_o_row_anx58250z5)

	.dataa(modgen_counter_o_row_anx58250z5),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z6),
	.combout(modgen_counter_o_row_anx56256z1),
	.cout(modgen_counter_o_row_anx58250z4));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52926.lut_mask = 16'h5A5F;
defparam modgen_counter_o_row_aix58250z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X50_Y16_N22
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52925(
// Equation(s):
// modgen_counter_o_row_anx57253z1 = modgen_counter_o_row_anx58250z3 & (modgen_counter_o_row_anx58250z4 $ GND) # !modgen_counter_o_row_anx58250z3 & !modgen_counter_o_row_anx58250z4 & VCC
// modgen_counter_o_row_anx58250z2 = CARRY(modgen_counter_o_row_anx58250z3 & !modgen_counter_o_row_anx58250z4)

	.dataa(vcc),
	.datab(modgen_counter_o_row_anx58250z3),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z4),
	.combout(modgen_counter_o_row_anx57253z1),
	.cout(modgen_counter_o_row_anx58250z2));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52925.lut_mask = 16'hC30C;
defparam modgen_counter_o_row_aix58250z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X51_Y16_N1
cycloneii_lcell_ff modgen_counter_o_row_areg_q_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_row_anx57253z1),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z3));

// atom is at LCCOMB_X50_Y16_N24
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52923(
// Equation(s):
// modgen_counter_o_row_anx58250z1 = modgen_counter_o_row_anx1041z1 $ modgen_counter_o_row_anx58250z2

	.dataa(modgen_counter_o_row_anx1041z1),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z2),
	.combout(modgen_counter_o_row_anx58250z1),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52923.lut_mask = 16'h5A5A;
defparam modgen_counter_o_row_aix58250z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X50_Y16_N25
cycloneii_lcell_ff modgen_counter_o_row_areg_q_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx58250z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx1041z1));

// atom is at LCFF_X50_Y16_N11
cycloneii_lcell_ff modgen_counter_o_row_areg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx51271z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z15));

// atom is at LCCOMB_X51_Y16_N0
cycloneii_lcell_comb ix11673z52925(
// Equation(s):
// nx11673z3 = modgen_counter_o_row_anx58250z13 # modgen_counter_o_row_anx1041z1 # modgen_counter_o_row_anx58250z3 # modgen_counter_o_row_anx58250z15

	.dataa(modgen_counter_o_row_anx58250z13),
	.datab(modgen_counter_o_row_anx1041z1),
	.datac(modgen_counter_o_row_anx58250z3),
	.datad(modgen_counter_o_row_anx58250z15),
	.cin(gnd),
	.combout(nx11673z3),
	.cout());
// synopsys translate_off
defparam ix11673z52925.lut_mask = 16'hFFFE;
defparam ix11673z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y14_N24
cycloneii_lcell_comb ix11673z52923(
// Equation(s):
// nx11673z1 = nx11673z2 & !nx20419z5 & !nx11673z3 # !nx11673z2 & (!nx20419z5 & !nx11673z3 # !nx20419z4)

	.dataa(nx11673z2),
	.datab(nx20419z5),
	.datac(nx11673z3),
	.datad(nx20419z4),
	.cin(gnd),
	.combout(nx11673z1),
	.cout());
// synopsys translate_off
defparam ix11673z52923.lut_mask = 16'h0357;
defparam ix11673z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y14_N25
cycloneii_lcell_ff reg_out_signal_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx11673z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx47893z1));

// atom is at LCCOMB_X51_Y15_N0
cycloneii_lcell_comb o_mode_dup0_1__afeeder(
// Equation(s):
// o_mode_dup0_1__afeeder_combout = VCC

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(o_mode_dup0_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_mode_dup0_1__afeeder.lut_mask = 16'hFFFF;
defparam o_mode_dup0_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y15_N1
cycloneii_lcell_ff reg_out_signal_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_mode_dup0_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_mode_dup0_1_));

// atom is at LCCOMB_X50_Y16_N8
cycloneii_lcell_comb nx16335z1_afeeder(
// Equation(s):
// nx16335z1_afeeder_combout = modgen_counter_o_row_anx51271z1

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_row_anx51271z1),
	.datad(vcc),
	.cin(gnd),
	.combout(nx16335z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx16335z1_afeeder.lut_mask = 16'hF0F0;
defparam nx16335z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y16_N9
cycloneii_lcell_ff reg_out_o_row_obuf_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx16335z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx16335z1));

// atom is at LCCOMB_X50_Y16_N2
cycloneii_lcell_comb nx17332z1_afeeder(
// Equation(s):
// nx17332z1_afeeder_combout = modgen_counter_o_row_anx52268z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_o_row_anx52268z1),
	.cin(gnd),
	.combout(nx17332z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx17332z1_afeeder.lut_mask = 16'hFF00;
defparam nx17332z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y16_N3
cycloneii_lcell_ff reg_out_o_row_obuf_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx17332z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx17332z1));

// atom is at LCCOMB_X50_Y16_N4
cycloneii_lcell_comb nx18329z1_afeeder(
// Equation(s):
// nx18329z1_afeeder_combout = modgen_counter_o_row_anx53265z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_o_row_anx53265z1),
	.cin(gnd),
	.combout(nx18329z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx18329z1_afeeder.lut_mask = 16'hFF00;
defparam nx18329z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y16_N5
cycloneii_lcell_ff reg_out_o_row_obuf_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx18329z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx18329z1));

// atom is at LCFF_X51_Y16_N21
cycloneii_lcell_ff reg_out_o_row_obuf_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_row_anx54262z1),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx19326z1));

// atom is at LCFF_X50_Y16_N19
cycloneii_lcell_ff reg_out_o_row_obuf_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx55259z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx20323z1));

// atom is at LCCOMB_X50_Y16_N6
cycloneii_lcell_comb nx21320z1_afeeder(
// Equation(s):
// nx21320z1_afeeder_combout = modgen_counter_o_row_anx56256z1

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_row_anx56256z1),
	.datad(vcc),
	.cin(gnd),
	.combout(nx21320z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx21320z1_afeeder.lut_mask = 16'hF0F0;
defparam nx21320z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y16_N7
cycloneii_lcell_ff reg_out_o_row_obuf_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx21320z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx21320z1));

// atom is at LCFF_X50_Y16_N23
cycloneii_lcell_ff reg_out_o_row_obuf_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx57253z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx22317z1));

// atom is at LCCOMB_X50_Y16_N0
cycloneii_lcell_comb nx23314z1_afeeder(
// Equation(s):
// nx23314z1_afeeder_combout = modgen_counter_o_row_anx58250z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_o_row_anx58250z1),
	.cin(gnd),
	.combout(nx23314z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx23314z1_afeeder.lut_mask = 16'hFF00;
defparam nx23314z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X50_Y16_N1
cycloneii_lcell_ff reg_out_o_row_obuf_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx23314z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx23314z1));

// atom is at PIN_E18
cycloneii_io o_valid_obuf(
	.datain(o_valid_dup0),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_valid));
// synopsys translate_off
defparam o_valid_obuf.input_async_reset = "none";
defparam o_valid_obuf.input_power_up = "low";
defparam o_valid_obuf.input_register_mode = "none";
defparam o_valid_obuf.input_sync_reset = "none";
defparam o_valid_obuf.oe_async_reset = "none";
defparam o_valid_obuf.oe_power_up = "low";
defparam o_valid_obuf.oe_register_mode = "none";
defparam o_valid_obuf.oe_sync_reset = "none";
defparam o_valid_obuf.operation_mode = "output";
defparam o_valid_obuf.output_async_reset = "none";
defparam o_valid_obuf.output_power_up = "low";
defparam o_valid_obuf.output_register_mode = "none";
defparam o_valid_obuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W17
cycloneii_io o_edge_obuf(
	.datain(o_edge_dup0),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_edge));
// synopsys translate_off
defparam o_edge_obuf.input_async_reset = "none";
defparam o_edge_obuf.input_power_up = "low";
defparam o_edge_obuf.input_register_mode = "none";
defparam o_edge_obuf.input_sync_reset = "none";
defparam o_edge_obuf.oe_async_reset = "none";
defparam o_edge_obuf.oe_power_up = "low";
defparam o_edge_obuf.oe_register_mode = "none";
defparam o_edge_obuf.oe_sync_reset = "none";
defparam o_edge_obuf.operation_mode = "output";
defparam o_edge_obuf.output_async_reset = "none";
defparam o_edge_obuf.output_power_up = "low";
defparam o_edge_obuf.output_register_mode = "none";
defparam o_edge_obuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D18
cycloneii_io o_dir_obuf_0_(
	.datain(o_dir_dup0_0_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_dir[0]));
// synopsys translate_off
defparam o_dir_obuf_0_.input_async_reset = "none";
defparam o_dir_obuf_0_.input_power_up = "low";
defparam o_dir_obuf_0_.input_register_mode = "none";
defparam o_dir_obuf_0_.input_sync_reset = "none";
defparam o_dir_obuf_0_.oe_async_reset = "none";
defparam o_dir_obuf_0_.oe_power_up = "low";
defparam o_dir_obuf_0_.oe_register_mode = "none";
defparam o_dir_obuf_0_.oe_sync_reset = "none";
defparam o_dir_obuf_0_.operation_mode = "output";
defparam o_dir_obuf_0_.output_async_reset = "none";
defparam o_dir_obuf_0_.output_power_up = "low";
defparam o_dir_obuf_0_.output_register_mode = "none";
defparam o_dir_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA17
cycloneii_io o_dir_obuf_1_(
	.datain(o_dir_dup0_1_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_dir[1]));
// synopsys translate_off
defparam o_dir_obuf_1_.input_async_reset = "none";
defparam o_dir_obuf_1_.input_power_up = "low";
defparam o_dir_obuf_1_.input_register_mode = "none";
defparam o_dir_obuf_1_.input_sync_reset = "none";
defparam o_dir_obuf_1_.oe_async_reset = "none";
defparam o_dir_obuf_1_.oe_power_up = "low";
defparam o_dir_obuf_1_.oe_register_mode = "none";
defparam o_dir_obuf_1_.oe_sync_reset = "none";
defparam o_dir_obuf_1_.operation_mode = "output";
defparam o_dir_obuf_1_.output_async_reset = "none";
defparam o_dir_obuf_1_.output_power_up = "low";
defparam o_dir_obuf_1_.output_register_mode = "none";
defparam o_dir_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T23
cycloneii_io o_dir_obuf_2_(
	.datain(o_dir_dup0_2_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_dir[2]));
// synopsys translate_off
defparam o_dir_obuf_2_.input_async_reset = "none";
defparam o_dir_obuf_2_.input_power_up = "low";
defparam o_dir_obuf_2_.input_register_mode = "none";
defparam o_dir_obuf_2_.input_sync_reset = "none";
defparam o_dir_obuf_2_.oe_async_reset = "none";
defparam o_dir_obuf_2_.oe_power_up = "low";
defparam o_dir_obuf_2_.oe_register_mode = "none";
defparam o_dir_obuf_2_.oe_sync_reset = "none";
defparam o_dir_obuf_2_.operation_mode = "output";
defparam o_dir_obuf_2_.output_async_reset = "none";
defparam o_dir_obuf_2_.output_power_up = "low";
defparam o_dir_obuf_2_.output_register_mode = "none";
defparam o_dir_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T17
cycloneii_io o_mode_obuf_0_(
	.datain(!nx47893z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_mode[0]));
// synopsys translate_off
defparam o_mode_obuf_0_.input_async_reset = "none";
defparam o_mode_obuf_0_.input_power_up = "low";
defparam o_mode_obuf_0_.input_register_mode = "none";
defparam o_mode_obuf_0_.input_sync_reset = "none";
defparam o_mode_obuf_0_.oe_async_reset = "none";
defparam o_mode_obuf_0_.oe_power_up = "low";
defparam o_mode_obuf_0_.oe_register_mode = "none";
defparam o_mode_obuf_0_.oe_sync_reset = "none";
defparam o_mode_obuf_0_.operation_mode = "output";
defparam o_mode_obuf_0_.output_async_reset = "none";
defparam o_mode_obuf_0_.output_power_up = "low";
defparam o_mode_obuf_0_.output_register_mode = "none";
defparam o_mode_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V17
cycloneii_io o_mode_obuf_1_(
	.datain(o_mode_dup0_1_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_mode[1]));
// synopsys translate_off
defparam o_mode_obuf_1_.input_async_reset = "none";
defparam o_mode_obuf_1_.input_power_up = "low";
defparam o_mode_obuf_1_.input_register_mode = "none";
defparam o_mode_obuf_1_.input_sync_reset = "none";
defparam o_mode_obuf_1_.oe_async_reset = "none";
defparam o_mode_obuf_1_.oe_power_up = "low";
defparam o_mode_obuf_1_.oe_register_mode = "none";
defparam o_mode_obuf_1_.oe_sync_reset = "none";
defparam o_mode_obuf_1_.operation_mode = "output";
defparam o_mode_obuf_1_.output_async_reset = "none";
defparam o_mode_obuf_1_.output_power_up = "low";
defparam o_mode_obuf_1_.output_register_mode = "none";
defparam o_mode_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T22
cycloneii_io ix16335z43919(
	.datain(nx16335z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[0]));
// synopsys translate_off
defparam ix16335z43919.input_async_reset = "none";
defparam ix16335z43919.input_power_up = "low";
defparam ix16335z43919.input_register_mode = "none";
defparam ix16335z43919.input_sync_reset = "none";
defparam ix16335z43919.oe_async_reset = "none";
defparam ix16335z43919.oe_power_up = "low";
defparam ix16335z43919.oe_register_mode = "none";
defparam ix16335z43919.oe_sync_reset = "none";
defparam ix16335z43919.operation_mode = "output";
defparam ix16335z43919.output_async_reset = "none";
defparam ix16335z43919.output_power_up = "low";
defparam ix16335z43919.output_register_mode = "none";
defparam ix16335z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F18
cycloneii_io ix17332z43919(
	.datain(nx17332z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[1]));
// synopsys translate_off
defparam ix17332z43919.input_async_reset = "none";
defparam ix17332z43919.input_power_up = "low";
defparam ix17332z43919.input_register_mode = "none";
defparam ix17332z43919.input_sync_reset = "none";
defparam ix17332z43919.oe_async_reset = "none";
defparam ix17332z43919.oe_power_up = "low";
defparam ix17332z43919.oe_register_mode = "none";
defparam ix17332z43919.oe_sync_reset = "none";
defparam ix17332z43919.operation_mode = "output";
defparam ix17332z43919.output_async_reset = "none";
defparam ix17332z43919.output_power_up = "low";
defparam ix17332z43919.output_register_mode = "none";
defparam ix17332z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T25
cycloneii_io ix18329z43919(
	.datain(nx18329z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[2]));
// synopsys translate_off
defparam ix18329z43919.input_async_reset = "none";
defparam ix18329z43919.input_power_up = "low";
defparam ix18329z43919.input_register_mode = "none";
defparam ix18329z43919.input_sync_reset = "none";
defparam ix18329z43919.oe_async_reset = "none";
defparam ix18329z43919.oe_power_up = "low";
defparam ix18329z43919.oe_register_mode = "none";
defparam ix18329z43919.oe_sync_reset = "none";
defparam ix18329z43919.operation_mode = "output";
defparam ix18329z43919.output_async_reset = "none";
defparam ix18329z43919.output_power_up = "low";
defparam ix18329z43919.output_register_mode = "none";
defparam ix18329z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G18
cycloneii_io ix19326z43919(
	.datain(nx19326z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[3]));
// synopsys translate_off
defparam ix19326z43919.input_async_reset = "none";
defparam ix19326z43919.input_power_up = "low";
defparam ix19326z43919.input_register_mode = "none";
defparam ix19326z43919.input_sync_reset = "none";
defparam ix19326z43919.oe_async_reset = "none";
defparam ix19326z43919.oe_power_up = "low";
defparam ix19326z43919.oe_register_mode = "none";
defparam ix19326z43919.oe_sync_reset = "none";
defparam ix19326z43919.operation_mode = "output";
defparam ix19326z43919.output_async_reset = "none";
defparam ix19326z43919.output_power_up = "low";
defparam ix19326z43919.output_register_mode = "none";
defparam ix19326z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R20
cycloneii_io ix20323z43919(
	.datain(nx20323z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[4]));
// synopsys translate_off
defparam ix20323z43919.input_async_reset = "none";
defparam ix20323z43919.input_power_up = "low";
defparam ix20323z43919.input_register_mode = "none";
defparam ix20323z43919.input_sync_reset = "none";
defparam ix20323z43919.oe_async_reset = "none";
defparam ix20323z43919.oe_power_up = "low";
defparam ix20323z43919.oe_register_mode = "none";
defparam ix20323z43919.oe_sync_reset = "none";
defparam ix20323z43919.operation_mode = "output";
defparam ix20323z43919.output_async_reset = "none";
defparam ix20323z43919.output_power_up = "low";
defparam ix20323z43919.output_register_mode = "none";
defparam ix20323z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF19
cycloneii_io ix21320z43919(
	.datain(nx21320z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[5]));
// synopsys translate_off
defparam ix21320z43919.input_async_reset = "none";
defparam ix21320z43919.input_power_up = "low";
defparam ix21320z43919.input_register_mode = "none";
defparam ix21320z43919.input_sync_reset = "none";
defparam ix21320z43919.oe_async_reset = "none";
defparam ix21320z43919.oe_power_up = "low";
defparam ix21320z43919.oe_register_mode = "none";
defparam ix21320z43919.oe_sync_reset = "none";
defparam ix21320z43919.operation_mode = "output";
defparam ix21320z43919.output_async_reset = "none";
defparam ix21320z43919.output_power_up = "low";
defparam ix21320z43919.output_register_mode = "none";
defparam ix21320z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J17
cycloneii_io ix22317z43919(
	.datain(nx22317z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[6]));
// synopsys translate_off
defparam ix22317z43919.input_async_reset = "none";
defparam ix22317z43919.input_power_up = "low";
defparam ix22317z43919.input_register_mode = "none";
defparam ix22317z43919.input_sync_reset = "none";
defparam ix22317z43919.oe_async_reset = "none";
defparam ix22317z43919.oe_power_up = "low";
defparam ix22317z43919.oe_register_mode = "none";
defparam ix22317z43919.oe_sync_reset = "none";
defparam ix22317z43919.operation_mode = "output";
defparam ix22317z43919.output_async_reset = "none";
defparam ix22317z43919.output_power_up = "low";
defparam ix22317z43919.output_register_mode = "none";
defparam ix22317z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H17
cycloneii_io ix23314z43919(
	.datain(nx23314z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[7]));
// synopsys translate_off
defparam ix23314z43919.input_async_reset = "none";
defparam ix23314z43919.input_power_up = "low";
defparam ix23314z43919.input_register_mode = "none";
defparam ix23314z43919.input_sync_reset = "none";
defparam ix23314z43919.oe_async_reset = "none";
defparam ix23314z43919.oe_power_up = "low";
defparam ix23314z43919.oe_register_mode = "none";
defparam ix23314z43919.oe_sync_reset = "none";
defparam ix23314z43919.operation_mode = "output";
defparam ix23314z43919.output_async_reset = "none";
defparam ix23314z43919.output_power_up = "low";
defparam ix23314z43919.output_register_mode = "none";
defparam ix23314z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U5
cycloneii_io debug_led_red_triBus3_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[0]));
// synopsys translate_off
defparam debug_led_red_triBus3_0_.input_async_reset = "none";
defparam debug_led_red_triBus3_0_.input_power_up = "low";
defparam debug_led_red_triBus3_0_.input_register_mode = "none";
defparam debug_led_red_triBus3_0_.input_sync_reset = "none";
defparam debug_led_red_triBus3_0_.oe_async_reset = "none";
defparam debug_led_red_triBus3_0_.oe_power_up = "low";
defparam debug_led_red_triBus3_0_.oe_register_mode = "none";
defparam debug_led_red_triBus3_0_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_0_.operation_mode = "output";
defparam debug_led_red_triBus3_0_.output_async_reset = "none";
defparam debug_led_red_triBus3_0_.output_power_up = "low";
defparam debug_led_red_triBus3_0_.output_register_mode = "none";
defparam debug_led_red_triBus3_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB21
cycloneii_io debug_led_red_triBus3_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[1]));
// synopsys translate_off
defparam debug_led_red_triBus3_1_.input_async_reset = "none";
defparam debug_led_red_triBus3_1_.input_power_up = "low";
defparam debug_led_red_triBus3_1_.input_register_mode = "none";
defparam debug_led_red_triBus3_1_.input_sync_reset = "none";
defparam debug_led_red_triBus3_1_.oe_async_reset = "none";
defparam debug_led_red_triBus3_1_.oe_power_up = "low";
defparam debug_led_red_triBus3_1_.oe_register_mode = "none";
defparam debug_led_red_triBus3_1_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_1_.operation_mode = "output";
defparam debug_led_red_triBus3_1_.output_async_reset = "none";
defparam debug_led_red_triBus3_1_.output_power_up = "low";
defparam debug_led_red_triBus3_1_.output_register_mode = "none";
defparam debug_led_red_triBus3_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V24
cycloneii_io debug_led_red_triBus3_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[2]));
// synopsys translate_off
defparam debug_led_red_triBus3_2_.input_async_reset = "none";
defparam debug_led_red_triBus3_2_.input_power_up = "low";
defparam debug_led_red_triBus3_2_.input_register_mode = "none";
defparam debug_led_red_triBus3_2_.input_sync_reset = "none";
defparam debug_led_red_triBus3_2_.oe_async_reset = "none";
defparam debug_led_red_triBus3_2_.oe_power_up = "low";
defparam debug_led_red_triBus3_2_.oe_register_mode = "none";
defparam debug_led_red_triBus3_2_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_2_.operation_mode = "output";
defparam debug_led_red_triBus3_2_.output_async_reset = "none";
defparam debug_led_red_triBus3_2_.output_power_up = "low";
defparam debug_led_red_triBus3_2_.output_register_mode = "none";
defparam debug_led_red_triBus3_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE5
cycloneii_io debug_led_red_triBus3_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[3]));
// synopsys translate_off
defparam debug_led_red_triBus3_3_.input_async_reset = "none";
defparam debug_led_red_triBus3_3_.input_power_up = "low";
defparam debug_led_red_triBus3_3_.input_register_mode = "none";
defparam debug_led_red_triBus3_3_.input_sync_reset = "none";
defparam debug_led_red_triBus3_3_.oe_async_reset = "none";
defparam debug_led_red_triBus3_3_.oe_power_up = "low";
defparam debug_led_red_triBus3_3_.oe_register_mode = "none";
defparam debug_led_red_triBus3_3_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_3_.operation_mode = "output";
defparam debug_led_red_triBus3_3_.output_async_reset = "none";
defparam debug_led_red_triBus3_3_.output_power_up = "low";
defparam debug_led_red_triBus3_3_.output_register_mode = "none";
defparam debug_led_red_triBus3_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB12
cycloneii_io debug_led_red_triBus3_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[4]));
// synopsys translate_off
defparam debug_led_red_triBus3_4_.input_async_reset = "none";
defparam debug_led_red_triBus3_4_.input_power_up = "low";
defparam debug_led_red_triBus3_4_.input_register_mode = "none";
defparam debug_led_red_triBus3_4_.input_sync_reset = "none";
defparam debug_led_red_triBus3_4_.oe_async_reset = "none";
defparam debug_led_red_triBus3_4_.oe_power_up = "low";
defparam debug_led_red_triBus3_4_.oe_register_mode = "none";
defparam debug_led_red_triBus3_4_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_4_.operation_mode = "output";
defparam debug_led_red_triBus3_4_.output_async_reset = "none";
defparam debug_led_red_triBus3_4_.output_power_up = "low";
defparam debug_led_red_triBus3_4_.output_register_mode = "none";
defparam debug_led_red_triBus3_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G16
cycloneii_io debug_led_red_triBus3_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[5]));
// synopsys translate_off
defparam debug_led_red_triBus3_5_.input_async_reset = "none";
defparam debug_led_red_triBus3_5_.input_power_up = "low";
defparam debug_led_red_triBus3_5_.input_register_mode = "none";
defparam debug_led_red_triBus3_5_.input_sync_reset = "none";
defparam debug_led_red_triBus3_5_.oe_async_reset = "none";
defparam debug_led_red_triBus3_5_.oe_power_up = "low";
defparam debug_led_red_triBus3_5_.oe_register_mode = "none";
defparam debug_led_red_triBus3_5_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_5_.operation_mode = "output";
defparam debug_led_red_triBus3_5_.output_async_reset = "none";
defparam debug_led_red_triBus3_5_.output_power_up = "low";
defparam debug_led_red_triBus3_5_.output_register_mode = "none";
defparam debug_led_red_triBus3_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE12
cycloneii_io debug_led_red_triBus3_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[6]));
// synopsys translate_off
defparam debug_led_red_triBus3_6_.input_async_reset = "none";
defparam debug_led_red_triBus3_6_.input_power_up = "low";
defparam debug_led_red_triBus3_6_.input_register_mode = "none";
defparam debug_led_red_triBus3_6_.input_sync_reset = "none";
defparam debug_led_red_triBus3_6_.oe_async_reset = "none";
defparam debug_led_red_triBus3_6_.oe_power_up = "low";
defparam debug_led_red_triBus3_6_.oe_register_mode = "none";
defparam debug_led_red_triBus3_6_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_6_.operation_mode = "output";
defparam debug_led_red_triBus3_6_.output_async_reset = "none";
defparam debug_led_red_triBus3_6_.output_power_up = "low";
defparam debug_led_red_triBus3_6_.output_register_mode = "none";
defparam debug_led_red_triBus3_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M20
cycloneii_io debug_led_red_triBus3_7_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[7]));
// synopsys translate_off
defparam debug_led_red_triBus3_7_.input_async_reset = "none";
defparam debug_led_red_triBus3_7_.input_power_up = "low";
defparam debug_led_red_triBus3_7_.input_register_mode = "none";
defparam debug_led_red_triBus3_7_.input_sync_reset = "none";
defparam debug_led_red_triBus3_7_.oe_async_reset = "none";
defparam debug_led_red_triBus3_7_.oe_power_up = "low";
defparam debug_led_red_triBus3_7_.oe_register_mode = "none";
defparam debug_led_red_triBus3_7_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_7_.operation_mode = "output";
defparam debug_led_red_triBus3_7_.output_async_reset = "none";
defparam debug_led_red_triBus3_7_.output_power_up = "low";
defparam debug_led_red_triBus3_7_.output_register_mode = "none";
defparam debug_led_red_triBus3_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B11
cycloneii_io debug_led_red_triBus3_8_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[8]));
// synopsys translate_off
defparam debug_led_red_triBus3_8_.input_async_reset = "none";
defparam debug_led_red_triBus3_8_.input_power_up = "low";
defparam debug_led_red_triBus3_8_.input_register_mode = "none";
defparam debug_led_red_triBus3_8_.input_sync_reset = "none";
defparam debug_led_red_triBus3_8_.oe_async_reset = "none";
defparam debug_led_red_triBus3_8_.oe_power_up = "low";
defparam debug_led_red_triBus3_8_.oe_register_mode = "none";
defparam debug_led_red_triBus3_8_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_8_.operation_mode = "output";
defparam debug_led_red_triBus3_8_.output_async_reset = "none";
defparam debug_led_red_triBus3_8_.output_power_up = "low";
defparam debug_led_red_triBus3_8_.output_register_mode = "none";
defparam debug_led_red_triBus3_8_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K18
cycloneii_io debug_led_red_triBus3_9_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[9]));
// synopsys translate_off
defparam debug_led_red_triBus3_9_.input_async_reset = "none";
defparam debug_led_red_triBus3_9_.input_power_up = "low";
defparam debug_led_red_triBus3_9_.input_register_mode = "none";
defparam debug_led_red_triBus3_9_.input_sync_reset = "none";
defparam debug_led_red_triBus3_9_.oe_async_reset = "none";
defparam debug_led_red_triBus3_9_.oe_power_up = "low";
defparam debug_led_red_triBus3_9_.oe_register_mode = "none";
defparam debug_led_red_triBus3_9_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_9_.operation_mode = "output";
defparam debug_led_red_triBus3_9_.output_async_reset = "none";
defparam debug_led_red_triBus3_9_.output_power_up = "low";
defparam debug_led_red_triBus3_9_.output_register_mode = "none";
defparam debug_led_red_triBus3_9_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K3
cycloneii_io debug_led_red_triBus3_10_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[10]));
// synopsys translate_off
defparam debug_led_red_triBus3_10_.input_async_reset = "none";
defparam debug_led_red_triBus3_10_.input_power_up = "low";
defparam debug_led_red_triBus3_10_.input_register_mode = "none";
defparam debug_led_red_triBus3_10_.input_sync_reset = "none";
defparam debug_led_red_triBus3_10_.oe_async_reset = "none";
defparam debug_led_red_triBus3_10_.oe_power_up = "low";
defparam debug_led_red_triBus3_10_.oe_register_mode = "none";
defparam debug_led_red_triBus3_10_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_10_.operation_mode = "output";
defparam debug_led_red_triBus3_10_.output_async_reset = "none";
defparam debug_led_red_triBus3_10_.output_power_up = "low";
defparam debug_led_red_triBus3_10_.output_register_mode = "none";
defparam debug_led_red_triBus3_10_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F3
cycloneii_io debug_led_red_triBus3_11_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[11]));
// synopsys translate_off
defparam debug_led_red_triBus3_11_.input_async_reset = "none";
defparam debug_led_red_triBus3_11_.input_power_up = "low";
defparam debug_led_red_triBus3_11_.input_register_mode = "none";
defparam debug_led_red_triBus3_11_.input_sync_reset = "none";
defparam debug_led_red_triBus3_11_.oe_async_reset = "none";
defparam debug_led_red_triBus3_11_.oe_power_up = "low";
defparam debug_led_red_triBus3_11_.oe_register_mode = "none";
defparam debug_led_red_triBus3_11_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_11_.operation_mode = "output";
defparam debug_led_red_triBus3_11_.output_async_reset = "none";
defparam debug_led_red_triBus3_11_.output_power_up = "low";
defparam debug_led_red_triBus3_11_.output_register_mode = "none";
defparam debug_led_red_triBus3_11_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H15
cycloneii_io debug_led_red_triBus3_12_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[12]));
// synopsys translate_off
defparam debug_led_red_triBus3_12_.input_async_reset = "none";
defparam debug_led_red_triBus3_12_.input_power_up = "low";
defparam debug_led_red_triBus3_12_.input_register_mode = "none";
defparam debug_led_red_triBus3_12_.input_sync_reset = "none";
defparam debug_led_red_triBus3_12_.oe_async_reset = "none";
defparam debug_led_red_triBus3_12_.oe_power_up = "low";
defparam debug_led_red_triBus3_12_.oe_register_mode = "none";
defparam debug_led_red_triBus3_12_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_12_.operation_mode = "output";
defparam debug_led_red_triBus3_12_.output_async_reset = "none";
defparam debug_led_red_triBus3_12_.output_power_up = "low";
defparam debug_led_red_triBus3_12_.output_register_mode = "none";
defparam debug_led_red_triBus3_12_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U18
cycloneii_io debug_led_red_triBus3_13_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[13]));
// synopsys translate_off
defparam debug_led_red_triBus3_13_.input_async_reset = "none";
defparam debug_led_red_triBus3_13_.input_power_up = "low";
defparam debug_led_red_triBus3_13_.input_register_mode = "none";
defparam debug_led_red_triBus3_13_.input_sync_reset = "none";
defparam debug_led_red_triBus3_13_.oe_async_reset = "none";
defparam debug_led_red_triBus3_13_.oe_power_up = "low";
defparam debug_led_red_triBus3_13_.oe_register_mode = "none";
defparam debug_led_red_triBus3_13_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_13_.operation_mode = "output";
defparam debug_led_red_triBus3_13_.output_async_reset = "none";
defparam debug_led_red_triBus3_13_.output_power_up = "low";
defparam debug_led_red_triBus3_13_.output_register_mode = "none";
defparam debug_led_red_triBus3_13_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G17
cycloneii_io debug_led_red_triBus3_14_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[14]));
// synopsys translate_off
defparam debug_led_red_triBus3_14_.input_async_reset = "none";
defparam debug_led_red_triBus3_14_.input_power_up = "low";
defparam debug_led_red_triBus3_14_.input_register_mode = "none";
defparam debug_led_red_triBus3_14_.input_sync_reset = "none";
defparam debug_led_red_triBus3_14_.oe_async_reset = "none";
defparam debug_led_red_triBus3_14_.oe_power_up = "low";
defparam debug_led_red_triBus3_14_.oe_register_mode = "none";
defparam debug_led_red_triBus3_14_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_14_.operation_mode = "output";
defparam debug_led_red_triBus3_14_.output_async_reset = "none";
defparam debug_led_red_triBus3_14_.output_power_up = "low";
defparam debug_led_red_triBus3_14_.output_register_mode = "none";
defparam debug_led_red_triBus3_14_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A21
cycloneii_io debug_led_red_triBus3_15_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[15]));
// synopsys translate_off
defparam debug_led_red_triBus3_15_.input_async_reset = "none";
defparam debug_led_red_triBus3_15_.input_power_up = "low";
defparam debug_led_red_triBus3_15_.input_register_mode = "none";
defparam debug_led_red_triBus3_15_.input_sync_reset = "none";
defparam debug_led_red_triBus3_15_.oe_async_reset = "none";
defparam debug_led_red_triBus3_15_.oe_power_up = "low";
defparam debug_led_red_triBus3_15_.oe_register_mode = "none";
defparam debug_led_red_triBus3_15_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_15_.operation_mode = "output";
defparam debug_led_red_triBus3_15_.output_async_reset = "none";
defparam debug_led_red_triBus3_15_.output_power_up = "low";
defparam debug_led_red_triBus3_15_.output_register_mode = "none";
defparam debug_led_red_triBus3_15_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G22
cycloneii_io debug_led_red_triBus3_16_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[16]));
// synopsys translate_off
defparam debug_led_red_triBus3_16_.input_async_reset = "none";
defparam debug_led_red_triBus3_16_.input_power_up = "low";
defparam debug_led_red_triBus3_16_.input_register_mode = "none";
defparam debug_led_red_triBus3_16_.input_sync_reset = "none";
defparam debug_led_red_triBus3_16_.oe_async_reset = "none";
defparam debug_led_red_triBus3_16_.oe_power_up = "low";
defparam debug_led_red_triBus3_16_.oe_register_mode = "none";
defparam debug_led_red_triBus3_16_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_16_.operation_mode = "output";
defparam debug_led_red_triBus3_16_.output_async_reset = "none";
defparam debug_led_red_triBus3_16_.output_power_up = "low";
defparam debug_led_red_triBus3_16_.output_register_mode = "none";
defparam debug_led_red_triBus3_16_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F24
cycloneii_io debug_led_red_triBus3_17_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[17]));
// synopsys translate_off
defparam debug_led_red_triBus3_17_.input_async_reset = "none";
defparam debug_led_red_triBus3_17_.input_power_up = "low";
defparam debug_led_red_triBus3_17_.input_register_mode = "none";
defparam debug_led_red_triBus3_17_.input_sync_reset = "none";
defparam debug_led_red_triBus3_17_.oe_async_reset = "none";
defparam debug_led_red_triBus3_17_.oe_power_up = "low";
defparam debug_led_red_triBus3_17_.oe_register_mode = "none";
defparam debug_led_red_triBus3_17_.oe_sync_reset = "none";
defparam debug_led_red_triBus3_17_.operation_mode = "output";
defparam debug_led_red_triBus3_17_.output_async_reset = "none";
defparam debug_led_red_triBus3_17_.output_power_up = "low";
defparam debug_led_red_triBus3_17_.output_register_mode = "none";
defparam debug_led_red_triBus3_17_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H12
cycloneii_io debug_led_grn_triBus4_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[0]));
// synopsys translate_off
defparam debug_led_grn_triBus4_0_.input_async_reset = "none";
defparam debug_led_grn_triBus4_0_.input_power_up = "low";
defparam debug_led_grn_triBus4_0_.input_register_mode = "none";
defparam debug_led_grn_triBus4_0_.input_sync_reset = "none";
defparam debug_led_grn_triBus4_0_.oe_async_reset = "none";
defparam debug_led_grn_triBus4_0_.oe_power_up = "low";
defparam debug_led_grn_triBus4_0_.oe_register_mode = "none";
defparam debug_led_grn_triBus4_0_.oe_sync_reset = "none";
defparam debug_led_grn_triBus4_0_.operation_mode = "output";
defparam debug_led_grn_triBus4_0_.output_async_reset = "none";
defparam debug_led_grn_triBus4_0_.output_power_up = "low";
defparam debug_led_grn_triBus4_0_.output_register_mode = "none";
defparam debug_led_grn_triBus4_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB20
cycloneii_io debug_led_grn_triBus4_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[1]));
// synopsys translate_off
defparam debug_led_grn_triBus4_1_.input_async_reset = "none";
defparam debug_led_grn_triBus4_1_.input_power_up = "low";
defparam debug_led_grn_triBus4_1_.input_register_mode = "none";
defparam debug_led_grn_triBus4_1_.input_sync_reset = "none";
defparam debug_led_grn_triBus4_1_.oe_async_reset = "none";
defparam debug_led_grn_triBus4_1_.oe_power_up = "low";
defparam debug_led_grn_triBus4_1_.oe_register_mode = "none";
defparam debug_led_grn_triBus4_1_.oe_sync_reset = "none";
defparam debug_led_grn_triBus4_1_.operation_mode = "output";
defparam debug_led_grn_triBus4_1_.output_async_reset = "none";
defparam debug_led_grn_triBus4_1_.output_power_up = "low";
defparam debug_led_grn_triBus4_1_.output_register_mode = "none";
defparam debug_led_grn_triBus4_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T7
cycloneii_io debug_led_grn_triBus4_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[2]));
// synopsys translate_off
defparam debug_led_grn_triBus4_2_.input_async_reset = "none";
defparam debug_led_grn_triBus4_2_.input_power_up = "low";
defparam debug_led_grn_triBus4_2_.input_register_mode = "none";
defparam debug_led_grn_triBus4_2_.input_sync_reset = "none";
defparam debug_led_grn_triBus4_2_.oe_async_reset = "none";
defparam debug_led_grn_triBus4_2_.oe_power_up = "low";
defparam debug_led_grn_triBus4_2_.oe_register_mode = "none";
defparam debug_led_grn_triBus4_2_.oe_sync_reset = "none";
defparam debug_led_grn_triBus4_2_.operation_mode = "output";
defparam debug_led_grn_triBus4_2_.output_async_reset = "none";
defparam debug_led_grn_triBus4_2_.output_power_up = "low";
defparam debug_led_grn_triBus4_2_.output_register_mode = "none";
defparam debug_led_grn_triBus4_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA9
cycloneii_io debug_led_grn_triBus4_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[3]));
// synopsys translate_off
defparam debug_led_grn_triBus4_3_.input_async_reset = "none";
defparam debug_led_grn_triBus4_3_.input_power_up = "low";
defparam debug_led_grn_triBus4_3_.input_register_mode = "none";
defparam debug_led_grn_triBus4_3_.input_sync_reset = "none";
defparam debug_led_grn_triBus4_3_.oe_async_reset = "none";
defparam debug_led_grn_triBus4_3_.oe_power_up = "low";
defparam debug_led_grn_triBus4_3_.oe_register_mode = "none";
defparam debug_led_grn_triBus4_3_.oe_sync_reset = "none";
defparam debug_led_grn_triBus4_3_.operation_mode = "output";
defparam debug_led_grn_triBus4_3_.output_async_reset = "none";
defparam debug_led_grn_triBus4_3_.output_power_up = "low";
defparam debug_led_grn_triBus4_3_.output_register_mode = "none";
defparam debug_led_grn_triBus4_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC6
cycloneii_io debug_led_grn_triBus4_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[4]));
// synopsys translate_off
defparam debug_led_grn_triBus4_4_.input_async_reset = "none";
defparam debug_led_grn_triBus4_4_.input_power_up = "low";
defparam debug_led_grn_triBus4_4_.input_register_mode = "none";
defparam debug_led_grn_triBus4_4_.input_sync_reset = "none";
defparam debug_led_grn_triBus4_4_.oe_async_reset = "none";
defparam debug_led_grn_triBus4_4_.oe_power_up = "low";
defparam debug_led_grn_triBus4_4_.oe_register_mode = "none";
defparam debug_led_grn_triBus4_4_.oe_sync_reset = "none";
defparam debug_led_grn_triBus4_4_.operation_mode = "output";
defparam debug_led_grn_triBus4_4_.output_async_reset = "none";
defparam debug_led_grn_triBus4_4_.output_power_up = "low";
defparam debug_led_grn_triBus4_4_.output_register_mode = "none";
defparam debug_led_grn_triBus4_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE8
cycloneii_io debug_led_grn_triBus4_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[5]));
// synopsys translate_off
defparam debug_led_grn_triBus4_5_.input_async_reset = "none";
defparam debug_led_grn_triBus4_5_.input_power_up = "low";
defparam debug_led_grn_triBus4_5_.input_register_mode = "none";
defparam debug_led_grn_triBus4_5_.input_sync_reset = "none";
defparam debug_led_grn_triBus4_5_.oe_async_reset = "none";
defparam debug_led_grn_triBus4_5_.oe_power_up = "low";
defparam debug_led_grn_triBus4_5_.oe_register_mode = "none";
defparam debug_led_grn_triBus4_5_.oe_sync_reset = "none";
defparam debug_led_grn_triBus4_5_.operation_mode = "output";
defparam debug_led_grn_triBus4_5_.output_async_reset = "none";
defparam debug_led_grn_triBus4_5_.output_power_up = "low";
defparam debug_led_grn_triBus4_5_.output_register_mode = "none";
defparam debug_led_grn_triBus4_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G10
cycloneii_io debug_num_0_triBus5_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[0]));
// synopsys translate_off
defparam debug_num_0_triBus5_0_.input_async_reset = "none";
defparam debug_num_0_triBus5_0_.input_power_up = "low";
defparam debug_num_0_triBus5_0_.input_register_mode = "none";
defparam debug_num_0_triBus5_0_.input_sync_reset = "none";
defparam debug_num_0_triBus5_0_.oe_async_reset = "none";
defparam debug_num_0_triBus5_0_.oe_power_up = "low";
defparam debug_num_0_triBus5_0_.oe_register_mode = "none";
defparam debug_num_0_triBus5_0_.oe_sync_reset = "none";
defparam debug_num_0_triBus5_0_.operation_mode = "output";
defparam debug_num_0_triBus5_0_.output_async_reset = "none";
defparam debug_num_0_triBus5_0_.output_power_up = "low";
defparam debug_num_0_triBus5_0_.output_register_mode = "none";
defparam debug_num_0_triBus5_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB18
cycloneii_io debug_num_0_triBus5_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[1]));
// synopsys translate_off
defparam debug_num_0_triBus5_1_.input_async_reset = "none";
defparam debug_num_0_triBus5_1_.input_power_up = "low";
defparam debug_num_0_triBus5_1_.input_register_mode = "none";
defparam debug_num_0_triBus5_1_.input_sync_reset = "none";
defparam debug_num_0_triBus5_1_.oe_async_reset = "none";
defparam debug_num_0_triBus5_1_.oe_power_up = "low";
defparam debug_num_0_triBus5_1_.oe_register_mode = "none";
defparam debug_num_0_triBus5_1_.oe_sync_reset = "none";
defparam debug_num_0_triBus5_1_.operation_mode = "output";
defparam debug_num_0_triBus5_1_.output_async_reset = "none";
defparam debug_num_0_triBus5_1_.output_power_up = "low";
defparam debug_num_0_triBus5_1_.output_register_mode = "none";
defparam debug_num_0_triBus5_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E24
cycloneii_io debug_num_0_triBus5_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[2]));
// synopsys translate_off
defparam debug_num_0_triBus5_2_.input_async_reset = "none";
defparam debug_num_0_triBus5_2_.input_power_up = "low";
defparam debug_num_0_triBus5_2_.input_register_mode = "none";
defparam debug_num_0_triBus5_2_.input_sync_reset = "none";
defparam debug_num_0_triBus5_2_.oe_async_reset = "none";
defparam debug_num_0_triBus5_2_.oe_power_up = "low";
defparam debug_num_0_triBus5_2_.oe_register_mode = "none";
defparam debug_num_0_triBus5_2_.oe_sync_reset = "none";
defparam debug_num_0_triBus5_2_.operation_mode = "output";
defparam debug_num_0_triBus5_2_.output_async_reset = "none";
defparam debug_num_0_triBus5_2_.output_power_up = "low";
defparam debug_num_0_triBus5_2_.output_register_mode = "none";
defparam debug_num_0_triBus5_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G25
cycloneii_io debug_num_0_triBus5_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[3]));
// synopsys translate_off
defparam debug_num_0_triBus5_3_.input_async_reset = "none";
defparam debug_num_0_triBus5_3_.input_power_up = "low";
defparam debug_num_0_triBus5_3_.input_register_mode = "none";
defparam debug_num_0_triBus5_3_.input_sync_reset = "none";
defparam debug_num_0_triBus5_3_.oe_async_reset = "none";
defparam debug_num_0_triBus5_3_.oe_power_up = "low";
defparam debug_num_0_triBus5_3_.oe_register_mode = "none";
defparam debug_num_0_triBus5_3_.oe_sync_reset = "none";
defparam debug_num_0_triBus5_3_.operation_mode = "output";
defparam debug_num_0_triBus5_3_.output_async_reset = "none";
defparam debug_num_0_triBus5_3_.output_power_up = "low";
defparam debug_num_0_triBus5_3_.output_register_mode = "none";
defparam debug_num_0_triBus5_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G26
cycloneii_io debug_num_1_triBus6_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[0]));
// synopsys translate_off
defparam debug_num_1_triBus6_0_.input_async_reset = "none";
defparam debug_num_1_triBus6_0_.input_power_up = "low";
defparam debug_num_1_triBus6_0_.input_register_mode = "none";
defparam debug_num_1_triBus6_0_.input_sync_reset = "none";
defparam debug_num_1_triBus6_0_.oe_async_reset = "none";
defparam debug_num_1_triBus6_0_.oe_power_up = "low";
defparam debug_num_1_triBus6_0_.oe_register_mode = "none";
defparam debug_num_1_triBus6_0_.oe_sync_reset = "none";
defparam debug_num_1_triBus6_0_.operation_mode = "output";
defparam debug_num_1_triBus6_0_.output_async_reset = "none";
defparam debug_num_1_triBus6_0_.output_power_up = "low";
defparam debug_num_1_triBus6_0_.output_register_mode = "none";
defparam debug_num_1_triBus6_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D19
cycloneii_io debug_num_1_triBus6_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[1]));
// synopsys translate_off
defparam debug_num_1_triBus6_1_.input_async_reset = "none";
defparam debug_num_1_triBus6_1_.input_power_up = "low";
defparam debug_num_1_triBus6_1_.input_register_mode = "none";
defparam debug_num_1_triBus6_1_.input_sync_reset = "none";
defparam debug_num_1_triBus6_1_.oe_async_reset = "none";
defparam debug_num_1_triBus6_1_.oe_power_up = "low";
defparam debug_num_1_triBus6_1_.oe_register_mode = "none";
defparam debug_num_1_triBus6_1_.oe_sync_reset = "none";
defparam debug_num_1_triBus6_1_.operation_mode = "output";
defparam debug_num_1_triBus6_1_.output_async_reset = "none";
defparam debug_num_1_triBus6_1_.output_power_up = "low";
defparam debug_num_1_triBus6_1_.output_register_mode = "none";
defparam debug_num_1_triBus6_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J20
cycloneii_io debug_num_1_triBus6_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[2]));
// synopsys translate_off
defparam debug_num_1_triBus6_2_.input_async_reset = "none";
defparam debug_num_1_triBus6_2_.input_power_up = "low";
defparam debug_num_1_triBus6_2_.input_register_mode = "none";
defparam debug_num_1_triBus6_2_.input_sync_reset = "none";
defparam debug_num_1_triBus6_2_.oe_async_reset = "none";
defparam debug_num_1_triBus6_2_.oe_power_up = "low";
defparam debug_num_1_triBus6_2_.oe_register_mode = "none";
defparam debug_num_1_triBus6_2_.oe_sync_reset = "none";
defparam debug_num_1_triBus6_2_.operation_mode = "output";
defparam debug_num_1_triBus6_2_.output_async_reset = "none";
defparam debug_num_1_triBus6_2_.output_power_up = "low";
defparam debug_num_1_triBus6_2_.output_register_mode = "none";
defparam debug_num_1_triBus6_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B22
cycloneii_io debug_num_1_triBus6_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[3]));
// synopsys translate_off
defparam debug_num_1_triBus6_3_.input_async_reset = "none";
defparam debug_num_1_triBus6_3_.input_power_up = "low";
defparam debug_num_1_triBus6_3_.input_register_mode = "none";
defparam debug_num_1_triBus6_3_.input_sync_reset = "none";
defparam debug_num_1_triBus6_3_.oe_async_reset = "none";
defparam debug_num_1_triBus6_3_.oe_power_up = "low";
defparam debug_num_1_triBus6_3_.oe_register_mode = "none";
defparam debug_num_1_triBus6_3_.oe_sync_reset = "none";
defparam debug_num_1_triBus6_3_.operation_mode = "output";
defparam debug_num_1_triBus6_3_.output_async_reset = "none";
defparam debug_num_1_triBus6_3_.output_power_up = "low";
defparam debug_num_1_triBus6_3_.output_register_mode = "none";
defparam debug_num_1_triBus6_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF23
cycloneii_io debug_num_2_triBus7_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[0]));
// synopsys translate_off
defparam debug_num_2_triBus7_0_.input_async_reset = "none";
defparam debug_num_2_triBus7_0_.input_power_up = "low";
defparam debug_num_2_triBus7_0_.input_register_mode = "none";
defparam debug_num_2_triBus7_0_.input_sync_reset = "none";
defparam debug_num_2_triBus7_0_.oe_async_reset = "none";
defparam debug_num_2_triBus7_0_.oe_power_up = "low";
defparam debug_num_2_triBus7_0_.oe_register_mode = "none";
defparam debug_num_2_triBus7_0_.oe_sync_reset = "none";
defparam debug_num_2_triBus7_0_.operation_mode = "output";
defparam debug_num_2_triBus7_0_.output_async_reset = "none";
defparam debug_num_2_triBus7_0_.output_power_up = "low";
defparam debug_num_2_triBus7_0_.output_register_mode = "none";
defparam debug_num_2_triBus7_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V9
cycloneii_io debug_num_2_triBus7_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[1]));
// synopsys translate_off
defparam debug_num_2_triBus7_1_.input_async_reset = "none";
defparam debug_num_2_triBus7_1_.input_power_up = "low";
defparam debug_num_2_triBus7_1_.input_register_mode = "none";
defparam debug_num_2_triBus7_1_.input_sync_reset = "none";
defparam debug_num_2_triBus7_1_.oe_async_reset = "none";
defparam debug_num_2_triBus7_1_.oe_power_up = "low";
defparam debug_num_2_triBus7_1_.oe_register_mode = "none";
defparam debug_num_2_triBus7_1_.oe_sync_reset = "none";
defparam debug_num_2_triBus7_1_.operation_mode = "output";
defparam debug_num_2_triBus7_1_.output_async_reset = "none";
defparam debug_num_2_triBus7_1_.output_power_up = "low";
defparam debug_num_2_triBus7_1_.output_register_mode = "none";
defparam debug_num_2_triBus7_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D6
cycloneii_io debug_num_2_triBus7_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[2]));
// synopsys translate_off
defparam debug_num_2_triBus7_2_.input_async_reset = "none";
defparam debug_num_2_triBus7_2_.input_power_up = "low";
defparam debug_num_2_triBus7_2_.input_register_mode = "none";
defparam debug_num_2_triBus7_2_.input_sync_reset = "none";
defparam debug_num_2_triBus7_2_.oe_async_reset = "none";
defparam debug_num_2_triBus7_2_.oe_power_up = "low";
defparam debug_num_2_triBus7_2_.oe_register_mode = "none";
defparam debug_num_2_triBus7_2_.oe_sync_reset = "none";
defparam debug_num_2_triBus7_2_.operation_mode = "output";
defparam debug_num_2_triBus7_2_.output_async_reset = "none";
defparam debug_num_2_triBus7_2_.output_power_up = "low";
defparam debug_num_2_triBus7_2_.output_register_mode = "none";
defparam debug_num_2_triBus7_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y1
cycloneii_io debug_num_2_triBus7_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[3]));
// synopsys translate_off
defparam debug_num_2_triBus7_3_.input_async_reset = "none";
defparam debug_num_2_triBus7_3_.input_power_up = "low";
defparam debug_num_2_triBus7_3_.input_register_mode = "none";
defparam debug_num_2_triBus7_3_.input_sync_reset = "none";
defparam debug_num_2_triBus7_3_.oe_async_reset = "none";
defparam debug_num_2_triBus7_3_.oe_power_up = "low";
defparam debug_num_2_triBus7_3_.oe_register_mode = "none";
defparam debug_num_2_triBus7_3_.oe_sync_reset = "none";
defparam debug_num_2_triBus7_3_.operation_mode = "output";
defparam debug_num_2_triBus7_3_.output_async_reset = "none";
defparam debug_num_2_triBus7_3_.output_power_up = "low";
defparam debug_num_2_triBus7_3_.output_register_mode = "none";
defparam debug_num_2_triBus7_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V5
cycloneii_io debug_num_3_triBus8_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[0]));
// synopsys translate_off
defparam debug_num_3_triBus8_0_.input_async_reset = "none";
defparam debug_num_3_triBus8_0_.input_power_up = "low";
defparam debug_num_3_triBus8_0_.input_register_mode = "none";
defparam debug_num_3_triBus8_0_.input_sync_reset = "none";
defparam debug_num_3_triBus8_0_.oe_async_reset = "none";
defparam debug_num_3_triBus8_0_.oe_power_up = "low";
defparam debug_num_3_triBus8_0_.oe_register_mode = "none";
defparam debug_num_3_triBus8_0_.oe_sync_reset = "none";
defparam debug_num_3_triBus8_0_.operation_mode = "output";
defparam debug_num_3_triBus8_0_.output_async_reset = "none";
defparam debug_num_3_triBus8_0_.output_power_up = "low";
defparam debug_num_3_triBus8_0_.output_register_mode = "none";
defparam debug_num_3_triBus8_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J26
cycloneii_io debug_num_3_triBus8_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[1]));
// synopsys translate_off
defparam debug_num_3_triBus8_1_.input_async_reset = "none";
defparam debug_num_3_triBus8_1_.input_power_up = "low";
defparam debug_num_3_triBus8_1_.input_register_mode = "none";
defparam debug_num_3_triBus8_1_.input_sync_reset = "none";
defparam debug_num_3_triBus8_1_.oe_async_reset = "none";
defparam debug_num_3_triBus8_1_.oe_power_up = "low";
defparam debug_num_3_triBus8_1_.oe_register_mode = "none";
defparam debug_num_3_triBus8_1_.oe_sync_reset = "none";
defparam debug_num_3_triBus8_1_.operation_mode = "output";
defparam debug_num_3_triBus8_1_.output_async_reset = "none";
defparam debug_num_3_triBus8_1_.output_power_up = "low";
defparam debug_num_3_triBus8_1_.output_register_mode = "none";
defparam debug_num_3_triBus8_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB8
cycloneii_io debug_num_3_triBus8_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[2]));
// synopsys translate_off
defparam debug_num_3_triBus8_2_.input_async_reset = "none";
defparam debug_num_3_triBus8_2_.input_power_up = "low";
defparam debug_num_3_triBus8_2_.input_register_mode = "none";
defparam debug_num_3_triBus8_2_.input_sync_reset = "none";
defparam debug_num_3_triBus8_2_.oe_async_reset = "none";
defparam debug_num_3_triBus8_2_.oe_power_up = "low";
defparam debug_num_3_triBus8_2_.oe_register_mode = "none";
defparam debug_num_3_triBus8_2_.oe_sync_reset = "none";
defparam debug_num_3_triBus8_2_.operation_mode = "output";
defparam debug_num_3_triBus8_2_.output_async_reset = "none";
defparam debug_num_3_triBus8_2_.output_power_up = "low";
defparam debug_num_3_triBus8_2_.output_register_mode = "none";
defparam debug_num_3_triBus8_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K17
cycloneii_io debug_num_3_triBus8_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[3]));
// synopsys translate_off
defparam debug_num_3_triBus8_3_.input_async_reset = "none";
defparam debug_num_3_triBus8_3_.input_power_up = "low";
defparam debug_num_3_triBus8_3_.input_register_mode = "none";
defparam debug_num_3_triBus8_3_.input_sync_reset = "none";
defparam debug_num_3_triBus8_3_.oe_async_reset = "none";
defparam debug_num_3_triBus8_3_.oe_power_up = "low";
defparam debug_num_3_triBus8_3_.oe_register_mode = "none";
defparam debug_num_3_triBus8_3_.oe_sync_reset = "none";
defparam debug_num_3_triBus8_3_.operation_mode = "output";
defparam debug_num_3_triBus8_3_.output_async_reset = "none";
defparam debug_num_3_triBus8_3_.output_power_up = "low";
defparam debug_num_3_triBus8_3_.output_register_mode = "none";
defparam debug_num_3_triBus8_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P3
cycloneii_io debug_num_4_triBus9_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[0]));
// synopsys translate_off
defparam debug_num_4_triBus9_0_.input_async_reset = "none";
defparam debug_num_4_triBus9_0_.input_power_up = "low";
defparam debug_num_4_triBus9_0_.input_register_mode = "none";
defparam debug_num_4_triBus9_0_.input_sync_reset = "none";
defparam debug_num_4_triBus9_0_.oe_async_reset = "none";
defparam debug_num_4_triBus9_0_.oe_power_up = "low";
defparam debug_num_4_triBus9_0_.oe_register_mode = "none";
defparam debug_num_4_triBus9_0_.oe_sync_reset = "none";
defparam debug_num_4_triBus9_0_.operation_mode = "output";
defparam debug_num_4_triBus9_0_.output_async_reset = "none";
defparam debug_num_4_triBus9_0_.output_power_up = "low";
defparam debug_num_4_triBus9_0_.output_register_mode = "none";
defparam debug_num_4_triBus9_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W16
cycloneii_io debug_num_4_triBus9_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[1]));
// synopsys translate_off
defparam debug_num_4_triBus9_1_.input_async_reset = "none";
defparam debug_num_4_triBus9_1_.input_power_up = "low";
defparam debug_num_4_triBus9_1_.input_register_mode = "none";
defparam debug_num_4_triBus9_1_.input_sync_reset = "none";
defparam debug_num_4_triBus9_1_.oe_async_reset = "none";
defparam debug_num_4_triBus9_1_.oe_power_up = "low";
defparam debug_num_4_triBus9_1_.oe_register_mode = "none";
defparam debug_num_4_triBus9_1_.oe_sync_reset = "none";
defparam debug_num_4_triBus9_1_.operation_mode = "output";
defparam debug_num_4_triBus9_1_.output_async_reset = "none";
defparam debug_num_4_triBus9_1_.output_power_up = "low";
defparam debug_num_4_triBus9_1_.output_register_mode = "none";
defparam debug_num_4_triBus9_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V3
cycloneii_io debug_num_4_triBus9_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[2]));
// synopsys translate_off
defparam debug_num_4_triBus9_2_.input_async_reset = "none";
defparam debug_num_4_triBus9_2_.input_power_up = "low";
defparam debug_num_4_triBus9_2_.input_register_mode = "none";
defparam debug_num_4_triBus9_2_.input_sync_reset = "none";
defparam debug_num_4_triBus9_2_.oe_async_reset = "none";
defparam debug_num_4_triBus9_2_.oe_power_up = "low";
defparam debug_num_4_triBus9_2_.oe_register_mode = "none";
defparam debug_num_4_triBus9_2_.oe_sync_reset = "none";
defparam debug_num_4_triBus9_2_.operation_mode = "output";
defparam debug_num_4_triBus9_2_.output_async_reset = "none";
defparam debug_num_4_triBus9_2_.output_power_up = "low";
defparam debug_num_4_triBus9_2_.output_register_mode = "none";
defparam debug_num_4_triBus9_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF18
cycloneii_io debug_num_4_triBus9_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[3]));
// synopsys translate_off
defparam debug_num_4_triBus9_3_.input_async_reset = "none";
defparam debug_num_4_triBus9_3_.input_power_up = "low";
defparam debug_num_4_triBus9_3_.input_register_mode = "none";
defparam debug_num_4_triBus9_3_.input_sync_reset = "none";
defparam debug_num_4_triBus9_3_.oe_async_reset = "none";
defparam debug_num_4_triBus9_3_.oe_power_up = "low";
defparam debug_num_4_triBus9_3_.oe_register_mode = "none";
defparam debug_num_4_triBus9_3_.oe_sync_reset = "none";
defparam debug_num_4_triBus9_3_.operation_mode = "output";
defparam debug_num_4_triBus9_3_.output_async_reset = "none";
defparam debug_num_4_triBus9_3_.output_power_up = "low";
defparam debug_num_4_triBus9_3_.output_register_mode = "none";
defparam debug_num_4_triBus9_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M23
cycloneii_io debug_num_5_triBus10_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[0]));
// synopsys translate_off
defparam debug_num_5_triBus10_0_.input_async_reset = "none";
defparam debug_num_5_triBus10_0_.input_power_up = "low";
defparam debug_num_5_triBus10_0_.input_register_mode = "none";
defparam debug_num_5_triBus10_0_.input_sync_reset = "none";
defparam debug_num_5_triBus10_0_.oe_async_reset = "none";
defparam debug_num_5_triBus10_0_.oe_power_up = "low";
defparam debug_num_5_triBus10_0_.oe_register_mode = "none";
defparam debug_num_5_triBus10_0_.oe_sync_reset = "none";
defparam debug_num_5_triBus10_0_.operation_mode = "output";
defparam debug_num_5_triBus10_0_.output_async_reset = "none";
defparam debug_num_5_triBus10_0_.output_power_up = "low";
defparam debug_num_5_triBus10_0_.output_register_mode = "none";
defparam debug_num_5_triBus10_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE16
cycloneii_io debug_num_5_triBus10_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[1]));
// synopsys translate_off
defparam debug_num_5_triBus10_1_.input_async_reset = "none";
defparam debug_num_5_triBus10_1_.input_power_up = "low";
defparam debug_num_5_triBus10_1_.input_register_mode = "none";
defparam debug_num_5_triBus10_1_.input_sync_reset = "none";
defparam debug_num_5_triBus10_1_.oe_async_reset = "none";
defparam debug_num_5_triBus10_1_.oe_power_up = "low";
defparam debug_num_5_triBus10_1_.oe_register_mode = "none";
defparam debug_num_5_triBus10_1_.oe_sync_reset = "none";
defparam debug_num_5_triBus10_1_.operation_mode = "output";
defparam debug_num_5_triBus10_1_.output_async_reset = "none";
defparam debug_num_5_triBus10_1_.output_power_up = "low";
defparam debug_num_5_triBus10_1_.output_register_mode = "none";
defparam debug_num_5_triBus10_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF4
cycloneii_io debug_num_5_triBus10_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[2]));
// synopsys translate_off
defparam debug_num_5_triBus10_2_.input_async_reset = "none";
defparam debug_num_5_triBus10_2_.input_power_up = "low";
defparam debug_num_5_triBus10_2_.input_register_mode = "none";
defparam debug_num_5_triBus10_2_.input_sync_reset = "none";
defparam debug_num_5_triBus10_2_.oe_async_reset = "none";
defparam debug_num_5_triBus10_2_.oe_power_up = "low";
defparam debug_num_5_triBus10_2_.oe_register_mode = "none";
defparam debug_num_5_triBus10_2_.oe_sync_reset = "none";
defparam debug_num_5_triBus10_2_.operation_mode = "output";
defparam debug_num_5_triBus10_2_.output_async_reset = "none";
defparam debug_num_5_triBus10_2_.output_power_up = "low";
defparam debug_num_5_triBus10_2_.output_register_mode = "none";
defparam debug_num_5_triBus10_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C2
cycloneii_io debug_num_5_triBus10_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[3]));
// synopsys translate_off
defparam debug_num_5_triBus10_3_.input_async_reset = "none";
defparam debug_num_5_triBus10_3_.input_power_up = "low";
defparam debug_num_5_triBus10_3_.input_register_mode = "none";
defparam debug_num_5_triBus10_3_.input_sync_reset = "none";
defparam debug_num_5_triBus10_3_.oe_async_reset = "none";
defparam debug_num_5_triBus10_3_.oe_power_up = "low";
defparam debug_num_5_triBus10_3_.oe_register_mode = "none";
defparam debug_num_5_triBus10_3_.oe_sync_reset = "none";
defparam debug_num_5_triBus10_3_.operation_mode = "output";
defparam debug_num_5_triBus10_3_.output_async_reset = "none";
defparam debug_num_5_triBus10_3_.output_power_up = "low";
defparam debug_num_5_triBus10_3_.output_register_mode = "none";
defparam debug_num_5_triBus10_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B9
cycloneii_io debug_key_a1_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[1]));
// synopsys translate_off
defparam debug_key_a1_a_aI.input_async_reset = "none";
defparam debug_key_a1_a_aI.input_power_up = "low";
defparam debug_key_a1_a_aI.input_register_mode = "none";
defparam debug_key_a1_a_aI.input_sync_reset = "none";
defparam debug_key_a1_a_aI.oe_async_reset = "none";
defparam debug_key_a1_a_aI.oe_power_up = "low";
defparam debug_key_a1_a_aI.oe_register_mode = "none";
defparam debug_key_a1_a_aI.oe_sync_reset = "none";
defparam debug_key_a1_a_aI.operation_mode = "input";
defparam debug_key_a1_a_aI.output_async_reset = "none";
defparam debug_key_a1_a_aI.output_power_up = "low";
defparam debug_key_a1_a_aI.output_register_mode = "none";
defparam debug_key_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K4
cycloneii_io debug_key_a2_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[2]));
// synopsys translate_off
defparam debug_key_a2_a_aI.input_async_reset = "none";
defparam debug_key_a2_a_aI.input_power_up = "low";
defparam debug_key_a2_a_aI.input_register_mode = "none";
defparam debug_key_a2_a_aI.input_sync_reset = "none";
defparam debug_key_a2_a_aI.oe_async_reset = "none";
defparam debug_key_a2_a_aI.oe_power_up = "low";
defparam debug_key_a2_a_aI.oe_register_mode = "none";
defparam debug_key_a2_a_aI.oe_sync_reset = "none";
defparam debug_key_a2_a_aI.operation_mode = "input";
defparam debug_key_a2_a_aI.output_async_reset = "none";
defparam debug_key_a2_a_aI.output_power_up = "low";
defparam debug_key_a2_a_aI.output_register_mode = "none";
defparam debug_key_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC17
cycloneii_io debug_key_a3_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[3]));
// synopsys translate_off
defparam debug_key_a3_a_aI.input_async_reset = "none";
defparam debug_key_a3_a_aI.input_power_up = "low";
defparam debug_key_a3_a_aI.input_register_mode = "none";
defparam debug_key_a3_a_aI.input_sync_reset = "none";
defparam debug_key_a3_a_aI.oe_async_reset = "none";
defparam debug_key_a3_a_aI.oe_power_up = "low";
defparam debug_key_a3_a_aI.oe_register_mode = "none";
defparam debug_key_a3_a_aI.oe_sync_reset = "none";
defparam debug_key_a3_a_aI.operation_mode = "input";
defparam debug_key_a3_a_aI.output_async_reset = "none";
defparam debug_key_a3_a_aI.output_power_up = "low";
defparam debug_key_a3_a_aI.output_register_mode = "none";
defparam debug_key_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y10
cycloneii_io debug_switch_a0_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[0]));
// synopsys translate_off
defparam debug_switch_a0_a_aI.input_async_reset = "none";
defparam debug_switch_a0_a_aI.input_power_up = "low";
defparam debug_switch_a0_a_aI.input_register_mode = "none";
defparam debug_switch_a0_a_aI.input_sync_reset = "none";
defparam debug_switch_a0_a_aI.oe_async_reset = "none";
defparam debug_switch_a0_a_aI.oe_power_up = "low";
defparam debug_switch_a0_a_aI.oe_register_mode = "none";
defparam debug_switch_a0_a_aI.oe_sync_reset = "none";
defparam debug_switch_a0_a_aI.operation_mode = "input";
defparam debug_switch_a0_a_aI.output_async_reset = "none";
defparam debug_switch_a0_a_aI.output_power_up = "low";
defparam debug_switch_a0_a_aI.output_register_mode = "none";
defparam debug_switch_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J14
cycloneii_io debug_switch_a1_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[1]));
// synopsys translate_off
defparam debug_switch_a1_a_aI.input_async_reset = "none";
defparam debug_switch_a1_a_aI.input_power_up = "low";
defparam debug_switch_a1_a_aI.input_register_mode = "none";
defparam debug_switch_a1_a_aI.input_sync_reset = "none";
defparam debug_switch_a1_a_aI.oe_async_reset = "none";
defparam debug_switch_a1_a_aI.oe_power_up = "low";
defparam debug_switch_a1_a_aI.oe_register_mode = "none";
defparam debug_switch_a1_a_aI.oe_sync_reset = "none";
defparam debug_switch_a1_a_aI.operation_mode = "input";
defparam debug_switch_a1_a_aI.output_async_reset = "none";
defparam debug_switch_a1_a_aI.output_power_up = "low";
defparam debug_switch_a1_a_aI.output_register_mode = "none";
defparam debug_switch_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A10
cycloneii_io debug_switch_a2_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[2]));
// synopsys translate_off
defparam debug_switch_a2_a_aI.input_async_reset = "none";
defparam debug_switch_a2_a_aI.input_power_up = "low";
defparam debug_switch_a2_a_aI.input_register_mode = "none";
defparam debug_switch_a2_a_aI.input_sync_reset = "none";
defparam debug_switch_a2_a_aI.oe_async_reset = "none";
defparam debug_switch_a2_a_aI.oe_power_up = "low";
defparam debug_switch_a2_a_aI.oe_register_mode = "none";
defparam debug_switch_a2_a_aI.oe_sync_reset = "none";
defparam debug_switch_a2_a_aI.operation_mode = "input";
defparam debug_switch_a2_a_aI.output_async_reset = "none";
defparam debug_switch_a2_a_aI.output_power_up = "low";
defparam debug_switch_a2_a_aI.output_register_mode = "none";
defparam debug_switch_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B15
cycloneii_io debug_switch_a3_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[3]));
// synopsys translate_off
defparam debug_switch_a3_a_aI.input_async_reset = "none";
defparam debug_switch_a3_a_aI.input_power_up = "low";
defparam debug_switch_a3_a_aI.input_register_mode = "none";
defparam debug_switch_a3_a_aI.input_sync_reset = "none";
defparam debug_switch_a3_a_aI.oe_async_reset = "none";
defparam debug_switch_a3_a_aI.oe_power_up = "low";
defparam debug_switch_a3_a_aI.oe_register_mode = "none";
defparam debug_switch_a3_a_aI.oe_sync_reset = "none";
defparam debug_switch_a3_a_aI.operation_mode = "input";
defparam debug_switch_a3_a_aI.output_async_reset = "none";
defparam debug_switch_a3_a_aI.output_power_up = "low";
defparam debug_switch_a3_a_aI.output_register_mode = "none";
defparam debug_switch_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C23
cycloneii_io debug_switch_a4_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[4]));
// synopsys translate_off
defparam debug_switch_a4_a_aI.input_async_reset = "none";
defparam debug_switch_a4_a_aI.input_power_up = "low";
defparam debug_switch_a4_a_aI.input_register_mode = "none";
defparam debug_switch_a4_a_aI.input_sync_reset = "none";
defparam debug_switch_a4_a_aI.oe_async_reset = "none";
defparam debug_switch_a4_a_aI.oe_power_up = "low";
defparam debug_switch_a4_a_aI.oe_register_mode = "none";
defparam debug_switch_a4_a_aI.oe_sync_reset = "none";
defparam debug_switch_a4_a_aI.operation_mode = "input";
defparam debug_switch_a4_a_aI.output_async_reset = "none";
defparam debug_switch_a4_a_aI.output_power_up = "low";
defparam debug_switch_a4_a_aI.output_register_mode = "none";
defparam debug_switch_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J3
cycloneii_io debug_switch_a5_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[5]));
// synopsys translate_off
defparam debug_switch_a5_a_aI.input_async_reset = "none";
defparam debug_switch_a5_a_aI.input_power_up = "low";
defparam debug_switch_a5_a_aI.input_register_mode = "none";
defparam debug_switch_a5_a_aI.input_sync_reset = "none";
defparam debug_switch_a5_a_aI.oe_async_reset = "none";
defparam debug_switch_a5_a_aI.oe_power_up = "low";
defparam debug_switch_a5_a_aI.oe_register_mode = "none";
defparam debug_switch_a5_a_aI.oe_sync_reset = "none";
defparam debug_switch_a5_a_aI.operation_mode = "input";
defparam debug_switch_a5_a_aI.output_async_reset = "none";
defparam debug_switch_a5_a_aI.output_power_up = "low";
defparam debug_switch_a5_a_aI.output_register_mode = "none";
defparam debug_switch_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C25
cycloneii_io debug_switch_a6_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[6]));
// synopsys translate_off
defparam debug_switch_a6_a_aI.input_async_reset = "none";
defparam debug_switch_a6_a_aI.input_power_up = "low";
defparam debug_switch_a6_a_aI.input_register_mode = "none";
defparam debug_switch_a6_a_aI.input_sync_reset = "none";
defparam debug_switch_a6_a_aI.oe_async_reset = "none";
defparam debug_switch_a6_a_aI.oe_power_up = "low";
defparam debug_switch_a6_a_aI.oe_register_mode = "none";
defparam debug_switch_a6_a_aI.oe_sync_reset = "none";
defparam debug_switch_a6_a_aI.operation_mode = "input";
defparam debug_switch_a6_a_aI.output_async_reset = "none";
defparam debug_switch_a6_a_aI.output_power_up = "low";
defparam debug_switch_a6_a_aI.output_register_mode = "none";
defparam debug_switch_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L3
cycloneii_io debug_switch_a7_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[7]));
// synopsys translate_off
defparam debug_switch_a7_a_aI.input_async_reset = "none";
defparam debug_switch_a7_a_aI.input_power_up = "low";
defparam debug_switch_a7_a_aI.input_register_mode = "none";
defparam debug_switch_a7_a_aI.input_sync_reset = "none";
defparam debug_switch_a7_a_aI.oe_async_reset = "none";
defparam debug_switch_a7_a_aI.oe_power_up = "low";
defparam debug_switch_a7_a_aI.oe_register_mode = "none";
defparam debug_switch_a7_a_aI.oe_sync_reset = "none";
defparam debug_switch_a7_a_aI.operation_mode = "input";
defparam debug_switch_a7_a_aI.output_async_reset = "none";
defparam debug_switch_a7_a_aI.output_power_up = "low";
defparam debug_switch_a7_a_aI.output_register_mode = "none";
defparam debug_switch_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C8
cycloneii_io debug_switch_a8_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[8]));
// synopsys translate_off
defparam debug_switch_a8_a_aI.input_async_reset = "none";
defparam debug_switch_a8_a_aI.input_power_up = "low";
defparam debug_switch_a8_a_aI.input_register_mode = "none";
defparam debug_switch_a8_a_aI.input_sync_reset = "none";
defparam debug_switch_a8_a_aI.oe_async_reset = "none";
defparam debug_switch_a8_a_aI.oe_power_up = "low";
defparam debug_switch_a8_a_aI.oe_register_mode = "none";
defparam debug_switch_a8_a_aI.oe_sync_reset = "none";
defparam debug_switch_a8_a_aI.operation_mode = "input";
defparam debug_switch_a8_a_aI.output_async_reset = "none";
defparam debug_switch_a8_a_aI.output_power_up = "low";
defparam debug_switch_a8_a_aI.output_register_mode = "none";
defparam debug_switch_a8_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C12
cycloneii_io debug_switch_a9_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[9]));
// synopsys translate_off
defparam debug_switch_a9_a_aI.input_async_reset = "none";
defparam debug_switch_a9_a_aI.input_power_up = "low";
defparam debug_switch_a9_a_aI.input_register_mode = "none";
defparam debug_switch_a9_a_aI.input_sync_reset = "none";
defparam debug_switch_a9_a_aI.oe_async_reset = "none";
defparam debug_switch_a9_a_aI.oe_power_up = "low";
defparam debug_switch_a9_a_aI.oe_register_mode = "none";
defparam debug_switch_a9_a_aI.oe_sync_reset = "none";
defparam debug_switch_a9_a_aI.operation_mode = "input";
defparam debug_switch_a9_a_aI.output_async_reset = "none";
defparam debug_switch_a9_a_aI.output_power_up = "low";
defparam debug_switch_a9_a_aI.output_register_mode = "none";
defparam debug_switch_a9_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE7
cycloneii_io debug_switch_a10_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[10]));
// synopsys translate_off
defparam debug_switch_a10_a_aI.input_async_reset = "none";
defparam debug_switch_a10_a_aI.input_power_up = "low";
defparam debug_switch_a10_a_aI.input_register_mode = "none";
defparam debug_switch_a10_a_aI.input_sync_reset = "none";
defparam debug_switch_a10_a_aI.oe_async_reset = "none";
defparam debug_switch_a10_a_aI.oe_power_up = "low";
defparam debug_switch_a10_a_aI.oe_register_mode = "none";
defparam debug_switch_a10_a_aI.oe_sync_reset = "none";
defparam debug_switch_a10_a_aI.operation_mode = "input";
defparam debug_switch_a10_a_aI.output_async_reset = "none";
defparam debug_switch_a10_a_aI.output_power_up = "low";
defparam debug_switch_a10_a_aI.output_register_mode = "none";
defparam debug_switch_a10_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L21
cycloneii_io debug_switch_a11_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[11]));
// synopsys translate_off
defparam debug_switch_a11_a_aI.input_async_reset = "none";
defparam debug_switch_a11_a_aI.input_power_up = "low";
defparam debug_switch_a11_a_aI.input_register_mode = "none";
defparam debug_switch_a11_a_aI.input_sync_reset = "none";
defparam debug_switch_a11_a_aI.oe_async_reset = "none";
defparam debug_switch_a11_a_aI.oe_power_up = "low";
defparam debug_switch_a11_a_aI.oe_register_mode = "none";
defparam debug_switch_a11_a_aI.oe_sync_reset = "none";
defparam debug_switch_a11_a_aI.operation_mode = "input";
defparam debug_switch_a11_a_aI.output_async_reset = "none";
defparam debug_switch_a11_a_aI.output_power_up = "low";
defparam debug_switch_a11_a_aI.output_register_mode = "none";
defparam debug_switch_a11_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E15
cycloneii_io debug_switch_a12_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[12]));
// synopsys translate_off
defparam debug_switch_a12_a_aI.input_async_reset = "none";
defparam debug_switch_a12_a_aI.input_power_up = "low";
defparam debug_switch_a12_a_aI.input_register_mode = "none";
defparam debug_switch_a12_a_aI.input_sync_reset = "none";
defparam debug_switch_a12_a_aI.oe_async_reset = "none";
defparam debug_switch_a12_a_aI.oe_power_up = "low";
defparam debug_switch_a12_a_aI.oe_register_mode = "none";
defparam debug_switch_a12_a_aI.oe_sync_reset = "none";
defparam debug_switch_a12_a_aI.operation_mode = "input";
defparam debug_switch_a12_a_aI.output_async_reset = "none";
defparam debug_switch_a12_a_aI.output_power_up = "low";
defparam debug_switch_a12_a_aI.output_register_mode = "none";
defparam debug_switch_a12_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W19
cycloneii_io debug_switch_a13_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[13]));
// synopsys translate_off
defparam debug_switch_a13_a_aI.input_async_reset = "none";
defparam debug_switch_a13_a_aI.input_power_up = "low";
defparam debug_switch_a13_a_aI.input_register_mode = "none";
defparam debug_switch_a13_a_aI.input_sync_reset = "none";
defparam debug_switch_a13_a_aI.oe_async_reset = "none";
defparam debug_switch_a13_a_aI.oe_power_up = "low";
defparam debug_switch_a13_a_aI.oe_register_mode = "none";
defparam debug_switch_a13_a_aI.oe_sync_reset = "none";
defparam debug_switch_a13_a_aI.operation_mode = "input";
defparam debug_switch_a13_a_aI.output_async_reset = "none";
defparam debug_switch_a13_a_aI.output_power_up = "low";
defparam debug_switch_a13_a_aI.output_register_mode = "none";
defparam debug_switch_a13_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J16
cycloneii_io debug_switch_a14_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[14]));
// synopsys translate_off
defparam debug_switch_a14_a_aI.input_async_reset = "none";
defparam debug_switch_a14_a_aI.input_power_up = "low";
defparam debug_switch_a14_a_aI.input_register_mode = "none";
defparam debug_switch_a14_a_aI.input_sync_reset = "none";
defparam debug_switch_a14_a_aI.oe_async_reset = "none";
defparam debug_switch_a14_a_aI.oe_power_up = "low";
defparam debug_switch_a14_a_aI.oe_register_mode = "none";
defparam debug_switch_a14_a_aI.oe_sync_reset = "none";
defparam debug_switch_a14_a_aI.operation_mode = "input";
defparam debug_switch_a14_a_aI.output_async_reset = "none";
defparam debug_switch_a14_a_aI.output_power_up = "low";
defparam debug_switch_a14_a_aI.output_register_mode = "none";
defparam debug_switch_a14_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD21
cycloneii_io debug_switch_a15_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[15]));
// synopsys translate_off
defparam debug_switch_a15_a_aI.input_async_reset = "none";
defparam debug_switch_a15_a_aI.input_power_up = "low";
defparam debug_switch_a15_a_aI.input_register_mode = "none";
defparam debug_switch_a15_a_aI.input_sync_reset = "none";
defparam debug_switch_a15_a_aI.oe_async_reset = "none";
defparam debug_switch_a15_a_aI.oe_power_up = "low";
defparam debug_switch_a15_a_aI.oe_register_mode = "none";
defparam debug_switch_a15_a_aI.oe_sync_reset = "none";
defparam debug_switch_a15_a_aI.operation_mode = "input";
defparam debug_switch_a15_a_aI.output_async_reset = "none";
defparam debug_switch_a15_a_aI.output_power_up = "low";
defparam debug_switch_a15_a_aI.output_register_mode = "none";
defparam debug_switch_a15_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D21
cycloneii_io debug_switch_a16_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[16]));
// synopsys translate_off
defparam debug_switch_a16_a_aI.input_async_reset = "none";
defparam debug_switch_a16_a_aI.input_power_up = "low";
defparam debug_switch_a16_a_aI.input_register_mode = "none";
defparam debug_switch_a16_a_aI.input_sync_reset = "none";
defparam debug_switch_a16_a_aI.oe_async_reset = "none";
defparam debug_switch_a16_a_aI.oe_power_up = "low";
defparam debug_switch_a16_a_aI.oe_register_mode = "none";
defparam debug_switch_a16_a_aI.oe_sync_reset = "none";
defparam debug_switch_a16_a_aI.operation_mode = "input";
defparam debug_switch_a16_a_aI.output_async_reset = "none";
defparam debug_switch_a16_a_aI.output_power_up = "low";
defparam debug_switch_a16_a_aI.output_register_mode = "none";
defparam debug_switch_a16_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A8
cycloneii_io debug_switch_a17_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[17]));
// synopsys translate_off
defparam debug_switch_a17_a_aI.input_async_reset = "none";
defparam debug_switch_a17_a_aI.input_power_up = "low";
defparam debug_switch_a17_a_aI.input_register_mode = "none";
defparam debug_switch_a17_a_aI.input_sync_reset = "none";
defparam debug_switch_a17_a_aI.oe_async_reset = "none";
defparam debug_switch_a17_a_aI.oe_power_up = "low";
defparam debug_switch_a17_a_aI.oe_register_mode = "none";
defparam debug_switch_a17_a_aI.oe_sync_reset = "none";
defparam debug_switch_a17_a_aI.operation_mode = "input";
defparam debug_switch_a17_a_aI.output_async_reset = "none";
defparam debug_switch_a17_a_aI.output_power_up = "low";
defparam debug_switch_a17_a_aI.output_register_mode = "none";
defparam debug_switch_a17_a_aI.output_sync_reset = "none";
// synopsys translate_on

endmodule
