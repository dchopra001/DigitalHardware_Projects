// Copyright (C) 1991-2011 Altera Corporation
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
// VERSION "Version 10.1 Build 197 01/19/2011 Service Pack 1 SJ Full Version"

// DATE "07/23/2014 13:19:07"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module top_kirsch_chip (	nrst,
	clk,
	rxflex,
	txflex,
	o_sevenseg,
	o_mode,
	o_nrst,
	debug_key,
	debug_switch,
	debug_led_red,
	debug_led_grn,
	debug_sevenseg_0,
	debug_sevenseg_1,
	debug_sevenseg_2,
	debug_sevenseg_3,
	debug_sevenseg_4,
	debug_sevenseg_5);
input 	nrst;
input 	clk;
input 	rxflex;
output 	txflex;
output 	[15:0] o_sevenseg;
output 	[1:0] o_mode;
output 	o_nrst;
input 	[3:1] debug_key;
input 	[17:0] debug_switch;
output 	[16:0] debug_led_red;
output 	[5:0] debug_led_grn;
output 	[7:0] debug_sevenseg_0;
output 	[7:0] debug_sevenseg_1;
output 	[7:0] debug_sevenseg_2;
output 	[7:0] debug_sevenseg_3;
output 	[7:0] debug_sevenseg_4;
output 	[7:0] debug_sevenseg_5;

// Design Ports Information
// txflex	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[5]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[6]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[7]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[9]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[10]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[11]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[12]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[13]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[14]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[15]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[1]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_nrst	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[0]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[4]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[5]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[6]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[7]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[0]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[1]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[2]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[4]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[5]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[6]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[7]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[1]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[2]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[4]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[5]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[6]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[7]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[0]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[1]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[2]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[4]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[5]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[6]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[7]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[1]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[2]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[4]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[5]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[7]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[0]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[1]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[2]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[4]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[5]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[6]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[7]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// nrst	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// rxflex	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("top_kirsch_v.sdo");
// synopsys translate_on

wire \u_kirsch|nx11673z3 ;
wire \u_uw_uart|sdout_0_ ;
wire \u_uw_uart|i_uarts|TxDivisor_5_ ;
wire \u_uw_uart|i_uarts|nx32400z3 ;
wire \u_uw_uart|i_uarts|nx32400z4 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ;
wire \u_uw_uart|i_uarts|nx32400z5 ;
wire \u_uw_uart|i_uarts|nx32400z2 ;
wire \u_uw_uart|mdata_0_ ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z19 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z21 ;
wire \u_uw_uart|nx39480z3 ;
wire \u_uw_uart|modgen_counter_waitcount|nx64508z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1 ;
wire \u_kirsch|r17_12_ ;
wire \u_kirsch|r17_10_ ;
wire \u_uw_uart|sdout_2_ ;
wire \u_uw_uart|modgen_counter_waitcount|nx56256z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx57253z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z2 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z1 ;
wire \u_kirsch|x_r22_12_ ;
wire \u_kirsch|r18_9_ ;
wire \u_kirsch|r18_8_ ;
wire \u_kirsch|r18_7_ ;
wire \u_kirsch|r18_6_ ;
wire \u_kirsch|r18_5_ ;
wire \u_kirsch|x_r22_7_ ;
wire \u_kirsch|r18_3_ ;
wire \u_kirsch|r18_2_ ;
wire \u_kirsch|r18_1_ ;
wire \u_kirsch|r18_0_ ;
wire \u_kirsch|x_r22_2_ ;
wire \u_kirsch|x_r22_1_ ;
wire \u_kirsch|r17_sub13_10i1|d_9_ ;
wire \u_kirsch|r17_sub13_10i1|nx63795z1 ;
wire \u_kirsch|r17_sub13_10i1|d_11_ ;
wire \u_kirsch|final_dir_0_ ;
wire \u_uw_uart|mdata_2_ ;
wire \u_uw_uart|rawrx ;
wire \u_uw_uart|i_uarts|nx15541z3 ;
wire \u_uw_uart|i_uarts|nx34394z6 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ;
wire \u_uw_uart|i_uarts|nx34394z7 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ;
wire \u_uw_uart|i_uarts|nx34394z8 ;
wire \u_uw_uart|i_uarts|nx34394z5 ;
wire \u_uw_uart|i_uarts|RxBitCnt_3_ ;
wire \u_kirsch|x_r12_10_ ;
wire \u_kirsch|x_r12_8_ ;
wire \u_kirsch|x_r12_4_ ;
wire \u_kirsch|x_r12_2_ ;
wire \u_kirsch|x_r22_add12_8i1|nx37973z1 ;
wire \u_kirsch|x_r22_add12_8i1|nx38970z1 ;
wire \u_kirsch|x_r22_add12_8i1|nx43955z1 ;
wire \u_kirsch|x_r22_add12_8i1|nx63795z3 ;
wire \u_kirsch|x_r22_add12_8i1|nx63795z1 ;
wire \u_kirsch|x_r11_8_ ;
wire \u_kirsch|x_r11_7_ ;
wire \u_kirsch|r15_6_ ;
wire \u_kirsch|r15_5_ ;
wire \u_kirsch|x_r11_3_ ;
wire \u_kirsch|x_r11_2_ ;
wire \u_kirsch|x_r11_1_ ;
wire \u_kirsch|x_r11_0_ ;
wire \u_kirsch|first_cw_0_ ;
wire \u_kirsch|second_cw_0_ ;
wire \u_kirsch|final_dir_1_ ;
wire \u_kirsch|p_o_dir_1_ ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1 ;
wire \u_uw_uart|i_uarts|nx8373z2 ;
wire \u_uw_uart|i_uarts|nx8373z1 ;
wire \u_kirsch|r14_8_ ;
wire \u_kirsch|r14_5_ ;
wire \u_kirsch|r14_3_ ;
wire \u_kirsch|r13_2_ ;
wire \u_kirsch|r14_1_ ;
wire \u_kirsch|x_r12_add11_8i4|nx39967z1 ;
wire \u_kirsch|x_r12_add11_8i4|nx41961z1 ;
wire \u_kirsch|x_r12_add11_8i4|nx45949z1 ;
wire \u_kirsch|x_r12_add11_8i4|nx62798z1 ;
wire \u_kirsch|x_r3_7_ ;
wire \u_kirsch|x_r3_6_ ;
wire \u_kirsch|x_r3_5_ ;
wire \u_kirsch|r11_8_ ;
wire \u_kirsch|r16_7_ ;
wire \u_kirsch|r11_4_ ;
wire \u_kirsch|r16_3_ ;
wire \u_kirsch|r16_2_ ;
wire \u_kirsch|r16_1_ ;
wire \u_kirsch|r11_0_ ;
wire \u_kirsch|stage1_wNw_0_ ;
wire \u_kirsch|first_cw_9n1ss1_0_ ;
wire \u_kirsch|second_cw_9n2ss1_0_ ;
wire \u_kirsch|first_cw_1_ ;
wire \u_kirsch|second_cw_1_ ;
wire \u_kirsch|x_r6_8_ ;
wire \u_kirsch|x_r6_7_ ;
wire \u_kirsch|x_r6_5_ ;
wire \u_kirsch|x_r6_0_ ;
wire \u_kirsch|r14_add10_8i3|nx38970z1 ;
wire \u_kirsch|r14_add10_8i3|nx40964z1 ;
wire \u_kirsch|r14_add10_8i3|nx42958z1 ;
wire \u_kirsch|r14_add10_8i3|nx45949z1 ;
wire \u_kirsch|nx51677z12 ;
wire \u_kirsch|r2_6n3s1f2_7_ ;
wire \u_kirsch|h_6_ ;
wire \u_kirsch|nx51677z4 ;
wire \u_kirsch|r2_6n3s1f1_6_ ;
wire \u_kirsch|nx51677z15 ;
wire \u_kirsch|r2_6n3s1f2_5_ ;
wire \u_kirsch|a_4_ ;
wire \u_kirsch|nx51677z16 ;
wire \u_kirsch|r2_6n3s1f2_4_ ;
wire \u_kirsch|nx51677z7 ;
wire \u_kirsch|r2_6n3s1f1_3_ ;
wire \u_kirsch|nx51677z8 ;
wire \u_kirsch|r2_6n3s1f1_2_ ;
wire \u_kirsch|nx51677z9 ;
wire \u_kirsch|r2_6n3s1f1_1_ ;
wire \u_kirsch|nx51677z10 ;
wire \u_kirsch|r2_6n3s1f1_0_ ;
wire \u_kirsch|r5_6_ ;
wire \u_kirsch|x_r5_6_ ;
wire \u_kirsch|x_r3_7n3s1f1_6_ ;
wire \u_kirsch|r5_3_ ;
wire \u_kirsch|x_r5_3_ ;
wire \u_kirsch|x_r3_7n3s1f1_3_ ;
wire \u_kirsch|r5_2_ ;
wire \u_kirsch|x_r5_2_ ;
wire \u_kirsch|x_r3_7n3s1f1_2_ ;
wire \u_kirsch|r10_6_ ;
wire \u_kirsch|r10_4_ ;
wire \u_kirsch|r10_3_ ;
wire \u_kirsch|r9_2_ ;
wire \u_kirsch|r10_1_ ;
wire \u_kirsch|r9_0_ ;
wire \u_kirsch|r12_7_ ;
wire \u_kirsch|r12_6_ ;
wire \u_kirsch|r12_4_ ;
wire \u_kirsch|r12_1_ ;
wire \u_kirsch|r12_0_ ;
wire \u_kirsch|r16_add9_7i11|nx38970z1 ;
wire \u_kirsch|r16_add9_7i11|nx39967z1 ;
wire \u_kirsch|r16_add9_7i11|nx40964z1 ;
wire \u_kirsch|r16_add9_7i11|nx44952z1 ;
wire \u_kirsch|first_cw_2_ ;
wire \u_kirsch|x_r6_add9_8i2|nx37973z1 ;
wire \u_kirsch|x_r6_add9_8i2|nx42958z1 ;
wire \u_kirsch|x_r6_add9_8i2|nx44952z1 ;
wire \u_kirsch|x_r6_add9_8i2|nx45949z1 ;
wire \u_kirsch|i_6_ ;
wire \u_uw_uart|rdata_3_ ;
wire \u_kirsch|stage1_wNw_2_ ;
wire \u_kirsch|stage1_nNe_2_ ;
wire \u_kirsch|we_1_ ;
wire \u_kirsch|we_0_ ;
wire \u_kirsch|we_2_ ;
wire \u_uw_uart|i_uarts|Dout_3_ ;
wire \u_kirsch|ix13424z18832|nx100z1~_wirecell_combout ;
wire \u_uw_uart|sdout_0_~feeder_combout ;
wire \u_uw_uart|mdata_0_~feeder_combout ;
wire \u_uw_uart|sdout_2_~feeder_combout ;
wire \u_kirsch|r18_9_~feeder_combout ;
wire \u_kirsch|r18_8_~feeder_combout ;
wire \u_kirsch|r18_7_~feeder_combout ;
wire \u_kirsch|r18_6_~feeder_combout ;
wire \u_kirsch|r18_5_~feeder_combout ;
wire \u_kirsch|r18_3_~feeder_combout ;
wire \u_kirsch|r18_2_~feeder_combout ;
wire \u_kirsch|r18_1_~feeder_combout ;
wire \u_kirsch|r18_0_~feeder_combout ;
wire \u_kirsch|final_dir_0_~feeder_combout ;
wire \u_kirsch|r15_6_~feeder_combout ;
wire \u_kirsch|r15_5_~feeder_combout ;
wire \u_kirsch|x_r11_8_~feeder_combout ;
wire \u_kirsch|x_r11_7_~feeder_combout ;
wire \u_kirsch|x_r11_3_~feeder_combout ;
wire \u_kirsch|x_r11_2_~feeder_combout ;
wire \u_kirsch|x_r11_1_~feeder_combout ;
wire \u_kirsch|x_r11_0_~feeder_combout ;
wire \u_kirsch|final_dir_1_~feeder_combout ;
wire \u_kirsch|r12_7_~feeder_combout ;
wire \u_kirsch|r5_6_~feeder_combout ;
wire \u_kirsch|r10_6_~feeder_combout ;
wire \u_kirsch|x_r5_6_~feeder_combout ;
wire \u_kirsch|r12_6_~feeder_combout ;
wire \u_kirsch|r10_4_~feeder_combout ;
wire \u_kirsch|r12_4_~feeder_combout ;
wire \u_kirsch|r5_3_~feeder_combout ;
wire \u_kirsch|r10_3_~feeder_combout ;
wire \u_kirsch|x_r5_3_~feeder_combout ;
wire \u_kirsch|r5_2_~feeder_combout ;
wire \u_kirsch|x_r5_2_~feeder_combout ;
wire \u_kirsch|r10_1_~feeder_combout ;
wire \u_kirsch|r12_1_~feeder_combout ;
wire \u_kirsch|r12_0_~feeder_combout ;
wire \u_kirsch|first_cw_2_~feeder_combout ;
wire \u_uw_uart|rdata_3_~feeder_combout ;
wire \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout ;
wire \clk~combout ;
wire \clk~clkctrl_outclk ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1 ;
wire \nrst~combout ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ;
wire \u_uw_uart|i_uarts|nx32400z6 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ;
wire \u_uw_uart|i_uarts|nx32400z7 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ;
wire \u_uw_uart|i_uarts|nx32400z9 ;
wire \u_uw_uart|i_uarts|nx32400z8 ;
wire \u_uw_uart|i_uarts|nx32400z1 ;
wire \u_uw_uart|i_uarts|TopTx ;
wire \u_kirsch|p_o_mode_1_~feeder_combout ;
wire \u_kirsch|p_o_mode_1_ ;
wire \u_uw_uart|nx46385z2 ;
wire \u_uw_uart|modgen_counter_waitcount|nx51271z1 ;
wire \u_uw_uart|nx33354z2 ;
wire \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1 ;
wire \u_uw_uart|i_uarts|nx65151z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ;
wire \u_uw_uart|i_uarts|nx34394z9 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ;
wire \u_uw_uart|i_uarts|nx34394z4 ;
wire \u_uw_uart|i_uarts|nx34394z10 ;
wire \u_uw_uart|i_uarts|nx34394z3 ;
wire \u_uw_uart|i_uarts|nx34394z1 ;
wire \u_uw_uart|i_uarts|TopRx ;
wire \u_uw_uart|i_uarts|nx15541z2 ;
wire \rxflex~combout ;
wire \u_uw_uart|i_uarts|NOT_Rx ;
wire \u_uw_uart|i_uarts|not_Rx_r ;
wire \u_uw_uart|i_uarts|nx15541z1 ;
wire \u_uw_uart|i_uarts|RxFSM_1_ ;
wire \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout ;
wire \u_uw_uart|i_uarts|RxFSM_6_ ;
wire \u_uw_uart|i_uarts|nx16538z1 ;
wire \u_uw_uart|i_uarts|nx34394z2 ;
wire \u_uw_uart|i_uarts|nx11364z1 ;
wire \u_uw_uart|i_uarts|RxBitCnt_0_ ;
wire \u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ;
wire \u_uw_uart|i_uarts|nx10367z1 ;
wire \u_uw_uart|i_uarts|RxBitCnt_1_ ;
wire \u_uw_uart|i_uarts|nx9370z2 ;
wire \u_uw_uart|i_uarts|nx9370z1 ;
wire \u_uw_uart|i_uarts|RxBitCnt_2_ ;
wire \u_uw_uart|i_uarts|nx13547z2 ;
wire \u_uw_uart|i_uarts|nx13547z1 ;
wire \u_uw_uart|i_uarts|RxFSM_3_ ;
wire \u_uw_uart|i_uarts|nx14544z1 ;
wire \u_uw_uart|i_uarts|RxFSM_2_ ;
wire \u_uw_uart|i_uarts|nx11553z1 ;
wire \u_uw_uart|i_uarts|RxFSM_5_ ;
wire \u_uw_uart|i_uarts|nx30017z1 ;
wire \u_uw_uart|i_uarts|RxRDY ;
wire \u_uw_uart|nx58116z1 ;
wire \u_uw_uart|o_pixavail ;
wire \u_uw_uart|nx39480z1 ;
wire \u_uw_uart|ack ;
wire \u_uw_uart|nx33354z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z31 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z30 ;
wire \u_uw_uart|modgen_counter_waitcount|nx52268z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z29 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z28 ;
wire \u_uw_uart|modgen_counter_waitcount|nx53265z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z27 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z26 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z24 ;
wire \u_uw_uart|modgen_counter_waitcount|nx55259z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z23 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z22 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z20 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z18 ;
wire \u_uw_uart|modgen_counter_waitcount|nx58250z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z17 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z16 ;
wire \u_uw_uart|modgen_counter_waitcount|nx59247z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z15 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z14 ;
wire \u_uw_uart|modgen_counter_waitcount|nx60244z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z13 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z12 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z10 ;
wire \u_uw_uart|modgen_counter_waitcount|nx18093z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z9 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z8 ;
wire \u_uw_uart|modgen_counter_waitcount|nx19090z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z7 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z6 ;
wire \u_uw_uart|modgen_counter_waitcount|nx20087z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z5 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z4 ;
wire \u_uw_uart|modgen_counter_waitcount|nx21084z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z3 ;
wire \u_uw_uart|nx39480z6 ;
wire \u_uw_uart|modgen_counter_waitcount|nx17096z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z11 ;
wire \u_uw_uart|nx39480z7 ;
wire \u_uw_uart|nx39480z5 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z14 ;
wire \u_kirsch|modgen_counter_o_row|nx52268z1 ;
wire \u_kirsch|modgen_counter_col|nx51271z1 ;
wire \u_kirsch|vBit_1_ ;
wire \u_kirsch|nx40914z1 ;
wire \u_kirsch|modgen_counter_col|nx58250z15 ;
wire \u_kirsch|modgen_counter_col|nx58250z14 ;
wire \u_kirsch|modgen_counter_col|nx52268z1 ;
wire \u_kirsch|modgen_counter_col|nx58250z13 ;
wire \u_kirsch|modgen_counter_col|nx58250z12 ;
wire \u_kirsch|modgen_counter_col|nx53265z1 ;
wire \u_kirsch|modgen_counter_col|nx58250z11 ;
wire \u_kirsch|modgen_counter_col|nx58250z10 ;
wire \u_kirsch|modgen_counter_col|nx54262z1 ;
wire \u_kirsch|modgen_counter_col|nx58250z9 ;
wire \u_kirsch|modgen_counter_col|nx58250z8 ;
wire \u_kirsch|modgen_counter_col|nx55259z1 ;
wire \u_kirsch|modgen_counter_col|nx58250z7 ;
wire \u_kirsch|nx17322z3 ;
wire \u_kirsch|vBit_2_ ;
wire \u_kirsch|modgen_counter_col|nx58250z6 ;
wire \u_kirsch|modgen_counter_col|nx58250z4 ;
wire \u_kirsch|modgen_counter_col|nx58250z2 ;
wire \u_kirsch|modgen_counter_col|nx58250z1 ;
wire \u_kirsch|modgen_counter_col|nx1041z1 ;
wire \u_kirsch|modgen_counter_col|nx56256z1 ;
wire \u_kirsch|modgen_counter_col|nx58250z5 ;
wire \u_kirsch|modgen_counter_col|nx57253z1 ;
wire \u_kirsch|modgen_counter_col|nx58250z3 ;
wire \u_kirsch|nx17322z2 ;
wire \u_kirsch|nx17322z1 ;
wire \u_kirsch|nx17322z4 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z13 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z12 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z10 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z8 ;
wire \u_kirsch|modgen_counter_o_row|nx55259z1 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z7 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z6 ;
wire \u_kirsch|modgen_counter_o_row|nx56256z1 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z5 ;
wire \u_kirsch|modgen_counter_o_row|nx54262z1 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z9 ;
wire \u_kirsch|nx11673z4 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z4 ;
wire \u_kirsch|modgen_counter_o_row|nx57253z1 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z3 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z2 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z1 ;
wire \u_kirsch|modgen_counter_o_row|nx1041z1 ;
wire \u_kirsch|nx20419z2 ;
wire \u_kirsch|nx11673z2 ;
wire \u_kirsch|nx20419z1 ;
wire \u_kirsch|validBit_0_ ;
wire \u_kirsch|validBit_1_ ;
wire \u_kirsch|validBit_2_ ;
wire \u_kirsch|validBit_3_ ;
wire \u_kirsch|validBit_4_ ;
wire \u_kirsch|validBit_5_ ;
wire \u_kirsch|validBit_6_ ;
wire \u_kirsch|validBit_7_~feeder_combout ;
wire \u_kirsch|validBit_7_ ;
wire \u_kirsch|p_o_valid ;
wire \u_uw_uart|modgen_counter_waitcount|nx54262z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z25 ;
wire \u_uw_uart|nx39480z4 ;
wire \u_uw_uart|nx39480z2 ;
wire \u_uw_uart|i_uarts|nx15376z1 ;
wire \u_uw_uart|i_uarts|RxErr ;
wire \u_uw_uart|nx46385z1 ;
wire \u_uw_uart|dsend ;
wire \u_uw_uart|nx38868z1 ;
wire \u_uw_uart|state ;
wire \u_uw_uart|nx18433z1 ;
wire \u_uw_uart|ld_sdout ;
wire \u_uw_uart|i_uarts|nx4608z2 ;
wire \u_uw_uart|i_uarts|nx50920z2 ;
wire \u_uw_uart|i_uarts|nx51917z2 ;
wire \u_uw_uart|i_uarts|nx49923z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_1_ ;
wire \u_uw_uart|i_uarts|nx48926z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_0_ ;
wire \u_uw_uart|i_uarts|nx50920z3 ;
wire \u_uw_uart|i_uarts|nx51917z4 ;
wire \u_uw_uart|i_uarts|nx50920z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_2_ ;
wire \u_uw_uart|i_uarts|nx51917z3 ;
wire \u_uw_uart|i_uarts|nx51917z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_3_ ;
wire \u_uw_uart|i_uarts|nx4608z3 ;
wire \u_uw_uart|i_uarts|nx4608z1 ;
wire \u_uw_uart|i_uarts|TxFSM_0_ ;
wire \u_uw_uart|i_uarts|nx5605z1 ;
wire \u_uw_uart|i_uarts|TxFSM_1_ ;
wire \u_kirsch|nx20492z2~_wirecell_combout ;
wire \u_kirsch|state_1_ ;
wire \u_kirsch|state_2_ ;
wire \u_kirsch|state_2_~_wirecell_combout ;
wire \u_kirsch|nx20492z2 ;
wire \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout ;
wire \u_uw_uart|i_uarts|nx54636z1 ;
wire \u_uw_uart|i_uarts|Rx_Reg_7_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_6_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_5_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_4_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_3_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_2_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_1_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_0_ ;
wire \u_uw_uart|i_uarts|Dout_0_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_0_ ;
wire \u_uw_uart|rdata_0_~feeder_combout ;
wire \u_uw_uart|rdata_0_ ;
wire \u_uw_uart|datain_0_ ;
wire \u_uw_uart|i_uarts|Dout_1_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_1_ ;
wire \u_uw_uart|rdata_1_~feeder_combout ;
wire \u_uw_uart|rdata_1_ ;
wire \u_uw_uart|datain_1_ ;
wire \u_uw_uart|i_uarts|Dout_2_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_2_ ;
wire \u_uw_uart|rdata_2_~feeder_combout ;
wire \u_uw_uart|rdata_2_ ;
wire \u_uw_uart|datain_2_ ;
wire \u_uw_uart|datain_3_ ;
wire \u_uw_uart|i_uarts|Dout_4_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_4_ ;
wire \u_uw_uart|rdata_4_~feeder_combout ;
wire \u_uw_uart|rdata_4_ ;
wire \u_uw_uart|datain_4_ ;
wire \u_uw_uart|i_uarts|Dout_5_ ;
wire \u_uw_uart|rdata_5_~feeder_combout ;
wire \u_uw_uart|rdata_5_ ;
wire \u_uw_uart|datain_5_ ;
wire \u_uw_uart|i_uarts|Dout_6_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_6_ ;
wire \u_uw_uart|rdata_6_ ;
wire \u_uw_uart|datain_6_ ;
wire \u_uw_uart|i_uarts|Dout_7_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_7_ ;
wire \u_uw_uart|rdata_7_~feeder_combout ;
wire \u_uw_uart|rdata_7_ ;
wire \u_uw_uart|datain_7_ ;
wire \u_kirsch|nx23483z1 ;
wire \u_kirsch|nx20492z3 ;
wire \u_kirsch|c_4_ ;
wire \u_kirsch|x_r5_4_~feeder_combout ;
wire \u_kirsch|e_4_ ;
wire \u_kirsch|f_4_ ;
wire \u_kirsch|e_7_ ;
wire \u_kirsch|f_7_ ;
wire \u_kirsch|nx20492z1 ;
wire \u_kirsch|c_7_ ;
wire \u_kirsch|nx21489z1 ;
wire \u_kirsch|c_6_ ;
wire \u_kirsch|e_5_ ;
wire \u_kirsch|f_5_ ;
wire \u_kirsch|e_3_ ;
wire \u_kirsch|f_3_ ;
wire \u_kirsch|nx25477z1 ;
wire \u_kirsch|c_2_ ;
wire \u_kirsch|nx26474z1 ;
wire \u_kirsch|c_1_ ;
wire \u_kirsch|e_0_ ;
wire \u_kirsch|f_0_ ;
wire \u_kirsch|ix27953z18832|nx100z22 ;
wire \u_kirsch|ix27953z18832|nx100z19 ;
wire \u_kirsch|ix27953z18832|nx100z16 ;
wire \u_kirsch|ix27953z18832|nx100z13 ;
wire \u_kirsch|ix27953z18832|nx100z10 ;
wire \u_kirsch|ix27953z18832|nx100z7 ;
wire \u_kirsch|ix27953z18832|nx100z4 ;
wire \u_kirsch|ix27953z18832|nx100z1 ;
wire \u_kirsch|nx27953z1 ;
wire \u_kirsch|x_r5_4_ ;
wire \u_kirsch|g_4_ ;
wire \u_kirsch|r5_4_~feeder_combout ;
wire \u_kirsch|b_4_ ;
wire \u_kirsch|b_7_ ;
wire \u_kirsch|b_6_ ;
wire \u_kirsch|nx22486z1 ;
wire \u_kirsch|c_5_ ;
wire \u_kirsch|b_5_ ;
wire \u_kirsch|nx24480z1 ;
wire \u_kirsch|c_3_ ;
wire \u_kirsch|b_3_ ;
wire \u_kirsch|e_2_ ;
wire \u_kirsch|f_2_ ;
wire \u_kirsch|g_2_ ;
wire \u_kirsch|b_1_ ;
wire \u_kirsch|g_0_ ;
wire \u_kirsch|ix13424z18832|nx100z22 ;
wire \u_kirsch|ix13424z18832|nx100z19 ;
wire \u_kirsch|ix13424z18832|nx100z16 ;
wire \u_kirsch|ix13424z18832|nx100z13 ;
wire \u_kirsch|ix13424z18832|nx100z10 ;
wire \u_kirsch|ix13424z18832|nx100z7 ;
wire \u_kirsch|ix13424z18832|nx100z4 ;
wire \u_kirsch|ix13424z18832|nx100z1 ;
wire \u_kirsch|nx13424z2 ;
wire \u_kirsch|r5_4_ ;
wire \u_kirsch|x_r3_7n3s1f1_4_ ;
wire \u_kirsch|g_3_ ;
wire \u_kirsch|a_3_ ;
wire \u_kirsch|nx51677z11 ;
wire \u_kirsch|nx51677z13 ;
wire \u_kirsch|nx51677z17 ;
wire \u_kirsch|r2_6n3s1f2_3_ ;
wire \u_kirsch|nx51677z18 ;
wire \u_kirsch|r2_6n3s1f2_2_ ;
wire \u_kirsch|a_1_ ;
wire \u_kirsch|nx51677z19 ;
wire \u_kirsch|r2_6n3s1f2_1_ ;
wire \u_kirsch|nx27471z1 ;
wire \u_kirsch|c_0_ ;
wire \u_kirsch|b_0_ ;
wire \u_kirsch|a_0_ ;
wire \u_kirsch|nx51677z20 ;
wire \u_kirsch|r2_6n3s1f2_0_ ;
wire \u_kirsch|r2_add8_6i49|nx44952z22 ;
wire \u_kirsch|r2_add8_6i49|nx44952z19 ;
wire \u_kirsch|r2_add8_6i49|nx44952z16 ;
wire \u_kirsch|r2_add8_6i49|nx40964z1 ;
wire \u_kirsch|r2_3_~feeder_combout ;
wire \u_kirsch|nx51677z3 ;
wire \u_kirsch|r2_3_ ;
wire \u_kirsch|r2_add8_6i49|nx39967z1 ;
wire \u_kirsch|r2_2_ ;
wire \u_kirsch|x_r5_1_~feeder_combout ;
wire \u_kirsch|e_1_ ;
wire \u_kirsch|f_1_ ;
wire \u_kirsch|x_r5_1_ ;
wire \u_kirsch|g_1_ ;
wire \u_kirsch|r5_1_~feeder_combout ;
wire \u_kirsch|r5_1_ ;
wire \u_kirsch|x_r3_7n3s1f1_1_ ;
wire \u_kirsch|x_r5_0_~feeder_combout ;
wire \u_kirsch|x_r5_0_ ;
wire \u_kirsch|r5_0_~feeder_combout ;
wire \u_kirsch|r5_0_ ;
wire \u_kirsch|x_r3_7n3s1f1_0_ ;
wire \u_kirsch|x_r3_add9_7i9|nx45949z24 ;
wire \u_kirsch|x_r3_add9_7i9|nx45949z21 ;
wire \u_kirsch|x_r3_add9_7i9|nx45949z18 ;
wire \u_kirsch|x_r3_add9_7i9|nx45949z15 ;
wire \u_kirsch|x_r3_add9_7i9|nx41961z1 ;
wire \u_kirsch|nx56415z1 ;
wire \u_kirsch|x_r3_4_ ;
wire \u_kirsch|r15_4_~feeder_combout ;
wire \u_kirsch|nx51677z1 ;
wire \u_kirsch|nx33634z1 ;
wire \u_kirsch|d_4_ ;
wire \u_kirsch|i_4_~feeder_combout ;
wire \u_kirsch|i_4_ ;
wire \u_kirsch|h_4_ ;
wire \u_kirsch|nx51677z6 ;
wire \u_kirsch|r2_6n3s1f1_4_ ;
wire \u_kirsch|r2_add8_6i49|nx44952z13 ;
wire \u_kirsch|r2_add8_6i49|nx41961z1 ;
wire \u_kirsch|r9_4_ ;
wire \u_kirsch|r9_3_~feeder_combout ;
wire \u_kirsch|r9_3_ ;
wire \u_kirsch|b_2_ ;
wire \u_kirsch|a_2_ ;
wire \u_kirsch|r10_2_~feeder_combout ;
wire \u_kirsch|nx31640z1 ;
wire \u_kirsch|d_2_ ;
wire \u_kirsch|nx36625z1 ;
wire \u_kirsch|d_7_ ;
wire \u_kirsch|nx35628z1 ;
wire \u_kirsch|d_6_ ;
wire \u_kirsch|nx34631z1 ;
wire \u_kirsch|d_5_ ;
wire \u_kirsch|ix11593z18833|nx100z22 ;
wire \u_kirsch|ix11593z18833|nx100z19 ;
wire \u_kirsch|ix11593z18833|nx100z16 ;
wire \u_kirsch|ix11593z18833|nx100z13 ;
wire \u_kirsch|ix11593z18833|nx100z10 ;
wire \u_kirsch|ix11593z18833|nx100z7 ;
wire \u_kirsch|ix11593z18833|nx100z4 ;
wire \u_kirsch|ix11593z18833|nx100z1 ;
wire \u_kirsch|r10_2_ ;
wire \u_kirsch|r2_add8_6i49|nx38970z1 ;
wire \u_kirsch|r9_1_ ;
wire \u_kirsch|r10_0_~feeder_combout ;
wire \u_kirsch|nx29646z1 ;
wire \u_kirsch|d_0_ ;
wire \u_kirsch|r10_0_ ;
wire \u_kirsch|b_d1_add9_7i10|nx45949z24 ;
wire \u_kirsch|b_d1_add9_7i10|nx45949z21 ;
wire \u_kirsch|b_d1_add9_7i10|nx45949z18 ;
wire \u_kirsch|b_d1_add9_7i10|nx45949z15 ;
wire \u_kirsch|b_d1_add9_7i10|nx41961z1 ;
wire \u_kirsch|b_d1_4_ ;
wire \u_kirsch|a_7_ ;
wire \u_kirsch|r10_7_~feeder_combout ;
wire \u_kirsch|r10_7_ ;
wire \u_kirsch|e_6_ ;
wire \u_kirsch|f_6_ ;
wire \u_kirsch|g_6_ ;
wire \u_kirsch|a_6_ ;
wire \u_kirsch|nx51677z14 ;
wire \u_kirsch|r2_6n3s1f2_6_ ;
wire \u_kirsch|i_5_~feeder_combout ;
wire \u_kirsch|i_5_ ;
wire \u_kirsch|h_5_ ;
wire \u_kirsch|nx51677z5 ;
wire \u_kirsch|r2_6n3s1f1_5_ ;
wire \u_kirsch|r2_add8_6i49|nx44952z10 ;
wire \u_kirsch|r2_add8_6i49|nx44952z7 ;
wire \u_kirsch|r2_add8_6i49|nx43955z1 ;
wire \u_kirsch|r9_6_~feeder_combout ;
wire \u_kirsch|r9_6_ ;
wire \u_kirsch|a_5_ ;
wire \u_kirsch|r10_5_~feeder_combout ;
wire \u_kirsch|r10_5_ ;
wire \u_kirsch|b_d1_add9_7i10|nx45949z12 ;
wire \u_kirsch|b_d1_add9_7i10|nx45949z9 ;
wire \u_kirsch|b_d1_add9_7i10|nx45949z6 ;
wire \u_kirsch|b_d1_add9_7i10|nx45949z3 ;
wire \u_kirsch|b_d1_add9_7i10|nx23445z2 ;
wire \u_kirsch|b_d1_add9_7i10|nx23445z1 ;
wire \u_kirsch|b_d1_9_ ;
wire \u_kirsch|i_7_~feeder_combout ;
wire \u_kirsch|i_7_ ;
wire \u_kirsch|h_7_~feeder_combout ;
wire \u_kirsch|h_7_ ;
wire \u_kirsch|nx51677z2 ;
wire \u_kirsch|r2_6n3s1f1_7_ ;
wire \u_kirsch|r2_add8_6i49|nx44952z4 ;
wire \u_kirsch|r2_add8_6i49|nx23445z2 ;
wire \u_kirsch|r2_add8_6i49|nx23445z1 ;
wire \u_kirsch|r2_8_~feeder_combout ;
wire \u_kirsch|r2_8_ ;
wire \u_kirsch|x_r5_7_~feeder_combout ;
wire \u_kirsch|x_r5_7_ ;
wire \u_kirsch|g_7_ ;
wire \u_kirsch|r5_7_~feeder_combout ;
wire \u_kirsch|r5_7_ ;
wire \u_kirsch|x_r3_7n3s1f1_7_ ;
wire \u_kirsch|r2_6_~feeder_combout ;
wire \u_kirsch|r2_6_ ;
wire \u_kirsch|x_r5_5_~feeder_combout ;
wire \u_kirsch|x_r5_5_ ;
wire \u_kirsch|g_5_ ;
wire \u_kirsch|r5_5_~feeder_combout ;
wire \u_kirsch|r5_5_ ;
wire \u_kirsch|x_r3_7n3s1f1_5_ ;
wire \u_kirsch|x_r3_add9_7i9|nx45949z12 ;
wire \u_kirsch|x_r3_add9_7i9|nx45949z9 ;
wire \u_kirsch|x_r3_add9_7i9|nx45949z6 ;
wire \u_kirsch|x_r3_add9_7i9|nx45949z3 ;
wire \u_kirsch|x_r3_add9_7i9|nx45949z1 ;
wire \u_kirsch|x_r3_8_ ;
wire \u_kirsch|b_d1_add9_7i10|nx44952z1 ;
wire \u_kirsch|b_d1_7_ ;
wire \u_kirsch|b_d1_add9_7i10|nx43955z1 ;
wire \u_kirsch|b_d1_6_ ;
wire \u_kirsch|b_d1_add9_7i10|nx42958z1 ;
wire \u_kirsch|b_d1_5_ ;
wire \u_kirsch|b_d1_add9_7i10|nx40964z1 ;
wire \u_kirsch|b_d1_3_ ;
wire \u_kirsch|x_r3_add9_7i9|nx39967z1 ;
wire \u_kirsch|x_r3_2_ ;
wire \u_kirsch|x_r3_add9_7i9|nx38970z1 ;
wire \u_kirsch|x_r3_1_ ;
wire \u_kirsch|b_d1_add9_7i10|nx37973z1 ;
wire \u_kirsch|b_d1_0_ ;
wire \u_kirsch|ix47369z52805|nx100z28 ;
wire \u_kirsch|ix47369z52805|nx100z25 ;
wire \u_kirsch|ix47369z52805|nx100z22 ;
wire \u_kirsch|ix47369z52805|nx100z19 ;
wire \u_kirsch|ix47369z52805|nx100z16 ;
wire \u_kirsch|ix47369z52805|nx100z13 ;
wire \u_kirsch|ix47369z52805|nx100z10 ;
wire \u_kirsch|ix47369z52805|nx100z7 ;
wire \u_kirsch|ix47369z52805|nx100z4 ;
wire \u_kirsch|ix47369z52805|nx100z1 ;
wire \u_kirsch|r15_4_ ;
wire \u_kirsch|r18_4_~feeder_combout ;
wire \u_kirsch|x_r11_4_~feeder_combout ;
wire \u_kirsch|nx7951z2 ;
wire \u_kirsch|r13_4_ ;
wire \u_kirsch|r12_3_~feeder_combout ;
wire \u_kirsch|nx32637z1 ;
wire \u_kirsch|d_3_ ;
wire \u_kirsch|i_3_ ;
wire \u_kirsch|h_3_ ;
wire \u_kirsch|nx30643z1 ;
wire \u_kirsch|d_1_ ;
wire \u_kirsch|i_1_~feeder_combout ;
wire \u_kirsch|i_1_ ;
wire \u_kirsch|h_1_ ;
wire \u_kirsch|i_0_ ;
wire \u_kirsch|h_0_ ;
wire \u_kirsch|ix7951z18830|nx100z22 ;
wire \u_kirsch|ix7951z18830|nx100z19 ;
wire \u_kirsch|ix7951z18830|nx100z16 ;
wire \u_kirsch|ix7951z18830|nx100z13 ;
wire \u_kirsch|ix7951z18830|nx100z10 ;
wire \u_kirsch|ix7951z18830|nx100z7 ;
wire \u_kirsch|ix7951z18830|nx100z4 ;
wire \u_kirsch|ix7951z18830|nx100z1 ;
wire \u_kirsch|r12_3_ ;
wire \u_kirsch|r12_2_~feeder_combout ;
wire \u_kirsch|i_2_~feeder_combout ;
wire \u_kirsch|i_2_ ;
wire \u_kirsch|h_2_ ;
wire \u_kirsch|r12_2_ ;
wire \u_kirsch|r13_1_~feeder_combout ;
wire \u_kirsch|r13_1_ ;
wire \u_kirsch|r2_add8_6i49|nx37973z1 ;
wire \u_kirsch|r13_0_~feeder_combout ;
wire \u_kirsch|r13_0_ ;
wire \u_kirsch|r16_add9_7i11|nx45949z24 ;
wire \u_kirsch|r16_add9_7i11|nx45949z21 ;
wire \u_kirsch|r16_add9_7i11|nx45949z18 ;
wire \u_kirsch|r16_add9_7i11|nx45949z15 ;
wire \u_kirsch|r16_add9_7i11|nx41961z1 ;
wire \u_kirsch|nx34104z1 ;
wire \u_kirsch|r16_4_ ;
wire \u_kirsch|r2_add8_6i49|nx44952z1 ;
wire \u_kirsch|r13_7_ ;
wire \u_kirsch|r13_6_~feeder_combout ;
wire \u_kirsch|r13_6_ ;
wire \u_kirsch|r12_5_~feeder_combout ;
wire \u_kirsch|r12_5_ ;
wire \u_kirsch|r16_add9_7i11|nx45949z12 ;
wire \u_kirsch|r16_add9_7i11|nx45949z9 ;
wire \u_kirsch|r16_add9_7i11|nx45949z6 ;
wire \u_kirsch|r16_add9_7i11|nx45949z3 ;
wire \u_kirsch|r16_add9_7i11|nx23445z2 ;
wire \u_kirsch|r16_add9_7i11|nx23445z1 ;
wire \u_kirsch|r16_9_ ;
wire \u_kirsch|x_r3_add9_7i9|nx23445z2 ;
wire \u_kirsch|x_r3_add9_7i9|nx23445z1 ;
wire \u_kirsch|nx54873z1 ;
wire \u_kirsch|r11_9_ ;
wire \u_kirsch|r16_add9_7i11|nx45949z1 ;
wire \u_kirsch|r16_8_ ;
wire \u_kirsch|x_r3_add9_7i9|nx44952z1 ;
wire \u_kirsch|r11_7_ ;
wire \u_kirsch|x_r3_add9_7i9|nx43955z1 ;
wire \u_kirsch|r11_6_ ;
wire \u_kirsch|x_r3_add9_7i9|nx42958z1 ;
wire \u_kirsch|r11_5_ ;
wire \u_kirsch|x_r3_add9_7i9|nx40964z1 ;
wire \u_kirsch|r11_3_ ;
wire \u_kirsch|r11_2_ ;
wire \u_kirsch|r11_1_ ;
wire \u_kirsch|r16_add9_7i11|nx37973z1 ;
wire \u_kirsch|r16_0_ ;
wire \u_kirsch|ix64999z52807|nx100z28 ;
wire \u_kirsch|ix64999z52807|nx100z25 ;
wire \u_kirsch|ix64999z52807|nx100z22 ;
wire \u_kirsch|ix64999z52807|nx100z19 ;
wire \u_kirsch|ix64999z52807|nx100z16 ;
wire \u_kirsch|ix64999z52807|nx100z13 ;
wire \u_kirsch|ix64999z52807|nx100z10 ;
wire \u_kirsch|ix64999z52807|nx100z7 ;
wire \u_kirsch|ix64999z52807|nx100z4 ;
wire \u_kirsch|ix64999z52807|nx100z1 ;
wire \u_kirsch|nx64999z1 ;
wire \u_kirsch|x_r11_4_ ;
wire \u_kirsch|x_r11_9_~feeder_combout ;
wire \u_kirsch|x_r11_9_ ;
wire \u_kirsch|x_r3_9_~feeder_combout ;
wire \u_kirsch|x_r3_9_ ;
wire \u_kirsch|r15_9_~feeder_combout ;
wire \u_kirsch|r15_9_ ;
wire \u_kirsch|r15_8_~feeder_combout ;
wire \u_kirsch|b_d1_add9_7i10|nx45949z1 ;
wire \u_kirsch|b_d1_8_ ;
wire \u_kirsch|r15_8_ ;
wire \u_kirsch|r15_7_~feeder_combout ;
wire \u_kirsch|r15_7_ ;
wire \u_kirsch|x_r11_6_~feeder_combout ;
wire \u_kirsch|r16_add9_7i11|nx43955z1 ;
wire \u_kirsch|r16_6_ ;
wire \u_kirsch|x_r11_6_ ;
wire \u_kirsch|x_r11_5_~feeder_combout ;
wire \u_kirsch|r16_add9_7i11|nx42958z1 ;
wire \u_kirsch|r16_5_ ;
wire \u_kirsch|x_r11_5_ ;
wire \u_kirsch|x_r3_3_ ;
wire \u_kirsch|r15_3_~feeder_combout ;
wire \u_kirsch|r15_3_ ;
wire \u_kirsch|r15_2_~feeder_combout ;
wire \u_kirsch|b_d1_add9_7i10|nx39967z1 ;
wire \u_kirsch|b_d1_2_ ;
wire \u_kirsch|r15_2_ ;
wire \u_kirsch|r15_1_~feeder_combout ;
wire \u_kirsch|b_d1_add9_7i10|nx38970z1 ;
wire \u_kirsch|b_d1_1_ ;
wire \u_kirsch|r15_1_ ;
wire \u_kirsch|x_r3_add9_7i9|nx37973z1 ;
wire \u_kirsch|x_r3_0_ ;
wire \u_kirsch|r15_0_~feeder_combout ;
wire \u_kirsch|r15_0_ ;
wire \u_kirsch|ix35772z52808|nx100z28 ;
wire \u_kirsch|ix35772z52808|nx100z25 ;
wire \u_kirsch|ix35772z52808|nx100z22 ;
wire \u_kirsch|ix35772z52808|nx100z19 ;
wire \u_kirsch|ix35772z52808|nx100z16 ;
wire \u_kirsch|ix35772z52808|nx100z13 ;
wire \u_kirsch|ix35772z52808|nx100z10 ;
wire \u_kirsch|ix35772z52808|nx100z7 ;
wire \u_kirsch|ix35772z52808|nx100z4 ;
wire \u_kirsch|ix35772z52808|nx100z1 ;
wire \u_kirsch|nx35772z1 ;
wire \u_kirsch|r18_4_ ;
wire \u_kirsch|r2_add8_6i49|nx42958z1 ;
wire \u_kirsch|r9_5_~feeder_combout ;
wire \u_kirsch|r9_5_ ;
wire \u_kirsch|r2_4_~feeder_combout ;
wire \u_kirsch|r2_4_ ;
wire \u_kirsch|r2_1_~feeder_combout ;
wire \u_kirsch|r2_1_ ;
wire \u_kirsch|r2_0_~feeder_combout ;
wire \u_kirsch|r2_0_ ;
wire \u_kirsch|x_r6_add9_8i2|nx45949z25 ;
wire \u_kirsch|x_r6_add9_8i2|nx45949z22 ;
wire \u_kirsch|x_r6_add9_8i2|nx45949z19 ;
wire \u_kirsch|x_r6_add9_8i2|nx45949z16 ;
wire \u_kirsch|x_r6_add9_8i2|nx45949z13 ;
wire \u_kirsch|x_r6_add9_8i2|nx45949z10 ;
wire \u_kirsch|x_r6_add9_8i2|nx43955z1 ;
wire \u_kirsch|x_r6_6_ ;
wire \u_kirsch|r2_5_ ;
wire \u_kirsch|x_r6_add9_8i2|nx41961z1 ;
wire \u_kirsch|x_r6_4_ ;
wire \u_kirsch|x_r6_add9_8i2|nx40964z1 ;
wire \u_kirsch|x_r6_3_ ;
wire \u_kirsch|x_r6_add9_8i2|nx39967z1 ;
wire \u_kirsch|x_r6_2_ ;
wire \u_kirsch|x_r6_add9_8i2|nx38970z1 ;
wire \u_kirsch|x_r6_1_ ;
wire \u_kirsch|r14_add10_8i3|nx46946z27 ;
wire \u_kirsch|r14_add10_8i3|nx46946z24 ;
wire \u_kirsch|r14_add10_8i3|nx46946z21 ;
wire \u_kirsch|r14_add10_8i3|nx46946z18 ;
wire \u_kirsch|r14_add10_8i3|nx46946z15 ;
wire \u_kirsch|r14_add10_8i3|nx46946z12 ;
wire \u_kirsch|r14_add10_8i3|nx43955z1 ;
wire \u_kirsch|nx16422z1 ;
wire \u_kirsch|r14_6_ ;
wire \u_kirsch|r13_5_ ;
wire \u_kirsch|r14_add10_8i3|nx41961z1 ;
wire \u_kirsch|r14_4_ ;
wire \u_kirsch|r13_3_ ;
wire \u_kirsch|r14_add10_8i3|nx39967z1 ;
wire \u_kirsch|r14_2_ ;
wire \u_kirsch|r14_add10_8i3|nx37973z1 ;
wire \u_kirsch|r14_0_ ;
wire \u_kirsch|x_r12_add11_8i4|nx62798z29 ;
wire \u_kirsch|x_r12_add11_8i4|nx62798z26 ;
wire \u_kirsch|x_r12_add11_8i4|nx62798z23 ;
wire \u_kirsch|x_r12_add11_8i4|nx62798z20 ;
wire \u_kirsch|x_r12_add11_8i4|nx62798z17 ;
wire \u_kirsch|x_r12_add11_8i4|nx62798z14 ;
wire \u_kirsch|x_r12_add11_8i4|nx43955z1 ;
wire \u_kirsch|nx58464z1 ;
wire \u_kirsch|x_r12_6_ ;
wire \u_kirsch|x_r12_add11_8i4|nx42958z1 ;
wire \u_kirsch|x_r12_5_ ;
wire \u_kirsch|x_r12_add11_8i4|nx40964z1 ;
wire \u_kirsch|x_r12_3_ ;
wire \u_kirsch|x_r12_add11_8i4|nx38970z1 ;
wire \u_kirsch|x_r12_1_ ;
wire \u_kirsch|x_r22_add12_8i1|nx63795z23 ;
wire \u_kirsch|x_r22_add12_8i1|nx63795z21 ;
wire \u_kirsch|x_r22_add12_8i1|nx63795z19 ;
wire \u_kirsch|x_r22_add12_8i1|nx63795z17 ;
wire \u_kirsch|x_r22_add12_8i1|nx63795z15 ;
wire \u_kirsch|x_r22_add12_8i1|nx42958z1 ;
wire \u_kirsch|nx65254z1 ;
wire \u_kirsch|x_r22_6_ ;
wire \u_kirsch|x_r22_add12_8i1|nx41961z1 ;
wire \u_kirsch|x_r22_5_ ;
wire \u_kirsch|x_r22_add12_8i1|nx40964z1 ;
wire \u_kirsch|x_r22_4_ ;
wire \u_kirsch|x_r22_add12_8i1|nx39967z1 ;
wire \u_kirsch|x_r22_3_ ;
wire \u_kirsch|x_r12_add11_8i4|nx37973z1 ;
wire \u_kirsch|x_r12_0_ ;
wire \u_kirsch|x_r22_0_ ;
wire \u_kirsch|r17_sub13_10i1|nx63795z11 ;
wire \u_kirsch|r17_sub13_10i1|nx63795z10 ;
wire \u_kirsch|r17_sub13_10i1|nx63795z9 ;
wire \u_kirsch|r17_sub13_10i1|nx63795z8 ;
wire \u_kirsch|r17_sub13_10i1|nx63795z7 ;
wire \u_kirsch|r17_sub13_10i1|nx63795z6 ;
wire \u_kirsch|r17_sub13_10i1|d_6_ ;
wire \u_kirsch|r17_7_ ;
wire \u_kirsch|r2_7_~feeder_combout ;
wire \u_kirsch|r2_7_ ;
wire \u_kirsch|r14_add10_8i3|nx46946z9 ;
wire \u_kirsch|r14_add10_8i3|nx44952z1 ;
wire \u_kirsch|r14_7_ ;
wire \u_kirsch|x_r12_add11_8i4|nx62798z11 ;
wire \u_kirsch|x_r12_add11_8i4|nx44952z1 ;
wire \u_kirsch|x_r12_7_ ;
wire \u_kirsch|x_r22_add12_8i1|nx63795z13 ;
wire \u_kirsch|x_r22_add12_8i1|nx63795z11 ;
wire \u_kirsch|x_r22_add12_8i1|nx44952z1 ;
wire \u_kirsch|x_r22_8_ ;
wire \u_kirsch|r17_sub13_10i1|nx63795z5 ;
wire \u_kirsch|r17_sub13_10i1|d_7_ ;
wire \u_kirsch|r17_8_ ;
wire \u_kirsch|nx6165z2 ;
wire \u_kirsch|r9_8_~feeder_combout ;
wire \u_kirsch|r9_8_ ;
wire \u_kirsch|r9_7_~feeder_combout ;
wire \u_kirsch|r9_7_ ;
wire \u_kirsch|x_r6_add9_8i2|nx45949z7 ;
wire \u_kirsch|x_r6_add9_8i2|nx45949z4 ;
wire \u_kirsch|x_r6_add9_8i2|nx23445z2 ;
wire \u_kirsch|x_r6_add9_8i2|nx23445z1 ;
wire \u_kirsch|x_r6_9_ ;
wire \u_kirsch|r14_add10_8i3|nx46946z6 ;
wire \u_kirsch|r14_add10_8i3|nx46946z3 ;
wire \u_kirsch|r14_add10_8i3|nx23445z2 ;
wire \u_kirsch|r14_add10_8i3|nx23445z1 ;
wire \u_kirsch|r14_10_ ;
wire \u_kirsch|r14_add10_8i3|nx46946z1 ;
wire \u_kirsch|r14_9_ ;
wire \u_kirsch|r13_8_ ;
wire \u_kirsch|x_r12_add11_8i4|nx62798z8 ;
wire \u_kirsch|x_r12_add11_8i4|nx62798z5 ;
wire \u_kirsch|x_r12_add11_8i4|nx62798z3 ;
wire \u_kirsch|x_r12_add11_8i4|nx23445z2 ;
wire \u_kirsch|x_r12_add11_8i4|nx23445z1 ;
wire \u_kirsch|x_r12_11_ ;
wire \u_kirsch|x_r12_add11_8i4|nx46946z1 ;
wire \u_kirsch|x_r12_9_ ;
wire \u_kirsch|x_r22_add12_8i1|nx63795z9 ;
wire \u_kirsch|x_r22_add12_8i1|nx63795z7 ;
wire \u_kirsch|x_r22_add12_8i1|nx63795z5 ;
wire \u_kirsch|x_r22_add12_8i1|nx62798z1 ;
wire \u_kirsch|x_r22_11_ ;
wire \u_kirsch|x_r22_add12_8i1|nx46946z1 ;
wire \u_kirsch|x_r22_10_ ;
wire \u_kirsch|x_r22_add12_8i1|nx45949z1 ;
wire \u_kirsch|x_r22_9_ ;
wire \u_kirsch|r17_sub13_10i1|nx63795z4 ;
wire \u_kirsch|r17_sub13_10i1|nx63795z3 ;
wire \u_kirsch|r17_sub13_10i1|nx63795z2 ;
wire \u_kirsch|r17_sub13_10i1|d_10_ ;
wire \u_kirsch|r17_11_ ;
wire \u_kirsch|r17_sub13_10i1|d_8_ ;
wire \u_kirsch|r17_9_ ;
wire \u_kirsch|nx6165z1 ;
wire \u_kirsch|p_o_edge ;
wire \u_kirsch|p_o_dir_0_ ;
wire \u_uw_uart|nx38742z1 ;
wire \u_uw_uart|nx40736z4 ;
wire \u_uw_uart|nx40736z3 ;
wire \u_uw_uart|mdata_1_ ;
wire \u_uw_uart|sdout_1_~feeder_combout ;
wire \u_uw_uart|sdout_1_ ;
wire \u_kirsch|final_dir_2_~feeder_combout ;
wire \u_kirsch|stage1_eSe_2_ ;
wire \u_kirsch|second_cw_2_~feeder_combout ;
wire \u_kirsch|stage1_sSw_2_ ;
wire \u_kirsch|second_cw_2_ ;
wire \u_kirsch|final_dir_2_ ;
wire \u_kirsch|p_o_dir_2_ ;
wire \u_uw_uart|mdata_3_ ;
wire \u_uw_uart|sdout_3_~feeder_combout ;
wire \u_uw_uart|sdout_3_ ;
wire \u_uw_uart|mdata_7n5ss1_4_ ;
wire \u_uw_uart|mdata_5_ ;
wire \u_uw_uart|sdout_5_~feeder_combout ;
wire \u_uw_uart|sdout_5_ ;
wire \u_uw_uart|nx40736z2 ;
wire \u_uw_uart|mdata_7n5ss1_6_ ;
wire \u_uw_uart|mdata_7_ ;
wire \u_uw_uart|sdout_7_~feeder_combout ;
wire \u_uw_uart|sdout_7_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ;
wire \u_uw_uart|i_uarts|nx35603z1 ;
wire \u_uw_uart|i_uarts|nx34606z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_ ;
wire \u_uw_uart|i_uarts|nx33609z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_ ;
wire \u_uw_uart|i_uarts|nx32612z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_ ;
wire \u_uw_uart|i_uarts|nx31615z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_ ;
wire \u_uw_uart|i_uarts|nx30618z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_ ;
wire \u_uw_uart|i_uarts|nx29621z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_ ;
wire \u_uw_uart|i_uarts|nx28624z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_ ;
wire \u_uw_uart|i_uarts|nx61140z1 ;
wire \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_ ;
wire \u_uw_uart|i_uarts|nx61812z1 ;
wire nx21351z2;
wire \u_kirsch|modgen_counter_o_row|nx53265z1 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z11 ;
wire nx57590z1;
wire nx41851z1;
wire \u_kirsch|modgen_counter_o_row|nx51271z1 ;
wire \u_kirsch|modgen_counter_o_row|nx58250z15 ;
wire nx58587z1;
wire nx42848z1;
wire nx59584z1;
wire nx43845z1;
wire nx60581z1;
wire nx44842z1;
wire nx61578z1;
wire nx45839z1;
wire nx62575z1;
wire nx46836z1;
wire nx63572z1;
wire nx47833z1;
wire nx30z1;
wire nx49827z1;
wire nx1027z1;
wire nx50824z1;
wire nx25683z1;
wire nx62540z1;
wire nx26680z1;
wire nx63537z1;
wire nx27677z1;
wire nx64534z1;
wire nx28674z1;
wire nx65531z1;
wire nx29671z1;
wire nx992z1;
wire \u_kirsch|nx11673z5 ;
wire \u_kirsch|nx11673z1 ;
wire \u_kirsch|nx64269z1 ;
wire [7:0] \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a ;
wire [7:0] \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a ;
wire [7:0] \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a ;

wire [7:0] \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus ;
wire [7:0] \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus ;
wire [7:0] \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus ;

assign \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [0] = \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [0];
assign \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [1] = \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [1];
assign \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [2] = \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [2];
assign \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [3] = \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [3];
assign \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [4] = \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [4];
assign \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [5] = \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [5];
assign \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [6] = \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [6];
assign \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [7] = \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [7];

assign \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [0] = \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [0];
assign \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [1] = \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [1];
assign \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [2] = \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [2];
assign \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [3] = \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [3];
assign \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [4] = \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [4];
assign \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [5] = \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [5];
assign \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [6] = \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [6];
assign \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [7] = \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [7];

assign \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [0] = \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [0];
assign \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [1] = \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [1];
assign \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [2] = \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [2];
assign \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [3] = \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [3];
assign \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [4] = \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [4];
assign \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [5] = \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [5];
assign \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [6] = \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [6];
assign \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [7] = \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus [7];

// Location: LCCOMB_X50_Y23_N20
cycloneii_lcell_comb \u_kirsch|ix11673z52925 (
// Equation(s):
// \u_kirsch|nx11673z3  = (\u_kirsch|modgen_counter_col|nx58250z13 ) # ((\u_kirsch|modgen_counter_col|nx58250z3 ) # ((\u_kirsch|modgen_counter_col|nx58250z5 ) # (\u_kirsch|modgen_counter_col|nx58250z11 )))

	.dataa(\u_kirsch|modgen_counter_col|nx58250z13 ),
	.datab(\u_kirsch|modgen_counter_col|nx58250z3 ),
	.datac(\u_kirsch|modgen_counter_col|nx58250z5 ),
	.datad(\u_kirsch|modgen_counter_col|nx58250z11 ),
	.cin(gnd),
	.combout(\u_kirsch|nx11673z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix11673z52925 .lut_mask = 16'hFFFE;
defparam \u_kirsch|ix11673z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y23_N7
cycloneii_lcell_ff \u_uw_uart|reg_sdout_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_0_ ));

// Location: LCFF_X49_Y23_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TxDivisor_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDivisor_5_ ));

// Location: LCCOMB_X44_Y22_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z3  = (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1  & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3  & (\u_uw_uart|i_uarts|TxDivisor_5_  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 )))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ),
	.datac(\u_uw_uart|i_uarts|TxDivisor_5_ ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52925 .lut_mask = 16'h0010;
defparam \u_uw_uart|i_uarts|ix32400z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y22_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z4  = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 )))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52926 .lut_mask = 16'h0080;
defparam \u_uw_uart|i_uarts|ix32400z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ));

// Location: LCCOMB_X44_Y22_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z5  = (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 )))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52927 .lut_mask = 16'h0004;
defparam \u_uw_uart|i_uarts|ix32400z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y22_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z2  = (\u_uw_uart|i_uarts|nx32400z4  & (\u_uw_uart|i_uarts|nx32400z5  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23  & \u_uw_uart|i_uarts|nx32400z3 )))

	.dataa(\u_uw_uart|i_uarts|nx32400z4 ),
	.datab(\u_uw_uart|i_uarts|nx32400z5 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ),
	.datad(\u_uw_uart|i_uarts|nx32400z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52924 .lut_mask = 16'h8000;
defparam \u_uw_uart|i_uarts|ix32400z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y23_N17
cycloneii_lcell_ff \u_uw_uart|reg_mdata_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_0_~feeder_combout ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx38742z1 ),
	.sload(!\u_kirsch|p_o_valid ),
	.ena(\u_uw_uart|nx40736z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_0_ ));

// Location: LCFF_X45_Y25_N13
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z19 ));

// Location: LCFF_X45_Y25_N11
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z21 ));

// Location: LCCOMB_X46_Y25_N12
cycloneii_lcell_comb \u_uw_uart|ix39480z52925 (
// Equation(s):
// \u_uw_uart|nx39480z3  = (\u_uw_uart|modgen_counter_waitcount|nx22081z19  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z23  & (\u_uw_uart|modgen_counter_waitcount|nx22081z21  & !\u_uw_uart|modgen_counter_waitcount|nx22081z17 )))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z19 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z23 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z21 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z17 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52925 .lut_mask = 16'h0020;
defparam \u_uw_uart|ix39480z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y25_N31
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_15_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx22081z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx64508z1 ));

// Location: LCCOMB_X43_Y22_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52932 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1  = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17  & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18 )) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17  & 
// ((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18 ) # (GND)))
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16  = CARRY((!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18 ) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52932 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X40_Y27_N27
cycloneii_lcell_ff \u_kirsch|reg_r17_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r17_sub13_10i1|d_11_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_7_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r17_12_ ));

// Location: LCFF_X40_Y27_N23
cycloneii_lcell_ff \u_kirsch|reg_r17_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r17_sub13_10i1|d_9_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_7_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r17_10_ ));

// Location: LCFF_X43_Y23_N1
cycloneii_lcell_ff \u_uw_uart|reg_sdout_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_2_ ));

// Location: LCCOMB_X45_Y25_N10
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52934 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx56256z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z21  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z22 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z21  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z22 
// ) # (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z20  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z22 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z21 ))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z21 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z22 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx56256z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z20 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52934 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y25_N12
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52933 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx57253z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z19  & (\u_uw_uart|modgen_counter_waitcount|nx22081z20  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z19  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z20  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z18  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z19  & !\u_uw_uart|modgen_counter_waitcount|nx22081z20 ))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z19 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z20 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx57253z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z18 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52933 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y25_N28
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52925 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx21084z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z3  & (\u_uw_uart|modgen_counter_waitcount|nx22081z4  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z3  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z4  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z2  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z3  & !\u_uw_uart|modgen_counter_waitcount|nx22081z4 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z4 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx21084z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z2 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52925 .lut_mask = 16'hC30C;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y25_N30
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52923 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx22081z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z2  $ (\u_uw_uart|modgen_counter_waitcount|nx64508z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx64508z1 ),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z2 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx22081z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y27_N27
cycloneii_lcell_ff \u_kirsch|reg_x_r22_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r22_add12_8i1|nx63795z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx65254z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r22_12_ ));

// Location: LCFF_X37_Y26_N1
cycloneii_lcell_ff \u_kirsch|reg_r18_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r18_9_~feeder_combout ),
	.sdata(\u_kirsch|x_r11_9_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix35772z52808|nx100z1 ),
	.ena(\u_kirsch|nx35772z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r18_9_ ));

// Location: LCFF_X38_Y26_N1
cycloneii_lcell_ff \u_kirsch|reg_r18_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r18_8_~feeder_combout ),
	.sdata(\u_kirsch|x_r11_8_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix35772z52808|nx100z1 ),
	.ena(\u_kirsch|nx35772z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r18_8_ ));

// Location: LCFF_X37_Y26_N3
cycloneii_lcell_ff \u_kirsch|reg_r18_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r18_7_~feeder_combout ),
	.sdata(\u_kirsch|x_r11_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix35772z52808|nx100z1 ),
	.ena(\u_kirsch|nx35772z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r18_7_ ));

// Location: LCFF_X38_Y26_N27
cycloneii_lcell_ff \u_kirsch|reg_r18_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r18_6_~feeder_combout ),
	.sdata(\u_kirsch|x_r11_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix35772z52808|nx100z1 ),
	.ena(\u_kirsch|nx35772z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r18_6_ ));

// Location: LCFF_X38_Y26_N13
cycloneii_lcell_ff \u_kirsch|reg_r18_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r18_5_~feeder_combout ),
	.sdata(\u_kirsch|x_r11_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix35772z52808|nx100z1 ),
	.ena(\u_kirsch|nx35772z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r18_5_ ));

// Location: LCFF_X41_Y27_N17
cycloneii_lcell_ff \u_kirsch|reg_x_r22_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r22_add12_8i1|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx65254z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r22_7_ ));

// Location: LCFF_X38_Y26_N23
cycloneii_lcell_ff \u_kirsch|reg_r18_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r18_3_~feeder_combout ),
	.sdata(\u_kirsch|x_r11_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix35772z52808|nx100z1 ),
	.ena(\u_kirsch|nx35772z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r18_3_ ));

// Location: LCFF_X37_Y26_N27
cycloneii_lcell_ff \u_kirsch|reg_r18_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r18_2_~feeder_combout ),
	.sdata(\u_kirsch|x_r11_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix35772z52808|nx100z1 ),
	.ena(\u_kirsch|nx35772z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r18_2_ ));

// Location: LCFF_X38_Y26_N25
cycloneii_lcell_ff \u_kirsch|reg_r18_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r18_1_~feeder_combout ),
	.sdata(\u_kirsch|x_r11_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix35772z52808|nx100z1 ),
	.ena(\u_kirsch|nx35772z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r18_1_ ));

// Location: LCFF_X37_Y26_N5
cycloneii_lcell_ff \u_kirsch|reg_r18_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r18_0_~feeder_combout ),
	.sdata(\u_kirsch|x_r11_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix35772z52808|nx100z1 ),
	.ena(\u_kirsch|nx35772z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r18_0_ ));

// Location: LCFF_X41_Y27_N7
cycloneii_lcell_ff \u_kirsch|reg_x_r22_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r22_add12_8i1|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx65254z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r22_2_ ));

// Location: LCFF_X41_Y27_N5
cycloneii_lcell_ff \u_kirsch|reg_x_r22_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r22_add12_8i1|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx65254z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r22_1_ ));

// Location: LCCOMB_X40_Y27_N22
cycloneii_lcell_comb \u_kirsch|r17_sub13_10i1|ix63795z52926 (
// Equation(s):
// \u_kirsch|r17_sub13_10i1|d_9_  = (\u_kirsch|r18_7_  & ((\u_kirsch|x_r22_10_  & (!\u_kirsch|r17_sub13_10i1|nx63795z3 )) # (!\u_kirsch|x_r22_10_  & (\u_kirsch|r17_sub13_10i1|nx63795z3  & VCC)))) # (!\u_kirsch|r18_7_  & ((\u_kirsch|x_r22_10_  & 
// ((\u_kirsch|r17_sub13_10i1|nx63795z3 ) # (GND))) # (!\u_kirsch|x_r22_10_  & (!\u_kirsch|r17_sub13_10i1|nx63795z3 ))))
// \u_kirsch|r17_sub13_10i1|nx63795z2  = CARRY((\u_kirsch|r18_7_  & (\u_kirsch|x_r22_10_  & !\u_kirsch|r17_sub13_10i1|nx63795z3 )) # (!\u_kirsch|r18_7_  & ((\u_kirsch|x_r22_10_ ) # (!\u_kirsch|r17_sub13_10i1|nx63795z3 ))))

	.dataa(\u_kirsch|r18_7_ ),
	.datab(\u_kirsch|x_r22_10_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r17_sub13_10i1|nx63795z3 ),
	.combout(\u_kirsch|r17_sub13_10i1|d_9_ ),
	.cout(\u_kirsch|r17_sub13_10i1|nx63795z2 ));
// synopsys translate_off
defparam \u_kirsch|r17_sub13_10i1|ix63795z52926 .lut_mask = 16'h694D;
defparam \u_kirsch|r17_sub13_10i1|ix63795z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y27_N24
cycloneii_lcell_comb \u_kirsch|r17_sub13_10i1|ix63795z52925 (
// Equation(s):
// \u_kirsch|r17_sub13_10i1|d_10_  = ((\u_kirsch|r18_8_  $ (\u_kirsch|x_r22_11_  $ (\u_kirsch|r17_sub13_10i1|nx63795z2 )))) # (GND)
// \u_kirsch|r17_sub13_10i1|nx63795z1  = CARRY((\u_kirsch|r18_8_  & ((!\u_kirsch|r17_sub13_10i1|nx63795z2 ) # (!\u_kirsch|x_r22_11_ ))) # (!\u_kirsch|r18_8_  & (!\u_kirsch|x_r22_11_  & !\u_kirsch|r17_sub13_10i1|nx63795z2 )))

	.dataa(\u_kirsch|r18_8_ ),
	.datab(\u_kirsch|x_r22_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r17_sub13_10i1|nx63795z2 ),
	.combout(\u_kirsch|r17_sub13_10i1|d_10_ ),
	.cout(\u_kirsch|r17_sub13_10i1|nx63795z1 ));
// synopsys translate_off
defparam \u_kirsch|r17_sub13_10i1|ix63795z52925 .lut_mask = 16'h962B;
defparam \u_kirsch|r17_sub13_10i1|ix63795z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y27_N26
cycloneii_lcell_comb \u_kirsch|r17_sub13_10i1|ix63795z52923 (
// Equation(s):
// \u_kirsch|r17_sub13_10i1|d_11_  = \u_kirsch|x_r22_12_  $ (\u_kirsch|r17_sub13_10i1|nx63795z1  $ (!\u_kirsch|r18_9_ ))

	.dataa(\u_kirsch|x_r22_12_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r18_9_ ),
	.cin(\u_kirsch|r17_sub13_10i1|nx63795z1 ),
	.combout(\u_kirsch|r17_sub13_10i1|d_11_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r17_sub13_10i1|ix63795z52923 .lut_mask = 16'h5AA5;
defparam \u_kirsch|r17_sub13_10i1|ix63795z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X38_Y26_N19
cycloneii_lcell_ff \u_kirsch|reg_final_dir_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|final_dir_0_~feeder_combout ),
	.sdata(\u_kirsch|second_cw_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix35772z52808|nx100z1 ),
	.ena(\u_kirsch|nx35772z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|final_dir_0_ ));

// Location: LCFF_X42_Y23_N25
cycloneii_lcell_ff \u_uw_uart|reg_mdata_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|p_o_dir_1_ ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx38742z1 ),
	.sload(!\u_kirsch|p_o_valid ),
	.ena(\u_uw_uart|nx40736z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_2_ ));

// Location: LCCOMB_X46_Y25_N26
cycloneii_lcell_comb \u_uw_uart|ix15671z52923 (
// Equation(s):
// \u_uw_uart|rawrx  = (\rxflex~combout  & \nrst~combout )

	.dataa(\rxflex~combout ),
	.datab(vcc),
	.datac(\nrst~combout ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|rawrx ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix15671z52923 .lut_mask = 16'hA0A0;
defparam \u_uw_uart|ix15671z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y25_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15541z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15541z3  = ((\rxflex~combout  & \nrst~combout )) # (!\u_uw_uart|i_uarts|RxFSM_6_ )

	.dataa(\rxflex~combout ),
	.datab(\u_uw_uart|i_uarts|RxFSM_6_ ),
	.datac(\nrst~combout ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15541z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15541z52926 .lut_mask = 16'hB3B3;
defparam \u_uw_uart|i_uarts|ix15541z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y22_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z6  = (!\u_uw_uart|i_uarts|TxDivisor_5_  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 )))

	.dataa(\u_uw_uart|i_uarts|TxDivisor_5_ ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52927 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix34394z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y22_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ));

// Location: LCCOMB_X45_Y22_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z7  = (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 )))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52928 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix34394z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y22_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ));

// Location: LCCOMB_X45_Y22_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z8  = (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 )))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z8 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52929 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix34394z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z5  = (\u_uw_uart|i_uarts|nx34394z7  & (\u_uw_uart|i_uarts|nx34394z8  & \u_uw_uart|i_uarts|nx34394z6 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|nx34394z7 ),
	.datac(\u_uw_uart|i_uarts|nx34394z8 ),
	.datad(\u_uw_uart|i_uarts|nx34394z6 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52926 .lut_mask = 16'hC000;
defparam \u_uw_uart|i_uarts|ix34394z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y25_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx8373z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_3_ ));

// Location: LCFF_X41_Y25_N25
cycloneii_lcell_ff \u_kirsch|reg_x_r12_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r12_add11_8i4|nx62798z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx58464z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r12_10_ ));

// Location: LCFF_X41_Y25_N21
cycloneii_lcell_ff \u_kirsch|reg_x_r12_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r12_add11_8i4|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx58464z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r12_8_ ));

// Location: LCFF_X41_Y25_N13
cycloneii_lcell_ff \u_kirsch|reg_x_r12_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r12_add11_8i4|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx58464z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r12_4_ ));

// Location: LCFF_X41_Y25_N9
cycloneii_lcell_ff \u_kirsch|reg_x_r12_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r12_add11_8i4|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx58464z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r12_2_ ));

// Location: LCCOMB_X41_Y27_N4
cycloneii_lcell_comb \u_kirsch|x_r22_add12_8i1|ix63795z52935 (
// Equation(s):
// \u_kirsch|x_r22_add12_8i1|nx37973z1  = (\u_kirsch|x_r12_0_  & (\u_kirsch|x_r12_1_  $ (VCC))) # (!\u_kirsch|x_r12_0_  & (\u_kirsch|x_r12_1_  & VCC))
// \u_kirsch|x_r22_add12_8i1|nx63795z23  = CARRY((\u_kirsch|x_r12_0_  & \u_kirsch|x_r12_1_ ))

	.dataa(\u_kirsch|x_r12_0_ ),
	.datab(\u_kirsch|x_r12_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|x_r22_add12_8i1|nx37973z1 ),
	.cout(\u_kirsch|x_r22_add12_8i1|nx63795z23 ));
// synopsys translate_off
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52935 .lut_mask = 16'h6688;
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y27_N6
cycloneii_lcell_comb \u_kirsch|x_r22_add12_8i1|ix63795z52934 (
// Equation(s):
// \u_kirsch|x_r22_add12_8i1|nx38970z1  = (\u_kirsch|x_r12_2_  & ((\u_kirsch|x_r12_1_  & (\u_kirsch|x_r22_add12_8i1|nx63795z23  & VCC)) # (!\u_kirsch|x_r12_1_  & (!\u_kirsch|x_r22_add12_8i1|nx63795z23 )))) # (!\u_kirsch|x_r12_2_  & ((\u_kirsch|x_r12_1_  & 
// (!\u_kirsch|x_r22_add12_8i1|nx63795z23 )) # (!\u_kirsch|x_r12_1_  & ((\u_kirsch|x_r22_add12_8i1|nx63795z23 ) # (GND)))))
// \u_kirsch|x_r22_add12_8i1|nx63795z21  = CARRY((\u_kirsch|x_r12_2_  & (!\u_kirsch|x_r12_1_  & !\u_kirsch|x_r22_add12_8i1|nx63795z23 )) # (!\u_kirsch|x_r12_2_  & ((!\u_kirsch|x_r22_add12_8i1|nx63795z23 ) # (!\u_kirsch|x_r12_1_ ))))

	.dataa(\u_kirsch|x_r12_2_ ),
	.datab(\u_kirsch|x_r12_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r22_add12_8i1|nx63795z23 ),
	.combout(\u_kirsch|x_r22_add12_8i1|nx38970z1 ),
	.cout(\u_kirsch|x_r22_add12_8i1|nx63795z21 ));
// synopsys translate_off
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52934 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y27_N16
cycloneii_lcell_comb \u_kirsch|x_r22_add12_8i1|ix63795z52929 (
// Equation(s):
// \u_kirsch|x_r22_add12_8i1|nx43955z1  = ((\u_kirsch|x_r12_7_  $ (\u_kirsch|x_r12_6_  $ (!\u_kirsch|x_r22_add12_8i1|nx63795z13 )))) # (GND)
// \u_kirsch|x_r22_add12_8i1|nx63795z11  = CARRY((\u_kirsch|x_r12_7_  & ((\u_kirsch|x_r12_6_ ) # (!\u_kirsch|x_r22_add12_8i1|nx63795z13 ))) # (!\u_kirsch|x_r12_7_  & (\u_kirsch|x_r12_6_  & !\u_kirsch|x_r22_add12_8i1|nx63795z13 )))

	.dataa(\u_kirsch|x_r12_7_ ),
	.datab(\u_kirsch|x_r12_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r22_add12_8i1|nx63795z13 ),
	.combout(\u_kirsch|x_r22_add12_8i1|nx43955z1 ),
	.cout(\u_kirsch|x_r22_add12_8i1|nx63795z11 ));
// synopsys translate_off
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52929 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y27_N24
cycloneii_lcell_comb \u_kirsch|x_r22_add12_8i1|ix63795z52925 (
// Equation(s):
// \u_kirsch|x_r22_add12_8i1|nx62798z1  = ((\u_kirsch|x_r12_10_  $ (\u_kirsch|x_r12_11_  $ (!\u_kirsch|x_r22_add12_8i1|nx63795z5 )))) # (GND)
// \u_kirsch|x_r22_add12_8i1|nx63795z3  = CARRY((\u_kirsch|x_r12_10_  & ((\u_kirsch|x_r12_11_ ) # (!\u_kirsch|x_r22_add12_8i1|nx63795z5 ))) # (!\u_kirsch|x_r12_10_  & (\u_kirsch|x_r12_11_  & !\u_kirsch|x_r22_add12_8i1|nx63795z5 )))

	.dataa(\u_kirsch|x_r12_10_ ),
	.datab(\u_kirsch|x_r12_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r22_add12_8i1|nx63795z5 ),
	.combout(\u_kirsch|x_r22_add12_8i1|nx62798z1 ),
	.cout(\u_kirsch|x_r22_add12_8i1|nx63795z3 ));
// synopsys translate_off
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52925 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y27_N26
cycloneii_lcell_comb \u_kirsch|x_r22_add12_8i1|ix63795z52923 (
// Equation(s):
// \u_kirsch|x_r22_add12_8i1|nx63795z1  = \u_kirsch|x_r12_11_  $ (\u_kirsch|x_r22_add12_8i1|nx63795z3 )

	.dataa(vcc),
	.datab(\u_kirsch|x_r12_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r22_add12_8i1|nx63795z3 ),
	.combout(\u_kirsch|x_r22_add12_8i1|nx63795z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52923 .lut_mask = 16'h3C3C;
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y25_N19
cycloneii_lcell_ff \u_kirsch|reg_x_r11_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r11_8_~feeder_combout ),
	.sdata(\u_kirsch|r16_8_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix64999z52807|nx100z1 ),
	.ena(\u_kirsch|nx64999z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r11_8_ ));

// Location: LCFF_X37_Y25_N29
cycloneii_lcell_ff \u_kirsch|reg_x_r11_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r11_7_~feeder_combout ),
	.sdata(\u_kirsch|r16_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix64999z52807|nx100z1 ),
	.ena(\u_kirsch|nx64999z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r11_7_ ));

// Location: LCFF_X40_Y26_N7
cycloneii_lcell_ff \u_kirsch|reg_r15_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r15_6_~feeder_combout ),
	.sdata(\u_kirsch|b_d1_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix47369z52805|nx100z1 ),
	.ena(\u_kirsch|validBit_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r15_6_ ));

// Location: LCFF_X40_Y26_N17
cycloneii_lcell_ff \u_kirsch|reg_r15_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r15_5_~feeder_combout ),
	.sdata(\u_kirsch|b_d1_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix47369z52805|nx100z1 ),
	.ena(\u_kirsch|validBit_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r15_5_ ));

// Location: LCFF_X37_Y25_N21
cycloneii_lcell_ff \u_kirsch|reg_x_r11_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r11_3_~feeder_combout ),
	.sdata(\u_kirsch|r16_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix64999z52807|nx100z1 ),
	.ena(\u_kirsch|nx64999z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r11_3_ ));

// Location: LCFF_X37_Y25_N7
cycloneii_lcell_ff \u_kirsch|reg_x_r11_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r11_2_~feeder_combout ),
	.sdata(\u_kirsch|r16_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix64999z52807|nx100z1 ),
	.ena(\u_kirsch|nx64999z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r11_2_ ));

// Location: LCFF_X37_Y25_N9
cycloneii_lcell_ff \u_kirsch|reg_x_r11_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r11_1_~feeder_combout ),
	.sdata(\u_kirsch|r16_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix64999z52807|nx100z1 ),
	.ena(\u_kirsch|nx64999z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r11_1_ ));

// Location: LCFF_X37_Y25_N3
cycloneii_lcell_ff \u_kirsch|reg_x_r11_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r11_0_~feeder_combout ),
	.sdata(\u_kirsch|r16_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix64999z52807|nx100z1 ),
	.ena(\u_kirsch|nx64999z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r11_0_ ));

// Location: LCFF_X41_Y26_N25
cycloneii_lcell_ff \u_kirsch|reg_first_cw_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|first_cw_9n1ss1_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|first_cw_0_ ));

// Location: LCFF_X38_Y25_N1
cycloneii_lcell_ff \u_kirsch|reg_second_cw_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|second_cw_9n2ss1_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx64999z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|second_cw_0_ ));

// Location: LCFF_X38_Y26_N5
cycloneii_lcell_ff \u_kirsch|reg_final_dir_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|final_dir_1_~feeder_combout ),
	.sdata(\u_kirsch|second_cw_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix35772z52808|nx100z1 ),
	.ena(\u_kirsch|nx35772z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|final_dir_1_ ));

// Location: LCCOMB_X42_Y23_N24
cycloneii_lcell_comb \u_kirsch|ix7162z52923 (
// Equation(s):
// \u_kirsch|p_o_dir_1_  = (\u_kirsch|final_dir_1_  & \u_kirsch|p_o_edge )

	.dataa(vcc),
	.datab(\u_kirsch|final_dir_1_ ),
	.datac(vcc),
	.datad(\u_kirsch|p_o_edge ),
	.cin(gnd),
	.combout(\u_kirsch|p_o_dir_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix7162z52923 .lut_mask = 16'hCC00;
defparam \u_kirsch|ix7162z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52931 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1  = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16 )) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15  & 
// ((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16 ) # (GND)))
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14  = CARRY((!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16 ) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52931 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1  = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10  $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & 
// (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10  & VCC))
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8  = CARRY((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10 ))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52928 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y25_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix8373z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx8373z2  = \u_uw_uart|i_uarts|RxBitCnt_3_  $ (((\u_uw_uart|i_uarts|RxBitCnt_2_  & (\u_uw_uart|i_uarts|RxBitCnt_1_  & \u_uw_uart|i_uarts|RxBitCnt_0_ ))))

	.dataa(\u_uw_uart|i_uarts|RxBitCnt_3_ ),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx8373z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix8373z52925 .lut_mask = 16'h6AAA;
defparam \u_uw_uart|i_uarts|ix8373z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y25_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix8373z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx8373z1  = (\u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & (\u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|nx8373z2 ))) # (!\u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & (((\u_uw_uart|i_uarts|RxBitCnt_3_ ))))

	.dataa(\u_uw_uart|i_uarts|nx34394z2 ),
	.datab(\u_uw_uart|i_uarts|nx8373z2 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx8373z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix8373z52923 .lut_mask = 16'h88F0;
defparam \u_uw_uart|i_uarts|ix8373z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y25_N27
cycloneii_lcell_ff \u_kirsch|reg_r14_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r14_add10_8i3|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx16422z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r14_8_ ));

// Location: LCFF_X42_Y25_N21
cycloneii_lcell_ff \u_kirsch|reg_r14_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r14_add10_8i3|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx16422z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r14_5_ ));

// Location: LCFF_X42_Y25_N17
cycloneii_lcell_ff \u_kirsch|reg_r14_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r14_add10_8i3|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx16422z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r14_3_ ));

// Location: LCFF_X42_Y24_N23
cycloneii_lcell_ff \u_kirsch|reg_r13_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r2_add8_6i49|nx39967z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r13_2_ ));

// Location: LCFF_X42_Y25_N13
cycloneii_lcell_ff \u_kirsch|reg_r14_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r14_add10_8i3|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx16422z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r14_1_ ));

// Location: LCCOMB_X41_Y25_N8
cycloneii_lcell_comb \u_kirsch|x_r12_add11_8i4|ix62798z52932 (
// Equation(s):
// \u_kirsch|x_r12_add11_8i4|nx39967z1  = ((\u_kirsch|r13_2_  $ (\u_kirsch|r14_2_  $ (!\u_kirsch|x_r12_add11_8i4|nx62798z26 )))) # (GND)
// \u_kirsch|x_r12_add11_8i4|nx62798z23  = CARRY((\u_kirsch|r13_2_  & ((\u_kirsch|r14_2_ ) # (!\u_kirsch|x_r12_add11_8i4|nx62798z26 ))) # (!\u_kirsch|r13_2_  & (\u_kirsch|r14_2_  & !\u_kirsch|x_r12_add11_8i4|nx62798z26 )))

	.dataa(\u_kirsch|r13_2_ ),
	.datab(\u_kirsch|r14_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r12_add11_8i4|nx62798z26 ),
	.combout(\u_kirsch|x_r12_add11_8i4|nx39967z1 ),
	.cout(\u_kirsch|x_r12_add11_8i4|nx62798z23 ));
// synopsys translate_off
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52932 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y25_N12
cycloneii_lcell_comb \u_kirsch|x_r12_add11_8i4|ix62798z52930 (
// Equation(s):
// \u_kirsch|x_r12_add11_8i4|nx41961z1  = ((\u_kirsch|r13_4_  $ (\u_kirsch|r14_4_  $ (!\u_kirsch|x_r12_add11_8i4|nx62798z20 )))) # (GND)
// \u_kirsch|x_r12_add11_8i4|nx62798z17  = CARRY((\u_kirsch|r13_4_  & ((\u_kirsch|r14_4_ ) # (!\u_kirsch|x_r12_add11_8i4|nx62798z20 ))) # (!\u_kirsch|r13_4_  & (\u_kirsch|r14_4_  & !\u_kirsch|x_r12_add11_8i4|nx62798z20 )))

	.dataa(\u_kirsch|r13_4_ ),
	.datab(\u_kirsch|r14_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r12_add11_8i4|nx62798z20 ),
	.combout(\u_kirsch|x_r12_add11_8i4|nx41961z1 ),
	.cout(\u_kirsch|x_r12_add11_8i4|nx62798z17 ));
// synopsys translate_off
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52930 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y25_N20
cycloneii_lcell_comb \u_kirsch|x_r12_add11_8i4|ix62798z52926 (
// Equation(s):
// \u_kirsch|x_r12_add11_8i4|nx45949z1  = ((\u_kirsch|r14_8_  $ (\u_kirsch|r13_8_  $ (!\u_kirsch|x_r12_add11_8i4|nx62798z8 )))) # (GND)
// \u_kirsch|x_r12_add11_8i4|nx62798z5  = CARRY((\u_kirsch|r14_8_  & ((\u_kirsch|r13_8_ ) # (!\u_kirsch|x_r12_add11_8i4|nx62798z8 ))) # (!\u_kirsch|r14_8_  & (\u_kirsch|r13_8_  & !\u_kirsch|x_r12_add11_8i4|nx62798z8 )))

	.dataa(\u_kirsch|r14_8_ ),
	.datab(\u_kirsch|r13_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r12_add11_8i4|nx62798z8 ),
	.combout(\u_kirsch|x_r12_add11_8i4|nx45949z1 ),
	.cout(\u_kirsch|x_r12_add11_8i4|nx62798z5 ));
// synopsys translate_off
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52926 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y25_N24
cycloneii_lcell_comb \u_kirsch|x_r12_add11_8i4|ix62798z52923 (
// Equation(s):
// \u_kirsch|x_r12_add11_8i4|nx62798z1  = (\u_kirsch|r14_10_  & (\u_kirsch|x_r12_add11_8i4|nx62798z3  $ (GND))) # (!\u_kirsch|r14_10_  & (!\u_kirsch|x_r12_add11_8i4|nx62798z3  & VCC))
// \u_kirsch|x_r12_add11_8i4|nx23445z2  = CARRY((\u_kirsch|r14_10_  & !\u_kirsch|x_r12_add11_8i4|nx62798z3 ))

	.dataa(vcc),
	.datab(\u_kirsch|r14_10_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r12_add11_8i4|nx62798z3 ),
	.combout(\u_kirsch|x_r12_add11_8i4|nx62798z1 ),
	.cout(\u_kirsch|x_r12_add11_8i4|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52923 .lut_mask = 16'hC30C;
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y26_N17
cycloneii_lcell_ff \u_kirsch|reg_x_r3_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|x_r3_add9_7i9|nx44952z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx56415z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r3_7_ ));

// Location: LCFF_X41_Y26_N15
cycloneii_lcell_ff \u_kirsch|reg_x_r3_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|x_r3_add9_7i9|nx43955z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx56415z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r3_6_ ));

// Location: LCFF_X40_Y25_N23
cycloneii_lcell_ff \u_kirsch|reg_x_r3_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r3_add9_7i9|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx56415z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r3_5_ ));

// Location: LCFF_X38_Y25_N25
cycloneii_lcell_ff \u_kirsch|reg_r11_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|x_r3_add9_7i9|nx45949z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx54873z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r11_8_ ));

// Location: LCFF_X38_Y24_N15
cycloneii_lcell_ff \u_kirsch|reg_r16_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r16_add9_7i11|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx34104z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r16_7_ ));

// Location: LCFF_X38_Y25_N17
cycloneii_lcell_ff \u_kirsch|reg_r11_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|x_r3_add9_7i9|nx41961z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx54873z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r11_4_ ));

// Location: LCFF_X38_Y24_N7
cycloneii_lcell_ff \u_kirsch|reg_r16_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r16_add9_7i11|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx34104z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r16_3_ ));

// Location: LCFF_X38_Y24_N5
cycloneii_lcell_ff \u_kirsch|reg_r16_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r16_add9_7i11|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx34104z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r16_2_ ));

// Location: LCFF_X38_Y24_N3
cycloneii_lcell_ff \u_kirsch|reg_r16_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r16_add9_7i11|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx34104z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r16_1_ ));

// Location: LCFF_X40_Y25_N13
cycloneii_lcell_ff \u_kirsch|reg_r11_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r3_add9_7i9|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx54873z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r11_0_ ));

// Location: LCFF_X44_Y25_N1
cycloneii_lcell_ff \u_kirsch|reg_stage1_wNw_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix13424z18832|nx100z1~_wirecell_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx13424z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|stage1_wNw_0_ ));

// Location: LCCOMB_X41_Y26_N24
cycloneii_lcell_comb \u_kirsch|ix45375z52923 (
// Equation(s):
// \u_kirsch|first_cw_9n1ss1_0_  = (!\u_kirsch|ix47369z52805|nx100z1  & \u_kirsch|stage1_wNw_0_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|ix47369z52805|nx100z1 ),
	.datad(\u_kirsch|stage1_wNw_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|first_cw_9n1ss1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix45375z52923 .lut_mask = 16'h0F00;
defparam \u_kirsch|ix45375z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y25_N0
cycloneii_lcell_comb \u_kirsch|ix1457z52923 (
// Equation(s):
// \u_kirsch|second_cw_9n2ss1_0_  = (\u_kirsch|ix64999z52807|nx100z1 ) # (\u_kirsch|stage1_eSe_2_ )

	.dataa(vcc),
	.datab(\u_kirsch|ix64999z52807|nx100z1 ),
	.datac(\u_kirsch|stage1_eSe_2_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|second_cw_9n2ss1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix1457z52923 .lut_mask = 16'hFCFC;
defparam \u_kirsch|ix1457z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y26_N21
cycloneii_lcell_ff \u_kirsch|reg_first_cw_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix47369z52805|nx100z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|first_cw_1_ ));

// Location: LCFF_X38_Y25_N27
cycloneii_lcell_ff \u_kirsch|reg_second_cw_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix64999z52807|nx100z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx64999z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|second_cw_1_ ));

// Location: LCFF_X43_Y25_N23
cycloneii_lcell_ff \u_kirsch|reg_x_r6_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r6_add9_8i2|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_2_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r6_8_ ));

// Location: LCFF_X43_Y25_N21
cycloneii_lcell_ff \u_kirsch|reg_x_r6_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r6_add9_8i2|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_2_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r6_7_ ));

// Location: LCFF_X43_Y25_N17
cycloneii_lcell_ff \u_kirsch|reg_x_r6_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r6_add9_8i2|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_2_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r6_5_ ));

// Location: LCFF_X43_Y25_N7
cycloneii_lcell_ff \u_kirsch|reg_x_r6_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r6_add9_8i2|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_2_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r6_0_ ));

// Location: LCCOMB_X42_Y25_N12
cycloneii_lcell_comb \u_kirsch|r14_add10_8i3|ix46946z52932 (
// Equation(s):
// \u_kirsch|r14_add10_8i3|nx38970z1  = (\u_kirsch|r2_1_  & ((\u_kirsch|x_r6_1_  & (\u_kirsch|r14_add10_8i3|nx46946z27  & VCC)) # (!\u_kirsch|x_r6_1_  & (!\u_kirsch|r14_add10_8i3|nx46946z27 )))) # (!\u_kirsch|r2_1_  & ((\u_kirsch|x_r6_1_  & 
// (!\u_kirsch|r14_add10_8i3|nx46946z27 )) # (!\u_kirsch|x_r6_1_  & ((\u_kirsch|r14_add10_8i3|nx46946z27 ) # (GND)))))
// \u_kirsch|r14_add10_8i3|nx46946z24  = CARRY((\u_kirsch|r2_1_  & (!\u_kirsch|x_r6_1_  & !\u_kirsch|r14_add10_8i3|nx46946z27 )) # (!\u_kirsch|r2_1_  & ((!\u_kirsch|r14_add10_8i3|nx46946z27 ) # (!\u_kirsch|x_r6_1_ ))))

	.dataa(\u_kirsch|r2_1_ ),
	.datab(\u_kirsch|x_r6_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r14_add10_8i3|nx46946z27 ),
	.combout(\u_kirsch|r14_add10_8i3|nx38970z1 ),
	.cout(\u_kirsch|r14_add10_8i3|nx46946z24 ));
// synopsys translate_off
defparam \u_kirsch|r14_add10_8i3|ix46946z52932 .lut_mask = 16'h9617;
defparam \u_kirsch|r14_add10_8i3|ix46946z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y25_N16
cycloneii_lcell_comb \u_kirsch|r14_add10_8i3|ix46946z52930 (
// Equation(s):
// \u_kirsch|r14_add10_8i3|nx40964z1  = (\u_kirsch|r2_3_  & ((\u_kirsch|x_r6_3_  & (\u_kirsch|r14_add10_8i3|nx46946z21  & VCC)) # (!\u_kirsch|x_r6_3_  & (!\u_kirsch|r14_add10_8i3|nx46946z21 )))) # (!\u_kirsch|r2_3_  & ((\u_kirsch|x_r6_3_  & 
// (!\u_kirsch|r14_add10_8i3|nx46946z21 )) # (!\u_kirsch|x_r6_3_  & ((\u_kirsch|r14_add10_8i3|nx46946z21 ) # (GND)))))
// \u_kirsch|r14_add10_8i3|nx46946z18  = CARRY((\u_kirsch|r2_3_  & (!\u_kirsch|x_r6_3_  & !\u_kirsch|r14_add10_8i3|nx46946z21 )) # (!\u_kirsch|r2_3_  & ((!\u_kirsch|r14_add10_8i3|nx46946z21 ) # (!\u_kirsch|x_r6_3_ ))))

	.dataa(\u_kirsch|r2_3_ ),
	.datab(\u_kirsch|x_r6_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r14_add10_8i3|nx46946z21 ),
	.combout(\u_kirsch|r14_add10_8i3|nx40964z1 ),
	.cout(\u_kirsch|r14_add10_8i3|nx46946z18 ));
// synopsys translate_off
defparam \u_kirsch|r14_add10_8i3|ix46946z52930 .lut_mask = 16'h9617;
defparam \u_kirsch|r14_add10_8i3|ix46946z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y25_N20
cycloneii_lcell_comb \u_kirsch|r14_add10_8i3|ix46946z52928 (
// Equation(s):
// \u_kirsch|r14_add10_8i3|nx42958z1  = (\u_kirsch|x_r6_5_  & ((\u_kirsch|r2_5_  & (\u_kirsch|r14_add10_8i3|nx46946z15  & VCC)) # (!\u_kirsch|r2_5_  & (!\u_kirsch|r14_add10_8i3|nx46946z15 )))) # (!\u_kirsch|x_r6_5_  & ((\u_kirsch|r2_5_  & 
// (!\u_kirsch|r14_add10_8i3|nx46946z15 )) # (!\u_kirsch|r2_5_  & ((\u_kirsch|r14_add10_8i3|nx46946z15 ) # (GND)))))
// \u_kirsch|r14_add10_8i3|nx46946z12  = CARRY((\u_kirsch|x_r6_5_  & (!\u_kirsch|r2_5_  & !\u_kirsch|r14_add10_8i3|nx46946z15 )) # (!\u_kirsch|x_r6_5_  & ((!\u_kirsch|r14_add10_8i3|nx46946z15 ) # (!\u_kirsch|r2_5_ ))))

	.dataa(\u_kirsch|x_r6_5_ ),
	.datab(\u_kirsch|r2_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r14_add10_8i3|nx46946z15 ),
	.combout(\u_kirsch|r14_add10_8i3|nx42958z1 ),
	.cout(\u_kirsch|r14_add10_8i3|nx46946z12 ));
// synopsys translate_off
defparam \u_kirsch|r14_add10_8i3|ix46946z52928 .lut_mask = 16'h9617;
defparam \u_kirsch|r14_add10_8i3|ix46946z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y25_N26
cycloneii_lcell_comb \u_kirsch|r14_add10_8i3|ix46946z52925 (
// Equation(s):
// \u_kirsch|r14_add10_8i3|nx45949z1  = ((\u_kirsch|x_r6_8_  $ (\u_kirsch|r2_8_  $ (!\u_kirsch|r14_add10_8i3|nx46946z6 )))) # (GND)
// \u_kirsch|r14_add10_8i3|nx46946z3  = CARRY((\u_kirsch|x_r6_8_  & ((\u_kirsch|r2_8_ ) # (!\u_kirsch|r14_add10_8i3|nx46946z6 ))) # (!\u_kirsch|x_r6_8_  & (\u_kirsch|r2_8_  & !\u_kirsch|r14_add10_8i3|nx46946z6 )))

	.dataa(\u_kirsch|x_r6_8_ ),
	.datab(\u_kirsch|r2_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r14_add10_8i3|nx46946z6 ),
	.combout(\u_kirsch|r14_add10_8i3|nx45949z1 ),
	.cout(\u_kirsch|r14_add10_8i3|nx46946z3 ));
// synopsys translate_off
defparam \u_kirsch|r14_add10_8i3|ix46946z52925 .lut_mask = 16'h698E;
defparam \u_kirsch|r14_add10_8i3|ix46946z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N30
cycloneii_lcell_comb \u_kirsch|ix51677z52943 (
// Equation(s):
// \u_kirsch|nx51677z12  = (\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z13 )))) # (!\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z13  & (\u_kirsch|c_7_ )) # (!\u_kirsch|nx51677z13  & ((\u_kirsch|e_7_ )))))

	.dataa(\u_kirsch|nx51677z11 ),
	.datab(\u_kirsch|c_7_ ),
	.datac(\u_kirsch|nx51677z13 ),
	.datad(\u_kirsch|e_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z12 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52943 .lut_mask = 16'hE5E0;
defparam \u_kirsch|ix51677z52943 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N22
cycloneii_lcell_comb \u_kirsch|ix51677z52941 (
// Equation(s):
// \u_kirsch|r2_6n3s1f2_7_  = (\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z12  & (\u_kirsch|g_7_ )) # (!\u_kirsch|nx51677z12  & ((\u_kirsch|a_7_ ))))) # (!\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z12 ))))

	.dataa(\u_kirsch|nx51677z11 ),
	.datab(\u_kirsch|g_7_ ),
	.datac(\u_kirsch|a_7_ ),
	.datad(\u_kirsch|nx51677z12 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f2_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52941 .lut_mask = 16'hDDA0;
defparam \u_kirsch|ix51677z52941 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_h_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_6_ ));

// Location: LCCOMB_X45_Y24_N20
cycloneii_lcell_comb \u_kirsch|ix51677z52928 (
// Equation(s):
// \u_kirsch|nx51677z4  = (\u_kirsch|nx51677z3  & (((\u_kirsch|h_6_ ) # (\u_kirsch|nx51677z1 )))) # (!\u_kirsch|nx51677z3  & (\u_kirsch|f_6_  & ((!\u_kirsch|nx51677z1 ))))

	.dataa(\u_kirsch|nx51677z3 ),
	.datab(\u_kirsch|f_6_ ),
	.datac(\u_kirsch|h_6_ ),
	.datad(\u_kirsch|nx51677z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52928 .lut_mask = 16'hAAE4;
defparam \u_kirsch|ix51677z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N30
cycloneii_lcell_comb \u_kirsch|ix51677z52927 (
// Equation(s):
// \u_kirsch|r2_6n3s1f1_6_  = (\u_kirsch|nx51677z4  & ((\u_kirsch|d_6_ ) # ((!\u_kirsch|nx51677z1 )))) # (!\u_kirsch|nx51677z4  & (((\u_kirsch|b_6_  & \u_kirsch|nx51677z1 ))))

	.dataa(\u_kirsch|nx51677z4 ),
	.datab(\u_kirsch|d_6_ ),
	.datac(\u_kirsch|b_6_ ),
	.datad(\u_kirsch|nx51677z1 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52927 .lut_mask = 16'hD8AA;
defparam \u_kirsch|ix51677z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N6
cycloneii_lcell_comb \u_kirsch|ix51677z52948 (
// Equation(s):
// \u_kirsch|nx51677z15  = (\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z13 )))) # (!\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z13  & ((\u_kirsch|c_5_ ))) # (!\u_kirsch|nx51677z13  & (\u_kirsch|e_5_ ))))

	.dataa(\u_kirsch|e_5_ ),
	.datab(\u_kirsch|c_5_ ),
	.datac(\u_kirsch|nx51677z11 ),
	.datad(\u_kirsch|nx51677z13 ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z15 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52948 .lut_mask = 16'hFC0A;
defparam \u_kirsch|ix51677z52948 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix51677z52947 (
// Equation(s):
// \u_kirsch|r2_6n3s1f2_5_  = (\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z15  & (\u_kirsch|g_5_ )) # (!\u_kirsch|nx51677z15  & ((\u_kirsch|a_5_ ))))) # (!\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z15 ))))

	.dataa(\u_kirsch|nx51677z11 ),
	.datab(\u_kirsch|g_5_ ),
	.datac(\u_kirsch|a_5_ ),
	.datad(\u_kirsch|nx51677z15 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f2_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52947 .lut_mask = 16'hDDA0;
defparam \u_kirsch|ix51677z52947 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y24_N13
cycloneii_lcell_ff \u_kirsch|reg_a_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_4_ ));

// Location: LCCOMB_X47_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix51677z52950 (
// Equation(s):
// \u_kirsch|nx51677z16  = (\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z13 )))) # (!\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z13  & (\u_kirsch|c_4_ )) # (!\u_kirsch|nx51677z13  & ((\u_kirsch|e_4_ )))))

	.dataa(\u_kirsch|nx51677z11 ),
	.datab(\u_kirsch|c_4_ ),
	.datac(\u_kirsch|nx51677z13 ),
	.datad(\u_kirsch|e_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z16 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52950 .lut_mask = 16'hE5E0;
defparam \u_kirsch|ix51677z52950 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N4
cycloneii_lcell_comb \u_kirsch|ix51677z52949 (
// Equation(s):
// \u_kirsch|r2_6n3s1f2_4_  = (\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z16  & ((\u_kirsch|g_4_ ))) # (!\u_kirsch|nx51677z16  & (\u_kirsch|a_4_ )))) # (!\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z16 ))))

	.dataa(\u_kirsch|nx51677z11 ),
	.datab(\u_kirsch|a_4_ ),
	.datac(\u_kirsch|g_4_ ),
	.datad(\u_kirsch|nx51677z16 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f2_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52949 .lut_mask = 16'hF588;
defparam \u_kirsch|ix51677z52949 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N0
cycloneii_lcell_comb \u_kirsch|ix51677z52934 (
// Equation(s):
// \u_kirsch|nx51677z7  = (\u_kirsch|nx51677z3  & ((\u_kirsch|h_3_ ) # ((\u_kirsch|nx51677z1 )))) # (!\u_kirsch|nx51677z3  & (((\u_kirsch|f_3_  & !\u_kirsch|nx51677z1 ))))

	.dataa(\u_kirsch|nx51677z3 ),
	.datab(\u_kirsch|h_3_ ),
	.datac(\u_kirsch|f_3_ ),
	.datad(\u_kirsch|nx51677z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z7 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52934 .lut_mask = 16'hAAD8;
defparam \u_kirsch|ix51677z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N26
cycloneii_lcell_comb \u_kirsch|ix51677z52933 (
// Equation(s):
// \u_kirsch|r2_6n3s1f1_3_  = (\u_kirsch|nx51677z1  & ((\u_kirsch|nx51677z7  & (\u_kirsch|d_3_ )) # (!\u_kirsch|nx51677z7  & ((\u_kirsch|b_3_ ))))) # (!\u_kirsch|nx51677z1  & (((\u_kirsch|nx51677z7 ))))

	.dataa(\u_kirsch|d_3_ ),
	.datab(\u_kirsch|nx51677z1 ),
	.datac(\u_kirsch|b_3_ ),
	.datad(\u_kirsch|nx51677z7 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52933 .lut_mask = 16'hBBC0;
defparam \u_kirsch|ix51677z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix51677z52936 (
// Equation(s):
// \u_kirsch|nx51677z8  = (\u_kirsch|nx51677z3  & ((\u_kirsch|h_2_ ) # ((\u_kirsch|nx51677z1 )))) # (!\u_kirsch|nx51677z3  & (((\u_kirsch|f_2_  & !\u_kirsch|nx51677z1 ))))

	.dataa(\u_kirsch|nx51677z3 ),
	.datab(\u_kirsch|h_2_ ),
	.datac(\u_kirsch|f_2_ ),
	.datad(\u_kirsch|nx51677z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z8 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52936 .lut_mask = 16'hAAD8;
defparam \u_kirsch|ix51677z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N2
cycloneii_lcell_comb \u_kirsch|ix51677z52935 (
// Equation(s):
// \u_kirsch|r2_6n3s1f1_2_  = (\u_kirsch|nx51677z1  & ((\u_kirsch|nx51677z8  & (\u_kirsch|d_2_ )) # (!\u_kirsch|nx51677z8  & ((\u_kirsch|b_2_ ))))) # (!\u_kirsch|nx51677z1  & (((\u_kirsch|nx51677z8 ))))

	.dataa(\u_kirsch|d_2_ ),
	.datab(\u_kirsch|nx51677z1 ),
	.datac(\u_kirsch|b_2_ ),
	.datad(\u_kirsch|nx51677z8 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52935 .lut_mask = 16'hBBC0;
defparam \u_kirsch|ix51677z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N2
cycloneii_lcell_comb \u_kirsch|ix51677z52938 (
// Equation(s):
// \u_kirsch|nx51677z9  = (\u_kirsch|nx51677z1  & (((\u_kirsch|nx51677z3 )))) # (!\u_kirsch|nx51677z1  & ((\u_kirsch|nx51677z3  & (\u_kirsch|h_1_ )) # (!\u_kirsch|nx51677z3  & ((\u_kirsch|f_1_ )))))

	.dataa(\u_kirsch|h_1_ ),
	.datab(\u_kirsch|nx51677z1 ),
	.datac(\u_kirsch|f_1_ ),
	.datad(\u_kirsch|nx51677z3 ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z9 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52938 .lut_mask = 16'hEE30;
defparam \u_kirsch|ix51677z52938 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix51677z52937 (
// Equation(s):
// \u_kirsch|r2_6n3s1f1_1_  = (\u_kirsch|nx51677z1  & ((\u_kirsch|nx51677z9  & (\u_kirsch|d_1_ )) # (!\u_kirsch|nx51677z9  & ((\u_kirsch|b_1_ ))))) # (!\u_kirsch|nx51677z1  & (((\u_kirsch|nx51677z9 ))))

	.dataa(\u_kirsch|d_1_ ),
	.datab(\u_kirsch|nx51677z1 ),
	.datac(\u_kirsch|b_1_ ),
	.datad(\u_kirsch|nx51677z9 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52937 .lut_mask = 16'hBBC0;
defparam \u_kirsch|ix51677z52937 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N26
cycloneii_lcell_comb \u_kirsch|ix51677z52940 (
// Equation(s):
// \u_kirsch|nx51677z10  = (\u_kirsch|nx51677z3  & ((\u_kirsch|h_0_ ) # ((\u_kirsch|nx51677z1 )))) # (!\u_kirsch|nx51677z3  & (((\u_kirsch|f_0_  & !\u_kirsch|nx51677z1 ))))

	.dataa(\u_kirsch|nx51677z3 ),
	.datab(\u_kirsch|h_0_ ),
	.datac(\u_kirsch|f_0_ ),
	.datad(\u_kirsch|nx51677z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z10 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52940 .lut_mask = 16'hAAD8;
defparam \u_kirsch|ix51677z52940 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N6
cycloneii_lcell_comb \u_kirsch|ix51677z52939 (
// Equation(s):
// \u_kirsch|r2_6n3s1f1_0_  = (\u_kirsch|nx51677z1  & ((\u_kirsch|nx51677z10  & (\u_kirsch|d_0_ )) # (!\u_kirsch|nx51677z10  & ((\u_kirsch|b_0_ ))))) # (!\u_kirsch|nx51677z1  & (((\u_kirsch|nx51677z10 ))))

	.dataa(\u_kirsch|d_0_ ),
	.datab(\u_kirsch|nx51677z1 ),
	.datac(\u_kirsch|b_0_ ),
	.datad(\u_kirsch|nx51677z10 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52939 .lut_mask = 16'hBBC0;
defparam \u_kirsch|ix51677z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y25_N5
cycloneii_lcell_ff \u_kirsch|reg_r5_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_6_~feeder_combout ),
	.sdata(\u_kirsch|b_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix13424z18832|nx100z1 ),
	.ena(\u_kirsch|nx13424z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_6_ ));

// Location: LCFF_X44_Y23_N11
cycloneii_lcell_ff \u_kirsch|reg_x_r5_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r5_6_~feeder_combout ),
	.sdata(\u_kirsch|f_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix27953z18832|nx100z1 ),
	.ena(\u_kirsch|nx27953z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r5_6_ ));

// Location: LCCOMB_X43_Y25_N4
cycloneii_lcell_comb \u_kirsch|ix8431z52924 (
// Equation(s):
// \u_kirsch|x_r3_7n3s1f1_6_  = (\u_kirsch|validBit_2_  & ((\u_kirsch|r5_6_ ))) # (!\u_kirsch|validBit_2_  & (\u_kirsch|x_r5_6_ ))

	.dataa(\u_kirsch|validBit_2_ ),
	.datab(vcc),
	.datac(\u_kirsch|x_r5_6_ ),
	.datad(\u_kirsch|r5_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r3_7n3s1f1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix8431z52924 .lut_mask = 16'hFA50;
defparam \u_kirsch|ix8431z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y25_N19
cycloneii_lcell_ff \u_kirsch|reg_r5_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_3_~feeder_combout ),
	.sdata(\u_kirsch|b_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix13424z18832|nx100z1 ),
	.ena(\u_kirsch|nx13424z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_3_ ));

// Location: LCFF_X44_Y23_N9
cycloneii_lcell_ff \u_kirsch|reg_x_r5_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r5_3_~feeder_combout ),
	.sdata(\u_kirsch|f_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix27953z18832|nx100z1 ),
	.ena(\u_kirsch|nx27953z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r5_3_ ));

// Location: LCCOMB_X43_Y25_N30
cycloneii_lcell_comb \u_kirsch|ix8431z52927 (
// Equation(s):
// \u_kirsch|x_r3_7n3s1f1_3_  = (\u_kirsch|validBit_2_  & (\u_kirsch|r5_3_ )) # (!\u_kirsch|validBit_2_  & ((\u_kirsch|x_r5_3_ )))

	.dataa(vcc),
	.datab(\u_kirsch|r5_3_ ),
	.datac(\u_kirsch|x_r5_3_ ),
	.datad(\u_kirsch|validBit_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r3_7n3s1f1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix8431z52927 .lut_mask = 16'hCCF0;
defparam \u_kirsch|ix8431z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y25_N21
cycloneii_lcell_ff \u_kirsch|reg_r5_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_2_~feeder_combout ),
	.sdata(\u_kirsch|b_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix13424z18832|nx100z1 ),
	.ena(\u_kirsch|nx13424z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_2_ ));

// Location: LCFF_X44_Y23_N27
cycloneii_lcell_ff \u_kirsch|reg_x_r5_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r5_2_~feeder_combout ),
	.sdata(\u_kirsch|f_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix27953z18832|nx100z1 ),
	.ena(\u_kirsch|nx27953z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r5_2_ ));

// Location: LCCOMB_X40_Y25_N10
cycloneii_lcell_comb \u_kirsch|ix8431z52928 (
// Equation(s):
// \u_kirsch|x_r3_7n3s1f1_2_  = (\u_kirsch|validBit_2_  & ((\u_kirsch|r5_2_ ))) # (!\u_kirsch|validBit_2_  & (\u_kirsch|x_r5_2_ ))

	.dataa(vcc),
	.datab(\u_kirsch|validBit_2_ ),
	.datac(\u_kirsch|x_r5_2_ ),
	.datad(\u_kirsch|r5_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r3_7n3s1f1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix8431z52928 .lut_mask = 16'hFC30;
defparam \u_kirsch|ix8431z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y26_N21
cycloneii_lcell_ff \u_kirsch|reg_r10_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r10_6_~feeder_combout ),
	.sdata(\u_kirsch|d_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix11593z18833|nx100z1 ),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r10_6_ ));

// Location: LCFF_X42_Y26_N25
cycloneii_lcell_ff \u_kirsch|reg_r10_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r10_4_~feeder_combout ),
	.sdata(\u_kirsch|d_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix11593z18833|nx100z1 ),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r10_4_ ));

// Location: LCFF_X41_Y23_N25
cycloneii_lcell_ff \u_kirsch|reg_r10_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r10_3_~feeder_combout ),
	.sdata(\u_kirsch|d_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix11593z18833|nx100z1 ),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r10_3_ ));

// Location: LCFF_X42_Y24_N5
cycloneii_lcell_ff \u_kirsch|reg_r9_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add8_6i49|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_2_ ));

// Location: LCFF_X42_Y26_N29
cycloneii_lcell_ff \u_kirsch|reg_r10_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r10_1_~feeder_combout ),
	.sdata(\u_kirsch|d_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix11593z18833|nx100z1 ),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r10_1_ ));

// Location: LCFF_X42_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_r9_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add8_6i49|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_0_ ));

// Location: LCFF_X40_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_r12_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r12_7_~feeder_combout ),
	.sdata(\u_kirsch|h_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix7951z18830|nx100z1 ),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r12_7_ ));

// Location: LCFF_X40_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_r12_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r12_6_~feeder_combout ),
	.sdata(\u_kirsch|h_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix7951z18830|nx100z1 ),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r12_6_ ));

// Location: LCFF_X38_Y24_N25
cycloneii_lcell_ff \u_kirsch|reg_r12_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r12_4_~feeder_combout ),
	.sdata(\u_kirsch|h_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix7951z18830|nx100z1 ),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r12_4_ ));

// Location: LCFF_X38_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_r12_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r12_1_~feeder_combout ),
	.sdata(\u_kirsch|h_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix7951z18830|nx100z1 ),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r12_1_ ));

// Location: LCFF_X38_Y24_N23
cycloneii_lcell_ff \u_kirsch|reg_r12_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r12_0_~feeder_combout ),
	.sdata(\u_kirsch|h_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix7951z18830|nx100z1 ),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r12_0_ ));

// Location: LCCOMB_X38_Y24_N2
cycloneii_lcell_comb \u_kirsch|r16_add9_7i11|ix45949z52931 (
// Equation(s):
// \u_kirsch|r16_add9_7i11|nx38970z1  = (\u_kirsch|r12_1_  & ((\u_kirsch|r13_1_  & (\u_kirsch|r16_add9_7i11|nx45949z24  & VCC)) # (!\u_kirsch|r13_1_  & (!\u_kirsch|r16_add9_7i11|nx45949z24 )))) # (!\u_kirsch|r12_1_  & ((\u_kirsch|r13_1_  & 
// (!\u_kirsch|r16_add9_7i11|nx45949z24 )) # (!\u_kirsch|r13_1_  & ((\u_kirsch|r16_add9_7i11|nx45949z24 ) # (GND)))))
// \u_kirsch|r16_add9_7i11|nx45949z21  = CARRY((\u_kirsch|r12_1_  & (!\u_kirsch|r13_1_  & !\u_kirsch|r16_add9_7i11|nx45949z24 )) # (!\u_kirsch|r12_1_  & ((!\u_kirsch|r16_add9_7i11|nx45949z24 ) # (!\u_kirsch|r13_1_ ))))

	.dataa(\u_kirsch|r12_1_ ),
	.datab(\u_kirsch|r13_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r16_add9_7i11|nx45949z24 ),
	.combout(\u_kirsch|r16_add9_7i11|nx38970z1 ),
	.cout(\u_kirsch|r16_add9_7i11|nx45949z21 ));
// synopsys translate_off
defparam \u_kirsch|r16_add9_7i11|ix45949z52931 .lut_mask = 16'h9617;
defparam \u_kirsch|r16_add9_7i11|ix45949z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N4
cycloneii_lcell_comb \u_kirsch|r16_add9_7i11|ix45949z52930 (
// Equation(s):
// \u_kirsch|r16_add9_7i11|nx39967z1  = ((\u_kirsch|r13_2_  $ (\u_kirsch|r12_2_  $ (!\u_kirsch|r16_add9_7i11|nx45949z21 )))) # (GND)
// \u_kirsch|r16_add9_7i11|nx45949z18  = CARRY((\u_kirsch|r13_2_  & ((\u_kirsch|r12_2_ ) # (!\u_kirsch|r16_add9_7i11|nx45949z21 ))) # (!\u_kirsch|r13_2_  & (\u_kirsch|r12_2_  & !\u_kirsch|r16_add9_7i11|nx45949z21 )))

	.dataa(\u_kirsch|r13_2_ ),
	.datab(\u_kirsch|r12_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r16_add9_7i11|nx45949z21 ),
	.combout(\u_kirsch|r16_add9_7i11|nx39967z1 ),
	.cout(\u_kirsch|r16_add9_7i11|nx45949z18 ));
// synopsys translate_off
defparam \u_kirsch|r16_add9_7i11|ix45949z52930 .lut_mask = 16'h698E;
defparam \u_kirsch|r16_add9_7i11|ix45949z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N6
cycloneii_lcell_comb \u_kirsch|r16_add9_7i11|ix45949z52929 (
// Equation(s):
// \u_kirsch|r16_add9_7i11|nx40964z1  = (\u_kirsch|r13_3_  & ((\u_kirsch|r12_3_  & (\u_kirsch|r16_add9_7i11|nx45949z18  & VCC)) # (!\u_kirsch|r12_3_  & (!\u_kirsch|r16_add9_7i11|nx45949z18 )))) # (!\u_kirsch|r13_3_  & ((\u_kirsch|r12_3_  & 
// (!\u_kirsch|r16_add9_7i11|nx45949z18 )) # (!\u_kirsch|r12_3_  & ((\u_kirsch|r16_add9_7i11|nx45949z18 ) # (GND)))))
// \u_kirsch|r16_add9_7i11|nx45949z15  = CARRY((\u_kirsch|r13_3_  & (!\u_kirsch|r12_3_  & !\u_kirsch|r16_add9_7i11|nx45949z18 )) # (!\u_kirsch|r13_3_  & ((!\u_kirsch|r16_add9_7i11|nx45949z18 ) # (!\u_kirsch|r12_3_ ))))

	.dataa(\u_kirsch|r13_3_ ),
	.datab(\u_kirsch|r12_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r16_add9_7i11|nx45949z18 ),
	.combout(\u_kirsch|r16_add9_7i11|nx40964z1 ),
	.cout(\u_kirsch|r16_add9_7i11|nx45949z15 ));
// synopsys translate_off
defparam \u_kirsch|r16_add9_7i11|ix45949z52929 .lut_mask = 16'h9617;
defparam \u_kirsch|r16_add9_7i11|ix45949z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N14
cycloneii_lcell_comb \u_kirsch|r16_add9_7i11|ix45949z52925 (
// Equation(s):
// \u_kirsch|r16_add9_7i11|nx44952z1  = (\u_kirsch|r12_7_  & ((\u_kirsch|r13_7_  & (\u_kirsch|r16_add9_7i11|nx45949z6  & VCC)) # (!\u_kirsch|r13_7_  & (!\u_kirsch|r16_add9_7i11|nx45949z6 )))) # (!\u_kirsch|r12_7_  & ((\u_kirsch|r13_7_  & 
// (!\u_kirsch|r16_add9_7i11|nx45949z6 )) # (!\u_kirsch|r13_7_  & ((\u_kirsch|r16_add9_7i11|nx45949z6 ) # (GND)))))
// \u_kirsch|r16_add9_7i11|nx45949z3  = CARRY((\u_kirsch|r12_7_  & (!\u_kirsch|r13_7_  & !\u_kirsch|r16_add9_7i11|nx45949z6 )) # (!\u_kirsch|r12_7_  & ((!\u_kirsch|r16_add9_7i11|nx45949z6 ) # (!\u_kirsch|r13_7_ ))))

	.dataa(\u_kirsch|r12_7_ ),
	.datab(\u_kirsch|r13_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r16_add9_7i11|nx45949z6 ),
	.combout(\u_kirsch|r16_add9_7i11|nx44952z1 ),
	.cout(\u_kirsch|r16_add9_7i11|nx45949z3 ));
// synopsys translate_off
defparam \u_kirsch|r16_add9_7i11|ix45949z52925 .lut_mask = 16'h9617;
defparam \u_kirsch|r16_add9_7i11|ix45949z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X40_Y26_N5
cycloneii_lcell_ff \u_kirsch|reg_first_cw_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|first_cw_2_~feeder_combout ),
	.sdata(\u_kirsch|stage1_nNe_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix47369z52805|nx100z1 ),
	.ena(\u_kirsch|validBit_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|first_cw_2_ ));

// Location: LCCOMB_X43_Y25_N6
cycloneii_lcell_comb \u_kirsch|x_r6_add9_8i2|ix45949z52932 (
// Equation(s):
// \u_kirsch|x_r6_add9_8i2|nx37973z1  = (\u_kirsch|r9_0_  & (\u_kirsch|r2_0_  $ (VCC))) # (!\u_kirsch|r9_0_  & (\u_kirsch|r2_0_  & VCC))
// \u_kirsch|x_r6_add9_8i2|nx45949z25  = CARRY((\u_kirsch|r9_0_  & \u_kirsch|r2_0_ ))

	.dataa(\u_kirsch|r9_0_ ),
	.datab(\u_kirsch|r2_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|x_r6_add9_8i2|nx37973z1 ),
	.cout(\u_kirsch|x_r6_add9_8i2|nx45949z25 ));
// synopsys translate_off
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52932 .lut_mask = 16'h6688;
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y25_N16
cycloneii_lcell_comb \u_kirsch|x_r6_add9_8i2|ix45949z52927 (
// Equation(s):
// \u_kirsch|x_r6_add9_8i2|nx42958z1  = (\u_kirsch|r2_5_  & ((\u_kirsch|r9_5_  & (\u_kirsch|x_r6_add9_8i2|nx45949z13  & VCC)) # (!\u_kirsch|r9_5_  & (!\u_kirsch|x_r6_add9_8i2|nx45949z13 )))) # (!\u_kirsch|r2_5_  & ((\u_kirsch|r9_5_  & 
// (!\u_kirsch|x_r6_add9_8i2|nx45949z13 )) # (!\u_kirsch|r9_5_  & ((\u_kirsch|x_r6_add9_8i2|nx45949z13 ) # (GND)))))
// \u_kirsch|x_r6_add9_8i2|nx45949z10  = CARRY((\u_kirsch|r2_5_  & (!\u_kirsch|r9_5_  & !\u_kirsch|x_r6_add9_8i2|nx45949z13 )) # (!\u_kirsch|r2_5_  & ((!\u_kirsch|x_r6_add9_8i2|nx45949z13 ) # (!\u_kirsch|r9_5_ ))))

	.dataa(\u_kirsch|r2_5_ ),
	.datab(\u_kirsch|r9_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r6_add9_8i2|nx45949z13 ),
	.combout(\u_kirsch|x_r6_add9_8i2|nx42958z1 ),
	.cout(\u_kirsch|x_r6_add9_8i2|nx45949z10 ));
// synopsys translate_off
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52927 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y25_N20
cycloneii_lcell_comb \u_kirsch|x_r6_add9_8i2|ix45949z52925 (
// Equation(s):
// \u_kirsch|x_r6_add9_8i2|nx44952z1  = (\u_kirsch|r2_7_  & ((\u_kirsch|r9_7_  & (\u_kirsch|x_r6_add9_8i2|nx45949z7  & VCC)) # (!\u_kirsch|r9_7_  & (!\u_kirsch|x_r6_add9_8i2|nx45949z7 )))) # (!\u_kirsch|r2_7_  & ((\u_kirsch|r9_7_  & 
// (!\u_kirsch|x_r6_add9_8i2|nx45949z7 )) # (!\u_kirsch|r9_7_  & ((\u_kirsch|x_r6_add9_8i2|nx45949z7 ) # (GND)))))
// \u_kirsch|x_r6_add9_8i2|nx45949z4  = CARRY((\u_kirsch|r2_7_  & (!\u_kirsch|r9_7_  & !\u_kirsch|x_r6_add9_8i2|nx45949z7 )) # (!\u_kirsch|r2_7_  & ((!\u_kirsch|x_r6_add9_8i2|nx45949z7 ) # (!\u_kirsch|r9_7_ ))))

	.dataa(\u_kirsch|r2_7_ ),
	.datab(\u_kirsch|r9_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r6_add9_8i2|nx45949z7 ),
	.combout(\u_kirsch|x_r6_add9_8i2|nx44952z1 ),
	.cout(\u_kirsch|x_r6_add9_8i2|nx45949z4 ));
// synopsys translate_off
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52925 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y25_N22
cycloneii_lcell_comb \u_kirsch|x_r6_add9_8i2|ix45949z52923 (
// Equation(s):
// \u_kirsch|x_r6_add9_8i2|nx45949z1  = ((\u_kirsch|r2_8_  $ (\u_kirsch|r9_8_  $ (!\u_kirsch|x_r6_add9_8i2|nx45949z4 )))) # (GND)
// \u_kirsch|x_r6_add9_8i2|nx23445z2  = CARRY((\u_kirsch|r2_8_  & ((\u_kirsch|r9_8_ ) # (!\u_kirsch|x_r6_add9_8i2|nx45949z4 ))) # (!\u_kirsch|r2_8_  & (\u_kirsch|r9_8_  & !\u_kirsch|x_r6_add9_8i2|nx45949z4 )))

	.dataa(\u_kirsch|r2_8_ ),
	.datab(\u_kirsch|r9_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r6_add9_8i2|nx45949z4 ),
	.combout(\u_kirsch|x_r6_add9_8i2|nx45949z1 ),
	.cout(\u_kirsch|x_r6_add9_8i2|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52923 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X46_Y24_N11
cycloneii_lcell_ff \u_kirsch|reg_i_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|d_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_6_ ));

// Location: LCFF_X47_Y23_N15
cycloneii_lcell_ff \u_uw_uart|reg_rdata_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_3_ ));

// Location: M4K_X52_Y23
cycloneii_ram_block \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 (
	.portawe(\u_kirsch|we_1_ ),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\clk~clkctrl_outclk ),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({\u_uw_uart|datain_7_ ,\u_uw_uart|datain_6_ ,\u_uw_uart|datain_5_ ,\u_uw_uart|datain_4_ ,\u_uw_uart|datain_3_ ,\u_uw_uart|datain_2_ ,\u_uw_uart|datain_1_ ,\u_uw_uart|datain_0_ }),
	.portaaddr({\u_kirsch|modgen_counter_col|nx1041z1 ,\u_kirsch|modgen_counter_col|nx58250z3 ,\u_kirsch|modgen_counter_col|nx58250z5 ,\u_kirsch|modgen_counter_col|nx58250z7 ,\u_kirsch|modgen_counter_col|nx58250z9 ,\u_kirsch|modgen_counter_col|nx58250z11 ,
\u_kirsch|modgen_counter_col|nx58250z13 ,\u_kirsch|modgen_counter_col|nx58250z15 }),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus ),
	.portbdataout());
// synopsys translate_off
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .logical_ram_name = "kirsch_notri:u_kirsch|ram_dq_8_1:Generate_mem_1_u_mem0_mem|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .operation_mode = "single_port";
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_address_width = 8;
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_data_width = 8;
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_last_address = 255;
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 256;
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_logical_ram_width = 8;
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_b_address_width = 8;
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .port_b_data_width = 8;
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
// synopsys translate_on

// Location: M4K_X52_Y22
cycloneii_ram_block \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 (
	.portawe(\u_kirsch|we_0_ ),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\clk~clkctrl_outclk ),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({\u_uw_uart|datain_7_ ,\u_uw_uart|datain_6_ ,\u_uw_uart|datain_5_ ,\u_uw_uart|datain_4_ ,\u_uw_uart|datain_3_ ,\u_uw_uart|datain_2_ ,\u_uw_uart|datain_1_ ,\u_uw_uart|datain_0_ }),
	.portaaddr({\u_kirsch|modgen_counter_col|nx1041z1 ,\u_kirsch|modgen_counter_col|nx58250z3 ,\u_kirsch|modgen_counter_col|nx58250z5 ,\u_kirsch|modgen_counter_col|nx58250z7 ,\u_kirsch|modgen_counter_col|nx58250z9 ,\u_kirsch|modgen_counter_col|nx58250z11 ,
\u_kirsch|modgen_counter_col|nx58250z13 ,\u_kirsch|modgen_counter_col|nx58250z15 }),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus ),
	.portbdataout());
// synopsys translate_off
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .logical_ram_name = "kirsch_notri:u_kirsch|ram_dq_8_0:Generate_mem_0_u_mem0_mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .operation_mode = "single_port";
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_address_width = 8;
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_data_width = 8;
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_last_address = 255;
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 256;
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_logical_ram_width = 8;
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_b_address_width = 8;
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .port_b_data_width = 8;
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCFF_X44_Y24_N23
cycloneii_lcell_ff \u_kirsch|reg_stage1_wNw_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix13424z18832|nx100z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx13424z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|stage1_wNw_2_ ));

// Location: LCFF_X43_Y24_N19
cycloneii_lcell_ff \u_kirsch|reg_stage1_nNe_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix11593z18833|nx100z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|stage1_nNe_2_ ));

// Location: LCCOMB_X48_Y23_N28
cycloneii_lcell_comb \u_kirsch|ix62017z52923 (
// Equation(s):
// \u_kirsch|we_1_  = (\u_kirsch|state_1_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|state_1_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_kirsch|we_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix62017z52923 .lut_mask = 16'hF000;
defparam \u_kirsch|ix62017z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N14
cycloneii_lcell_comb \u_kirsch|ix7740z52923 (
// Equation(s):
// \u_kirsch|we_0_  = (!\u_kirsch|nx20492z2  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(\u_kirsch|nx20492z2 ),
	.datac(vcc),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_kirsch|we_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix7740z52923 .lut_mask = 16'h3300;
defparam \u_kirsch|ix7740z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N8
cycloneii_lcell_comb \u_kirsch|ix64834z52923 (
// Equation(s):
// \u_kirsch|we_2_  = (\u_kirsch|state_2_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|state_2_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_kirsch|we_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix64834z52923 .lut_mask = 16'hF000;
defparam \u_kirsch|ix64834z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_3_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_3_ ));

// Location: LCCOMB_X44_Y25_N0
cycloneii_lcell_comb \u_kirsch|ix13424z18832|nx100z1~_wirecell (
// Equation(s):
// \u_kirsch|ix13424z18832|nx100z1~_wirecell_combout  = !\u_kirsch|ix13424z18832|nx100z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|ix13424z18832|nx100z1 ),
	.cin(gnd),
	.combout(\u_kirsch|ix13424z18832|nx100z1~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix13424z18832|nx100z1~_wirecell .lut_mask = 16'h00FF;
defparam \u_kirsch|ix13424z18832|nx100z1~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N6
cycloneii_lcell_comb \u_uw_uart|sdout_0_~feeder (
// Equation(s):
// \u_uw_uart|sdout_0_~feeder_combout  = \u_uw_uart|mdata_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N16
cycloneii_lcell_comb \u_uw_uart|mdata_0_~feeder (
// Equation(s):
// \u_uw_uart|mdata_0_~feeder_combout  = \u_kirsch|p_o_edge 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|p_o_edge ),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|mdata_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|mdata_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N0
cycloneii_lcell_comb \u_uw_uart|sdout_2_~feeder (
// Equation(s):
// \u_uw_uart|sdout_2_~feeder_combout  = \u_uw_uart|mdata_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_2_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y26_N0
cycloneii_lcell_comb \u_kirsch|r18_9_~feeder (
// Equation(s):
// \u_kirsch|r18_9_~feeder_combout  = \u_kirsch|r15_9_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r15_9_ ),
	.cin(gnd),
	.combout(\u_kirsch|r18_9_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r18_9_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r18_9_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y26_N0
cycloneii_lcell_comb \u_kirsch|r18_8_~feeder (
// Equation(s):
// \u_kirsch|r18_8_~feeder_combout  = \u_kirsch|r15_8_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r15_8_ ),
	.cin(gnd),
	.combout(\u_kirsch|r18_8_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r18_8_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r18_8_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y26_N2
cycloneii_lcell_comb \u_kirsch|r18_7_~feeder (
// Equation(s):
// \u_kirsch|r18_7_~feeder_combout  = \u_kirsch|r15_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r15_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|r18_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r18_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r18_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y26_N26
cycloneii_lcell_comb \u_kirsch|r18_6_~feeder (
// Equation(s):
// \u_kirsch|r18_6_~feeder_combout  = \u_kirsch|r15_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r15_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|r18_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r18_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r18_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y26_N12
cycloneii_lcell_comb \u_kirsch|r18_5_~feeder (
// Equation(s):
// \u_kirsch|r18_5_~feeder_combout  = \u_kirsch|r15_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r15_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|r18_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r18_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r18_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y26_N22
cycloneii_lcell_comb \u_kirsch|r18_3_~feeder (
// Equation(s):
// \u_kirsch|r18_3_~feeder_combout  = \u_kirsch|r15_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r15_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|r18_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r18_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r18_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y26_N26
cycloneii_lcell_comb \u_kirsch|r18_2_~feeder (
// Equation(s):
// \u_kirsch|r18_2_~feeder_combout  = \u_kirsch|r15_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r15_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|r18_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r18_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r18_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y26_N24
cycloneii_lcell_comb \u_kirsch|r18_1_~feeder (
// Equation(s):
// \u_kirsch|r18_1_~feeder_combout  = \u_kirsch|r15_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r15_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|r18_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r18_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r18_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y26_N4
cycloneii_lcell_comb \u_kirsch|r18_0_~feeder (
// Equation(s):
// \u_kirsch|r18_0_~feeder_combout  = \u_kirsch|r15_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r15_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|r18_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r18_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r18_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y26_N18
cycloneii_lcell_comb \u_kirsch|final_dir_0_~feeder (
// Equation(s):
// \u_kirsch|final_dir_0_~feeder_combout  = \u_kirsch|first_cw_0_ 

	.dataa(\u_kirsch|first_cw_0_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|final_dir_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|final_dir_0_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|final_dir_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y26_N6
cycloneii_lcell_comb \u_kirsch|r15_6_~feeder (
// Equation(s):
// \u_kirsch|r15_6_~feeder_combout  = \u_kirsch|x_r3_6_ 

	.dataa(vcc),
	.datab(\u_kirsch|x_r3_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r15_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r15_6_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r15_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y26_N16
cycloneii_lcell_comb \u_kirsch|r15_5_~feeder (
// Equation(s):
// \u_kirsch|r15_5_~feeder_combout  = \u_kirsch|x_r3_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|x_r3_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|r15_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r15_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r15_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y25_N18
cycloneii_lcell_comb \u_kirsch|x_r11_8_~feeder (
// Equation(s):
// \u_kirsch|x_r11_8_~feeder_combout  = \u_kirsch|r11_8_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r11_8_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r11_8_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r11_8_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r11_8_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y25_N28
cycloneii_lcell_comb \u_kirsch|x_r11_7_~feeder (
// Equation(s):
// \u_kirsch|x_r11_7_~feeder_combout  = \u_kirsch|r11_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r11_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r11_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r11_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r11_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y25_N20
cycloneii_lcell_comb \u_kirsch|x_r11_3_~feeder (
// Equation(s):
// \u_kirsch|x_r11_3_~feeder_combout  = \u_kirsch|r11_3_ 

	.dataa(vcc),
	.datab(\u_kirsch|r11_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|x_r11_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r11_3_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|x_r11_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y25_N6
cycloneii_lcell_comb \u_kirsch|x_r11_2_~feeder (
// Equation(s):
// \u_kirsch|x_r11_2_~feeder_combout  = \u_kirsch|r11_2_ 

	.dataa(\u_kirsch|r11_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|x_r11_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r11_2_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|x_r11_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y25_N8
cycloneii_lcell_comb \u_kirsch|x_r11_1_~feeder (
// Equation(s):
// \u_kirsch|x_r11_1_~feeder_combout  = \u_kirsch|r11_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r11_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r11_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r11_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r11_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y25_N2
cycloneii_lcell_comb \u_kirsch|x_r11_0_~feeder (
// Equation(s):
// \u_kirsch|x_r11_0_~feeder_combout  = \u_kirsch|r11_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r11_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r11_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r11_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r11_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y26_N4
cycloneii_lcell_comb \u_kirsch|final_dir_1_~feeder (
// Equation(s):
// \u_kirsch|final_dir_1_~feeder_combout  = \u_kirsch|first_cw_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|first_cw_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|final_dir_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|final_dir_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|final_dir_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y24_N0
cycloneii_lcell_comb \u_kirsch|r12_7_~feeder (
// Equation(s):
// \u_kirsch|r12_7_~feeder_combout  = \u_kirsch|e_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|e_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|r12_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r12_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r12_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y25_N4
cycloneii_lcell_comb \u_kirsch|r5_6_~feeder (
// Equation(s):
// \u_kirsch|r5_6_~feeder_combout  = \u_kirsch|g_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|g_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|r5_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r5_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y26_N20
cycloneii_lcell_comb \u_kirsch|r10_6_~feeder (
// Equation(s):
// \u_kirsch|r10_6_~feeder_combout  = \u_kirsch|a_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|a_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|r10_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r10_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r10_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N10
cycloneii_lcell_comb \u_kirsch|x_r5_6_~feeder (
// Equation(s):
// \u_kirsch|x_r5_6_~feeder_combout  = \u_kirsch|c_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|c_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r5_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r5_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r5_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y24_N26
cycloneii_lcell_comb \u_kirsch|r12_6_~feeder (
// Equation(s):
// \u_kirsch|r12_6_~feeder_combout  = \u_kirsch|e_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|e_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|r12_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r12_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r12_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y26_N24
cycloneii_lcell_comb \u_kirsch|r10_4_~feeder (
// Equation(s):
// \u_kirsch|r10_4_~feeder_combout  = \u_kirsch|a_4_ 

	.dataa(vcc),
	.datab(\u_kirsch|a_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r10_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r10_4_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r10_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N24
cycloneii_lcell_comb \u_kirsch|r12_4_~feeder (
// Equation(s):
// \u_kirsch|r12_4_~feeder_combout  = \u_kirsch|e_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|e_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|r12_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r12_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r12_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y25_N18
cycloneii_lcell_comb \u_kirsch|r5_3_~feeder (
// Equation(s):
// \u_kirsch|r5_3_~feeder_combout  = \u_kirsch|g_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|g_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|r5_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r5_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y23_N24
cycloneii_lcell_comb \u_kirsch|r10_3_~feeder (
// Equation(s):
// \u_kirsch|r10_3_~feeder_combout  = \u_kirsch|a_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|a_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|r10_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r10_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r10_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N8
cycloneii_lcell_comb \u_kirsch|x_r5_3_~feeder (
// Equation(s):
// \u_kirsch|x_r5_3_~feeder_combout  = \u_kirsch|c_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|c_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r5_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r5_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r5_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y25_N20
cycloneii_lcell_comb \u_kirsch|r5_2_~feeder (
// Equation(s):
// \u_kirsch|r5_2_~feeder_combout  = \u_kirsch|g_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|g_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|r5_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r5_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N26
cycloneii_lcell_comb \u_kirsch|x_r5_2_~feeder (
// Equation(s):
// \u_kirsch|x_r5_2_~feeder_combout  = \u_kirsch|c_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|c_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r5_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r5_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r5_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y26_N28
cycloneii_lcell_comb \u_kirsch|r10_1_~feeder (
// Equation(s):
// \u_kirsch|r10_1_~feeder_combout  = \u_kirsch|a_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|a_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|r10_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r10_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r10_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N20
cycloneii_lcell_comb \u_kirsch|r12_1_~feeder (
// Equation(s):
// \u_kirsch|r12_1_~feeder_combout  = \u_kirsch|e_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|e_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|r12_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r12_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r12_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N22
cycloneii_lcell_comb \u_kirsch|r12_0_~feeder (
// Equation(s):
// \u_kirsch|r12_0_~feeder_combout  = \u_kirsch|e_0_ 

	.dataa(vcc),
	.datab(\u_kirsch|e_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r12_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r12_0_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r12_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y26_N4
cycloneii_lcell_comb \u_kirsch|first_cw_2_~feeder (
// Equation(s):
// \u_kirsch|first_cw_2_~feeder_combout  = \u_kirsch|stage1_wNw_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|stage1_wNw_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|first_cw_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|first_cw_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|first_cw_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N14
cycloneii_lcell_comb \u_uw_uart|rdata_3_~feeder (
// Equation(s):
// \u_uw_uart|rdata_3_~feeder_combout  = \u_uw_uart|i_uarts|Dout_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_3_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|TxDivisor_5_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout  = VCC

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|TxDivisor_5_~feeder .lut_mask = 16'hFFFF;
defparam \u_uw_uart|i_uarts|TxDivisor_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io clk_ibuf(
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
	.combout(\clk~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(clk));
// synopsys translate_off
defparam clk_ibuf.input_async_reset = "none";
defparam clk_ibuf.input_power_up = "low";
defparam clk_ibuf.input_register_mode = "none";
defparam clk_ibuf.input_sync_reset = "none";
defparam clk_ibuf.oe_async_reset = "none";
defparam clk_ibuf.oe_power_up = "low";
defparam clk_ibuf.oe_register_mode = "none";
defparam clk_ibuf.oe_sync_reset = "none";
defparam clk_ibuf.operation_mode = "input";
defparam clk_ibuf.output_async_reset = "none";
defparam clk_ibuf.output_power_up = "low";
defparam clk_ibuf.output_register_mode = "none";
defparam clk_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: CLKCTRL_G2
cycloneii_clkctrl \clk~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,\clk~combout }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clk~clkctrl_outclk ));
// synopsys translate_off
defparam \clk~clkctrl .clock_type = "global clock";
defparam \clk~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X43_Y22_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52935 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23  $ (VCC)
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22  = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52935 .lut_mask = 16'h33CC;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io nrst_ibuf(
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
	.combout(\nrst~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(nrst));
// synopsys translate_off
defparam nrst_ibuf.input_async_reset = "none";
defparam nrst_ibuf.input_power_up = "low";
defparam nrst_ibuf.input_register_mode = "none";
defparam nrst_ibuf.input_sync_reset = "none";
defparam nrst_ibuf.oe_async_reset = "none";
defparam nrst_ibuf.oe_power_up = "low";
defparam nrst_ibuf.oe_register_mode = "none";
defparam nrst_ibuf.oe_sync_reset = "none";
defparam nrst_ibuf.operation_mode = "input";
defparam nrst_ibuf.output_async_reset = "none";
defparam nrst_ibuf.output_power_up = "low";
defparam nrst_ibuf.output_register_mode = "none";
defparam nrst_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: LCFF_X43_Y22_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ));

// Location: LCCOMB_X43_Y22_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52934 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1  = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21  & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22 )) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21  & 
// ((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22 ) # (GND)))
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20  = CARRY((!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22 ) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52934 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y22_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52933 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1  = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20  $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19  & 
// (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20  & VCC))
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18  = CARRY((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52933 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X43_Y22_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ));

// Location: LCCOMB_X43_Y22_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52931 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1  = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16  $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & 
// (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16  & VCC))
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14  = CARRY((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16 ))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52931 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y22_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1  = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13  & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14 )) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13  & 
// ((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14 ) # (GND)))
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12  = CARRY((!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14 ) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52930 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X43_Y22_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ));

// Location: LCCOMB_X43_Y22_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1  = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12  $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11  & 
// (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12  & VCC))
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10  = CARRY((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12 ))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52929 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y22_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1  = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9  & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10 )) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9  & 
// ((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10 ) # (GND)))
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8  = CARRY((!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10 ) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52928 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X43_Y22_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ));

// Location: LCCOMB_X43_Y22_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1  = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8  $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & 
// (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8  & VCC))
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6  = CARRY((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8 ))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52927 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X43_Y22_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ));

// Location: LCFF_X43_Y22_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ));

// Location: LCCOMB_X44_Y22_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z6  = (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13  & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9  & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 )))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52928 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix32400z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ));

// Location: LCFF_X43_Y22_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ));

// Location: LCCOMB_X44_Y22_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z7  = (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17  & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 )))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52929 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix32400z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y22_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1  = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5  & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6 )) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5  & 
// ((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6 ) # (GND)))
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4  = CARRY((!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6 ) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52926 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X43_Y22_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ));

// Location: LCCOMB_X43_Y22_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1  = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4  $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3  & 
// (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4  & VCC))
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2  = CARRY((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4 ))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52925 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y22_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2  $ (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X43_Y22_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ));

// Location: LCFF_X43_Y22_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ));

// Location: LCCOMB_X44_Y22_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52931 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z9  = (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z9 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52931 .lut_mask = 16'h0033;
defparam \u_uw_uart|i_uarts|ix32400z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y22_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z8  = (!\u_uw_uart|i_uarts|TxDivisor_5_  & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1  & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23  & \u_uw_uart|i_uarts|nx32400z9 )))

	.dataa(\u_uw_uart|i_uarts|TxDivisor_5_ ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ),
	.datad(\u_uw_uart|i_uarts|nx32400z9 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z8 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52930 .lut_mask = 16'h0100;
defparam \u_uw_uart|i_uarts|ix32400z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y22_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z1  = (\u_uw_uart|i_uarts|nx32400z2 ) # ((\u_uw_uart|i_uarts|nx32400z6  & (\u_uw_uart|i_uarts|nx32400z7  & \u_uw_uart|i_uarts|nx32400z8 )))

	.dataa(\u_uw_uart|i_uarts|nx32400z2 ),
	.datab(\u_uw_uart|i_uarts|nx32400z6 ),
	.datac(\u_uw_uart|i_uarts|nx32400z7 ),
	.datad(\u_uw_uart|i_uarts|nx32400z8 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52923 .lut_mask = 16'hEAAA;
defparam \u_uw_uart|i_uarts|ix32400z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y22_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TopTx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx32400z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TopTx ));

// Location: LCCOMB_X38_Y23_N2
cycloneii_lcell_comb \u_kirsch|p_o_mode_1_~feeder (
// Equation(s):
// \u_kirsch|p_o_mode_1_~feeder_combout  = VCC

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|p_o_mode_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|p_o_mode_1_~feeder .lut_mask = 16'hFFFF;
defparam \u_kirsch|p_o_mode_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N3
cycloneii_lcell_ff \u_kirsch|reg_out_signal_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|p_o_mode_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|p_o_mode_1_ ));

// Location: LCCOMB_X42_Y23_N28
cycloneii_lcell_comb \u_uw_uart|ix46385z52924 (
// Equation(s):
// \u_uw_uart|nx46385z2  = (!\u_kirsch|nx64269z1  & !\u_kirsch|p_o_mode_1_ )

	.dataa(\u_kirsch|nx64269z1 ),
	.datab(vcc),
	.datac(\u_kirsch|p_o_mode_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|nx46385z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46385z52924 .lut_mask = 16'h0505;
defparam \u_uw_uart|ix46385z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y25_N0
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52939 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx51271z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z31  $ (VCC)
// \u_uw_uart|modgen_counter_waitcount|nx22081z30  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z31 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z31 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx51271z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z30 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52939 .lut_mask = 16'h33CC;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N12
cycloneii_lcell_comb \u_uw_uart|ix33354z52924 (
// Equation(s):
// \u_uw_uart|nx33354z2  = (\u_uw_uart|nx39480z2 ) # (!\nrst~combout )

	.dataa(vcc),
	.datab(vcc),
	.datac(\nrst~combout ),
	.datad(\u_uw_uart|nx39480z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx33354z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix33354z52924 .lut_mask = 16'hFF0F;
defparam \u_uw_uart|ix33354z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y25_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|nx34394z2~_wirecell (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout  = !\u_uw_uart|i_uarts|nx34394z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|nx34394z2 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z2~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|nx34394z2~_wirecell .lut_mask = 16'h0F0F;
defparam \u_uw_uart|i_uarts|nx34394z2~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52934 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21  $ (VCC)
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20  = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52934 .lut_mask = 16'h33CC;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y22_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix65151z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx65151z1  = (\u_uw_uart|i_uarts|nx34394z3 ) # (!\u_uw_uart|i_uarts|nx34394z2 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|nx34394z2 ),
	.datac(\u_uw_uart|i_uarts|nx34394z3 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx65151z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix65151z52923 .lut_mask = 16'hF3F3;
defparam \u_uw_uart|i_uarts|ix65151z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y22_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ));

// Location: LCCOMB_X45_Y22_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52933 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1  = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20 )) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19  & 
// ((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20 ) # (GND)))
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18  = CARRY((!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20 ) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52933 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y22_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ));

// Location: LCCOMB_X45_Y22_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52932 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1  = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18  $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & 
// (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18  & VCC))
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16  = CARRY((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52932 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y22_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ));

// Location: LCCOMB_X45_Y22_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1  = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14  $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13  & 
// (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14  & VCC))
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12  = CARRY((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52930 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y22_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ));

// Location: LCCOMB_X45_Y22_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1  = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12 )) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11  & 
// ((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12 ) # (GND)))
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10  = CARRY((!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12 ) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52929 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1  = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8 )) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7  & 
// ((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8 ) # (GND)))
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6  = CARRY((!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8 ) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52927 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y22_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ));

// Location: LCFF_X45_Y22_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ));

// Location: LCCOMB_X45_Y22_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z9  = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 )))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z9 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52930 .lut_mask = 16'h0080;
defparam \u_uw_uart|i_uarts|ix34394z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1  = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6  $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5  & 
// (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6  & VCC))
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4  = CARRY((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6 ))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52926 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1  = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4 )) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3  & 
// ((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4 ) # (GND)))
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2  = CARRY((!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4 ) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52925 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y22_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ));

// Location: LCFF_X45_Y22_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ));

// Location: LCCOMB_X45_Y22_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1  $ (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52923 .lut_mask = 16'hA5A5;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y22_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ));

// Location: LCCOMB_X44_Y22_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z4  = (\u_uw_uart|i_uarts|TxDivisor_5_  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 )))

	.dataa(\u_uw_uart|i_uarts|TxDivisor_5_ ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52925 .lut_mask = 16'h0002;
defparam \u_uw_uart|i_uarts|ix34394z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52931 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z10  = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19  & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 )))

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z10 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52931 .lut_mask = 16'h0002;
defparam \u_uw_uart|i_uarts|ix34394z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y22_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z3  = (\u_uw_uart|i_uarts|nx34394z5 ) # ((\u_uw_uart|i_uarts|nx34394z9  & (\u_uw_uart|i_uarts|nx34394z4  & \u_uw_uart|i_uarts|nx34394z10 )))

	.dataa(\u_uw_uart|i_uarts|nx34394z5 ),
	.datab(\u_uw_uart|i_uarts|nx34394z9 ),
	.datac(\u_uw_uart|i_uarts|nx34394z4 ),
	.datad(\u_uw_uart|i_uarts|nx34394z10 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52924 .lut_mask = 16'hEAAA;
defparam \u_uw_uart|i_uarts|ix34394z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y22_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z1  = (\u_uw_uart|i_uarts|nx34394z2  & \u_uw_uart|i_uarts|nx34394z3 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|nx34394z2 ),
	.datac(\u_uw_uart|i_uarts|nx34394z3 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52923 .lut_mask = 16'hC0C0;
defparam \u_uw_uart|i_uarts|ix34394z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y22_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TopRx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx34394z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TopRx ));

// Location: LCCOMB_X46_Y25_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15541z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15541z2  = (\u_uw_uart|i_uarts|nx34394z2  & ((\u_uw_uart|i_uarts|RxFSM_6_  & (\u_uw_uart|rawrx )) # (!\u_uw_uart|i_uarts|RxFSM_6_  & ((\u_uw_uart|i_uarts|TopRx )))))

	.dataa(\u_uw_uart|rawrx ),
	.datab(\u_uw_uart|i_uarts|nx34394z2 ),
	.datac(\u_uw_uart|i_uarts|TopRx ),
	.datad(\u_uw_uart|i_uarts|RxFSM_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15541z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15541z52925 .lut_mask = 16'h88C0;
defparam \u_uw_uart|i_uarts|ix15541z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io rxflex_ibuf(
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
	.combout(\rxflex~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(rxflex));
// synopsys translate_off
defparam rxflex_ibuf.input_async_reset = "none";
defparam rxflex_ibuf.input_power_up = "low";
defparam rxflex_ibuf.input_register_mode = "none";
defparam rxflex_ibuf.input_sync_reset = "none";
defparam rxflex_ibuf.oe_async_reset = "none";
defparam rxflex_ibuf.oe_power_up = "low";
defparam rxflex_ibuf.oe_register_mode = "none";
defparam rxflex_ibuf.oe_sync_reset = "none";
defparam rxflex_ibuf.operation_mode = "input";
defparam rxflex_ibuf.output_async_reset = "none";
defparam rxflex_ibuf.output_power_up = "low";
defparam rxflex_ibuf.output_register_mode = "none";
defparam rxflex_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix57064z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Rx  = (!\rxflex~combout ) # (!\nrst~combout )

	.dataa(vcc),
	.datab(\nrst~combout ),
	.datac(vcc),
	.datad(\rxflex~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Rx ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix57064z52923 .lut_mask = 16'h33FF;
defparam \u_uw_uart|i_uarts|ix57064z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y23_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_r (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Rx ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|not_Rx_r ));

// Location: LCCOMB_X46_Y25_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15541z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15541z1  = (\u_uw_uart|i_uarts|nx15541z2 ) # ((\u_uw_uart|i_uarts|nx15541z3  & (!\u_uw_uart|i_uarts|nx34394z2  & \u_uw_uart|i_uarts|not_Rx_r )))

	.dataa(\u_uw_uart|i_uarts|nx15541z3 ),
	.datab(\u_uw_uart|i_uarts|nx34394z2 ),
	.datac(\u_uw_uart|i_uarts|nx15541z2 ),
	.datad(\u_uw_uart|i_uarts|not_Rx_r ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15541z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15541z52924 .lut_mask = 16'hF2F0;
defparam \u_uw_uart|i_uarts|ix15541z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y25_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx34394z2~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_1_ ));

// Location: LCCOMB_X47_Y25_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|RxFSM_6_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout  = \u_uw_uart|i_uarts|RxFSM_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|RxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|RxFSM_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|RxFSM_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|RxFSM_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y25_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|RxFSM_6_~feeder_combout ),
	.sdata(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|not_Rx_r ),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_6_ ));

// Location: LCCOMB_X46_Y25_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix16538z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx16538z1  = (!\u_uw_uart|i_uarts|RxFSM_6_  & ((\u_uw_uart|i_uarts|not_Rx_r ) # (!\u_uw_uart|i_uarts|RxFSM_5_ )))

	.dataa(\u_uw_uart|i_uarts|not_Rx_r ),
	.datab(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|RxFSM_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx16538z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix16538z52923 .lut_mask = 16'h00BB;
defparam \u_uw_uart|i_uarts|ix16538z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y25_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx16538z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx34394z2 ));

// Location: LCCOMB_X46_Y25_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix11364z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx11364z1  = (\u_uw_uart|i_uarts|TopRx  & (\u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|RxBitCnt_0_  $ (\u_uw_uart|i_uarts|RxFSM_3_ )))) # (!\u_uw_uart|i_uarts|TopRx  & (\u_uw_uart|i_uarts|RxBitCnt_0_  & 
// ((\u_uw_uart|i_uarts|nx34394z2 ) # (\u_uw_uart|i_uarts|RxFSM_3_ ))))

	.dataa(\u_uw_uart|i_uarts|TopRx ),
	.datab(\u_uw_uart|i_uarts|nx34394z2 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx11364z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix11364z52923 .lut_mask = 16'h58C0;
defparam \u_uw_uart|i_uarts|ix11364z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y25_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx11364z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_0_ ));

// Location: LCCOMB_X46_Y25_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix8373z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|not_rtlc17_X_0_n360  = (\u_uw_uart|i_uarts|RxFSM_3_  & ((\u_uw_uart|i_uarts|TopRx ))) # (!\u_uw_uart|i_uarts|RxFSM_3_  & (!\u_uw_uart|i_uarts|nx34394z2 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|nx34394z2 ),
	.datac(\u_uw_uart|i_uarts|TopRx ),
	.datad(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix8373z52924 .lut_mask = 16'hF033;
defparam \u_uw_uart|i_uarts|ix8373z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y25_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix10367z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx10367z1  = (\u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & (\u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|RxBitCnt_0_  $ (\u_uw_uart|i_uarts|RxBitCnt_1_ )))) # (!\u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & 
// (((\u_uw_uart|i_uarts|RxBitCnt_1_ ))))

	.dataa(\u_uw_uart|i_uarts|nx34394z2 ),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx10367z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix10367z52923 .lut_mask = 16'h28F0;
defparam \u_uw_uart|i_uarts|ix10367z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y25_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx10367z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_1_ ));

// Location: LCCOMB_X47_Y25_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix9370z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx9370z2  = (\u_uw_uart|i_uarts|RxBitCnt_0_  & \u_uw_uart|i_uarts|RxBitCnt_1_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx9370z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix9370z52924 .lut_mask = 16'hCC00;
defparam \u_uw_uart|i_uarts|ix9370z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y25_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix9370z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx9370z1  = (\u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & (\u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|nx9370z2  $ (\u_uw_uart|i_uarts|RxBitCnt_2_ )))) # (!\u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & (((\u_uw_uart|i_uarts|RxBitCnt_2_ 
// ))))

	.dataa(\u_uw_uart|i_uarts|nx34394z2 ),
	.datab(\u_uw_uart|i_uarts|nx9370z2 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datad(\u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx9370z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix9370z52923 .lut_mask = 16'h28F0;
defparam \u_uw_uart|i_uarts|ix9370z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y25_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx9370z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_2_ ));

// Location: LCCOMB_X47_Y25_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix13547z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx13547z2  = (\u_uw_uart|i_uarts|RxBitCnt_3_  & (!\u_uw_uart|i_uarts|RxBitCnt_2_  & (!\u_uw_uart|i_uarts|RxBitCnt_1_  & !\u_uw_uart|i_uarts|RxBitCnt_0_ )))

	.dataa(\u_uw_uart|i_uarts|RxBitCnt_3_ ),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx13547z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix13547z52924 .lut_mask = 16'h0002;
defparam \u_uw_uart|i_uarts|ix13547z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y25_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix13547z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx13547z1  = (\u_uw_uart|i_uarts|RxFSM_2_  & !\u_uw_uart|i_uarts|nx13547z2 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxFSM_2_ ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|nx13547z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx13547z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix13547z52923 .lut_mask = 16'h00CC;
defparam \u_uw_uart|i_uarts|ix13547z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y25_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx13547z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_3_ ));

// Location: LCCOMB_X46_Y25_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix14544z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx14544z1  = (\u_uw_uart|i_uarts|RxFSM_3_ ) # ((\u_uw_uart|i_uarts|RxFSM_1_  & \u_uw_uart|i_uarts|not_Rx_r ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.datac(\u_uw_uart|i_uarts|RxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|not_Rx_r ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx14544z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix14544z52923 .lut_mask = 16'hFCCC;
defparam \u_uw_uart|i_uarts|ix14544z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y25_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx14544z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_2_ ));

// Location: LCCOMB_X47_Y25_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix11553z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx11553z1  = (\u_uw_uart|i_uarts|RxFSM_2_  & \u_uw_uart|i_uarts|nx13547z2 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxFSM_2_ ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|nx13547z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx11553z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix11553z52923 .lut_mask = 16'hCC00;
defparam \u_uw_uart|i_uarts|ix11553z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y25_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx11553z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_5_ ));

// Location: LCCOMB_X46_Y25_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix30017z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx30017z1  = (\u_uw_uart|i_uarts|RxFSM_5_  & (\u_uw_uart|i_uarts|TopRx  & !\u_uw_uart|i_uarts|not_Rx_r ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.datac(\u_uw_uart|i_uarts|TopRx ),
	.datad(\u_uw_uart|i_uarts|not_Rx_r ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx30017z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix30017z52923 .lut_mask = 16'h00C0;
defparam \u_uw_uart|i_uarts|ix30017z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y25_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxRDYi (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx30017z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxRDY ));

// Location: LCCOMB_X49_Y23_N26
cycloneii_lcell_comb \u_uw_uart|ix58116z52923 (
// Equation(s):
// \u_uw_uart|nx58116z1  = (\u_uw_uart|i_uarts|RxRDY  & !\u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxRDY ),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|nx58116z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix58116z52923 .lut_mask = 16'h0C0C;
defparam \u_uw_uart|ix58116z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y23_N27
cycloneii_lcell_ff \u_uw_uart|reg_charavail (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx58116z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|o_pixavail ));

// Location: LCCOMB_X43_Y23_N14
cycloneii_lcell_comb \u_uw_uart|ix39480z52923 (
// Equation(s):
// \u_uw_uart|nx39480z1  = (!\u_uw_uart|nx39480z2  & ((\u_uw_uart|ack ) # (\u_uw_uart|o_pixavail )))

	.dataa(\u_uw_uart|nx39480z2 ),
	.datab(vcc),
	.datac(\u_uw_uart|ack ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52923 .lut_mask = 16'h5550;
defparam \u_uw_uart|ix39480z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y23_N15
cycloneii_lcell_ff \u_uw_uart|reg_ack (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx39480z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|ack ));

// Location: LCCOMB_X42_Y23_N22
cycloneii_lcell_comb \u_uw_uart|ix33354z52923 (
// Equation(s):
// \u_uw_uart|nx33354z1  = (\u_uw_uart|ack ) # ((\u_uw_uart|o_pixavail ) # (!\nrst~combout ))

	.dataa(vcc),
	.datab(\u_uw_uart|ack ),
	.datac(\nrst~combout ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|nx33354z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix33354z52923 .lut_mask = 16'hFFCF;
defparam \u_uw_uart|ix33354z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y25_N1
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z31 ));

// Location: LCCOMB_X45_Y25_N2
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52938 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx52268z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z29  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z30 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z29  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z30 
// ) # (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z28  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z30 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z29 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z29 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z30 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx52268z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z28 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52938 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y25_N3
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z29 ));

// Location: LCCOMB_X45_Y25_N4
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52937 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx53265z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z27  & (\u_uw_uart|modgen_counter_waitcount|nx22081z28  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z27  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z28  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z26  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z27  & !\u_uw_uart|modgen_counter_waitcount|nx22081z28 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z27 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z28 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx53265z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z26 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52937 .lut_mask = 16'hC30C;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y25_N5
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z27 ));

// Location: LCCOMB_X45_Y25_N6
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52936 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx54262z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z25  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z26 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z25  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z26 
// ) # (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z24  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z26 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z25 ))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z25 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z26 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx54262z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z24 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52936 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y25_N8
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52935 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx55259z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z23  & (\u_uw_uart|modgen_counter_waitcount|nx22081z24  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z23  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z24  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z22  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z23  & !\u_uw_uart|modgen_counter_waitcount|nx22081z24 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z23 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z24 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx55259z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z22 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52935 .lut_mask = 16'hC30C;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y25_N9
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z23 ));

// Location: LCCOMB_X45_Y25_N14
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52932 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx58250z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z17  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z18 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z17  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z18 
// ) # (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z16  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z18 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z17 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z17 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z18 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx58250z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z16 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52932 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y25_N15
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z17 ));

// Location: LCCOMB_X45_Y25_N16
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52931 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx59247z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z15  & (\u_uw_uart|modgen_counter_waitcount|nx22081z16  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z15  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z16  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z14  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z15  & !\u_uw_uart|modgen_counter_waitcount|nx22081z16 ))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z16 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx59247z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z14 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52931 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y25_N17
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx59247z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z15 ));

// Location: LCCOMB_X45_Y25_N18
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52930 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx60244z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z13  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z14 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z13  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z14 
// ) # (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z12  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z14 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z13 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z14 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx60244z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z12 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52930 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y25_N19
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx60244z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z13 ));

// Location: LCCOMB_X45_Y25_N20
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52929 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx17096z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z11  & (\u_uw_uart|modgen_counter_waitcount|nx22081z12  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z11  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z12  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z10  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z11  & !\u_uw_uart|modgen_counter_waitcount|nx22081z12 ))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z12 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx17096z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z10 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52929 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y25_N22
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52928 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx18093z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z9  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z10 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z9  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z10 ) 
// # (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z8  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z10 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z9 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z10 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx18093z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z8 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52928 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y25_N23
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx18093z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z9 ));

// Location: LCCOMB_X45_Y25_N24
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52927 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx19090z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z7  & (\u_uw_uart|modgen_counter_waitcount|nx22081z8  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z7  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z8  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z6  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z7  & !\u_uw_uart|modgen_counter_waitcount|nx22081z8 ))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z8 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx19090z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z6 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52927 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y25_N25
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx19090z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z7 ));

// Location: LCCOMB_X45_Y25_N26
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52926 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx20087z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z5  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z6 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z5  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z6 ) # 
// (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z4  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z6 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z5 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z6 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx20087z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z4 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52926 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y25_N27
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_13_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx20087z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z5 ));

// Location: LCFF_X45_Y25_N29
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_14_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx21084z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z3 ));

// Location: LCCOMB_X46_Y25_N24
cycloneii_lcell_comb \u_uw_uart|ix39480z52928 (
// Equation(s):
// \u_uw_uart|nx39480z6  = (!\u_uw_uart|modgen_counter_waitcount|nx64508z1  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z7  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z3  & !\u_uw_uart|modgen_counter_waitcount|nx22081z5 )))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx64508z1 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z7 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z3 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z5 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52928 .lut_mask = 16'h0001;
defparam \u_uw_uart|ix39480z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y25_N21
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx17096z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z11 ));

// Location: LCCOMB_X46_Y25_N2
cycloneii_lcell_comb \u_uw_uart|ix39480z52929 (
// Equation(s):
// \u_uw_uart|nx39480z7  = (!\u_uw_uart|modgen_counter_waitcount|nx22081z11  & !\u_uw_uart|modgen_counter_waitcount|nx22081z9 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z11 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z9 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52929 .lut_mask = 16'h000F;
defparam \u_uw_uart|ix39480z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y25_N4
cycloneii_lcell_comb \u_uw_uart|ix39480z52927 (
// Equation(s):
// \u_uw_uart|nx39480z5  = (!\u_uw_uart|modgen_counter_waitcount|nx22081z13  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z15  & (\u_uw_uart|nx39480z6  & \u_uw_uart|nx39480z7 )))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z13 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z15 ),
	.datac(\u_uw_uart|nx39480z6 ),
	.datad(\u_uw_uart|nx39480z7 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52927 .lut_mask = 16'h1000;
defparam \u_uw_uart|ix39480z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N6
cycloneii_lcell_comb \u_kirsch|modgen_counter_o_row|ix58250z52931 (
// Equation(s):
// \u_kirsch|modgen_counter_o_row|nx51271z1  = \u_kirsch|modgen_counter_o_row|nx58250z15  $ (VCC)
// \u_kirsch|modgen_counter_o_row|nx58250z14  = CARRY(\u_kirsch|modgen_counter_o_row|nx58250z15 )

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|modgen_counter_o_row|nx51271z1 ),
	.cout(\u_kirsch|modgen_counter_o_row|nx58250z14 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_o_row|ix58250z52931 .lut_mask = 16'h55AA;
defparam \u_kirsch|modgen_counter_o_row|ix58250z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N8
cycloneii_lcell_comb \u_kirsch|modgen_counter_o_row|ix58250z52930 (
// Equation(s):
// \u_kirsch|modgen_counter_o_row|nx52268z1  = (\u_kirsch|modgen_counter_o_row|nx58250z13  & (!\u_kirsch|modgen_counter_o_row|nx58250z14 )) # (!\u_kirsch|modgen_counter_o_row|nx58250z13  & ((\u_kirsch|modgen_counter_o_row|nx58250z14 ) # (GND)))
// \u_kirsch|modgen_counter_o_row|nx58250z12  = CARRY((!\u_kirsch|modgen_counter_o_row|nx58250z14 ) # (!\u_kirsch|modgen_counter_o_row|nx58250z13 ))

	.dataa(vcc),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_o_row|nx58250z14 ),
	.combout(\u_kirsch|modgen_counter_o_row|nx52268z1 ),
	.cout(\u_kirsch|modgen_counter_o_row|nx58250z12 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_o_row|ix58250z52930 .lut_mask = 16'h3C3F;
defparam \u_kirsch|modgen_counter_o_row|ix58250z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y23_N0
cycloneii_lcell_comb \u_kirsch|modgen_counter_col|ix58250z52931 (
// Equation(s):
// \u_kirsch|modgen_counter_col|nx51271z1  = \u_kirsch|modgen_counter_col|nx58250z15  $ (VCC)
// \u_kirsch|modgen_counter_col|nx58250z14  = CARRY(\u_kirsch|modgen_counter_col|nx58250z15 )

	.dataa(vcc),
	.datab(\u_kirsch|modgen_counter_col|nx58250z15 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|modgen_counter_col|nx51271z1 ),
	.cout(\u_kirsch|modgen_counter_col|nx58250z14 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_col|ix58250z52931 .lut_mask = 16'h33CC;
defparam \u_kirsch|modgen_counter_col|ix58250z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y23_N15
cycloneii_lcell_ff \u_kirsch|reg_vBit_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|o_pixavail ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|vBit_1_ ));

// Location: LCCOMB_X50_Y23_N14
cycloneii_lcell_comb \u_kirsch|ix40914z52923 (
// Equation(s):
// \u_kirsch|nx40914z1  = (\u_kirsch|vBit_1_ ) # (!\nrst~combout )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|vBit_1_ ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_kirsch|nx40914z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix40914z52923 .lut_mask = 16'hF0FF;
defparam \u_kirsch|ix40914z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y23_N1
cycloneii_lcell_ff \u_kirsch|modgen_counter_col|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_col|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx40914z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_col|nx58250z15 ));

// Location: LCCOMB_X51_Y23_N2
cycloneii_lcell_comb \u_kirsch|modgen_counter_col|ix58250z52930 (
// Equation(s):
// \u_kirsch|modgen_counter_col|nx52268z1  = (\u_kirsch|modgen_counter_col|nx58250z13  & (!\u_kirsch|modgen_counter_col|nx58250z14 )) # (!\u_kirsch|modgen_counter_col|nx58250z13  & ((\u_kirsch|modgen_counter_col|nx58250z14 ) # (GND)))
// \u_kirsch|modgen_counter_col|nx58250z12  = CARRY((!\u_kirsch|modgen_counter_col|nx58250z14 ) # (!\u_kirsch|modgen_counter_col|nx58250z13 ))

	.dataa(vcc),
	.datab(\u_kirsch|modgen_counter_col|nx58250z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_col|nx58250z14 ),
	.combout(\u_kirsch|modgen_counter_col|nx52268z1 ),
	.cout(\u_kirsch|modgen_counter_col|nx58250z12 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_col|ix58250z52930 .lut_mask = 16'h3C3F;
defparam \u_kirsch|modgen_counter_col|ix58250z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X51_Y23_N3
cycloneii_lcell_ff \u_kirsch|modgen_counter_col|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_col|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx40914z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_col|nx58250z13 ));

// Location: LCCOMB_X51_Y23_N4
cycloneii_lcell_comb \u_kirsch|modgen_counter_col|ix58250z52929 (
// Equation(s):
// \u_kirsch|modgen_counter_col|nx53265z1  = (\u_kirsch|modgen_counter_col|nx58250z11  & (\u_kirsch|modgen_counter_col|nx58250z12  $ (GND))) # (!\u_kirsch|modgen_counter_col|nx58250z11  & (!\u_kirsch|modgen_counter_col|nx58250z12  & VCC))
// \u_kirsch|modgen_counter_col|nx58250z10  = CARRY((\u_kirsch|modgen_counter_col|nx58250z11  & !\u_kirsch|modgen_counter_col|nx58250z12 ))

	.dataa(vcc),
	.datab(\u_kirsch|modgen_counter_col|nx58250z11 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_col|nx58250z12 ),
	.combout(\u_kirsch|modgen_counter_col|nx53265z1 ),
	.cout(\u_kirsch|modgen_counter_col|nx58250z10 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_col|ix58250z52929 .lut_mask = 16'hC30C;
defparam \u_kirsch|modgen_counter_col|ix58250z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X51_Y23_N5
cycloneii_lcell_ff \u_kirsch|modgen_counter_col|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_col|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx40914z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_col|nx58250z11 ));

// Location: LCCOMB_X51_Y23_N6
cycloneii_lcell_comb \u_kirsch|modgen_counter_col|ix58250z52928 (
// Equation(s):
// \u_kirsch|modgen_counter_col|nx54262z1  = (\u_kirsch|modgen_counter_col|nx58250z9  & (!\u_kirsch|modgen_counter_col|nx58250z10 )) # (!\u_kirsch|modgen_counter_col|nx58250z9  & ((\u_kirsch|modgen_counter_col|nx58250z10 ) # (GND)))
// \u_kirsch|modgen_counter_col|nx58250z8  = CARRY((!\u_kirsch|modgen_counter_col|nx58250z10 ) # (!\u_kirsch|modgen_counter_col|nx58250z9 ))

	.dataa(\u_kirsch|modgen_counter_col|nx58250z9 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_col|nx58250z10 ),
	.combout(\u_kirsch|modgen_counter_col|nx54262z1 ),
	.cout(\u_kirsch|modgen_counter_col|nx58250z8 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_col|ix58250z52928 .lut_mask = 16'h5A5F;
defparam \u_kirsch|modgen_counter_col|ix58250z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X51_Y23_N7
cycloneii_lcell_ff \u_kirsch|modgen_counter_col|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_col|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx40914z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_col|nx58250z9 ));

// Location: LCCOMB_X51_Y23_N8
cycloneii_lcell_comb \u_kirsch|modgen_counter_col|ix58250z52927 (
// Equation(s):
// \u_kirsch|modgen_counter_col|nx55259z1  = (\u_kirsch|modgen_counter_col|nx58250z7  & (\u_kirsch|modgen_counter_col|nx58250z8  $ (GND))) # (!\u_kirsch|modgen_counter_col|nx58250z7  & (!\u_kirsch|modgen_counter_col|nx58250z8  & VCC))
// \u_kirsch|modgen_counter_col|nx58250z6  = CARRY((\u_kirsch|modgen_counter_col|nx58250z7  & !\u_kirsch|modgen_counter_col|nx58250z8 ))

	.dataa(vcc),
	.datab(\u_kirsch|modgen_counter_col|nx58250z7 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_col|nx58250z8 ),
	.combout(\u_kirsch|modgen_counter_col|nx55259z1 ),
	.cout(\u_kirsch|modgen_counter_col|nx58250z6 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_col|ix58250z52927 .lut_mask = 16'hC30C;
defparam \u_kirsch|modgen_counter_col|ix58250z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X51_Y23_N9
cycloneii_lcell_ff \u_kirsch|modgen_counter_col|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_col|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx40914z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_col|nx58250z7 ));

// Location: LCCOMB_X50_Y23_N2
cycloneii_lcell_comb \u_kirsch|ix17322z52925 (
// Equation(s):
// \u_kirsch|nx17322z3  = (!\u_kirsch|modgen_counter_col|nx58250z13  & (!\u_kirsch|modgen_counter_col|nx58250z9  & (!\u_kirsch|modgen_counter_col|nx58250z7  & !\u_kirsch|modgen_counter_col|nx58250z11 )))

	.dataa(\u_kirsch|modgen_counter_col|nx58250z13 ),
	.datab(\u_kirsch|modgen_counter_col|nx58250z9 ),
	.datac(\u_kirsch|modgen_counter_col|nx58250z7 ),
	.datad(\u_kirsch|modgen_counter_col|nx58250z11 ),
	.cin(gnd),
	.combout(\u_kirsch|nx17322z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix17322z52925 .lut_mask = 16'h0001;
defparam \u_kirsch|ix17322z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y23_N11
cycloneii_lcell_ff \u_kirsch|reg_vBit_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|vBit_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|vBit_2_ ));

// Location: LCCOMB_X51_Y23_N10
cycloneii_lcell_comb \u_kirsch|modgen_counter_col|ix58250z52926 (
// Equation(s):
// \u_kirsch|modgen_counter_col|nx56256z1  = (\u_kirsch|modgen_counter_col|nx58250z5  & (!\u_kirsch|modgen_counter_col|nx58250z6 )) # (!\u_kirsch|modgen_counter_col|nx58250z5  & ((\u_kirsch|modgen_counter_col|nx58250z6 ) # (GND)))
// \u_kirsch|modgen_counter_col|nx58250z4  = CARRY((!\u_kirsch|modgen_counter_col|nx58250z6 ) # (!\u_kirsch|modgen_counter_col|nx58250z5 ))

	.dataa(\u_kirsch|modgen_counter_col|nx58250z5 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_col|nx58250z6 ),
	.combout(\u_kirsch|modgen_counter_col|nx56256z1 ),
	.cout(\u_kirsch|modgen_counter_col|nx58250z4 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_col|ix58250z52926 .lut_mask = 16'h5A5F;
defparam \u_kirsch|modgen_counter_col|ix58250z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y23_N12
cycloneii_lcell_comb \u_kirsch|modgen_counter_col|ix58250z52925 (
// Equation(s):
// \u_kirsch|modgen_counter_col|nx57253z1  = (\u_kirsch|modgen_counter_col|nx58250z3  & (\u_kirsch|modgen_counter_col|nx58250z4  $ (GND))) # (!\u_kirsch|modgen_counter_col|nx58250z3  & (!\u_kirsch|modgen_counter_col|nx58250z4  & VCC))
// \u_kirsch|modgen_counter_col|nx58250z2  = CARRY((\u_kirsch|modgen_counter_col|nx58250z3  & !\u_kirsch|modgen_counter_col|nx58250z4 ))

	.dataa(\u_kirsch|modgen_counter_col|nx58250z3 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_col|nx58250z4 ),
	.combout(\u_kirsch|modgen_counter_col|nx57253z1 ),
	.cout(\u_kirsch|modgen_counter_col|nx58250z2 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_col|ix58250z52925 .lut_mask = 16'hA50A;
defparam \u_kirsch|modgen_counter_col|ix58250z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y23_N14
cycloneii_lcell_comb \u_kirsch|modgen_counter_col|ix58250z52923 (
// Equation(s):
// \u_kirsch|modgen_counter_col|nx58250z1  = \u_kirsch|modgen_counter_col|nx1041z1  $ (\u_kirsch|modgen_counter_col|nx58250z2 )

	.dataa(vcc),
	.datab(\u_kirsch|modgen_counter_col|nx1041z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_col|nx58250z2 ),
	.combout(\u_kirsch|modgen_counter_col|nx58250z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|modgen_counter_col|ix58250z52923 .lut_mask = 16'h3C3C;
defparam \u_kirsch|modgen_counter_col|ix58250z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X51_Y23_N15
cycloneii_lcell_ff \u_kirsch|modgen_counter_col|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_col|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx40914z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_col|nx1041z1 ));

// Location: LCFF_X51_Y23_N11
cycloneii_lcell_ff \u_kirsch|modgen_counter_col|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_col|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx40914z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_col|nx58250z5 ));

// Location: LCFF_X51_Y23_N13
cycloneii_lcell_ff \u_kirsch|modgen_counter_col|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_col|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx40914z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_col|nx58250z3 ));

// Location: LCCOMB_X50_Y23_N30
cycloneii_lcell_comb \u_kirsch|ix17322z52924 (
// Equation(s):
// \u_kirsch|nx17322z2  = (!\u_kirsch|modgen_counter_col|nx58250z15  & (!\u_kirsch|modgen_counter_col|nx1041z1  & (!\u_kirsch|modgen_counter_col|nx58250z5  & !\u_kirsch|modgen_counter_col|nx58250z3 )))

	.dataa(\u_kirsch|modgen_counter_col|nx58250z15 ),
	.datab(\u_kirsch|modgen_counter_col|nx1041z1 ),
	.datac(\u_kirsch|modgen_counter_col|nx58250z5 ),
	.datad(\u_kirsch|modgen_counter_col|nx58250z3 ),
	.cin(gnd),
	.combout(\u_kirsch|nx17322z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix17322z52924 .lut_mask = 16'h0001;
defparam \u_kirsch|ix17322z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N10
cycloneii_lcell_comb \u_kirsch|ix17322z52923 (
// Equation(s):
// \u_kirsch|nx17322z1  = (!\u_uw_uart|o_pixavail  & (\u_kirsch|nx17322z3  & (\u_kirsch|vBit_2_  & \u_kirsch|nx17322z2 )))

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(\u_kirsch|nx17322z3 ),
	.datac(\u_kirsch|vBit_2_ ),
	.datad(\u_kirsch|nx17322z2 ),
	.cin(gnd),
	.combout(\u_kirsch|nx17322z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix17322z52923 .lut_mask = 16'h4000;
defparam \u_kirsch|ix17322z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N12
cycloneii_lcell_comb \u_kirsch|ix17322z52926 (
// Equation(s):
// \u_kirsch|nx17322z4  = (\u_kirsch|nx17322z1 ) # (!\nrst~combout )

	.dataa(vcc),
	.datab(\nrst~combout ),
	.datac(vcc),
	.datad(\u_kirsch|nx17322z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx17322z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix17322z52926 .lut_mask = 16'hFF33;
defparam \u_kirsch|ix17322z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y23_N9
cycloneii_lcell_ff \u_kirsch|modgen_counter_o_row|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_o_row|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx17322z4 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_o_row|nx58250z13 ));

// Location: LCCOMB_X37_Y23_N10
cycloneii_lcell_comb \u_kirsch|modgen_counter_o_row|ix58250z52929 (
// Equation(s):
// \u_kirsch|modgen_counter_o_row|nx53265z1  = (\u_kirsch|modgen_counter_o_row|nx58250z11  & (\u_kirsch|modgen_counter_o_row|nx58250z12  $ (GND))) # (!\u_kirsch|modgen_counter_o_row|nx58250z11  & (!\u_kirsch|modgen_counter_o_row|nx58250z12  & VCC))
// \u_kirsch|modgen_counter_o_row|nx58250z10  = CARRY((\u_kirsch|modgen_counter_o_row|nx58250z11  & !\u_kirsch|modgen_counter_o_row|nx58250z12 ))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_o_row|nx58250z12 ),
	.combout(\u_kirsch|modgen_counter_o_row|nx53265z1 ),
	.cout(\u_kirsch|modgen_counter_o_row|nx58250z10 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_o_row|ix58250z52929 .lut_mask = 16'hA50A;
defparam \u_kirsch|modgen_counter_o_row|ix58250z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N12
cycloneii_lcell_comb \u_kirsch|modgen_counter_o_row|ix58250z52928 (
// Equation(s):
// \u_kirsch|modgen_counter_o_row|nx54262z1  = (\u_kirsch|modgen_counter_o_row|nx58250z9  & (!\u_kirsch|modgen_counter_o_row|nx58250z10 )) # (!\u_kirsch|modgen_counter_o_row|nx58250z9  & ((\u_kirsch|modgen_counter_o_row|nx58250z10 ) # (GND)))
// \u_kirsch|modgen_counter_o_row|nx58250z8  = CARRY((!\u_kirsch|modgen_counter_o_row|nx58250z10 ) # (!\u_kirsch|modgen_counter_o_row|nx58250z9 ))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z9 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_o_row|nx58250z10 ),
	.combout(\u_kirsch|modgen_counter_o_row|nx54262z1 ),
	.cout(\u_kirsch|modgen_counter_o_row|nx58250z8 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_o_row|ix58250z52928 .lut_mask = 16'h5A5F;
defparam \u_kirsch|modgen_counter_o_row|ix58250z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N14
cycloneii_lcell_comb \u_kirsch|modgen_counter_o_row|ix58250z52927 (
// Equation(s):
// \u_kirsch|modgen_counter_o_row|nx55259z1  = (\u_kirsch|modgen_counter_o_row|nx58250z7  & (\u_kirsch|modgen_counter_o_row|nx58250z8  $ (GND))) # (!\u_kirsch|modgen_counter_o_row|nx58250z7  & (!\u_kirsch|modgen_counter_o_row|nx58250z8  & VCC))
// \u_kirsch|modgen_counter_o_row|nx58250z6  = CARRY((\u_kirsch|modgen_counter_o_row|nx58250z7  & !\u_kirsch|modgen_counter_o_row|nx58250z8 ))

	.dataa(vcc),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z7 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_o_row|nx58250z8 ),
	.combout(\u_kirsch|modgen_counter_o_row|nx55259z1 ),
	.cout(\u_kirsch|modgen_counter_o_row|nx58250z6 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_o_row|ix58250z52927 .lut_mask = 16'hC30C;
defparam \u_kirsch|modgen_counter_o_row|ix58250z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y23_N15
cycloneii_lcell_ff \u_kirsch|modgen_counter_o_row|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_o_row|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx17322z4 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_o_row|nx58250z7 ));

// Location: LCCOMB_X37_Y23_N16
cycloneii_lcell_comb \u_kirsch|modgen_counter_o_row|ix58250z52926 (
// Equation(s):
// \u_kirsch|modgen_counter_o_row|nx56256z1  = (\u_kirsch|modgen_counter_o_row|nx58250z5  & (!\u_kirsch|modgen_counter_o_row|nx58250z6 )) # (!\u_kirsch|modgen_counter_o_row|nx58250z5  & ((\u_kirsch|modgen_counter_o_row|nx58250z6 ) # (GND)))
// \u_kirsch|modgen_counter_o_row|nx58250z4  = CARRY((!\u_kirsch|modgen_counter_o_row|nx58250z6 ) # (!\u_kirsch|modgen_counter_o_row|nx58250z5 ))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z5 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_o_row|nx58250z6 ),
	.combout(\u_kirsch|modgen_counter_o_row|nx56256z1 ),
	.cout(\u_kirsch|modgen_counter_o_row|nx58250z4 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_o_row|ix58250z52926 .lut_mask = 16'h5A5F;
defparam \u_kirsch|modgen_counter_o_row|ix58250z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y23_N17
cycloneii_lcell_ff \u_kirsch|modgen_counter_o_row|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_o_row|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx17322z4 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_o_row|nx58250z5 ));

// Location: LCFF_X37_Y23_N13
cycloneii_lcell_ff \u_kirsch|modgen_counter_o_row|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_o_row|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx17322z4 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_o_row|nx58250z9 ));

// Location: LCCOMB_X37_Y23_N28
cycloneii_lcell_comb \u_kirsch|ix11673z52926 (
// Equation(s):
// \u_kirsch|nx11673z4  = (\u_kirsch|modgen_counter_o_row|nx58250z11 ) # ((\u_kirsch|modgen_counter_o_row|nx58250z7 ) # ((\u_kirsch|modgen_counter_o_row|nx58250z5 ) # (\u_kirsch|modgen_counter_o_row|nx58250z9 )))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z11 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z7 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx58250z5 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z9 ),
	.cin(gnd),
	.combout(\u_kirsch|nx11673z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix11673z52926 .lut_mask = 16'hFFFE;
defparam \u_kirsch|ix11673z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N18
cycloneii_lcell_comb \u_kirsch|modgen_counter_o_row|ix58250z52925 (
// Equation(s):
// \u_kirsch|modgen_counter_o_row|nx57253z1  = (\u_kirsch|modgen_counter_o_row|nx58250z3  & (\u_kirsch|modgen_counter_o_row|nx58250z4  $ (GND))) # (!\u_kirsch|modgen_counter_o_row|nx58250z3  & (!\u_kirsch|modgen_counter_o_row|nx58250z4  & VCC))
// \u_kirsch|modgen_counter_o_row|nx58250z2  = CARRY((\u_kirsch|modgen_counter_o_row|nx58250z3  & !\u_kirsch|modgen_counter_o_row|nx58250z4 ))

	.dataa(vcc),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_o_row|nx58250z4 ),
	.combout(\u_kirsch|modgen_counter_o_row|nx57253z1 ),
	.cout(\u_kirsch|modgen_counter_o_row|nx58250z2 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_o_row|ix58250z52925 .lut_mask = 16'hC30C;
defparam \u_kirsch|modgen_counter_o_row|ix58250z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y23_N19
cycloneii_lcell_ff \u_kirsch|modgen_counter_o_row|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_o_row|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx17322z4 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_o_row|nx58250z3 ));

// Location: LCCOMB_X37_Y23_N20
cycloneii_lcell_comb \u_kirsch|modgen_counter_o_row|ix58250z52923 (
// Equation(s):
// \u_kirsch|modgen_counter_o_row|nx58250z1  = \u_kirsch|modgen_counter_o_row|nx1041z1  $ (\u_kirsch|modgen_counter_o_row|nx58250z2 )

	.dataa(\u_kirsch|modgen_counter_o_row|nx1041z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_o_row|nx58250z2 ),
	.combout(\u_kirsch|modgen_counter_o_row|nx58250z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|modgen_counter_o_row|ix58250z52923 .lut_mask = 16'h5A5A;
defparam \u_kirsch|modgen_counter_o_row|ix58250z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y23_N21
cycloneii_lcell_ff \u_kirsch|modgen_counter_o_row|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_o_row|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx17322z4 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_o_row|nx1041z1 ));

// Location: LCCOMB_X38_Y23_N8
cycloneii_lcell_comb \u_kirsch|ix20419z52924 (
// Equation(s):
// \u_kirsch|nx20419z2  = (\u_kirsch|modgen_counter_o_row|nx58250z13 ) # ((\u_kirsch|nx11673z4 ) # ((\u_kirsch|modgen_counter_o_row|nx1041z1 ) # (\u_kirsch|modgen_counter_o_row|nx58250z3 )))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z13 ),
	.datab(\u_kirsch|nx11673z4 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx1041z1 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z3 ),
	.cin(gnd),
	.combout(\u_kirsch|nx20419z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20419z52924 .lut_mask = 16'hFFFE;
defparam \u_kirsch|ix20419z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N4
cycloneii_lcell_comb \u_kirsch|ix11673z52924 (
// Equation(s):
// \u_kirsch|nx11673z2  = (\u_kirsch|nx11673z3 ) # ((\u_kirsch|modgen_counter_col|nx1041z1 ) # ((\u_kirsch|modgen_counter_col|nx58250z7 ) # (\u_kirsch|modgen_counter_col|nx58250z9 )))

	.dataa(\u_kirsch|nx11673z3 ),
	.datab(\u_kirsch|modgen_counter_col|nx1041z1 ),
	.datac(\u_kirsch|modgen_counter_col|nx58250z7 ),
	.datad(\u_kirsch|modgen_counter_col|nx58250z9 ),
	.cin(gnd),
	.combout(\u_kirsch|nx11673z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix11673z52924 .lut_mask = 16'hFFFE;
defparam \u_kirsch|ix11673z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y23_N6
cycloneii_lcell_comb \u_kirsch|ix20419z52923 (
// Equation(s):
// \u_kirsch|nx20419z1  = (\u_uw_uart|o_pixavail  & (\u_kirsch|nx20419z2  & \u_kirsch|nx11673z2 ))

	.dataa(vcc),
	.datab(\u_uw_uart|o_pixavail ),
	.datac(\u_kirsch|nx20419z2 ),
	.datad(\u_kirsch|nx11673z2 ),
	.cin(gnd),
	.combout(\u_kirsch|nx20419z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20419z52923 .lut_mask = 16'hC000;
defparam \u_kirsch|ix20419z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N7
cycloneii_lcell_ff \u_kirsch|reg_validBit_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx20419z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|validBit_0_ ));

// Location: LCFF_X47_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_validBit_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|validBit_0_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|validBit_1_ ));

// Location: LCFF_X47_Y24_N17
cycloneii_lcell_ff \u_kirsch|reg_validBit_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|validBit_1_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|validBit_2_ ));

// Location: LCFF_X47_Y24_N11
cycloneii_lcell_ff \u_kirsch|reg_validBit_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|validBit_2_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|validBit_3_ ));

// Location: LCFF_X47_Y24_N15
cycloneii_lcell_ff \u_kirsch|reg_validBit_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|validBit_3_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|validBit_4_ ));

// Location: LCFF_X47_Y24_N5
cycloneii_lcell_ff \u_kirsch|reg_validBit_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|validBit_4_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|validBit_5_ ));

// Location: LCFF_X47_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_validBit_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|validBit_5_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|validBit_6_ ));

// Location: LCCOMB_X38_Y23_N20
cycloneii_lcell_comb \u_kirsch|validBit_7_~feeder (
// Equation(s):
// \u_kirsch|validBit_7_~feeder_combout  = \u_kirsch|validBit_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|validBit_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|validBit_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|validBit_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|validBit_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N21
cycloneii_lcell_ff \u_kirsch|reg_validBit_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|validBit_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|validBit_7_ ));

// Location: LCFF_X46_Y25_N11
cycloneii_lcell_ff \u_kirsch|reg_validBit_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|validBit_7_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|p_o_valid ));

// Location: LCFF_X45_Y25_N7
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z25 ));

// Location: LCCOMB_X46_Y25_N30
cycloneii_lcell_comb \u_uw_uart|ix39480z52926 (
// Equation(s):
// \u_uw_uart|nx39480z4  = (!\u_uw_uart|modgen_counter_waitcount|nx22081z31  & (\u_uw_uart|modgen_counter_waitcount|nx22081z27  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z25  & !\u_uw_uart|modgen_counter_waitcount|nx22081z29 )))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z31 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z27 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z25 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z29 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52926 .lut_mask = 16'h0004;
defparam \u_uw_uart|ix39480z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y25_N10
cycloneii_lcell_comb \u_uw_uart|ix39480z52924 (
// Equation(s):
// \u_uw_uart|nx39480z2  = (\u_kirsch|p_o_valid ) # ((\u_uw_uart|nx39480z3  & (\u_uw_uart|nx39480z5  & \u_uw_uart|nx39480z4 )))

	.dataa(\u_uw_uart|nx39480z3 ),
	.datab(\u_uw_uart|nx39480z5 ),
	.datac(\u_kirsch|p_o_valid ),
	.datad(\u_uw_uart|nx39480z4 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52924 .lut_mask = 16'hF8F0;
defparam \u_uw_uart|ix39480z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y25_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15376z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15376z1  = (\u_uw_uart|i_uarts|RxFSM_6_ ) # ((!\u_uw_uart|i_uarts|RxRDY  & \u_uw_uart|i_uarts|RxErr ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxRDY ),
	.datac(\u_uw_uart|i_uarts|RxErr ),
	.datad(\u_uw_uart|i_uarts|RxFSM_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15376z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15376z52923 .lut_mask = 16'hFF30;
defparam \u_uw_uart|i_uarts|ix15376z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y25_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxErr (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx15376z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxErr ));

// Location: LCCOMB_X43_Y23_N30
cycloneii_lcell_comb \u_uw_uart|ix46385z52923 (
// Equation(s):
// \u_uw_uart|nx46385z1  = (\u_uw_uart|nx46385z2 ) # ((\u_uw_uart|nx40736z2  & (\u_uw_uart|nx39480z2 )) # (!\u_uw_uart|nx40736z2  & ((\u_uw_uart|i_uarts|RxErr ))))

	.dataa(\u_uw_uart|nx40736z2 ),
	.datab(\u_uw_uart|nx46385z2 ),
	.datac(\u_uw_uart|nx39480z2 ),
	.datad(\u_uw_uart|i_uarts|RxErr ),
	.cin(gnd),
	.combout(\u_uw_uart|nx46385z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46385z52923 .lut_mask = 16'hFDEC;
defparam \u_uw_uart|ix46385z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y23_N31
cycloneii_lcell_ff \u_uw_uart|reg_dsend (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx46385z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|dsend ));

// Location: LCCOMB_X43_Y23_N4
cycloneii_lcell_comb \u_uw_uart|ix38868z52923 (
// Equation(s):
// \u_uw_uart|nx38868z1  = (!\u_uw_uart|state  & \u_uw_uart|dsend )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|state ),
	.datad(\u_uw_uart|dsend ),
	.cin(gnd),
	.combout(\u_uw_uart|nx38868z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix38868z52923 .lut_mask = 16'h0F00;
defparam \u_uw_uart|ix38868z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y23_N5
cycloneii_lcell_ff \u_uw_uart|reg_state (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx38868z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|state ));

// Location: LCCOMB_X43_Y23_N26
cycloneii_lcell_comb \u_uw_uart|ix18433z52923 (
// Equation(s):
// \u_uw_uart|nx18433z1  = (!\u_uw_uart|state  & ((\u_uw_uart|ld_sdout ) # (\u_uw_uart|dsend )))

	.dataa(vcc),
	.datab(\u_uw_uart|state ),
	.datac(\u_uw_uart|ld_sdout ),
	.datad(\u_uw_uart|dsend ),
	.cin(gnd),
	.combout(\u_uw_uart|nx18433z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix18433z52923 .lut_mask = 16'h3330;
defparam \u_uw_uart|ix18433z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y23_N27
cycloneii_lcell_ff \u_uw_uart|reg_ld_sdout (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx18433z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|ld_sdout ));

// Location: LCCOMB_X44_Y22_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z2  = (\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|i_uarts|TopTx )) # (!\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|TxFSM_0_  & (!\u_uw_uart|i_uarts|TopTx )) # (!\u_uw_uart|i_uarts|TxFSM_0_  & ((!\u_uw_uart|ld_sdout )))))

	.dataa(\u_uw_uart|i_uarts|TopTx ),
	.datab(\u_uw_uart|ld_sdout ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52924 .lut_mask = 16'h5553;
defparam \u_uw_uart|i_uarts|ix4608z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix50920z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx50920z2  = (\u_uw_uart|i_uarts|TopTx  & !\u_uw_uart|i_uarts|TxFSM_1_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TopTx ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx50920z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix50920z52924 .lut_mask = 16'h0C0C;
defparam \u_uw_uart|i_uarts|ix50920z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z2  = (\u_uw_uart|i_uarts|TopTx  & (\u_uw_uart|i_uarts|TxFSM_1_  $ (\u_uw_uart|i_uarts|TxFSM_0_ )))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TopTx ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52924 .lut_mask = 16'h0CC0;
defparam \u_uw_uart|i_uarts|ix51917z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix49923z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx49923z1  = (\u_uw_uart|i_uarts|nx51917z2  & (!\u_uw_uart|i_uarts|nx50920z2  & (\u_uw_uart|i_uarts|TxBitCnt_0_  $ (!\u_uw_uart|i_uarts|TxBitCnt_1_ )))) # (!\u_uw_uart|i_uarts|nx51917z2  & (((\u_uw_uart|i_uarts|TxBitCnt_1_ ))))

	.dataa(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datab(\u_uw_uart|i_uarts|nx50920z2 ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|nx51917z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx49923z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix49923z52923 .lut_mask = 16'h21F0;
defparam \u_uw_uart|i_uarts|ix49923z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y23_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx49923z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_1_ ));

// Location: LCCOMB_X43_Y23_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix48926z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx48926z1  = (\u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|TxBitCnt_0_  $ (((\u_uw_uart|i_uarts|TopTx  & !\u_uw_uart|i_uarts|TxFSM_0_ ))))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|TxBitCnt_0_ ) # 
// ((\u_uw_uart|i_uarts|TopTx  & \u_uw_uart|i_uarts|TxFSM_0_ ))))

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(\u_uw_uart|i_uarts|TopTx ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx48926z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix48926z52923 .lut_mask = 16'hF478;
defparam \u_uw_uart|i_uarts|ix48926z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y23_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx48926z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_0_ ));

// Location: LCCOMB_X50_Y23_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix50920z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx50920z3  = (\u_uw_uart|i_uarts|TxBitCnt_1_ ) # (\u_uw_uart|i_uarts|TxBitCnt_0_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx50920z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix50920z52925 .lut_mask = 16'hFCFC;
defparam \u_uw_uart|i_uarts|ix50920z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z4  = (\u_uw_uart|i_uarts|nx50920z2 ) # ((!\u_uw_uart|i_uarts|TxBitCnt_2_  & (!\u_uw_uart|i_uarts|TxBitCnt_3_  & !\u_uw_uart|i_uarts|nx50920z3 )))

	.dataa(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_3_ ),
	.datac(\u_uw_uart|i_uarts|nx50920z2 ),
	.datad(\u_uw_uart|i_uarts|nx50920z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52926 .lut_mask = 16'hF0F1;
defparam \u_uw_uart|i_uarts|ix51917z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix50920z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx50920z1  = (\u_uw_uart|i_uarts|nx51917z2  & (!\u_uw_uart|i_uarts|nx50920z2  & (\u_uw_uart|i_uarts|TxBitCnt_2_  $ (!\u_uw_uart|i_uarts|nx50920z3 )))) # (!\u_uw_uart|i_uarts|nx51917z2  & (((\u_uw_uart|i_uarts|TxBitCnt_2_ ))))

	.dataa(\u_uw_uart|i_uarts|nx51917z2 ),
	.datab(\u_uw_uart|i_uarts|nx50920z2 ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datad(\u_uw_uart|i_uarts|nx50920z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx50920z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix50920z52923 .lut_mask = 16'h7052;
defparam \u_uw_uart|i_uarts|ix50920z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y23_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx50920z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_2_ ));

// Location: LCCOMB_X50_Y23_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z3  = (\u_uw_uart|i_uarts|TxBitCnt_1_ ) # ((\u_uw_uart|i_uarts|TxBitCnt_0_ ) # (\u_uw_uart|i_uarts|TxBitCnt_2_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52925 .lut_mask = 16'hFFFC;
defparam \u_uw_uart|i_uarts|ix51917z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z1  = (\u_uw_uart|i_uarts|nx51917z2  & ((\u_uw_uart|i_uarts|nx51917z4 ) # ((\u_uw_uart|i_uarts|TxBitCnt_3_  & \u_uw_uart|i_uarts|nx51917z3 )))) # (!\u_uw_uart|i_uarts|nx51917z2  & (((\u_uw_uart|i_uarts|TxBitCnt_3_ ))))

	.dataa(\u_uw_uart|i_uarts|nx51917z2 ),
	.datab(\u_uw_uart|i_uarts|nx51917z4 ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|nx51917z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52923 .lut_mask = 16'hF8D8;
defparam \u_uw_uart|i_uarts|ix51917z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y23_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx51917z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_3_ ));

// Location: LCCOMB_X50_Y23_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z3  = (\u_uw_uart|i_uarts|TxBitCnt_2_ ) # ((\u_uw_uart|i_uarts|TxBitCnt_1_ ) # ((\u_uw_uart|i_uarts|TxBitCnt_3_ ) # (!\u_uw_uart|i_uarts|TxBitCnt_0_ )))

	.dataa(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|TxBitCnt_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52925 .lut_mask = 16'hFFEF;
defparam \u_uw_uart|i_uarts|ix4608z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y22_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z1  = (\u_uw_uart|i_uarts|nx4608z2  & (((\u_uw_uart|i_uarts|TxFSM_0_ )))) # (!\u_uw_uart|i_uarts|nx4608z2  & (!\u_uw_uart|i_uarts|TxFSM_0_  & ((!\u_uw_uart|i_uarts|nx4608z3 ) # (!\u_uw_uart|i_uarts|TxFSM_1_ ))))

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(\u_uw_uart|i_uarts|nx4608z2 ),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|i_uarts|nx4608z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52923 .lut_mask = 16'hC1C3;
defparam \u_uw_uart|i_uarts|ix4608z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y22_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx4608z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxFSM_0_ ));

// Location: LCCOMB_X43_Y23_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix5605z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx5605z1  = \u_uw_uart|i_uarts|TxFSM_1_  $ (((\u_uw_uart|i_uarts|TopTx  & \u_uw_uart|i_uarts|TxFSM_0_ )))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TopTx ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx5605z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix5605z52923 .lut_mask = 16'h3CF0;
defparam \u_uw_uart|i_uarts|ix5605z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y23_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx5605z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxFSM_1_ ));

// Location: LCCOMB_X38_Y23_N12
cycloneii_lcell_comb \u_kirsch|nx20492z2~_wirecell (
// Equation(s):
// \u_kirsch|nx20492z2~_wirecell_combout  = !\u_kirsch|nx20492z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|nx20492z2 ),
	.cin(gnd),
	.combout(\u_kirsch|nx20492z2~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|nx20492z2~_wirecell .lut_mask = 16'h00FF;
defparam \u_kirsch|nx20492z2~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N13
cycloneii_lcell_ff \u_kirsch|reg_state_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx20492z2~_wirecell_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx17322z4 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|state_1_ ));

// Location: LCFF_X47_Y23_N9
cycloneii_lcell_ff \u_kirsch|reg_state_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|state_1_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx17322z4 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|state_2_ ));

// Location: LCCOMB_X38_Y23_N10
cycloneii_lcell_comb \u_kirsch|state_2_~_wirecell (
// Equation(s):
// \u_kirsch|state_2_~_wirecell_combout  = !\u_kirsch|state_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|state_2_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|state_2_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|state_2_~_wirecell .lut_mask = 16'h0F0F;
defparam \u_kirsch|state_2_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N11
cycloneii_lcell_ff \u_kirsch|reg_state_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|state_2_~_wirecell_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx17322z4 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|nx20492z2 ));

// Location: LCCOMB_X48_Y24_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|not_Rx_r~_wirecell (
// Equation(s):
// \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout  = !\u_uw_uart|i_uarts|not_Rx_r 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|not_Rx_r ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|not_Rx_r~_wirecell .lut_mask = 16'h0F0F;
defparam \u_uw_uart|i_uarts|not_Rx_r~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y25_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix54636z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx54636z1  = (\u_uw_uart|i_uarts|TopRx  & \u_uw_uart|i_uarts|RxFSM_3_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TopRx ),
	.datad(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx54636z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix54636z52924 .lut_mask = 16'hF000;
defparam \u_uw_uart|i_uarts|ix54636z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_7_ ));

// Location: LCCOMB_X48_Y24_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_6_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_6_ ));

// Location: LCCOMB_X48_Y24_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_5_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_5_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_5_ ));

// Location: LCFF_X48_Y24_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_4_ ));

// Location: LCCOMB_X48_Y24_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_3_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_3_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_3_ ));

// Location: LCFF_X48_Y24_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_3_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_2_ ));

// Location: LCCOMB_X48_Y24_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_1_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_1_ ));

// Location: LCCOMB_X48_Y24_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_0_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_0_ ));

// Location: LCCOMB_X48_Y24_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_0_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_0_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_0_ ));

// Location: LCCOMB_X47_Y23_N20
cycloneii_lcell_comb \u_uw_uart|rdata_0_~feeder (
// Equation(s):
// \u_uw_uart|rdata_0_~feeder_combout  = \u_uw_uart|i_uarts|Dout_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N21
cycloneii_lcell_ff \u_uw_uart|reg_rdata_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_0_ ));

// Location: LCCOMB_X47_Y24_N24
cycloneii_lcell_comb \u_uw_uart|ix40426z52923 (
// Equation(s):
// \u_uw_uart|datain_0_  = (\u_uw_uart|rdata_0_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(\u_uw_uart|rdata_0_ ),
	.datac(vcc),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40426z52923 .lut_mask = 16'hCC00;
defparam \u_uw_uart|ix40426z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_1_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_1_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_1_ ));

// Location: LCCOMB_X47_Y23_N10
cycloneii_lcell_comb \u_uw_uart|rdata_1_~feeder (
// Equation(s):
// \u_uw_uart|rdata_1_~feeder_combout  = \u_uw_uart|i_uarts|Dout_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|Dout_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_1_~feeder .lut_mask = 16'hF0F0;
defparam \u_uw_uart|rdata_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N11
cycloneii_lcell_ff \u_uw_uart|reg_rdata_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_1_ ));

// Location: LCCOMB_X47_Y24_N8
cycloneii_lcell_comb \u_uw_uart|ix41423z52923 (
// Equation(s):
// \u_uw_uart|datain_1_  = (\u_uw_uart|rdata_1_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_1_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_1_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix41423z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix41423z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_2_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_2_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_2_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_2_ ));

// Location: LCCOMB_X47_Y23_N24
cycloneii_lcell_comb \u_uw_uart|rdata_2_~feeder (
// Equation(s):
// \u_uw_uart|rdata_2_~feeder_combout  = \u_uw_uart|i_uarts|Dout_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|Dout_2_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_2_~feeder .lut_mask = 16'hF0F0;
defparam \u_uw_uart|rdata_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N25
cycloneii_lcell_ff \u_uw_uart|reg_rdata_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_2_ ));

// Location: LCCOMB_X49_Y23_N22
cycloneii_lcell_comb \u_uw_uart|ix42420z52923 (
// Equation(s):
// \u_uw_uart|datain_2_  = (\u_uw_uart|rdata_2_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_2_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_2_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix42420z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix42420z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N20
cycloneii_lcell_comb \u_uw_uart|ix43417z52923 (
// Equation(s):
// \u_uw_uart|datain_3_  = (\u_uw_uart|rdata_3_  & \u_uw_uart|o_pixavail )

	.dataa(\u_uw_uart|rdata_3_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_3_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix43417z52923 .lut_mask = 16'hAA00;
defparam \u_uw_uart|ix43417z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_4_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_4_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_4_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_4_ ));

// Location: LCCOMB_X47_Y23_N4
cycloneii_lcell_comb \u_uw_uart|rdata_4_~feeder (
// Equation(s):
// \u_uw_uart|rdata_4_~feeder_combout  = \u_uw_uart|i_uarts|Dout_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|Dout_4_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_4_~feeder .lut_mask = 16'hF0F0;
defparam \u_uw_uart|rdata_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N5
cycloneii_lcell_ff \u_uw_uart|reg_rdata_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_4_ ));

// Location: LCCOMB_X48_Y23_N16
cycloneii_lcell_comb \u_uw_uart|ix44414z52923 (
// Equation(s):
// \u_uw_uart|datain_4_  = (\u_uw_uart|rdata_4_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_4_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_4_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix44414z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix44414z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_5_ ));

// Location: LCCOMB_X47_Y23_N2
cycloneii_lcell_comb \u_uw_uart|rdata_5_~feeder (
// Equation(s):
// \u_uw_uart|rdata_5_~feeder_combout  = \u_uw_uart|i_uarts|Dout_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|Dout_5_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_5_~feeder .lut_mask = 16'hF0F0;
defparam \u_uw_uart|rdata_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N3
cycloneii_lcell_ff \u_uw_uart|reg_rdata_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_5_ ));

// Location: LCCOMB_X46_Y24_N8
cycloneii_lcell_comb \u_uw_uart|ix45411z52923 (
// Equation(s):
// \u_uw_uart|datain_5_  = (\u_uw_uart|rdata_5_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_5_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_5_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix45411z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix45411z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_6_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_6_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_6_ ));

// Location: LCFF_X46_Y24_N25
cycloneii_lcell_ff \u_uw_uart|reg_rdata_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Dout_6_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_6_ ));

// Location: LCCOMB_X46_Y24_N0
cycloneii_lcell_comb \u_uw_uart|ix46408z52923 (
// Equation(s):
// \u_uw_uart|datain_6_  = (\u_uw_uart|rdata_6_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_6_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_6_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46408z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix46408z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_7_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_7_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_7_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_7_ ));

// Location: LCCOMB_X46_Y24_N2
cycloneii_lcell_comb \u_uw_uart|rdata_7_~feeder (
// Equation(s):
// \u_uw_uart|rdata_7_~feeder_combout  = \u_uw_uart|i_uarts|Dout_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_7_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y24_N3
cycloneii_lcell_ff \u_uw_uart|reg_rdata_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_7_ ));

// Location: LCCOMB_X46_Y24_N14
cycloneii_lcell_comb \u_uw_uart|ix47405z52923 (
// Equation(s):
// \u_uw_uart|datain_7_  = (\u_uw_uart|rdata_7_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(\u_uw_uart|rdata_7_ ),
	.datac(vcc),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_7_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix47405z52923 .lut_mask = 16'hCC00;
defparam \u_uw_uart|ix47405z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N30
cycloneii_lcell_comb \u_kirsch|ix23483z52923 (
// Equation(s):
// \u_kirsch|nx23483z1  = (\u_kirsch|nx20492z2  & ((\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [4]))) # (!\u_kirsch|nx20492z2  & (\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [4]))

	.dataa(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [4]),
	.datab(\u_kirsch|nx20492z2 ),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [4]),
	.cin(gnd),
	.combout(\u_kirsch|nx23483z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix23483z52923 .lut_mask = 16'hEE22;
defparam \u_kirsch|ix23483z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: M4K_X52_Y24
cycloneii_ram_block \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 (
	.portawe(\u_kirsch|we_2_ ),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\clk~clkctrl_outclk ),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({\u_uw_uart|datain_7_ ,\u_uw_uart|datain_6_ ,\u_uw_uart|datain_5_ ,\u_uw_uart|datain_4_ ,\u_uw_uart|datain_3_ ,\u_uw_uart|datain_2_ ,\u_uw_uart|datain_1_ ,\u_uw_uart|datain_0_ }),
	.portaaddr({\u_kirsch|modgen_counter_col|nx1041z1 ,\u_kirsch|modgen_counter_col|nx58250z3 ,\u_kirsch|modgen_counter_col|nx58250z5 ,\u_kirsch|modgen_counter_col|nx58250z7 ,\u_kirsch|modgen_counter_col|nx58250z9 ,\u_kirsch|modgen_counter_col|nx58250z11 ,
\u_kirsch|modgen_counter_col|nx58250z13 ,\u_kirsch|modgen_counter_col|nx58250z15 }),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus ),
	.portbdataout());
// synopsys translate_off
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .logical_ram_name = "kirsch_notri:u_kirsch|ram_dq_8_2:Generate_mem_2_u_mem0_mem|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .operation_mode = "single_port";
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_address_width = 8;
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_data_width = 8;
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_last_address = 255;
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 256;
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_logical_ram_width = 8;
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_b_address_width = 8;
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .port_b_data_width = 8;
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N16
cycloneii_lcell_comb \u_kirsch|ix20492z52924 (
// Equation(s):
// \u_kirsch|nx20492z3  = (\u_uw_uart|o_pixavail  & \nrst~combout )

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(vcc),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_kirsch|nx20492z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20492z52924 .lut_mask = 16'hAA00;
defparam \u_kirsch|ix20492z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y23_N31
cycloneii_lcell_ff \u_kirsch|reg_c_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx23483z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [4]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|state_1_ ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_4_ ));

// Location: LCCOMB_X44_Y23_N6
cycloneii_lcell_comb \u_kirsch|x_r5_4_~feeder (
// Equation(s):
// \u_kirsch|x_r5_4_~feeder_combout  = \u_kirsch|c_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|c_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r5_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r5_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r5_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y23_N17
cycloneii_lcell_ff \u_kirsch|reg_e_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_4_ ));

// Location: LCFF_X45_Y23_N21
cycloneii_lcell_ff \u_kirsch|reg_f_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_4_ ));

// Location: LCFF_X46_Y24_N15
cycloneii_lcell_ff \u_kirsch|reg_e_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_7_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_7_ ));

// Location: LCFF_X45_Y24_N29
cycloneii_lcell_ff \u_kirsch|reg_f_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_7_ ));

// Location: LCCOMB_X48_Y23_N8
cycloneii_lcell_comb \u_kirsch|ix20492z52923 (
// Equation(s):
// \u_kirsch|nx20492z1  = (\u_kirsch|nx20492z2  & (\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [7])) # (!\u_kirsch|nx20492z2  & ((\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [7])))

	.dataa(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [7]),
	.datab(\u_kirsch|nx20492z2 ),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [7]),
	.cin(gnd),
	.combout(\u_kirsch|nx20492z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20492z52923 .lut_mask = 16'hBB88;
defparam \u_kirsch|ix20492z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y23_N9
cycloneii_lcell_ff \u_kirsch|reg_c_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx20492z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [7]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|state_1_ ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_7_ ));

// Location: LCCOMB_X48_Y23_N10
cycloneii_lcell_comb \u_kirsch|ix21489z52923 (
// Equation(s):
// \u_kirsch|nx21489z1  = (\u_kirsch|nx20492z2  & (\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [6])) # (!\u_kirsch|nx20492z2  & ((\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [6])))

	.dataa(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [6]),
	.datab(\u_kirsch|nx20492z2 ),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [6]),
	.cin(gnd),
	.combout(\u_kirsch|nx21489z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix21489z52923 .lut_mask = 16'hBB88;
defparam \u_kirsch|ix21489z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y23_N11
cycloneii_lcell_ff \u_kirsch|reg_c_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx21489z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [6]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|state_1_ ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_6_ ));

// Location: LCFF_X46_Y24_N9
cycloneii_lcell_ff \u_kirsch|reg_e_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_5_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_5_ ));

// Location: LCFF_X45_Y23_N23
cycloneii_lcell_ff \u_kirsch|reg_f_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_5_ ));

// Location: LCFF_X48_Y23_N21
cycloneii_lcell_ff \u_kirsch|reg_e_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_3_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_3_ ));

// Location: LCFF_X45_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_f_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_3_ ));

// Location: LCCOMB_X48_Y23_N22
cycloneii_lcell_comb \u_kirsch|ix25477z52923 (
// Equation(s):
// \u_kirsch|nx25477z1  = (\u_kirsch|nx20492z2  & (\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [2])) # (!\u_kirsch|nx20492z2  & ((\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [2])))

	.dataa(\u_kirsch|nx20492z2 ),
	.datab(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [2]),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [2]),
	.cin(gnd),
	.combout(\u_kirsch|nx25477z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix25477z52923 .lut_mask = 16'hDD88;
defparam \u_kirsch|ix25477z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y23_N23
cycloneii_lcell_ff \u_kirsch|reg_c_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx25477z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [2]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|state_1_ ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_2_ ));

// Location: LCCOMB_X48_Y23_N24
cycloneii_lcell_comb \u_kirsch|ix26474z52923 (
// Equation(s):
// \u_kirsch|nx26474z1  = (\u_kirsch|nx20492z2  & ((\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [1]))) # (!\u_kirsch|nx20492z2  & (\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [1]))

	.dataa(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [1]),
	.datab(\u_kirsch|nx20492z2 ),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [1]),
	.cin(gnd),
	.combout(\u_kirsch|nx26474z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix26474z52923 .lut_mask = 16'hEE22;
defparam \u_kirsch|ix26474z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y23_N25
cycloneii_lcell_ff \u_kirsch|reg_c_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx26474z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|state_1_ ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_1_ ));

// Location: LCFF_X47_Y24_N25
cycloneii_lcell_ff \u_kirsch|reg_e_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_0_ ));

// Location: LCFF_X44_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_f_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_0_ ));

// Location: LCCOMB_X45_Y23_N12
cycloneii_lcell_comb \u_kirsch|ix27953z18832|ix100z52931 (
// Equation(s):
// \u_kirsch|ix27953z18832|nx100z22  = CARRY((!\u_kirsch|c_0_  & \u_kirsch|f_0_ ))

	.dataa(\u_kirsch|c_0_ ),
	.datab(\u_kirsch|f_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|ix27953z18832|nx100z22 ));
// synopsys translate_off
defparam \u_kirsch|ix27953z18832|ix100z52931 .lut_mask = 16'h0044;
defparam \u_kirsch|ix27953z18832|ix100z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y23_N14
cycloneii_lcell_comb \u_kirsch|ix27953z18832|ix100z52930 (
// Equation(s):
// \u_kirsch|ix27953z18832|nx100z19  = CARRY((\u_kirsch|f_1_  & (\u_kirsch|c_1_  & !\u_kirsch|ix27953z18832|nx100z22 )) # (!\u_kirsch|f_1_  & ((\u_kirsch|c_1_ ) # (!\u_kirsch|ix27953z18832|nx100z22 ))))

	.dataa(\u_kirsch|f_1_ ),
	.datab(\u_kirsch|c_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix27953z18832|nx100z22 ),
	.combout(),
	.cout(\u_kirsch|ix27953z18832|nx100z19 ));
// synopsys translate_off
defparam \u_kirsch|ix27953z18832|ix100z52930 .lut_mask = 16'h004D;
defparam \u_kirsch|ix27953z18832|ix100z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y23_N16
cycloneii_lcell_comb \u_kirsch|ix27953z18832|ix100z52929 (
// Equation(s):
// \u_kirsch|ix27953z18832|nx100z16  = CARRY((\u_kirsch|f_2_  & ((!\u_kirsch|ix27953z18832|nx100z19 ) # (!\u_kirsch|c_2_ ))) # (!\u_kirsch|f_2_  & (!\u_kirsch|c_2_  & !\u_kirsch|ix27953z18832|nx100z19 )))

	.dataa(\u_kirsch|f_2_ ),
	.datab(\u_kirsch|c_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix27953z18832|nx100z19 ),
	.combout(),
	.cout(\u_kirsch|ix27953z18832|nx100z16 ));
// synopsys translate_off
defparam \u_kirsch|ix27953z18832|ix100z52929 .lut_mask = 16'h002B;
defparam \u_kirsch|ix27953z18832|ix100z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y23_N18
cycloneii_lcell_comb \u_kirsch|ix27953z18832|ix100z52928 (
// Equation(s):
// \u_kirsch|ix27953z18832|nx100z13  = CARRY((\u_kirsch|c_3_  & ((!\u_kirsch|ix27953z18832|nx100z16 ) # (!\u_kirsch|f_3_ ))) # (!\u_kirsch|c_3_  & (!\u_kirsch|f_3_  & !\u_kirsch|ix27953z18832|nx100z16 )))

	.dataa(\u_kirsch|c_3_ ),
	.datab(\u_kirsch|f_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix27953z18832|nx100z16 ),
	.combout(),
	.cout(\u_kirsch|ix27953z18832|nx100z13 ));
// synopsys translate_off
defparam \u_kirsch|ix27953z18832|ix100z52928 .lut_mask = 16'h002B;
defparam \u_kirsch|ix27953z18832|ix100z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y23_N20
cycloneii_lcell_comb \u_kirsch|ix27953z18832|ix100z52927 (
// Equation(s):
// \u_kirsch|ix27953z18832|nx100z10  = CARRY((\u_kirsch|f_4_  & ((!\u_kirsch|ix27953z18832|nx100z13 ) # (!\u_kirsch|c_4_ ))) # (!\u_kirsch|f_4_  & (!\u_kirsch|c_4_  & !\u_kirsch|ix27953z18832|nx100z13 )))

	.dataa(\u_kirsch|f_4_ ),
	.datab(\u_kirsch|c_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix27953z18832|nx100z13 ),
	.combout(),
	.cout(\u_kirsch|ix27953z18832|nx100z10 ));
// synopsys translate_off
defparam \u_kirsch|ix27953z18832|ix100z52927 .lut_mask = 16'h002B;
defparam \u_kirsch|ix27953z18832|ix100z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y23_N22
cycloneii_lcell_comb \u_kirsch|ix27953z18832|ix100z52926 (
// Equation(s):
// \u_kirsch|ix27953z18832|nx100z7  = CARRY((\u_kirsch|c_5_  & ((!\u_kirsch|ix27953z18832|nx100z10 ) # (!\u_kirsch|f_5_ ))) # (!\u_kirsch|c_5_  & (!\u_kirsch|f_5_  & !\u_kirsch|ix27953z18832|nx100z10 )))

	.dataa(\u_kirsch|c_5_ ),
	.datab(\u_kirsch|f_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix27953z18832|nx100z10 ),
	.combout(),
	.cout(\u_kirsch|ix27953z18832|nx100z7 ));
// synopsys translate_off
defparam \u_kirsch|ix27953z18832|ix100z52926 .lut_mask = 16'h002B;
defparam \u_kirsch|ix27953z18832|ix100z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y23_N24
cycloneii_lcell_comb \u_kirsch|ix27953z18832|ix100z52925 (
// Equation(s):
// \u_kirsch|ix27953z18832|nx100z4  = CARRY((\u_kirsch|f_6_  & ((!\u_kirsch|ix27953z18832|nx100z7 ) # (!\u_kirsch|c_6_ ))) # (!\u_kirsch|f_6_  & (!\u_kirsch|c_6_  & !\u_kirsch|ix27953z18832|nx100z7 )))

	.dataa(\u_kirsch|f_6_ ),
	.datab(\u_kirsch|c_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix27953z18832|nx100z7 ),
	.combout(),
	.cout(\u_kirsch|ix27953z18832|nx100z4 ));
// synopsys translate_off
defparam \u_kirsch|ix27953z18832|ix100z52925 .lut_mask = 16'h002B;
defparam \u_kirsch|ix27953z18832|ix100z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y23_N26
cycloneii_lcell_comb \u_kirsch|ix27953z18832|ix100z52923 (
// Equation(s):
// \u_kirsch|ix27953z18832|nx100z1  = (\u_kirsch|f_7_  & ((\u_kirsch|ix27953z18832|nx100z4 ) # (!\u_kirsch|c_7_ ))) # (!\u_kirsch|f_7_  & (\u_kirsch|ix27953z18832|nx100z4  & !\u_kirsch|c_7_ ))

	.dataa(vcc),
	.datab(\u_kirsch|f_7_ ),
	.datac(vcc),
	.datad(\u_kirsch|c_7_ ),
	.cin(\u_kirsch|ix27953z18832|nx100z4 ),
	.combout(\u_kirsch|ix27953z18832|nx100z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix27953z18832|ix100z52923 .lut_mask = 16'hC0FC;
defparam \u_kirsch|ix27953z18832|ix100z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N22
cycloneii_lcell_comb \u_kirsch|ix27953z52923 (
// Equation(s):
// \u_kirsch|nx27953z1  = (\u_kirsch|validBit_2_  & (!\u_kirsch|validBit_1_  & !\u_kirsch|validBit_0_ ))

	.dataa(\u_kirsch|validBit_2_ ),
	.datab(\u_kirsch|validBit_1_ ),
	.datac(\u_kirsch|validBit_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|nx27953z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix27953z52923 .lut_mask = 16'h0202;
defparam \u_kirsch|ix27953z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y23_N7
cycloneii_lcell_ff \u_kirsch|reg_x_r5_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r5_4_~feeder_combout ),
	.sdata(\u_kirsch|f_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix27953z18832|nx100z1 ),
	.ena(\u_kirsch|nx27953z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r5_4_ ));

// Location: LCFF_X46_Y24_N5
cycloneii_lcell_ff \u_kirsch|reg_g_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_4_ ));

// Location: LCCOMB_X44_Y25_N24
cycloneii_lcell_comb \u_kirsch|r5_4_~feeder (
// Equation(s):
// \u_kirsch|r5_4_~feeder_combout  = \u_kirsch|g_4_ 

	.dataa(vcc),
	.datab(\u_kirsch|g_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r5_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_4_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r5_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y24_N31
cycloneii_lcell_ff \u_kirsch|reg_b_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_4_ ));

// Location: LCFF_X45_Y24_N19
cycloneii_lcell_ff \u_kirsch|reg_b_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_7_ ));

// Location: LCFF_X46_Y24_N31
cycloneii_lcell_ff \u_kirsch|reg_b_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_6_ ));

// Location: LCCOMB_X48_Y23_N4
cycloneii_lcell_comb \u_kirsch|ix22486z52923 (
// Equation(s):
// \u_kirsch|nx22486z1  = (\u_kirsch|nx20492z2  & (\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [5])) # (!\u_kirsch|nx20492z2  & ((\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [5])))

	.dataa(\u_kirsch|nx20492z2 ),
	.datab(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [5]),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [5]),
	.cin(gnd),
	.combout(\u_kirsch|nx22486z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix22486z52923 .lut_mask = 16'hDD88;
defparam \u_kirsch|ix22486z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y23_N5
cycloneii_lcell_ff \u_kirsch|reg_c_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx22486z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [5]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|state_1_ ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_5_ ));

// Location: LCFF_X45_Y24_N23
cycloneii_lcell_ff \u_kirsch|reg_b_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_5_ ));

// Location: LCCOMB_X48_Y23_N2
cycloneii_lcell_comb \u_kirsch|ix24480z52923 (
// Equation(s):
// \u_kirsch|nx24480z1  = (\u_kirsch|nx20492z2  & (\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [3])) # (!\u_kirsch|nx20492z2  & ((\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [3])))

	.dataa(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [3]),
	.datab(\u_kirsch|nx20492z2 ),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [3]),
	.cin(gnd),
	.combout(\u_kirsch|nx24480z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix24480z52923 .lut_mask = 16'hBB88;
defparam \u_kirsch|ix24480z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y23_N3
cycloneii_lcell_ff \u_kirsch|reg_c_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx24480z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|state_1_ ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_3_ ));

// Location: LCFF_X45_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_b_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_3_ ));

// Location: LCFF_X49_Y23_N23
cycloneii_lcell_ff \u_kirsch|reg_e_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_2_ ));

// Location: LCFF_X43_Y24_N29
cycloneii_lcell_ff \u_kirsch|reg_f_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_2_ ));

// Location: LCFF_X43_Y24_N23
cycloneii_lcell_ff \u_kirsch|reg_g_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_2_ ));

// Location: LCFF_X44_Y24_N29
cycloneii_lcell_ff \u_kirsch|reg_b_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_1_ ));

// Location: LCFF_X44_Y24_N9
cycloneii_lcell_ff \u_kirsch|reg_g_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_0_ ));

// Location: LCCOMB_X44_Y24_N8
cycloneii_lcell_comb \u_kirsch|ix13424z18832|ix100z52931 (
// Equation(s):
// \u_kirsch|ix13424z18832|nx100z22  = CARRY((\u_kirsch|b_0_  & !\u_kirsch|g_0_ ))

	.dataa(\u_kirsch|b_0_ ),
	.datab(\u_kirsch|g_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|ix13424z18832|nx100z22 ));
// synopsys translate_off
defparam \u_kirsch|ix13424z18832|ix100z52931 .lut_mask = 16'h0022;
defparam \u_kirsch|ix13424z18832|ix100z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N10
cycloneii_lcell_comb \u_kirsch|ix13424z18832|ix100z52930 (
// Equation(s):
// \u_kirsch|ix13424z18832|nx100z19  = CARRY((\u_kirsch|g_1_  & ((!\u_kirsch|ix13424z18832|nx100z22 ) # (!\u_kirsch|b_1_ ))) # (!\u_kirsch|g_1_  & (!\u_kirsch|b_1_  & !\u_kirsch|ix13424z18832|nx100z22 )))

	.dataa(\u_kirsch|g_1_ ),
	.datab(\u_kirsch|b_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix13424z18832|nx100z22 ),
	.combout(),
	.cout(\u_kirsch|ix13424z18832|nx100z19 ));
// synopsys translate_off
defparam \u_kirsch|ix13424z18832|ix100z52930 .lut_mask = 16'h002B;
defparam \u_kirsch|ix13424z18832|ix100z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N12
cycloneii_lcell_comb \u_kirsch|ix13424z18832|ix100z52929 (
// Equation(s):
// \u_kirsch|ix13424z18832|nx100z16  = CARRY((\u_kirsch|b_2_  & ((!\u_kirsch|ix13424z18832|nx100z19 ) # (!\u_kirsch|g_2_ ))) # (!\u_kirsch|b_2_  & (!\u_kirsch|g_2_  & !\u_kirsch|ix13424z18832|nx100z19 )))

	.dataa(\u_kirsch|b_2_ ),
	.datab(\u_kirsch|g_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix13424z18832|nx100z19 ),
	.combout(),
	.cout(\u_kirsch|ix13424z18832|nx100z16 ));
// synopsys translate_off
defparam \u_kirsch|ix13424z18832|ix100z52929 .lut_mask = 16'h002B;
defparam \u_kirsch|ix13424z18832|ix100z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N14
cycloneii_lcell_comb \u_kirsch|ix13424z18832|ix100z52928 (
// Equation(s):
// \u_kirsch|ix13424z18832|nx100z13  = CARRY((\u_kirsch|g_3_  & ((!\u_kirsch|ix13424z18832|nx100z16 ) # (!\u_kirsch|b_3_ ))) # (!\u_kirsch|g_3_  & (!\u_kirsch|b_3_  & !\u_kirsch|ix13424z18832|nx100z16 )))

	.dataa(\u_kirsch|g_3_ ),
	.datab(\u_kirsch|b_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix13424z18832|nx100z16 ),
	.combout(),
	.cout(\u_kirsch|ix13424z18832|nx100z13 ));
// synopsys translate_off
defparam \u_kirsch|ix13424z18832|ix100z52928 .lut_mask = 16'h002B;
defparam \u_kirsch|ix13424z18832|ix100z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N16
cycloneii_lcell_comb \u_kirsch|ix13424z18832|ix100z52927 (
// Equation(s):
// \u_kirsch|ix13424z18832|nx100z10  = CARRY((\u_kirsch|b_4_  & ((!\u_kirsch|ix13424z18832|nx100z13 ) # (!\u_kirsch|g_4_ ))) # (!\u_kirsch|b_4_  & (!\u_kirsch|g_4_  & !\u_kirsch|ix13424z18832|nx100z13 )))

	.dataa(\u_kirsch|b_4_ ),
	.datab(\u_kirsch|g_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix13424z18832|nx100z13 ),
	.combout(),
	.cout(\u_kirsch|ix13424z18832|nx100z10 ));
// synopsys translate_off
defparam \u_kirsch|ix13424z18832|ix100z52927 .lut_mask = 16'h002B;
defparam \u_kirsch|ix13424z18832|ix100z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N18
cycloneii_lcell_comb \u_kirsch|ix13424z18832|ix100z52926 (
// Equation(s):
// \u_kirsch|ix13424z18832|nx100z7  = CARRY((\u_kirsch|g_5_  & ((!\u_kirsch|ix13424z18832|nx100z10 ) # (!\u_kirsch|b_5_ ))) # (!\u_kirsch|g_5_  & (!\u_kirsch|b_5_  & !\u_kirsch|ix13424z18832|nx100z10 )))

	.dataa(\u_kirsch|g_5_ ),
	.datab(\u_kirsch|b_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix13424z18832|nx100z10 ),
	.combout(),
	.cout(\u_kirsch|ix13424z18832|nx100z7 ));
// synopsys translate_off
defparam \u_kirsch|ix13424z18832|ix100z52926 .lut_mask = 16'h002B;
defparam \u_kirsch|ix13424z18832|ix100z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N20
cycloneii_lcell_comb \u_kirsch|ix13424z18832|ix100z52925 (
// Equation(s):
// \u_kirsch|ix13424z18832|nx100z4  = CARRY((\u_kirsch|g_6_  & (\u_kirsch|b_6_  & !\u_kirsch|ix13424z18832|nx100z7 )) # (!\u_kirsch|g_6_  & ((\u_kirsch|b_6_ ) # (!\u_kirsch|ix13424z18832|nx100z7 ))))

	.dataa(\u_kirsch|g_6_ ),
	.datab(\u_kirsch|b_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix13424z18832|nx100z7 ),
	.combout(),
	.cout(\u_kirsch|ix13424z18832|nx100z4 ));
// synopsys translate_off
defparam \u_kirsch|ix13424z18832|ix100z52925 .lut_mask = 16'h004D;
defparam \u_kirsch|ix13424z18832|ix100z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N22
cycloneii_lcell_comb \u_kirsch|ix13424z18832|ix100z52923 (
// Equation(s):
// \u_kirsch|ix13424z18832|nx100z1  = (\u_kirsch|g_7_  & (\u_kirsch|ix13424z18832|nx100z4  & \u_kirsch|b_7_ )) # (!\u_kirsch|g_7_  & ((\u_kirsch|ix13424z18832|nx100z4 ) # (\u_kirsch|b_7_ )))

	.dataa(\u_kirsch|g_7_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|b_7_ ),
	.cin(\u_kirsch|ix13424z18832|nx100z4 ),
	.combout(\u_kirsch|ix13424z18832|nx100z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix13424z18832|ix100z52923 .lut_mask = 16'hF550;
defparam \u_kirsch|ix13424z18832|ix100z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix13424z52924 (
// Equation(s):
// \u_kirsch|nx13424z2  = (!\u_kirsch|validBit_0_  & \u_kirsch|validBit_1_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|validBit_0_ ),
	.datad(\u_kirsch|validBit_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx13424z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix13424z52924 .lut_mask = 16'h0F00;
defparam \u_kirsch|ix13424z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y25_N25
cycloneii_lcell_ff \u_kirsch|reg_r5_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_4_~feeder_combout ),
	.sdata(\u_kirsch|b_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix13424z18832|nx100z1 ),
	.ena(\u_kirsch|nx13424z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_4_ ));

// Location: LCCOMB_X43_Y25_N28
cycloneii_lcell_comb \u_kirsch|ix8431z52926 (
// Equation(s):
// \u_kirsch|x_r3_7n3s1f1_4_  = (\u_kirsch|validBit_2_  & ((\u_kirsch|r5_4_ ))) # (!\u_kirsch|validBit_2_  & (\u_kirsch|x_r5_4_ ))

	.dataa(\u_kirsch|validBit_2_ ),
	.datab(vcc),
	.datac(\u_kirsch|x_r5_4_ ),
	.datad(\u_kirsch|r5_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r3_7n3s1f1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix8431z52926 .lut_mask = 16'hFA50;
defparam \u_kirsch|ix8431z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y24_N15
cycloneii_lcell_ff \u_kirsch|reg_g_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_3_ ));

// Location: LCFF_X46_Y24_N13
cycloneii_lcell_ff \u_kirsch|reg_a_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_3_ ));

// Location: LCCOMB_X47_Y24_N16
cycloneii_lcell_comb \u_kirsch|ix51677z52942 (
// Equation(s):
// \u_kirsch|nx51677z11  = (!\u_kirsch|validBit_0_  & ((\u_kirsch|validBit_1_ ) # (!\u_kirsch|validBit_2_ )))

	.dataa(\u_kirsch|validBit_1_ ),
	.datab(vcc),
	.datac(\u_kirsch|validBit_2_ ),
	.datad(\u_kirsch|validBit_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z11 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52942 .lut_mask = 16'h00AF;
defparam \u_kirsch|ix51677z52942 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N20
cycloneii_lcell_comb \u_kirsch|ix51677z52944 (
// Equation(s):
// \u_kirsch|nx51677z13  = (\u_kirsch|validBit_0_ ) # ((!\u_kirsch|validBit_1_  & !\u_kirsch|validBit_2_ ))

	.dataa(vcc),
	.datab(\u_kirsch|validBit_0_ ),
	.datac(\u_kirsch|validBit_1_ ),
	.datad(\u_kirsch|validBit_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z13 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52944 .lut_mask = 16'hCCCF;
defparam \u_kirsch|ix51677z52944 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N2
cycloneii_lcell_comb \u_kirsch|ix51677z52952 (
// Equation(s):
// \u_kirsch|nx51677z17  = (\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z13 )))) # (!\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z13  & ((\u_kirsch|c_3_ ))) # (!\u_kirsch|nx51677z13  & (\u_kirsch|e_3_ ))))

	.dataa(\u_kirsch|e_3_ ),
	.datab(\u_kirsch|c_3_ ),
	.datac(\u_kirsch|nx51677z11 ),
	.datad(\u_kirsch|nx51677z13 ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z17 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52952 .lut_mask = 16'hFC0A;
defparam \u_kirsch|ix51677z52952 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N12
cycloneii_lcell_comb \u_kirsch|ix51677z52951 (
// Equation(s):
// \u_kirsch|r2_6n3s1f2_3_  = (\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z17  & (\u_kirsch|g_3_ )) # (!\u_kirsch|nx51677z17  & ((\u_kirsch|a_3_ ))))) # (!\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z17 ))))

	.dataa(\u_kirsch|nx51677z11 ),
	.datab(\u_kirsch|g_3_ ),
	.datac(\u_kirsch|a_3_ ),
	.datad(\u_kirsch|nx51677z17 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f2_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52951 .lut_mask = 16'hDDA0;
defparam \u_kirsch|ix51677z52951 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N12
cycloneii_lcell_comb \u_kirsch|ix51677z52954 (
// Equation(s):
// \u_kirsch|nx51677z18  = (\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z13 )))) # (!\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z13  & ((\u_kirsch|c_2_ ))) # (!\u_kirsch|nx51677z13  & (\u_kirsch|e_2_ ))))

	.dataa(\u_kirsch|e_2_ ),
	.datab(\u_kirsch|c_2_ ),
	.datac(\u_kirsch|nx51677z11 ),
	.datad(\u_kirsch|nx51677z13 ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z18 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52954 .lut_mask = 16'hFC0A;
defparam \u_kirsch|ix51677z52954 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N22
cycloneii_lcell_comb \u_kirsch|ix51677z52953 (
// Equation(s):
// \u_kirsch|r2_6n3s1f2_2_  = (\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z18  & ((\u_kirsch|g_2_ ))) # (!\u_kirsch|nx51677z18  & (\u_kirsch|a_2_ )))) # (!\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z18 ))))

	.dataa(\u_kirsch|a_2_ ),
	.datab(\u_kirsch|nx51677z11 ),
	.datac(\u_kirsch|g_2_ ),
	.datad(\u_kirsch|nx51677z18 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f2_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52953 .lut_mask = 16'hF388;
defparam \u_kirsch|ix51677z52953 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y24_N25
cycloneii_lcell_ff \u_kirsch|reg_a_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_1_ ));

// Location: LCCOMB_X47_Y24_N22
cycloneii_lcell_comb \u_kirsch|ix51677z52956 (
// Equation(s):
// \u_kirsch|nx51677z19  = (\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z13 )))) # (!\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z13  & ((\u_kirsch|c_1_ ))) # (!\u_kirsch|nx51677z13  & (\u_kirsch|e_1_ ))))

	.dataa(\u_kirsch|e_1_ ),
	.datab(\u_kirsch|c_1_ ),
	.datac(\u_kirsch|nx51677z11 ),
	.datad(\u_kirsch|nx51677z13 ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z19 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52956 .lut_mask = 16'hFC0A;
defparam \u_kirsch|ix51677z52956 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N24
cycloneii_lcell_comb \u_kirsch|ix51677z52955 (
// Equation(s):
// \u_kirsch|r2_6n3s1f2_1_  = (\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z19  & (\u_kirsch|g_1_ )) # (!\u_kirsch|nx51677z19  & ((\u_kirsch|a_1_ ))))) # (!\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z19 ))))

	.dataa(\u_kirsch|g_1_ ),
	.datab(\u_kirsch|nx51677z11 ),
	.datac(\u_kirsch|a_1_ ),
	.datad(\u_kirsch|nx51677z19 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f2_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52955 .lut_mask = 16'hBBC0;
defparam \u_kirsch|ix51677z52955 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N26
cycloneii_lcell_comb \u_kirsch|ix27471z52923 (
// Equation(s):
// \u_kirsch|nx27471z1  = (\u_kirsch|nx20492z2  & ((\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [0]))) # (!\u_kirsch|nx20492z2  & (\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [0]))

	.dataa(\u_kirsch|nx20492z2 ),
	.datab(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [0]),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [0]),
	.cin(gnd),
	.combout(\u_kirsch|nx27471z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix27471z52923 .lut_mask = 16'hEE44;
defparam \u_kirsch|ix27471z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y23_N27
cycloneii_lcell_ff \u_kirsch|reg_c_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx27471z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|state_1_ ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_0_ ));

// Location: LCFF_X44_Y24_N7
cycloneii_lcell_ff \u_kirsch|reg_b_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_0_ ));

// Location: LCFF_X44_Y24_N31
cycloneii_lcell_ff \u_kirsch|reg_a_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_0_ ));

// Location: LCCOMB_X47_Y24_N26
cycloneii_lcell_comb \u_kirsch|ix51677z52958 (
// Equation(s):
// \u_kirsch|nx51677z20  = (\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z13 )))) # (!\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z13  & (\u_kirsch|c_0_ )) # (!\u_kirsch|nx51677z13  & ((\u_kirsch|e_0_ )))))

	.dataa(\u_kirsch|nx51677z11 ),
	.datab(\u_kirsch|c_0_ ),
	.datac(\u_kirsch|nx51677z13 ),
	.datad(\u_kirsch|e_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z20 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52958 .lut_mask = 16'hE5E0;
defparam \u_kirsch|ix51677z52958 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N30
cycloneii_lcell_comb \u_kirsch|ix51677z52957 (
// Equation(s):
// \u_kirsch|r2_6n3s1f2_0_  = (\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z20  & (\u_kirsch|g_0_ )) # (!\u_kirsch|nx51677z20  & ((\u_kirsch|a_0_ ))))) # (!\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z20 ))))

	.dataa(\u_kirsch|nx51677z11 ),
	.datab(\u_kirsch|g_0_ ),
	.datac(\u_kirsch|a_0_ ),
	.datad(\u_kirsch|nx51677z20 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f2_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52957 .lut_mask = 16'hDDA0;
defparam \u_kirsch|ix51677z52957 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y24_N0
cycloneii_lcell_comb \u_kirsch|r2_add8_6i49|ix44952z52931 (
// Equation(s):
// \u_kirsch|r2_add8_6i49|nx37973z1  = (\u_kirsch|r2_6n3s1f1_0_  & (\u_kirsch|r2_6n3s1f2_0_  $ (VCC))) # (!\u_kirsch|r2_6n3s1f1_0_  & (\u_kirsch|r2_6n3s1f2_0_  & VCC))
// \u_kirsch|r2_add8_6i49|nx44952z22  = CARRY((\u_kirsch|r2_6n3s1f1_0_  & \u_kirsch|r2_6n3s1f2_0_ ))

	.dataa(\u_kirsch|r2_6n3s1f1_0_ ),
	.datab(\u_kirsch|r2_6n3s1f2_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r2_add8_6i49|nx37973z1 ),
	.cout(\u_kirsch|r2_add8_6i49|nx44952z22 ));
// synopsys translate_off
defparam \u_kirsch|r2_add8_6i49|ix44952z52931 .lut_mask = 16'h6688;
defparam \u_kirsch|r2_add8_6i49|ix44952z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y24_N2
cycloneii_lcell_comb \u_kirsch|r2_add8_6i49|ix44952z52930 (
// Equation(s):
// \u_kirsch|r2_add8_6i49|nx38970z1  = (\u_kirsch|r2_6n3s1f1_1_  & ((\u_kirsch|r2_6n3s1f2_1_  & (\u_kirsch|r2_add8_6i49|nx44952z22  & VCC)) # (!\u_kirsch|r2_6n3s1f2_1_  & (!\u_kirsch|r2_add8_6i49|nx44952z22 )))) # (!\u_kirsch|r2_6n3s1f1_1_  & 
// ((\u_kirsch|r2_6n3s1f2_1_  & (!\u_kirsch|r2_add8_6i49|nx44952z22 )) # (!\u_kirsch|r2_6n3s1f2_1_  & ((\u_kirsch|r2_add8_6i49|nx44952z22 ) # (GND)))))
// \u_kirsch|r2_add8_6i49|nx44952z19  = CARRY((\u_kirsch|r2_6n3s1f1_1_  & (!\u_kirsch|r2_6n3s1f2_1_  & !\u_kirsch|r2_add8_6i49|nx44952z22 )) # (!\u_kirsch|r2_6n3s1f1_1_  & ((!\u_kirsch|r2_add8_6i49|nx44952z22 ) # (!\u_kirsch|r2_6n3s1f2_1_ ))))

	.dataa(\u_kirsch|r2_6n3s1f1_1_ ),
	.datab(\u_kirsch|r2_6n3s1f2_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add8_6i49|nx44952z22 ),
	.combout(\u_kirsch|r2_add8_6i49|nx38970z1 ),
	.cout(\u_kirsch|r2_add8_6i49|nx44952z19 ));
// synopsys translate_off
defparam \u_kirsch|r2_add8_6i49|ix44952z52930 .lut_mask = 16'h9617;
defparam \u_kirsch|r2_add8_6i49|ix44952z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y24_N4
cycloneii_lcell_comb \u_kirsch|r2_add8_6i49|ix44952z52929 (
// Equation(s):
// \u_kirsch|r2_add8_6i49|nx39967z1  = ((\u_kirsch|r2_6n3s1f1_2_  $ (\u_kirsch|r2_6n3s1f2_2_  $ (!\u_kirsch|r2_add8_6i49|nx44952z19 )))) # (GND)
// \u_kirsch|r2_add8_6i49|nx44952z16  = CARRY((\u_kirsch|r2_6n3s1f1_2_  & ((\u_kirsch|r2_6n3s1f2_2_ ) # (!\u_kirsch|r2_add8_6i49|nx44952z19 ))) # (!\u_kirsch|r2_6n3s1f1_2_  & (\u_kirsch|r2_6n3s1f2_2_  & !\u_kirsch|r2_add8_6i49|nx44952z19 )))

	.dataa(\u_kirsch|r2_6n3s1f1_2_ ),
	.datab(\u_kirsch|r2_6n3s1f2_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add8_6i49|nx44952z19 ),
	.combout(\u_kirsch|r2_add8_6i49|nx39967z1 ),
	.cout(\u_kirsch|r2_add8_6i49|nx44952z16 ));
// synopsys translate_off
defparam \u_kirsch|r2_add8_6i49|ix44952z52929 .lut_mask = 16'h698E;
defparam \u_kirsch|r2_add8_6i49|ix44952z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y24_N6
cycloneii_lcell_comb \u_kirsch|r2_add8_6i49|ix44952z52928 (
// Equation(s):
// \u_kirsch|r2_add8_6i49|nx40964z1  = (\u_kirsch|r2_6n3s1f1_3_  & ((\u_kirsch|r2_6n3s1f2_3_  & (\u_kirsch|r2_add8_6i49|nx44952z16  & VCC)) # (!\u_kirsch|r2_6n3s1f2_3_  & (!\u_kirsch|r2_add8_6i49|nx44952z16 )))) # (!\u_kirsch|r2_6n3s1f1_3_  & 
// ((\u_kirsch|r2_6n3s1f2_3_  & (!\u_kirsch|r2_add8_6i49|nx44952z16 )) # (!\u_kirsch|r2_6n3s1f2_3_  & ((\u_kirsch|r2_add8_6i49|nx44952z16 ) # (GND)))))
// \u_kirsch|r2_add8_6i49|nx44952z13  = CARRY((\u_kirsch|r2_6n3s1f1_3_  & (!\u_kirsch|r2_6n3s1f2_3_  & !\u_kirsch|r2_add8_6i49|nx44952z16 )) # (!\u_kirsch|r2_6n3s1f1_3_  & ((!\u_kirsch|r2_add8_6i49|nx44952z16 ) # (!\u_kirsch|r2_6n3s1f2_3_ ))))

	.dataa(\u_kirsch|r2_6n3s1f1_3_ ),
	.datab(\u_kirsch|r2_6n3s1f2_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add8_6i49|nx44952z16 ),
	.combout(\u_kirsch|r2_add8_6i49|nx40964z1 ),
	.cout(\u_kirsch|r2_add8_6i49|nx44952z13 ));
// synopsys translate_off
defparam \u_kirsch|r2_add8_6i49|ix44952z52928 .lut_mask = 16'h9617;
defparam \u_kirsch|r2_add8_6i49|ix44952z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y25_N26
cycloneii_lcell_comb \u_kirsch|r2_3_~feeder (
// Equation(s):
// \u_kirsch|r2_3_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx40964z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_add8_6i49|nx40964z1 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r2_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N12
cycloneii_lcell_comb \u_kirsch|ix51677z52926 (
// Equation(s):
// \u_kirsch|nx51677z3  = (!\u_kirsch|validBit_0_  & ((\u_kirsch|validBit_2_ ) # (\u_kirsch|validBit_1_ )))

	.dataa(vcc),
	.datab(\u_kirsch|validBit_0_ ),
	.datac(\u_kirsch|validBit_2_ ),
	.datad(\u_kirsch|validBit_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52926 .lut_mask = 16'h3330;
defparam \u_kirsch|ix51677z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y25_N27
cycloneii_lcell_ff \u_kirsch|reg_r2_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx51677z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_3_ ));

// Location: LCFF_X42_Y25_N5
cycloneii_lcell_ff \u_kirsch|reg_r2_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r2_add8_6i49|nx39967z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx51677z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_2_ ));

// Location: LCCOMB_X44_Y23_N12
cycloneii_lcell_comb \u_kirsch|x_r5_1_~feeder (
// Equation(s):
// \u_kirsch|x_r5_1_~feeder_combout  = \u_kirsch|c_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|c_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r5_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r5_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r5_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y24_N9
cycloneii_lcell_ff \u_kirsch|reg_e_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_1_ ));

// Location: LCFF_X44_Y24_N3
cycloneii_lcell_ff \u_kirsch|reg_f_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_1_ ));

// Location: LCFF_X44_Y23_N13
cycloneii_lcell_ff \u_kirsch|reg_x_r5_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r5_1_~feeder_combout ),
	.sdata(\u_kirsch|f_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix27953z18832|nx100z1 ),
	.ena(\u_kirsch|nx27953z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r5_1_ ));

// Location: LCFF_X44_Y24_N11
cycloneii_lcell_ff \u_kirsch|reg_g_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_1_ ));

// Location: LCCOMB_X44_Y25_N6
cycloneii_lcell_comb \u_kirsch|r5_1_~feeder (
// Equation(s):
// \u_kirsch|r5_1_~feeder_combout  = \u_kirsch|g_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|g_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|r5_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r5_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y25_N7
cycloneii_lcell_ff \u_kirsch|reg_r5_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_1_~feeder_combout ),
	.sdata(\u_kirsch|b_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix13424z18832|nx100z1 ),
	.ena(\u_kirsch|nx13424z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_1_ ));

// Location: LCCOMB_X40_Y25_N4
cycloneii_lcell_comb \u_kirsch|ix8431z52929 (
// Equation(s):
// \u_kirsch|x_r3_7n3s1f1_1_  = (\u_kirsch|validBit_2_  & ((\u_kirsch|r5_1_ ))) # (!\u_kirsch|validBit_2_  & (\u_kirsch|x_r5_1_ ))

	.dataa(vcc),
	.datab(\u_kirsch|validBit_2_ ),
	.datac(\u_kirsch|x_r5_1_ ),
	.datad(\u_kirsch|r5_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r3_7n3s1f1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix8431z52929 .lut_mask = 16'hFC30;
defparam \u_kirsch|ix8431z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N22
cycloneii_lcell_comb \u_kirsch|x_r5_0_~feeder (
// Equation(s):
// \u_kirsch|x_r5_0_~feeder_combout  = \u_kirsch|c_0_ 

	.dataa(\u_kirsch|c_0_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|x_r5_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r5_0_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|x_r5_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y23_N23
cycloneii_lcell_ff \u_kirsch|reg_x_r5_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r5_0_~feeder_combout ),
	.sdata(\u_kirsch|f_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix27953z18832|nx100z1 ),
	.ena(\u_kirsch|nx27953z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r5_0_ ));

// Location: LCCOMB_X44_Y25_N8
cycloneii_lcell_comb \u_kirsch|r5_0_~feeder (
// Equation(s):
// \u_kirsch|r5_0_~feeder_combout  = \u_kirsch|g_0_ 

	.dataa(vcc),
	.datab(\u_kirsch|g_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r5_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_0_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r5_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y25_N9
cycloneii_lcell_ff \u_kirsch|reg_r5_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_0_~feeder_combout ),
	.sdata(\u_kirsch|b_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix13424z18832|nx100z1 ),
	.ena(\u_kirsch|nx13424z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_0_ ));

// Location: LCCOMB_X40_Y25_N6
cycloneii_lcell_comb \u_kirsch|ix8431z52930 (
// Equation(s):
// \u_kirsch|x_r3_7n3s1f1_0_  = (\u_kirsch|validBit_2_  & ((\u_kirsch|r5_0_ ))) # (!\u_kirsch|validBit_2_  & (\u_kirsch|x_r5_0_ ))

	.dataa(vcc),
	.datab(\u_kirsch|validBit_2_ ),
	.datac(\u_kirsch|x_r5_0_ ),
	.datad(\u_kirsch|r5_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r3_7n3s1f1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix8431z52930 .lut_mask = 16'hFC30;
defparam \u_kirsch|ix8431z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y25_N12
cycloneii_lcell_comb \u_kirsch|x_r3_add9_7i9|ix45949z52932 (
// Equation(s):
// \u_kirsch|x_r3_add9_7i9|nx37973z1  = (\u_kirsch|r2_0_  & (\u_kirsch|x_r3_7n3s1f1_0_  $ (VCC))) # (!\u_kirsch|r2_0_  & (\u_kirsch|x_r3_7n3s1f1_0_  & VCC))
// \u_kirsch|x_r3_add9_7i9|nx45949z24  = CARRY((\u_kirsch|r2_0_  & \u_kirsch|x_r3_7n3s1f1_0_ ))

	.dataa(\u_kirsch|r2_0_ ),
	.datab(\u_kirsch|x_r3_7n3s1f1_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|x_r3_add9_7i9|nx37973z1 ),
	.cout(\u_kirsch|x_r3_add9_7i9|nx45949z24 ));
// synopsys translate_off
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52932 .lut_mask = 16'h6688;
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y25_N14
cycloneii_lcell_comb \u_kirsch|x_r3_add9_7i9|ix45949z52931 (
// Equation(s):
// \u_kirsch|x_r3_add9_7i9|nx38970z1  = (\u_kirsch|r2_1_  & ((\u_kirsch|x_r3_7n3s1f1_1_  & (\u_kirsch|x_r3_add9_7i9|nx45949z24  & VCC)) # (!\u_kirsch|x_r3_7n3s1f1_1_  & (!\u_kirsch|x_r3_add9_7i9|nx45949z24 )))) # (!\u_kirsch|r2_1_  & 
// ((\u_kirsch|x_r3_7n3s1f1_1_  & (!\u_kirsch|x_r3_add9_7i9|nx45949z24 )) # (!\u_kirsch|x_r3_7n3s1f1_1_  & ((\u_kirsch|x_r3_add9_7i9|nx45949z24 ) # (GND)))))
// \u_kirsch|x_r3_add9_7i9|nx45949z21  = CARRY((\u_kirsch|r2_1_  & (!\u_kirsch|x_r3_7n3s1f1_1_  & !\u_kirsch|x_r3_add9_7i9|nx45949z24 )) # (!\u_kirsch|r2_1_  & ((!\u_kirsch|x_r3_add9_7i9|nx45949z24 ) # (!\u_kirsch|x_r3_7n3s1f1_1_ ))))

	.dataa(\u_kirsch|r2_1_ ),
	.datab(\u_kirsch|x_r3_7n3s1f1_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r3_add9_7i9|nx45949z24 ),
	.combout(\u_kirsch|x_r3_add9_7i9|nx38970z1 ),
	.cout(\u_kirsch|x_r3_add9_7i9|nx45949z21 ));
// synopsys translate_off
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52931 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y25_N16
cycloneii_lcell_comb \u_kirsch|x_r3_add9_7i9|ix45949z52930 (
// Equation(s):
// \u_kirsch|x_r3_add9_7i9|nx39967z1  = ((\u_kirsch|x_r3_7n3s1f1_2_  $ (\u_kirsch|r2_2_  $ (!\u_kirsch|x_r3_add9_7i9|nx45949z21 )))) # (GND)
// \u_kirsch|x_r3_add9_7i9|nx45949z18  = CARRY((\u_kirsch|x_r3_7n3s1f1_2_  & ((\u_kirsch|r2_2_ ) # (!\u_kirsch|x_r3_add9_7i9|nx45949z21 ))) # (!\u_kirsch|x_r3_7n3s1f1_2_  & (\u_kirsch|r2_2_  & !\u_kirsch|x_r3_add9_7i9|nx45949z21 )))

	.dataa(\u_kirsch|x_r3_7n3s1f1_2_ ),
	.datab(\u_kirsch|r2_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r3_add9_7i9|nx45949z21 ),
	.combout(\u_kirsch|x_r3_add9_7i9|nx39967z1 ),
	.cout(\u_kirsch|x_r3_add9_7i9|nx45949z18 ));
// synopsys translate_off
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52930 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y25_N18
cycloneii_lcell_comb \u_kirsch|x_r3_add9_7i9|ix45949z52929 (
// Equation(s):
// \u_kirsch|x_r3_add9_7i9|nx40964z1  = (\u_kirsch|x_r3_7n3s1f1_3_  & ((\u_kirsch|r2_3_  & (\u_kirsch|x_r3_add9_7i9|nx45949z18  & VCC)) # (!\u_kirsch|r2_3_  & (!\u_kirsch|x_r3_add9_7i9|nx45949z18 )))) # (!\u_kirsch|x_r3_7n3s1f1_3_  & ((\u_kirsch|r2_3_  & 
// (!\u_kirsch|x_r3_add9_7i9|nx45949z18 )) # (!\u_kirsch|r2_3_  & ((\u_kirsch|x_r3_add9_7i9|nx45949z18 ) # (GND)))))
// \u_kirsch|x_r3_add9_7i9|nx45949z15  = CARRY((\u_kirsch|x_r3_7n3s1f1_3_  & (!\u_kirsch|r2_3_  & !\u_kirsch|x_r3_add9_7i9|nx45949z18 )) # (!\u_kirsch|x_r3_7n3s1f1_3_  & ((!\u_kirsch|x_r3_add9_7i9|nx45949z18 ) # (!\u_kirsch|r2_3_ ))))

	.dataa(\u_kirsch|x_r3_7n3s1f1_3_ ),
	.datab(\u_kirsch|r2_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r3_add9_7i9|nx45949z18 ),
	.combout(\u_kirsch|x_r3_add9_7i9|nx40964z1 ),
	.cout(\u_kirsch|x_r3_add9_7i9|nx45949z15 ));
// synopsys translate_off
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52929 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y25_N20
cycloneii_lcell_comb \u_kirsch|x_r3_add9_7i9|ix45949z52928 (
// Equation(s):
// \u_kirsch|x_r3_add9_7i9|nx41961z1  = ((\u_kirsch|r2_4_  $ (\u_kirsch|x_r3_7n3s1f1_4_  $ (!\u_kirsch|x_r3_add9_7i9|nx45949z15 )))) # (GND)
// \u_kirsch|x_r3_add9_7i9|nx45949z12  = CARRY((\u_kirsch|r2_4_  & ((\u_kirsch|x_r3_7n3s1f1_4_ ) # (!\u_kirsch|x_r3_add9_7i9|nx45949z15 ))) # (!\u_kirsch|r2_4_  & (\u_kirsch|x_r3_7n3s1f1_4_  & !\u_kirsch|x_r3_add9_7i9|nx45949z15 )))

	.dataa(\u_kirsch|r2_4_ ),
	.datab(\u_kirsch|x_r3_7n3s1f1_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r3_add9_7i9|nx45949z15 ),
	.combout(\u_kirsch|x_r3_add9_7i9|nx41961z1 ),
	.cout(\u_kirsch|x_r3_add9_7i9|nx45949z12 ));
// synopsys translate_off
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52928 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N2
cycloneii_lcell_comb \u_kirsch|ix56415z52923 (
// Equation(s):
// \u_kirsch|nx56415z1  = (\u_kirsch|validBit_2_  & !\u_kirsch|validBit_1_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|validBit_2_ ),
	.datad(\u_kirsch|validBit_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx56415z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix56415z52923 .lut_mask = 16'h00F0;
defparam \u_kirsch|ix56415z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y25_N21
cycloneii_lcell_ff \u_kirsch|reg_x_r3_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r3_add9_7i9|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx56415z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r3_4_ ));

// Location: LCCOMB_X40_Y26_N18
cycloneii_lcell_comb \u_kirsch|r15_4_~feeder (
// Equation(s):
// \u_kirsch|r15_4_~feeder_combout  = \u_kirsch|x_r3_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|x_r3_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|r15_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r15_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r15_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N26
cycloneii_lcell_comb \u_kirsch|ix51677z52924 (
// Equation(s):
// \u_kirsch|nx51677z1  = (\u_kirsch|validBit_0_ ) # ((\u_kirsch|validBit_2_  & !\u_kirsch|validBit_1_ ))

	.dataa(vcc),
	.datab(\u_kirsch|validBit_0_ ),
	.datac(\u_kirsch|validBit_2_ ),
	.datad(\u_kirsch|validBit_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52924 .lut_mask = 16'hCCFC;
defparam \u_kirsch|ix51677z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N18
cycloneii_lcell_comb \u_kirsch|ix33634z52923 (
// Equation(s):
// \u_kirsch|nx33634z1  = (\u_kirsch|state_2_  & (\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [4])) # (!\u_kirsch|state_2_  & ((\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [4])))

	.dataa(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [4]),
	.datab(\u_kirsch|state_2_ ),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [4]),
	.cin(gnd),
	.combout(\u_kirsch|nx33634z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix33634z52923 .lut_mask = 16'hBB88;
defparam \u_kirsch|ix33634z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y23_N19
cycloneii_lcell_ff \u_kirsch|reg_d_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx33634z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [4]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_kirsch|nx20492z2 ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_4_ ));

// Location: LCCOMB_X43_Y24_N20
cycloneii_lcell_comb \u_kirsch|i_4_~feeder (
// Equation(s):
// \u_kirsch|i_4_~feeder_combout  = \u_kirsch|d_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|d_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|i_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|i_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_i_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|i_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_4_ ));

// Location: LCFF_X43_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_h_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_4_ ));

// Location: LCCOMB_X43_Y24_N26
cycloneii_lcell_comb \u_kirsch|ix51677z52932 (
// Equation(s):
// \u_kirsch|nx51677z6  = (\u_kirsch|nx51677z3  & (((\u_kirsch|h_4_ ) # (\u_kirsch|nx51677z1 )))) # (!\u_kirsch|nx51677z3  & (\u_kirsch|f_4_  & ((!\u_kirsch|nx51677z1 ))))

	.dataa(\u_kirsch|nx51677z3 ),
	.datab(\u_kirsch|f_4_ ),
	.datac(\u_kirsch|h_4_ ),
	.datad(\u_kirsch|nx51677z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z6 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52932 .lut_mask = 16'hAAE4;
defparam \u_kirsch|ix51677z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N30
cycloneii_lcell_comb \u_kirsch|ix51677z52931 (
// Equation(s):
// \u_kirsch|r2_6n3s1f1_4_  = (\u_kirsch|nx51677z1  & ((\u_kirsch|nx51677z6  & (\u_kirsch|d_4_ )) # (!\u_kirsch|nx51677z6  & ((\u_kirsch|b_4_ ))))) # (!\u_kirsch|nx51677z1  & (((\u_kirsch|nx51677z6 ))))

	.dataa(\u_kirsch|d_4_ ),
	.datab(\u_kirsch|nx51677z1 ),
	.datac(\u_kirsch|b_4_ ),
	.datad(\u_kirsch|nx51677z6 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52931 .lut_mask = 16'hBBC0;
defparam \u_kirsch|ix51677z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y24_N8
cycloneii_lcell_comb \u_kirsch|r2_add8_6i49|ix44952z52927 (
// Equation(s):
// \u_kirsch|r2_add8_6i49|nx41961z1  = ((\u_kirsch|r2_6n3s1f2_4_  $ (\u_kirsch|r2_6n3s1f1_4_  $ (!\u_kirsch|r2_add8_6i49|nx44952z13 )))) # (GND)
// \u_kirsch|r2_add8_6i49|nx44952z10  = CARRY((\u_kirsch|r2_6n3s1f2_4_  & ((\u_kirsch|r2_6n3s1f1_4_ ) # (!\u_kirsch|r2_add8_6i49|nx44952z13 ))) # (!\u_kirsch|r2_6n3s1f2_4_  & (\u_kirsch|r2_6n3s1f1_4_  & !\u_kirsch|r2_add8_6i49|nx44952z13 )))

	.dataa(\u_kirsch|r2_6n3s1f2_4_ ),
	.datab(\u_kirsch|r2_6n3s1f1_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add8_6i49|nx44952z13 ),
	.combout(\u_kirsch|r2_add8_6i49|nx41961z1 ),
	.cout(\u_kirsch|r2_add8_6i49|nx44952z10 ));
// synopsys translate_off
defparam \u_kirsch|r2_add8_6i49|ix44952z52927 .lut_mask = 16'h698E;
defparam \u_kirsch|r2_add8_6i49|ix44952z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y24_N9
cycloneii_lcell_ff \u_kirsch|reg_r9_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add8_6i49|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_4_ ));

// Location: LCCOMB_X42_Y24_N30
cycloneii_lcell_comb \u_kirsch|r9_3_~feeder (
// Equation(s):
// \u_kirsch|r9_3_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx40964z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_add8_6i49|nx40964z1 ),
	.cin(gnd),
	.combout(\u_kirsch|r9_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r9_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r9_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y24_N31
cycloneii_lcell_ff \u_kirsch|reg_r9_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_3_ ));

// Location: LCFF_X43_Y24_N3
cycloneii_lcell_ff \u_kirsch|reg_b_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_2_ ));

// Location: LCFF_X43_Y24_N9
cycloneii_lcell_ff \u_kirsch|reg_a_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_2_ ));

// Location: LCCOMB_X42_Y26_N26
cycloneii_lcell_comb \u_kirsch|r10_2_~feeder (
// Equation(s):
// \u_kirsch|r10_2_~feeder_combout  = \u_kirsch|a_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|a_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|r10_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r10_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r10_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N24
cycloneii_lcell_comb \u_kirsch|ix31640z52923 (
// Equation(s):
// \u_kirsch|nx31640z1  = (\u_kirsch|state_2_  & (\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [2])) # (!\u_kirsch|state_2_  & ((\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [2])))

	.dataa(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [2]),
	.datab(\u_kirsch|state_2_ ),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [2]),
	.cin(gnd),
	.combout(\u_kirsch|nx31640z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix31640z52923 .lut_mask = 16'hBB88;
defparam \u_kirsch|ix31640z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y23_N25
cycloneii_lcell_ff \u_kirsch|reg_d_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx31640z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [2]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_kirsch|nx20492z2 ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_2_ ));

// Location: LCCOMB_X49_Y23_N12
cycloneii_lcell_comb \u_kirsch|ix36625z52923 (
// Equation(s):
// \u_kirsch|nx36625z1  = (\u_kirsch|state_2_  & ((\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [7]))) # (!\u_kirsch|state_2_  & (\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [7]))

	.dataa(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [7]),
	.datab(\u_kirsch|state_2_ ),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [7]),
	.cin(gnd),
	.combout(\u_kirsch|nx36625z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix36625z52923 .lut_mask = 16'hEE22;
defparam \u_kirsch|ix36625z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y23_N13
cycloneii_lcell_ff \u_kirsch|reg_d_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx36625z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [7]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_kirsch|nx20492z2 ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_7_ ));

// Location: LCCOMB_X49_Y23_N30
cycloneii_lcell_comb \u_kirsch|ix35628z52923 (
// Equation(s):
// \u_kirsch|nx35628z1  = (\u_kirsch|state_2_  & ((\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [6]))) # (!\u_kirsch|state_2_  & (\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [6]))

	.dataa(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [6]),
	.datab(\u_kirsch|state_2_ ),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [6]),
	.cin(gnd),
	.combout(\u_kirsch|nx35628z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix35628z52923 .lut_mask = 16'hEE22;
defparam \u_kirsch|ix35628z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y23_N31
cycloneii_lcell_ff \u_kirsch|reg_d_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx35628z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [6]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_kirsch|nx20492z2 ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_6_ ));

// Location: LCCOMB_X49_Y23_N0
cycloneii_lcell_comb \u_kirsch|ix34631z52923 (
// Equation(s):
// \u_kirsch|nx34631z1  = (\u_kirsch|state_2_  & ((\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [5]))) # (!\u_kirsch|state_2_  & (\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [5]))

	.dataa(\u_kirsch|state_2_ ),
	.datab(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [5]),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [5]),
	.cin(gnd),
	.combout(\u_kirsch|nx34631z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix34631z52923 .lut_mask = 16'hEE44;
defparam \u_kirsch|ix34631z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y23_N1
cycloneii_lcell_ff \u_kirsch|reg_d_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx34631z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [5]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_kirsch|nx20492z2 ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_5_ ));

// Location: LCCOMB_X43_Y24_N4
cycloneii_lcell_comb \u_kirsch|ix11593z18833|ix100z52931 (
// Equation(s):
// \u_kirsch|ix11593z18833|nx100z22  = CARRY((\u_kirsch|d_0_  & !\u_kirsch|a_0_ ))

	.dataa(\u_kirsch|d_0_ ),
	.datab(\u_kirsch|a_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|ix11593z18833|nx100z22 ));
// synopsys translate_off
defparam \u_kirsch|ix11593z18833|ix100z52931 .lut_mask = 16'h0022;
defparam \u_kirsch|ix11593z18833|ix100z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N6
cycloneii_lcell_comb \u_kirsch|ix11593z18833|ix100z52930 (
// Equation(s):
// \u_kirsch|ix11593z18833|nx100z19  = CARRY((\u_kirsch|d_1_  & (\u_kirsch|a_1_  & !\u_kirsch|ix11593z18833|nx100z22 )) # (!\u_kirsch|d_1_  & ((\u_kirsch|a_1_ ) # (!\u_kirsch|ix11593z18833|nx100z22 ))))

	.dataa(\u_kirsch|d_1_ ),
	.datab(\u_kirsch|a_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix11593z18833|nx100z22 ),
	.combout(),
	.cout(\u_kirsch|ix11593z18833|nx100z19 ));
// synopsys translate_off
defparam \u_kirsch|ix11593z18833|ix100z52930 .lut_mask = 16'h004D;
defparam \u_kirsch|ix11593z18833|ix100z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N8
cycloneii_lcell_comb \u_kirsch|ix11593z18833|ix100z52929 (
// Equation(s):
// \u_kirsch|ix11593z18833|nx100z16  = CARRY((\u_kirsch|d_2_  & ((!\u_kirsch|ix11593z18833|nx100z19 ) # (!\u_kirsch|a_2_ ))) # (!\u_kirsch|d_2_  & (!\u_kirsch|a_2_  & !\u_kirsch|ix11593z18833|nx100z19 )))

	.dataa(\u_kirsch|d_2_ ),
	.datab(\u_kirsch|a_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix11593z18833|nx100z19 ),
	.combout(),
	.cout(\u_kirsch|ix11593z18833|nx100z16 ));
// synopsys translate_off
defparam \u_kirsch|ix11593z18833|ix100z52929 .lut_mask = 16'h002B;
defparam \u_kirsch|ix11593z18833|ix100z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N10
cycloneii_lcell_comb \u_kirsch|ix11593z18833|ix100z52928 (
// Equation(s):
// \u_kirsch|ix11593z18833|nx100z13  = CARRY((\u_kirsch|d_3_  & (\u_kirsch|a_3_  & !\u_kirsch|ix11593z18833|nx100z16 )) # (!\u_kirsch|d_3_  & ((\u_kirsch|a_3_ ) # (!\u_kirsch|ix11593z18833|nx100z16 ))))

	.dataa(\u_kirsch|d_3_ ),
	.datab(\u_kirsch|a_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix11593z18833|nx100z16 ),
	.combout(),
	.cout(\u_kirsch|ix11593z18833|nx100z13 ));
// synopsys translate_off
defparam \u_kirsch|ix11593z18833|ix100z52928 .lut_mask = 16'h004D;
defparam \u_kirsch|ix11593z18833|ix100z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N12
cycloneii_lcell_comb \u_kirsch|ix11593z18833|ix100z52927 (
// Equation(s):
// \u_kirsch|ix11593z18833|nx100z10  = CARRY((\u_kirsch|a_4_  & (\u_kirsch|d_4_  & !\u_kirsch|ix11593z18833|nx100z13 )) # (!\u_kirsch|a_4_  & ((\u_kirsch|d_4_ ) # (!\u_kirsch|ix11593z18833|nx100z13 ))))

	.dataa(\u_kirsch|a_4_ ),
	.datab(\u_kirsch|d_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix11593z18833|nx100z13 ),
	.combout(),
	.cout(\u_kirsch|ix11593z18833|nx100z10 ));
// synopsys translate_off
defparam \u_kirsch|ix11593z18833|ix100z52927 .lut_mask = 16'h004D;
defparam \u_kirsch|ix11593z18833|ix100z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N14
cycloneii_lcell_comb \u_kirsch|ix11593z18833|ix100z52926 (
// Equation(s):
// \u_kirsch|ix11593z18833|nx100z7  = CARRY((\u_kirsch|a_5_  & ((!\u_kirsch|ix11593z18833|nx100z10 ) # (!\u_kirsch|d_5_ ))) # (!\u_kirsch|a_5_  & (!\u_kirsch|d_5_  & !\u_kirsch|ix11593z18833|nx100z10 )))

	.dataa(\u_kirsch|a_5_ ),
	.datab(\u_kirsch|d_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix11593z18833|nx100z10 ),
	.combout(),
	.cout(\u_kirsch|ix11593z18833|nx100z7 ));
// synopsys translate_off
defparam \u_kirsch|ix11593z18833|ix100z52926 .lut_mask = 16'h002B;
defparam \u_kirsch|ix11593z18833|ix100z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N16
cycloneii_lcell_comb \u_kirsch|ix11593z18833|ix100z52925 (
// Equation(s):
// \u_kirsch|ix11593z18833|nx100z4  = CARRY((\u_kirsch|a_6_  & (\u_kirsch|d_6_  & !\u_kirsch|ix11593z18833|nx100z7 )) # (!\u_kirsch|a_6_  & ((\u_kirsch|d_6_ ) # (!\u_kirsch|ix11593z18833|nx100z7 ))))

	.dataa(\u_kirsch|a_6_ ),
	.datab(\u_kirsch|d_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix11593z18833|nx100z7 ),
	.combout(),
	.cout(\u_kirsch|ix11593z18833|nx100z4 ));
// synopsys translate_off
defparam \u_kirsch|ix11593z18833|ix100z52925 .lut_mask = 16'h004D;
defparam \u_kirsch|ix11593z18833|ix100z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N18
cycloneii_lcell_comb \u_kirsch|ix11593z18833|ix100z52923 (
// Equation(s):
// \u_kirsch|ix11593z18833|nx100z1  = (\u_kirsch|a_7_  & (\u_kirsch|ix11593z18833|nx100z4  & \u_kirsch|d_7_ )) # (!\u_kirsch|a_7_  & ((\u_kirsch|ix11593z18833|nx100z4 ) # (\u_kirsch|d_7_ )))

	.dataa(\u_kirsch|a_7_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|d_7_ ),
	.cin(\u_kirsch|ix11593z18833|nx100z4 ),
	.combout(\u_kirsch|ix11593z18833|nx100z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix11593z18833|ix100z52923 .lut_mask = 16'hF550;
defparam \u_kirsch|ix11593z18833|ix100z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y26_N27
cycloneii_lcell_ff \u_kirsch|reg_r10_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r10_2_~feeder_combout ),
	.sdata(\u_kirsch|d_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix11593z18833|nx100z1 ),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r10_2_ ));

// Location: LCFF_X42_Y24_N3
cycloneii_lcell_ff \u_kirsch|reg_r9_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add8_6i49|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_1_ ));

// Location: LCCOMB_X42_Y26_N22
cycloneii_lcell_comb \u_kirsch|r10_0_~feeder (
// Equation(s):
// \u_kirsch|r10_0_~feeder_combout  = \u_kirsch|a_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|a_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|r10_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r10_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r10_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N28
cycloneii_lcell_comb \u_kirsch|ix29646z52923 (
// Equation(s):
// \u_kirsch|nx29646z1  = (\u_kirsch|state_2_  & ((\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [0]))) # (!\u_kirsch|state_2_  & (\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [0]))

	.dataa(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [0]),
	.datab(\u_kirsch|state_2_ ),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [0]),
	.cin(gnd),
	.combout(\u_kirsch|nx29646z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix29646z52923 .lut_mask = 16'hEE22;
defparam \u_kirsch|ix29646z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y23_N29
cycloneii_lcell_ff \u_kirsch|reg_d_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx29646z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_kirsch|nx20492z2 ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_0_ ));

// Location: LCFF_X42_Y26_N23
cycloneii_lcell_ff \u_kirsch|reg_r10_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r10_0_~feeder_combout ),
	.sdata(\u_kirsch|d_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix11593z18833|nx100z1 ),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r10_0_ ));

// Location: LCCOMB_X42_Y26_N0
cycloneii_lcell_comb \u_kirsch|b_d1_add9_7i10|ix45949z52932 (
// Equation(s):
// \u_kirsch|b_d1_add9_7i10|nx37973z1  = (\u_kirsch|r9_0_  & (\u_kirsch|r10_0_  $ (VCC))) # (!\u_kirsch|r9_0_  & (\u_kirsch|r10_0_  & VCC))
// \u_kirsch|b_d1_add9_7i10|nx45949z24  = CARRY((\u_kirsch|r9_0_  & \u_kirsch|r10_0_ ))

	.dataa(\u_kirsch|r9_0_ ),
	.datab(\u_kirsch|r10_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|b_d1_add9_7i10|nx37973z1 ),
	.cout(\u_kirsch|b_d1_add9_7i10|nx45949z24 ));
// synopsys translate_off
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52932 .lut_mask = 16'h6688;
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y26_N2
cycloneii_lcell_comb \u_kirsch|b_d1_add9_7i10|ix45949z52931 (
// Equation(s):
// \u_kirsch|b_d1_add9_7i10|nx38970z1  = (\u_kirsch|r10_1_  & ((\u_kirsch|r9_1_  & (\u_kirsch|b_d1_add9_7i10|nx45949z24  & VCC)) # (!\u_kirsch|r9_1_  & (!\u_kirsch|b_d1_add9_7i10|nx45949z24 )))) # (!\u_kirsch|r10_1_  & ((\u_kirsch|r9_1_  & 
// (!\u_kirsch|b_d1_add9_7i10|nx45949z24 )) # (!\u_kirsch|r9_1_  & ((\u_kirsch|b_d1_add9_7i10|nx45949z24 ) # (GND)))))
// \u_kirsch|b_d1_add9_7i10|nx45949z21  = CARRY((\u_kirsch|r10_1_  & (!\u_kirsch|r9_1_  & !\u_kirsch|b_d1_add9_7i10|nx45949z24 )) # (!\u_kirsch|r10_1_  & ((!\u_kirsch|b_d1_add9_7i10|nx45949z24 ) # (!\u_kirsch|r9_1_ ))))

	.dataa(\u_kirsch|r10_1_ ),
	.datab(\u_kirsch|r9_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|b_d1_add9_7i10|nx45949z24 ),
	.combout(\u_kirsch|b_d1_add9_7i10|nx38970z1 ),
	.cout(\u_kirsch|b_d1_add9_7i10|nx45949z21 ));
// synopsys translate_off
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52931 .lut_mask = 16'h9617;
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y26_N4
cycloneii_lcell_comb \u_kirsch|b_d1_add9_7i10|ix45949z52930 (
// Equation(s):
// \u_kirsch|b_d1_add9_7i10|nx39967z1  = ((\u_kirsch|r9_2_  $ (\u_kirsch|r10_2_  $ (!\u_kirsch|b_d1_add9_7i10|nx45949z21 )))) # (GND)
// \u_kirsch|b_d1_add9_7i10|nx45949z18  = CARRY((\u_kirsch|r9_2_  & ((\u_kirsch|r10_2_ ) # (!\u_kirsch|b_d1_add9_7i10|nx45949z21 ))) # (!\u_kirsch|r9_2_  & (\u_kirsch|r10_2_  & !\u_kirsch|b_d1_add9_7i10|nx45949z21 )))

	.dataa(\u_kirsch|r9_2_ ),
	.datab(\u_kirsch|r10_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|b_d1_add9_7i10|nx45949z21 ),
	.combout(\u_kirsch|b_d1_add9_7i10|nx39967z1 ),
	.cout(\u_kirsch|b_d1_add9_7i10|nx45949z18 ));
// synopsys translate_off
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52930 .lut_mask = 16'h698E;
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y26_N6
cycloneii_lcell_comb \u_kirsch|b_d1_add9_7i10|ix45949z52929 (
// Equation(s):
// \u_kirsch|b_d1_add9_7i10|nx40964z1  = (\u_kirsch|r10_3_  & ((\u_kirsch|r9_3_  & (\u_kirsch|b_d1_add9_7i10|nx45949z18  & VCC)) # (!\u_kirsch|r9_3_  & (!\u_kirsch|b_d1_add9_7i10|nx45949z18 )))) # (!\u_kirsch|r10_3_  & ((\u_kirsch|r9_3_  & 
// (!\u_kirsch|b_d1_add9_7i10|nx45949z18 )) # (!\u_kirsch|r9_3_  & ((\u_kirsch|b_d1_add9_7i10|nx45949z18 ) # (GND)))))
// \u_kirsch|b_d1_add9_7i10|nx45949z15  = CARRY((\u_kirsch|r10_3_  & (!\u_kirsch|r9_3_  & !\u_kirsch|b_d1_add9_7i10|nx45949z18 )) # (!\u_kirsch|r10_3_  & ((!\u_kirsch|b_d1_add9_7i10|nx45949z18 ) # (!\u_kirsch|r9_3_ ))))

	.dataa(\u_kirsch|r10_3_ ),
	.datab(\u_kirsch|r9_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|b_d1_add9_7i10|nx45949z18 ),
	.combout(\u_kirsch|b_d1_add9_7i10|nx40964z1 ),
	.cout(\u_kirsch|b_d1_add9_7i10|nx45949z15 ));
// synopsys translate_off
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52929 .lut_mask = 16'h9617;
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y26_N8
cycloneii_lcell_comb \u_kirsch|b_d1_add9_7i10|ix45949z52928 (
// Equation(s):
// \u_kirsch|b_d1_add9_7i10|nx41961z1  = ((\u_kirsch|r10_4_  $ (\u_kirsch|r9_4_  $ (!\u_kirsch|b_d1_add9_7i10|nx45949z15 )))) # (GND)
// \u_kirsch|b_d1_add9_7i10|nx45949z12  = CARRY((\u_kirsch|r10_4_  & ((\u_kirsch|r9_4_ ) # (!\u_kirsch|b_d1_add9_7i10|nx45949z15 ))) # (!\u_kirsch|r10_4_  & (\u_kirsch|r9_4_  & !\u_kirsch|b_d1_add9_7i10|nx45949z15 )))

	.dataa(\u_kirsch|r10_4_ ),
	.datab(\u_kirsch|r9_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|b_d1_add9_7i10|nx45949z15 ),
	.combout(\u_kirsch|b_d1_add9_7i10|nx41961z1 ),
	.cout(\u_kirsch|b_d1_add9_7i10|nx45949z12 ));
// synopsys translate_off
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52928 .lut_mask = 16'h698E;
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y26_N9
cycloneii_lcell_ff \u_kirsch|reg_b_d1_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|b_d1_add9_7i10|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_d1_4_ ));

// Location: LCFF_X46_Y24_N23
cycloneii_lcell_ff \u_kirsch|reg_a_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_7_ ));

// Location: LCCOMB_X41_Y24_N30
cycloneii_lcell_comb \u_kirsch|r10_7_~feeder (
// Equation(s):
// \u_kirsch|r10_7_~feeder_combout  = \u_kirsch|a_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|a_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|r10_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r10_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r10_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y24_N31
cycloneii_lcell_ff \u_kirsch|reg_r10_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r10_7_~feeder_combout ),
	.sdata(\u_kirsch|d_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix11593z18833|nx100z1 ),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r10_7_ ));

// Location: LCFF_X46_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_e_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_6_ ));

// Location: LCFF_X45_Y23_N25
cycloneii_lcell_ff \u_kirsch|reg_f_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_6_ ));

// Location: LCFF_X44_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_g_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_6_ ));

// Location: LCFF_X46_Y24_N19
cycloneii_lcell_ff \u_kirsch|reg_a_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_6_ ));

// Location: LCCOMB_X47_Y24_N18
cycloneii_lcell_comb \u_kirsch|ix51677z52946 (
// Equation(s):
// \u_kirsch|nx51677z14  = (\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z13 )))) # (!\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z13  & (\u_kirsch|c_6_ )) # (!\u_kirsch|nx51677z13  & ((\u_kirsch|e_6_ )))))

	.dataa(\u_kirsch|c_6_ ),
	.datab(\u_kirsch|e_6_ ),
	.datac(\u_kirsch|nx51677z11 ),
	.datad(\u_kirsch|nx51677z13 ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z14 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52946 .lut_mask = 16'hFA0C;
defparam \u_kirsch|ix51677z52946 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N18
cycloneii_lcell_comb \u_kirsch|ix51677z52945 (
// Equation(s):
// \u_kirsch|r2_6n3s1f2_6_  = (\u_kirsch|nx51677z11  & ((\u_kirsch|nx51677z14  & (\u_kirsch|g_6_ )) # (!\u_kirsch|nx51677z14  & ((\u_kirsch|a_6_ ))))) # (!\u_kirsch|nx51677z11  & (((\u_kirsch|nx51677z14 ))))

	.dataa(\u_kirsch|nx51677z11 ),
	.datab(\u_kirsch|g_6_ ),
	.datac(\u_kirsch|a_6_ ),
	.datad(\u_kirsch|nx51677z14 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f2_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52945 .lut_mask = 16'hDDA0;
defparam \u_kirsch|ix51677z52945 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N26
cycloneii_lcell_comb \u_kirsch|i_5_~feeder (
// Equation(s):
// \u_kirsch|i_5_~feeder_combout  = \u_kirsch|d_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|d_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|i_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|i_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_i_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|i_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_5_ ));

// Location: LCFF_X45_Y24_N25
cycloneii_lcell_ff \u_kirsch|reg_h_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_5_ ));

// Location: LCCOMB_X45_Y24_N24
cycloneii_lcell_comb \u_kirsch|ix51677z52930 (
// Equation(s):
// \u_kirsch|nx51677z5  = (\u_kirsch|nx51677z1  & (((\u_kirsch|nx51677z3 )))) # (!\u_kirsch|nx51677z1  & ((\u_kirsch|nx51677z3  & ((\u_kirsch|h_5_ ))) # (!\u_kirsch|nx51677z3  & (\u_kirsch|f_5_ ))))

	.dataa(\u_kirsch|f_5_ ),
	.datab(\u_kirsch|nx51677z1 ),
	.datac(\u_kirsch|h_5_ ),
	.datad(\u_kirsch|nx51677z3 ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z5 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52930 .lut_mask = 16'hFC22;
defparam \u_kirsch|ix51677z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N22
cycloneii_lcell_comb \u_kirsch|ix51677z52929 (
// Equation(s):
// \u_kirsch|r2_6n3s1f1_5_  = (\u_kirsch|nx51677z1  & ((\u_kirsch|nx51677z5  & (\u_kirsch|d_5_ )) # (!\u_kirsch|nx51677z5  & ((\u_kirsch|b_5_ ))))) # (!\u_kirsch|nx51677z1  & (((\u_kirsch|nx51677z5 ))))

	.dataa(\u_kirsch|d_5_ ),
	.datab(\u_kirsch|nx51677z1 ),
	.datac(\u_kirsch|b_5_ ),
	.datad(\u_kirsch|nx51677z5 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f1_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52929 .lut_mask = 16'hBBC0;
defparam \u_kirsch|ix51677z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y24_N10
cycloneii_lcell_comb \u_kirsch|r2_add8_6i49|ix44952z52926 (
// Equation(s):
// \u_kirsch|r2_add8_6i49|nx42958z1  = (\u_kirsch|r2_6n3s1f2_5_  & ((\u_kirsch|r2_6n3s1f1_5_  & (\u_kirsch|r2_add8_6i49|nx44952z10  & VCC)) # (!\u_kirsch|r2_6n3s1f1_5_  & (!\u_kirsch|r2_add8_6i49|nx44952z10 )))) # (!\u_kirsch|r2_6n3s1f2_5_  & 
// ((\u_kirsch|r2_6n3s1f1_5_  & (!\u_kirsch|r2_add8_6i49|nx44952z10 )) # (!\u_kirsch|r2_6n3s1f1_5_  & ((\u_kirsch|r2_add8_6i49|nx44952z10 ) # (GND)))))
// \u_kirsch|r2_add8_6i49|nx44952z7  = CARRY((\u_kirsch|r2_6n3s1f2_5_  & (!\u_kirsch|r2_6n3s1f1_5_  & !\u_kirsch|r2_add8_6i49|nx44952z10 )) # (!\u_kirsch|r2_6n3s1f2_5_  & ((!\u_kirsch|r2_add8_6i49|nx44952z10 ) # (!\u_kirsch|r2_6n3s1f1_5_ ))))

	.dataa(\u_kirsch|r2_6n3s1f2_5_ ),
	.datab(\u_kirsch|r2_6n3s1f1_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add8_6i49|nx44952z10 ),
	.combout(\u_kirsch|r2_add8_6i49|nx42958z1 ),
	.cout(\u_kirsch|r2_add8_6i49|nx44952z7 ));
// synopsys translate_off
defparam \u_kirsch|r2_add8_6i49|ix44952z52926 .lut_mask = 16'h9617;
defparam \u_kirsch|r2_add8_6i49|ix44952z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y24_N12
cycloneii_lcell_comb \u_kirsch|r2_add8_6i49|ix44952z52925 (
// Equation(s):
// \u_kirsch|r2_add8_6i49|nx43955z1  = ((\u_kirsch|r2_6n3s1f1_6_  $ (\u_kirsch|r2_6n3s1f2_6_  $ (!\u_kirsch|r2_add8_6i49|nx44952z7 )))) # (GND)
// \u_kirsch|r2_add8_6i49|nx44952z4  = CARRY((\u_kirsch|r2_6n3s1f1_6_  & ((\u_kirsch|r2_6n3s1f2_6_ ) # (!\u_kirsch|r2_add8_6i49|nx44952z7 ))) # (!\u_kirsch|r2_6n3s1f1_6_  & (\u_kirsch|r2_6n3s1f2_6_  & !\u_kirsch|r2_add8_6i49|nx44952z7 )))

	.dataa(\u_kirsch|r2_6n3s1f1_6_ ),
	.datab(\u_kirsch|r2_6n3s1f2_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add8_6i49|nx44952z7 ),
	.combout(\u_kirsch|r2_add8_6i49|nx43955z1 ),
	.cout(\u_kirsch|r2_add8_6i49|nx44952z4 ));
// synopsys translate_off
defparam \u_kirsch|r2_add8_6i49|ix44952z52925 .lut_mask = 16'h698E;
defparam \u_kirsch|r2_add8_6i49|ix44952z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y24_N18
cycloneii_lcell_comb \u_kirsch|r9_6_~feeder (
// Equation(s):
// \u_kirsch|r9_6_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx43955z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_add8_6i49|nx43955z1 ),
	.cin(gnd),
	.combout(\u_kirsch|r9_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r9_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r9_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y24_N19
cycloneii_lcell_ff \u_kirsch|reg_r9_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_6_ ));

// Location: LCFF_X46_Y24_N29
cycloneii_lcell_ff \u_kirsch|reg_a_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_5_ ));

// Location: LCCOMB_X42_Y26_N30
cycloneii_lcell_comb \u_kirsch|r10_5_~feeder (
// Equation(s):
// \u_kirsch|r10_5_~feeder_combout  = \u_kirsch|a_5_ 

	.dataa(vcc),
	.datab(\u_kirsch|a_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r10_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r10_5_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r10_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y26_N31
cycloneii_lcell_ff \u_kirsch|reg_r10_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r10_5_~feeder_combout ),
	.sdata(\u_kirsch|d_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix11593z18833|nx100z1 ),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r10_5_ ));

// Location: LCCOMB_X42_Y26_N10
cycloneii_lcell_comb \u_kirsch|b_d1_add9_7i10|ix45949z52927 (
// Equation(s):
// \u_kirsch|b_d1_add9_7i10|nx42958z1  = (\u_kirsch|r9_5_  & ((\u_kirsch|r10_5_  & (\u_kirsch|b_d1_add9_7i10|nx45949z12  & VCC)) # (!\u_kirsch|r10_5_  & (!\u_kirsch|b_d1_add9_7i10|nx45949z12 )))) # (!\u_kirsch|r9_5_  & ((\u_kirsch|r10_5_  & 
// (!\u_kirsch|b_d1_add9_7i10|nx45949z12 )) # (!\u_kirsch|r10_5_  & ((\u_kirsch|b_d1_add9_7i10|nx45949z12 ) # (GND)))))
// \u_kirsch|b_d1_add9_7i10|nx45949z9  = CARRY((\u_kirsch|r9_5_  & (!\u_kirsch|r10_5_  & !\u_kirsch|b_d1_add9_7i10|nx45949z12 )) # (!\u_kirsch|r9_5_  & ((!\u_kirsch|b_d1_add9_7i10|nx45949z12 ) # (!\u_kirsch|r10_5_ ))))

	.dataa(\u_kirsch|r9_5_ ),
	.datab(\u_kirsch|r10_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|b_d1_add9_7i10|nx45949z12 ),
	.combout(\u_kirsch|b_d1_add9_7i10|nx42958z1 ),
	.cout(\u_kirsch|b_d1_add9_7i10|nx45949z9 ));
// synopsys translate_off
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52927 .lut_mask = 16'h9617;
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y26_N12
cycloneii_lcell_comb \u_kirsch|b_d1_add9_7i10|ix45949z52926 (
// Equation(s):
// \u_kirsch|b_d1_add9_7i10|nx43955z1  = ((\u_kirsch|r10_6_  $ (\u_kirsch|r9_6_  $ (!\u_kirsch|b_d1_add9_7i10|nx45949z9 )))) # (GND)
// \u_kirsch|b_d1_add9_7i10|nx45949z6  = CARRY((\u_kirsch|r10_6_  & ((\u_kirsch|r9_6_ ) # (!\u_kirsch|b_d1_add9_7i10|nx45949z9 ))) # (!\u_kirsch|r10_6_  & (\u_kirsch|r9_6_  & !\u_kirsch|b_d1_add9_7i10|nx45949z9 )))

	.dataa(\u_kirsch|r10_6_ ),
	.datab(\u_kirsch|r9_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|b_d1_add9_7i10|nx45949z9 ),
	.combout(\u_kirsch|b_d1_add9_7i10|nx43955z1 ),
	.cout(\u_kirsch|b_d1_add9_7i10|nx45949z6 ));
// synopsys translate_off
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52926 .lut_mask = 16'h698E;
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y26_N14
cycloneii_lcell_comb \u_kirsch|b_d1_add9_7i10|ix45949z52925 (
// Equation(s):
// \u_kirsch|b_d1_add9_7i10|nx44952z1  = (\u_kirsch|r9_7_  & ((\u_kirsch|r10_7_  & (\u_kirsch|b_d1_add9_7i10|nx45949z6  & VCC)) # (!\u_kirsch|r10_7_  & (!\u_kirsch|b_d1_add9_7i10|nx45949z6 )))) # (!\u_kirsch|r9_7_  & ((\u_kirsch|r10_7_  & 
// (!\u_kirsch|b_d1_add9_7i10|nx45949z6 )) # (!\u_kirsch|r10_7_  & ((\u_kirsch|b_d1_add9_7i10|nx45949z6 ) # (GND)))))
// \u_kirsch|b_d1_add9_7i10|nx45949z3  = CARRY((\u_kirsch|r9_7_  & (!\u_kirsch|r10_7_  & !\u_kirsch|b_d1_add9_7i10|nx45949z6 )) # (!\u_kirsch|r9_7_  & ((!\u_kirsch|b_d1_add9_7i10|nx45949z6 ) # (!\u_kirsch|r10_7_ ))))

	.dataa(\u_kirsch|r9_7_ ),
	.datab(\u_kirsch|r10_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|b_d1_add9_7i10|nx45949z6 ),
	.combout(\u_kirsch|b_d1_add9_7i10|nx44952z1 ),
	.cout(\u_kirsch|b_d1_add9_7i10|nx45949z3 ));
// synopsys translate_off
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52925 .lut_mask = 16'h9617;
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y26_N16
cycloneii_lcell_comb \u_kirsch|b_d1_add9_7i10|ix45949z52923 (
// Equation(s):
// \u_kirsch|b_d1_add9_7i10|nx45949z1  = (\u_kirsch|r9_8_  & (\u_kirsch|b_d1_add9_7i10|nx45949z3  $ (GND))) # (!\u_kirsch|r9_8_  & (!\u_kirsch|b_d1_add9_7i10|nx45949z3  & VCC))
// \u_kirsch|b_d1_add9_7i10|nx23445z2  = CARRY((\u_kirsch|r9_8_  & !\u_kirsch|b_d1_add9_7i10|nx45949z3 ))

	.dataa(\u_kirsch|r9_8_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|b_d1_add9_7i10|nx45949z3 ),
	.combout(\u_kirsch|b_d1_add9_7i10|nx45949z1 ),
	.cout(\u_kirsch|b_d1_add9_7i10|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52923 .lut_mask = 16'hA50A;
defparam \u_kirsch|b_d1_add9_7i10|ix45949z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y26_N18
cycloneii_lcell_comb \u_kirsch|b_d1_add9_7i10|ix23445z52923 (
// Equation(s):
// \u_kirsch|b_d1_add9_7i10|nx23445z1  = \u_kirsch|b_d1_add9_7i10|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|b_d1_add9_7i10|nx23445z2 ),
	.combout(\u_kirsch|b_d1_add9_7i10|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|b_d1_add9_7i10|ix23445z52923 .lut_mask = 16'hF0F0;
defparam \u_kirsch|b_d1_add9_7i10|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y26_N19
cycloneii_lcell_ff \u_kirsch|reg_b_d1_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|b_d1_add9_7i10|nx23445z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_d1_9_ ));

// Location: LCCOMB_X46_Y24_N6
cycloneii_lcell_comb \u_kirsch|i_7_~feeder (
// Equation(s):
// \u_kirsch|i_7_~feeder_combout  = \u_kirsch|d_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|d_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|i_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|i_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y24_N7
cycloneii_lcell_ff \u_kirsch|reg_i_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|i_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_7_ ));

// Location: LCCOMB_X46_Y24_N20
cycloneii_lcell_comb \u_kirsch|h_7_~feeder (
// Equation(s):
// \u_kirsch|h_7_~feeder_combout  = \u_kirsch|i_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|i_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|h_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|h_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|h_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_h_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|h_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_7_ ));

// Location: LCCOMB_X45_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix51677z52925 (
// Equation(s):
// \u_kirsch|nx51677z2  = (\u_kirsch|nx51677z3  & ((\u_kirsch|h_7_ ) # ((\u_kirsch|nx51677z1 )))) # (!\u_kirsch|nx51677z3  & (((\u_kirsch|f_7_  & !\u_kirsch|nx51677z1 ))))

	.dataa(\u_kirsch|nx51677z3 ),
	.datab(\u_kirsch|h_7_ ),
	.datac(\u_kirsch|f_7_ ),
	.datad(\u_kirsch|nx51677z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx51677z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52925 .lut_mask = 16'hAAD8;
defparam \u_kirsch|ix51677z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N18
cycloneii_lcell_comb \u_kirsch|ix51677z52923 (
// Equation(s):
// \u_kirsch|r2_6n3s1f1_7_  = (\u_kirsch|nx51677z1  & ((\u_kirsch|nx51677z2  & (\u_kirsch|d_7_ )) # (!\u_kirsch|nx51677z2  & ((\u_kirsch|b_7_ ))))) # (!\u_kirsch|nx51677z1  & (((\u_kirsch|nx51677z2 ))))

	.dataa(\u_kirsch|d_7_ ),
	.datab(\u_kirsch|nx51677z1 ),
	.datac(\u_kirsch|b_7_ ),
	.datad(\u_kirsch|nx51677z2 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6n3s1f1_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51677z52923 .lut_mask = 16'hBBC0;
defparam \u_kirsch|ix51677z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y24_N14
cycloneii_lcell_comb \u_kirsch|r2_add8_6i49|ix44952z52923 (
// Equation(s):
// \u_kirsch|r2_add8_6i49|nx44952z1  = (\u_kirsch|r2_6n3s1f2_7_  & ((\u_kirsch|r2_6n3s1f1_7_  & (\u_kirsch|r2_add8_6i49|nx44952z4  & VCC)) # (!\u_kirsch|r2_6n3s1f1_7_  & (!\u_kirsch|r2_add8_6i49|nx44952z4 )))) # (!\u_kirsch|r2_6n3s1f2_7_  & 
// ((\u_kirsch|r2_6n3s1f1_7_  & (!\u_kirsch|r2_add8_6i49|nx44952z4 )) # (!\u_kirsch|r2_6n3s1f1_7_  & ((\u_kirsch|r2_add8_6i49|nx44952z4 ) # (GND)))))
// \u_kirsch|r2_add8_6i49|nx23445z2  = CARRY((\u_kirsch|r2_6n3s1f2_7_  & (!\u_kirsch|r2_6n3s1f1_7_  & !\u_kirsch|r2_add8_6i49|nx44952z4 )) # (!\u_kirsch|r2_6n3s1f2_7_  & ((!\u_kirsch|r2_add8_6i49|nx44952z4 ) # (!\u_kirsch|r2_6n3s1f1_7_ ))))

	.dataa(\u_kirsch|r2_6n3s1f2_7_ ),
	.datab(\u_kirsch|r2_6n3s1f1_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add8_6i49|nx44952z4 ),
	.combout(\u_kirsch|r2_add8_6i49|nx44952z1 ),
	.cout(\u_kirsch|r2_add8_6i49|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|r2_add8_6i49|ix44952z52923 .lut_mask = 16'h9617;
defparam \u_kirsch|r2_add8_6i49|ix44952z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y24_N16
cycloneii_lcell_comb \u_kirsch|r2_add8_6i49|ix23445z52923 (
// Equation(s):
// \u_kirsch|r2_add8_6i49|nx23445z1  = !\u_kirsch|r2_add8_6i49|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add8_6i49|nx23445z2 ),
	.combout(\u_kirsch|r2_add8_6i49|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_add8_6i49|ix23445z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|r2_add8_6i49|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N20
cycloneii_lcell_comb \u_kirsch|r2_8_~feeder (
// Equation(s):
// \u_kirsch|r2_8_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx23445z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|r2_add8_6i49|nx23445z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r2_8_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_8_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|r2_8_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_r2_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_8_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx51677z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_8_ ));

// Location: LCCOMB_X44_Y23_N0
cycloneii_lcell_comb \u_kirsch|x_r5_7_~feeder (
// Equation(s):
// \u_kirsch|x_r5_7_~feeder_combout  = \u_kirsch|c_7_ 

	.dataa(vcc),
	.datab(\u_kirsch|c_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|x_r5_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r5_7_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|x_r5_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y23_N1
cycloneii_lcell_ff \u_kirsch|reg_x_r5_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r5_7_~feeder_combout ),
	.sdata(\u_kirsch|f_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix27953z18832|nx100z1 ),
	.ena(\u_kirsch|nx27953z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r5_7_ ));

// Location: LCFF_X44_Y24_N25
cycloneii_lcell_ff \u_kirsch|reg_g_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_7_ ));

// Location: LCCOMB_X44_Y25_N26
cycloneii_lcell_comb \u_kirsch|r5_7_~feeder (
// Equation(s):
// \u_kirsch|r5_7_~feeder_combout  = \u_kirsch|g_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|g_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|r5_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r5_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y25_N27
cycloneii_lcell_ff \u_kirsch|reg_r5_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_7_~feeder_combout ),
	.sdata(\u_kirsch|b_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix13424z18832|nx100z1 ),
	.ena(\u_kirsch|nx13424z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_7_ ));

// Location: LCCOMB_X41_Y24_N16
cycloneii_lcell_comb \u_kirsch|ix8431z52923 (
// Equation(s):
// \u_kirsch|x_r3_7n3s1f1_7_  = (\u_kirsch|validBit_2_  & ((\u_kirsch|r5_7_ ))) # (!\u_kirsch|validBit_2_  & (\u_kirsch|x_r5_7_ ))

	.dataa(\u_kirsch|validBit_2_ ),
	.datab(vcc),
	.datac(\u_kirsch|x_r5_7_ ),
	.datad(\u_kirsch|r5_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r3_7n3s1f1_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix8431z52923 .lut_mask = 16'hFA50;
defparam \u_kirsch|ix8431z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y25_N0
cycloneii_lcell_comb \u_kirsch|r2_6_~feeder (
// Equation(s):
// \u_kirsch|r2_6_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx43955z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_add8_6i49|nx43955z1 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r2_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y25_N1
cycloneii_lcell_ff \u_kirsch|reg_r2_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx51677z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_6_ ));

// Location: LCCOMB_X44_Y23_N4
cycloneii_lcell_comb \u_kirsch|x_r5_5_~feeder (
// Equation(s):
// \u_kirsch|x_r5_5_~feeder_combout  = \u_kirsch|c_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|c_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r5_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r5_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r5_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y23_N5
cycloneii_lcell_ff \u_kirsch|reg_x_r5_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r5_5_~feeder_combout ),
	.sdata(\u_kirsch|f_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix27953z18832|nx100z1 ),
	.ena(\u_kirsch|nx27953z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r5_5_ ));

// Location: LCFF_X44_Y24_N19
cycloneii_lcell_ff \u_kirsch|reg_g_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_5_ ));

// Location: LCCOMB_X44_Y25_N30
cycloneii_lcell_comb \u_kirsch|r5_5_~feeder (
// Equation(s):
// \u_kirsch|r5_5_~feeder_combout  = \u_kirsch|g_5_ 

	.dataa(vcc),
	.datab(\u_kirsch|g_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r5_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_5_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r5_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y25_N31
cycloneii_lcell_ff \u_kirsch|reg_r5_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_5_~feeder_combout ),
	.sdata(\u_kirsch|b_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix13424z18832|nx100z1 ),
	.ena(\u_kirsch|nx13424z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_5_ ));

// Location: LCCOMB_X43_Y25_N2
cycloneii_lcell_comb \u_kirsch|ix8431z52925 (
// Equation(s):
// \u_kirsch|x_r3_7n3s1f1_5_  = (\u_kirsch|validBit_2_  & ((\u_kirsch|r5_5_ ))) # (!\u_kirsch|validBit_2_  & (\u_kirsch|x_r5_5_ ))

	.dataa(\u_kirsch|validBit_2_ ),
	.datab(vcc),
	.datac(\u_kirsch|x_r5_5_ ),
	.datad(\u_kirsch|r5_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r3_7n3s1f1_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix8431z52925 .lut_mask = 16'hFA50;
defparam \u_kirsch|ix8431z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y25_N22
cycloneii_lcell_comb \u_kirsch|x_r3_add9_7i9|ix45949z52927 (
// Equation(s):
// \u_kirsch|x_r3_add9_7i9|nx42958z1  = (\u_kirsch|r2_5_  & ((\u_kirsch|x_r3_7n3s1f1_5_  & (\u_kirsch|x_r3_add9_7i9|nx45949z12  & VCC)) # (!\u_kirsch|x_r3_7n3s1f1_5_  & (!\u_kirsch|x_r3_add9_7i9|nx45949z12 )))) # (!\u_kirsch|r2_5_  & 
// ((\u_kirsch|x_r3_7n3s1f1_5_  & (!\u_kirsch|x_r3_add9_7i9|nx45949z12 )) # (!\u_kirsch|x_r3_7n3s1f1_5_  & ((\u_kirsch|x_r3_add9_7i9|nx45949z12 ) # (GND)))))
// \u_kirsch|x_r3_add9_7i9|nx45949z9  = CARRY((\u_kirsch|r2_5_  & (!\u_kirsch|x_r3_7n3s1f1_5_  & !\u_kirsch|x_r3_add9_7i9|nx45949z12 )) # (!\u_kirsch|r2_5_  & ((!\u_kirsch|x_r3_add9_7i9|nx45949z12 ) # (!\u_kirsch|x_r3_7n3s1f1_5_ ))))

	.dataa(\u_kirsch|r2_5_ ),
	.datab(\u_kirsch|x_r3_7n3s1f1_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r3_add9_7i9|nx45949z12 ),
	.combout(\u_kirsch|x_r3_add9_7i9|nx42958z1 ),
	.cout(\u_kirsch|x_r3_add9_7i9|nx45949z9 ));
// synopsys translate_off
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52927 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y25_N24
cycloneii_lcell_comb \u_kirsch|x_r3_add9_7i9|ix45949z52926 (
// Equation(s):
// \u_kirsch|x_r3_add9_7i9|nx43955z1  = ((\u_kirsch|x_r3_7n3s1f1_6_  $ (\u_kirsch|r2_6_  $ (!\u_kirsch|x_r3_add9_7i9|nx45949z9 )))) # (GND)
// \u_kirsch|x_r3_add9_7i9|nx45949z6  = CARRY((\u_kirsch|x_r3_7n3s1f1_6_  & ((\u_kirsch|r2_6_ ) # (!\u_kirsch|x_r3_add9_7i9|nx45949z9 ))) # (!\u_kirsch|x_r3_7n3s1f1_6_  & (\u_kirsch|r2_6_  & !\u_kirsch|x_r3_add9_7i9|nx45949z9 )))

	.dataa(\u_kirsch|x_r3_7n3s1f1_6_ ),
	.datab(\u_kirsch|r2_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r3_add9_7i9|nx45949z9 ),
	.combout(\u_kirsch|x_r3_add9_7i9|nx43955z1 ),
	.cout(\u_kirsch|x_r3_add9_7i9|nx45949z6 ));
// synopsys translate_off
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52926 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y25_N26
cycloneii_lcell_comb \u_kirsch|x_r3_add9_7i9|ix45949z52925 (
// Equation(s):
// \u_kirsch|x_r3_add9_7i9|nx44952z1  = (\u_kirsch|r2_7_  & ((\u_kirsch|x_r3_7n3s1f1_7_  & (\u_kirsch|x_r3_add9_7i9|nx45949z6  & VCC)) # (!\u_kirsch|x_r3_7n3s1f1_7_  & (!\u_kirsch|x_r3_add9_7i9|nx45949z6 )))) # (!\u_kirsch|r2_7_  & 
// ((\u_kirsch|x_r3_7n3s1f1_7_  & (!\u_kirsch|x_r3_add9_7i9|nx45949z6 )) # (!\u_kirsch|x_r3_7n3s1f1_7_  & ((\u_kirsch|x_r3_add9_7i9|nx45949z6 ) # (GND)))))
// \u_kirsch|x_r3_add9_7i9|nx45949z3  = CARRY((\u_kirsch|r2_7_  & (!\u_kirsch|x_r3_7n3s1f1_7_  & !\u_kirsch|x_r3_add9_7i9|nx45949z6 )) # (!\u_kirsch|r2_7_  & ((!\u_kirsch|x_r3_add9_7i9|nx45949z6 ) # (!\u_kirsch|x_r3_7n3s1f1_7_ ))))

	.dataa(\u_kirsch|r2_7_ ),
	.datab(\u_kirsch|x_r3_7n3s1f1_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r3_add9_7i9|nx45949z6 ),
	.combout(\u_kirsch|x_r3_add9_7i9|nx44952z1 ),
	.cout(\u_kirsch|x_r3_add9_7i9|nx45949z3 ));
// synopsys translate_off
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52925 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y25_N28
cycloneii_lcell_comb \u_kirsch|x_r3_add9_7i9|ix45949z52923 (
// Equation(s):
// \u_kirsch|x_r3_add9_7i9|nx45949z1  = (\u_kirsch|r2_8_  & (\u_kirsch|x_r3_add9_7i9|nx45949z3  $ (GND))) # (!\u_kirsch|r2_8_  & (!\u_kirsch|x_r3_add9_7i9|nx45949z3  & VCC))
// \u_kirsch|x_r3_add9_7i9|nx23445z2  = CARRY((\u_kirsch|r2_8_  & !\u_kirsch|x_r3_add9_7i9|nx45949z3 ))

	.dataa(vcc),
	.datab(\u_kirsch|r2_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r3_add9_7i9|nx45949z3 ),
	.combout(\u_kirsch|x_r3_add9_7i9|nx45949z1 ),
	.cout(\u_kirsch|x_r3_add9_7i9|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52923 .lut_mask = 16'hC30C;
defparam \u_kirsch|x_r3_add9_7i9|ix45949z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X40_Y25_N29
cycloneii_lcell_ff \u_kirsch|reg_x_r3_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r3_add9_7i9|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx56415z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r3_8_ ));

// Location: LCFF_X42_Y26_N15
cycloneii_lcell_ff \u_kirsch|reg_b_d1_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|b_d1_add9_7i10|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_d1_7_ ));

// Location: LCFF_X42_Y26_N13
cycloneii_lcell_ff \u_kirsch|reg_b_d1_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|b_d1_add9_7i10|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_d1_6_ ));

// Location: LCFF_X42_Y26_N11
cycloneii_lcell_ff \u_kirsch|reg_b_d1_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|b_d1_add9_7i10|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_d1_5_ ));

// Location: LCFF_X42_Y26_N7
cycloneii_lcell_ff \u_kirsch|reg_b_d1_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|b_d1_add9_7i10|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_d1_3_ ));

// Location: LCFF_X41_Y26_N7
cycloneii_lcell_ff \u_kirsch|reg_x_r3_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|x_r3_add9_7i9|nx39967z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx56415z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r3_2_ ));

// Location: LCFF_X41_Y26_N5
cycloneii_lcell_ff \u_kirsch|reg_x_r3_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|x_r3_add9_7i9|nx38970z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx56415z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r3_1_ ));

// Location: LCFF_X42_Y26_N1
cycloneii_lcell_ff \u_kirsch|reg_b_d1_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|b_d1_add9_7i10|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_d1_0_ ));

// Location: LCCOMB_X41_Y26_N2
cycloneii_lcell_comb \u_kirsch|ix47369z52805|ix100z52933 (
// Equation(s):
// \u_kirsch|ix47369z52805|nx100z28  = CARRY((!\u_kirsch|x_r3_0_  & \u_kirsch|b_d1_0_ ))

	.dataa(\u_kirsch|x_r3_0_ ),
	.datab(\u_kirsch|b_d1_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|ix47369z52805|nx100z28 ));
// synopsys translate_off
defparam \u_kirsch|ix47369z52805|ix100z52933 .lut_mask = 16'h0044;
defparam \u_kirsch|ix47369z52805|ix100z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y26_N4
cycloneii_lcell_comb \u_kirsch|ix47369z52805|ix100z52932 (
// Equation(s):
// \u_kirsch|ix47369z52805|nx100z25  = CARRY((\u_kirsch|b_d1_1_  & (\u_kirsch|x_r3_1_  & !\u_kirsch|ix47369z52805|nx100z28 )) # (!\u_kirsch|b_d1_1_  & ((\u_kirsch|x_r3_1_ ) # (!\u_kirsch|ix47369z52805|nx100z28 ))))

	.dataa(\u_kirsch|b_d1_1_ ),
	.datab(\u_kirsch|x_r3_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47369z52805|nx100z28 ),
	.combout(),
	.cout(\u_kirsch|ix47369z52805|nx100z25 ));
// synopsys translate_off
defparam \u_kirsch|ix47369z52805|ix100z52932 .lut_mask = 16'h004D;
defparam \u_kirsch|ix47369z52805|ix100z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y26_N6
cycloneii_lcell_comb \u_kirsch|ix47369z52805|ix100z52931 (
// Equation(s):
// \u_kirsch|ix47369z52805|nx100z22  = CARRY((\u_kirsch|b_d1_2_  & ((!\u_kirsch|ix47369z52805|nx100z25 ) # (!\u_kirsch|x_r3_2_ ))) # (!\u_kirsch|b_d1_2_  & (!\u_kirsch|x_r3_2_  & !\u_kirsch|ix47369z52805|nx100z25 )))

	.dataa(\u_kirsch|b_d1_2_ ),
	.datab(\u_kirsch|x_r3_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47369z52805|nx100z25 ),
	.combout(),
	.cout(\u_kirsch|ix47369z52805|nx100z22 ));
// synopsys translate_off
defparam \u_kirsch|ix47369z52805|ix100z52931 .lut_mask = 16'h002B;
defparam \u_kirsch|ix47369z52805|ix100z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y26_N8
cycloneii_lcell_comb \u_kirsch|ix47369z52805|ix100z52930 (
// Equation(s):
// \u_kirsch|ix47369z52805|nx100z19  = CARRY((\u_kirsch|x_r3_3_  & ((!\u_kirsch|ix47369z52805|nx100z22 ) # (!\u_kirsch|b_d1_3_ ))) # (!\u_kirsch|x_r3_3_  & (!\u_kirsch|b_d1_3_  & !\u_kirsch|ix47369z52805|nx100z22 )))

	.dataa(\u_kirsch|x_r3_3_ ),
	.datab(\u_kirsch|b_d1_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47369z52805|nx100z22 ),
	.combout(),
	.cout(\u_kirsch|ix47369z52805|nx100z19 ));
// synopsys translate_off
defparam \u_kirsch|ix47369z52805|ix100z52930 .lut_mask = 16'h002B;
defparam \u_kirsch|ix47369z52805|ix100z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y26_N10
cycloneii_lcell_comb \u_kirsch|ix47369z52805|ix100z52929 (
// Equation(s):
// \u_kirsch|ix47369z52805|nx100z16  = CARRY((\u_kirsch|x_r3_4_  & (\u_kirsch|b_d1_4_  & !\u_kirsch|ix47369z52805|nx100z19 )) # (!\u_kirsch|x_r3_4_  & ((\u_kirsch|b_d1_4_ ) # (!\u_kirsch|ix47369z52805|nx100z19 ))))

	.dataa(\u_kirsch|x_r3_4_ ),
	.datab(\u_kirsch|b_d1_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47369z52805|nx100z19 ),
	.combout(),
	.cout(\u_kirsch|ix47369z52805|nx100z16 ));
// synopsys translate_off
defparam \u_kirsch|ix47369z52805|ix100z52929 .lut_mask = 16'h004D;
defparam \u_kirsch|ix47369z52805|ix100z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y26_N12
cycloneii_lcell_comb \u_kirsch|ix47369z52805|ix100z52928 (
// Equation(s):
// \u_kirsch|ix47369z52805|nx100z13  = CARRY((\u_kirsch|x_r3_5_  & ((!\u_kirsch|ix47369z52805|nx100z16 ) # (!\u_kirsch|b_d1_5_ ))) # (!\u_kirsch|x_r3_5_  & (!\u_kirsch|b_d1_5_  & !\u_kirsch|ix47369z52805|nx100z16 )))

	.dataa(\u_kirsch|x_r3_5_ ),
	.datab(\u_kirsch|b_d1_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47369z52805|nx100z16 ),
	.combout(),
	.cout(\u_kirsch|ix47369z52805|nx100z13 ));
// synopsys translate_off
defparam \u_kirsch|ix47369z52805|ix100z52928 .lut_mask = 16'h002B;
defparam \u_kirsch|ix47369z52805|ix100z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y26_N14
cycloneii_lcell_comb \u_kirsch|ix47369z52805|ix100z52927 (
// Equation(s):
// \u_kirsch|ix47369z52805|nx100z10  = CARRY((\u_kirsch|x_r3_6_  & (\u_kirsch|b_d1_6_  & !\u_kirsch|ix47369z52805|nx100z13 )) # (!\u_kirsch|x_r3_6_  & ((\u_kirsch|b_d1_6_ ) # (!\u_kirsch|ix47369z52805|nx100z13 ))))

	.dataa(\u_kirsch|x_r3_6_ ),
	.datab(\u_kirsch|b_d1_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47369z52805|nx100z13 ),
	.combout(),
	.cout(\u_kirsch|ix47369z52805|nx100z10 ));
// synopsys translate_off
defparam \u_kirsch|ix47369z52805|ix100z52927 .lut_mask = 16'h004D;
defparam \u_kirsch|ix47369z52805|ix100z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y26_N16
cycloneii_lcell_comb \u_kirsch|ix47369z52805|ix100z52926 (
// Equation(s):
// \u_kirsch|ix47369z52805|nx100z7  = CARRY((\u_kirsch|x_r3_7_  & ((!\u_kirsch|ix47369z52805|nx100z10 ) # (!\u_kirsch|b_d1_7_ ))) # (!\u_kirsch|x_r3_7_  & (!\u_kirsch|b_d1_7_  & !\u_kirsch|ix47369z52805|nx100z10 )))

	.dataa(\u_kirsch|x_r3_7_ ),
	.datab(\u_kirsch|b_d1_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47369z52805|nx100z10 ),
	.combout(),
	.cout(\u_kirsch|ix47369z52805|nx100z7 ));
// synopsys translate_off
defparam \u_kirsch|ix47369z52805|ix100z52926 .lut_mask = 16'h002B;
defparam \u_kirsch|ix47369z52805|ix100z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y26_N18
cycloneii_lcell_comb \u_kirsch|ix47369z52805|ix100z52925 (
// Equation(s):
// \u_kirsch|ix47369z52805|nx100z4  = CARRY((\u_kirsch|b_d1_8_  & ((!\u_kirsch|ix47369z52805|nx100z7 ) # (!\u_kirsch|x_r3_8_ ))) # (!\u_kirsch|b_d1_8_  & (!\u_kirsch|x_r3_8_  & !\u_kirsch|ix47369z52805|nx100z7 )))

	.dataa(\u_kirsch|b_d1_8_ ),
	.datab(\u_kirsch|x_r3_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47369z52805|nx100z7 ),
	.combout(),
	.cout(\u_kirsch|ix47369z52805|nx100z4 ));
// synopsys translate_off
defparam \u_kirsch|ix47369z52805|ix100z52925 .lut_mask = 16'h002B;
defparam \u_kirsch|ix47369z52805|ix100z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y26_N20
cycloneii_lcell_comb \u_kirsch|ix47369z52805|ix100z52923 (
// Equation(s):
// \u_kirsch|ix47369z52805|nx100z1  = (\u_kirsch|x_r3_9_  & (\u_kirsch|ix47369z52805|nx100z4  & \u_kirsch|b_d1_9_ )) # (!\u_kirsch|x_r3_9_  & ((\u_kirsch|ix47369z52805|nx100z4 ) # (\u_kirsch|b_d1_9_ )))

	.dataa(\u_kirsch|x_r3_9_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|b_d1_9_ ),
	.cin(\u_kirsch|ix47369z52805|nx100z4 ),
	.combout(\u_kirsch|ix47369z52805|nx100z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix47369z52805|ix100z52923 .lut_mask = 16'hF550;
defparam \u_kirsch|ix47369z52805|ix100z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X40_Y26_N19
cycloneii_lcell_ff \u_kirsch|reg_r15_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r15_4_~feeder_combout ),
	.sdata(\u_kirsch|b_d1_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix47369z52805|nx100z1 ),
	.ena(\u_kirsch|validBit_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r15_4_ ));

// Location: LCCOMB_X37_Y26_N28
cycloneii_lcell_comb \u_kirsch|r18_4_~feeder (
// Equation(s):
// \u_kirsch|r18_4_~feeder_combout  = \u_kirsch|r15_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r15_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|r18_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r18_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r18_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y25_N10
cycloneii_lcell_comb \u_kirsch|x_r11_4_~feeder (
// Equation(s):
// \u_kirsch|x_r11_4_~feeder_combout  = \u_kirsch|r11_4_ 

	.dataa(\u_kirsch|r11_4_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|x_r11_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r11_4_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|x_r11_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N6
cycloneii_lcell_comb \u_kirsch|ix7951z52924 (
// Equation(s):
// \u_kirsch|nx7951z2  = (\u_kirsch|validBit_3_  & (!\u_kirsch|validBit_2_  & (!\u_kirsch|validBit_0_  & !\u_kirsch|validBit_1_ )))

	.dataa(\u_kirsch|validBit_3_ ),
	.datab(\u_kirsch|validBit_2_ ),
	.datac(\u_kirsch|validBit_0_ ),
	.datad(\u_kirsch|validBit_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx7951z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix7951z52924 .lut_mask = 16'h0002;
defparam \u_kirsch|ix7951z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_r13_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r2_add8_6i49|nx41961z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r13_4_ ));

// Location: LCCOMB_X38_Y24_N26
cycloneii_lcell_comb \u_kirsch|r12_3_~feeder (
// Equation(s):
// \u_kirsch|r12_3_~feeder_combout  = \u_kirsch|e_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|e_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|r12_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r12_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r12_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N20
cycloneii_lcell_comb \u_kirsch|ix32637z52923 (
// Equation(s):
// \u_kirsch|nx32637z1  = (\u_kirsch|state_2_  & ((\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [3]))) # (!\u_kirsch|state_2_  & (\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [3]))

	.dataa(\u_kirsch|state_2_ ),
	.datab(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [3]),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [3]),
	.cin(gnd),
	.combout(\u_kirsch|nx32637z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix32637z52923 .lut_mask = 16'hEE44;
defparam \u_kirsch|ix32637z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y23_N21
cycloneii_lcell_ff \u_kirsch|reg_d_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx32637z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_kirsch|nx20492z2 ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_3_ ));

// Location: LCFF_X45_Y24_N31
cycloneii_lcell_ff \u_kirsch|reg_i_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|d_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_3_ ));

// Location: LCFF_X45_Y24_N9
cycloneii_lcell_ff \u_kirsch|reg_h_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_3_ ));

// Location: LCCOMB_X49_Y23_N2
cycloneii_lcell_comb \u_kirsch|ix30643z52923 (
// Equation(s):
// \u_kirsch|nx30643z1  = (\u_kirsch|state_2_  & ((\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [1]))) # (!\u_kirsch|state_2_  & (\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [1]))

	.dataa(\u_kirsch|state_2_ ),
	.datab(\u_kirsch|Generate_mem_0_u_mem0_mem|ix64056z29481|auto_generated|q_a [1]),
	.datac(vcc),
	.datad(\u_kirsch|Generate_mem_1_u_mem0_mem|ix64056z29482|auto_generated|q_a [1]),
	.cin(gnd),
	.combout(\u_kirsch|nx30643z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30643z52923 .lut_mask = 16'hEE44;
defparam \u_kirsch|ix30643z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y23_N3
cycloneii_lcell_ff \u_kirsch|reg_d_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx30643z1 ),
	.sdata(\u_kirsch|Generate_mem_2_u_mem0_mem|ix64056z29483|auto_generated|q_a [1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_kirsch|nx20492z2 ),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_1_ ));

// Location: LCCOMB_X44_Y24_N4
cycloneii_lcell_comb \u_kirsch|i_1_~feeder (
// Equation(s):
// \u_kirsch|i_1_~feeder_combout  = \u_kirsch|d_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|d_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|i_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|i_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y24_N5
cycloneii_lcell_ff \u_kirsch|reg_i_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|i_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_1_ ));

// Location: LCFF_X45_Y24_N5
cycloneii_lcell_ff \u_kirsch|reg_h_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_1_ ));

// Location: LCFF_X44_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_i_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|d_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_0_ ));

// Location: LCFF_X45_Y24_N3
cycloneii_lcell_ff \u_kirsch|reg_h_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_0_ ));

// Location: LCCOMB_X45_Y24_N2
cycloneii_lcell_comb \u_kirsch|ix7951z18830|ix100z52931 (
// Equation(s):
// \u_kirsch|ix7951z18830|nx100z22  = CARRY((!\u_kirsch|e_0_  & \u_kirsch|h_0_ ))

	.dataa(\u_kirsch|e_0_ ),
	.datab(\u_kirsch|h_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|ix7951z18830|nx100z22 ));
// synopsys translate_off
defparam \u_kirsch|ix7951z18830|ix100z52931 .lut_mask = 16'h0044;
defparam \u_kirsch|ix7951z18830|ix100z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N4
cycloneii_lcell_comb \u_kirsch|ix7951z18830|ix100z52930 (
// Equation(s):
// \u_kirsch|ix7951z18830|nx100z19  = CARRY((\u_kirsch|e_1_  & ((!\u_kirsch|ix7951z18830|nx100z22 ) # (!\u_kirsch|h_1_ ))) # (!\u_kirsch|e_1_  & (!\u_kirsch|h_1_  & !\u_kirsch|ix7951z18830|nx100z22 )))

	.dataa(\u_kirsch|e_1_ ),
	.datab(\u_kirsch|h_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix7951z18830|nx100z22 ),
	.combout(),
	.cout(\u_kirsch|ix7951z18830|nx100z19 ));
// synopsys translate_off
defparam \u_kirsch|ix7951z18830|ix100z52930 .lut_mask = 16'h002B;
defparam \u_kirsch|ix7951z18830|ix100z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N6
cycloneii_lcell_comb \u_kirsch|ix7951z18830|ix100z52929 (
// Equation(s):
// \u_kirsch|ix7951z18830|nx100z16  = CARRY((\u_kirsch|h_2_  & ((!\u_kirsch|ix7951z18830|nx100z19 ) # (!\u_kirsch|e_2_ ))) # (!\u_kirsch|h_2_  & (!\u_kirsch|e_2_  & !\u_kirsch|ix7951z18830|nx100z19 )))

	.dataa(\u_kirsch|h_2_ ),
	.datab(\u_kirsch|e_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix7951z18830|nx100z19 ),
	.combout(),
	.cout(\u_kirsch|ix7951z18830|nx100z16 ));
// synopsys translate_off
defparam \u_kirsch|ix7951z18830|ix100z52929 .lut_mask = 16'h002B;
defparam \u_kirsch|ix7951z18830|ix100z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N8
cycloneii_lcell_comb \u_kirsch|ix7951z18830|ix100z52928 (
// Equation(s):
// \u_kirsch|ix7951z18830|nx100z13  = CARRY((\u_kirsch|e_3_  & ((!\u_kirsch|ix7951z18830|nx100z16 ) # (!\u_kirsch|h_3_ ))) # (!\u_kirsch|e_3_  & (!\u_kirsch|h_3_  & !\u_kirsch|ix7951z18830|nx100z16 )))

	.dataa(\u_kirsch|e_3_ ),
	.datab(\u_kirsch|h_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix7951z18830|nx100z16 ),
	.combout(),
	.cout(\u_kirsch|ix7951z18830|nx100z13 ));
// synopsys translate_off
defparam \u_kirsch|ix7951z18830|ix100z52928 .lut_mask = 16'h002B;
defparam \u_kirsch|ix7951z18830|ix100z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N10
cycloneii_lcell_comb \u_kirsch|ix7951z18830|ix100z52927 (
// Equation(s):
// \u_kirsch|ix7951z18830|nx100z10  = CARRY((\u_kirsch|h_4_  & ((!\u_kirsch|ix7951z18830|nx100z13 ) # (!\u_kirsch|e_4_ ))) # (!\u_kirsch|h_4_  & (!\u_kirsch|e_4_  & !\u_kirsch|ix7951z18830|nx100z13 )))

	.dataa(\u_kirsch|h_4_ ),
	.datab(\u_kirsch|e_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix7951z18830|nx100z13 ),
	.combout(),
	.cout(\u_kirsch|ix7951z18830|nx100z10 ));
// synopsys translate_off
defparam \u_kirsch|ix7951z18830|ix100z52927 .lut_mask = 16'h002B;
defparam \u_kirsch|ix7951z18830|ix100z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N12
cycloneii_lcell_comb \u_kirsch|ix7951z18830|ix100z52926 (
// Equation(s):
// \u_kirsch|ix7951z18830|nx100z7  = CARRY((\u_kirsch|h_5_  & (\u_kirsch|e_5_  & !\u_kirsch|ix7951z18830|nx100z10 )) # (!\u_kirsch|h_5_  & ((\u_kirsch|e_5_ ) # (!\u_kirsch|ix7951z18830|nx100z10 ))))

	.dataa(\u_kirsch|h_5_ ),
	.datab(\u_kirsch|e_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix7951z18830|nx100z10 ),
	.combout(),
	.cout(\u_kirsch|ix7951z18830|nx100z7 ));
// synopsys translate_off
defparam \u_kirsch|ix7951z18830|ix100z52926 .lut_mask = 16'h004D;
defparam \u_kirsch|ix7951z18830|ix100z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N14
cycloneii_lcell_comb \u_kirsch|ix7951z18830|ix100z52925 (
// Equation(s):
// \u_kirsch|ix7951z18830|nx100z4  = CARRY((\u_kirsch|h_6_  & ((!\u_kirsch|ix7951z18830|nx100z7 ) # (!\u_kirsch|e_6_ ))) # (!\u_kirsch|h_6_  & (!\u_kirsch|e_6_  & !\u_kirsch|ix7951z18830|nx100z7 )))

	.dataa(\u_kirsch|h_6_ ),
	.datab(\u_kirsch|e_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix7951z18830|nx100z7 ),
	.combout(),
	.cout(\u_kirsch|ix7951z18830|nx100z4 ));
// synopsys translate_off
defparam \u_kirsch|ix7951z18830|ix100z52925 .lut_mask = 16'h002B;
defparam \u_kirsch|ix7951z18830|ix100z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N16
cycloneii_lcell_comb \u_kirsch|ix7951z18830|ix100z52923 (
// Equation(s):
// \u_kirsch|ix7951z18830|nx100z1  = (\u_kirsch|e_7_  & (\u_kirsch|ix7951z18830|nx100z4  & \u_kirsch|h_7_ )) # (!\u_kirsch|e_7_  & ((\u_kirsch|ix7951z18830|nx100z4 ) # (\u_kirsch|h_7_ )))

	.dataa(vcc),
	.datab(\u_kirsch|e_7_ ),
	.datac(vcc),
	.datad(\u_kirsch|h_7_ ),
	.cin(\u_kirsch|ix7951z18830|nx100z4 ),
	.combout(\u_kirsch|ix7951z18830|nx100z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix7951z18830|ix100z52923 .lut_mask = 16'hF330;
defparam \u_kirsch|ix7951z18830|ix100z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X38_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_r12_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r12_3_~feeder_combout ),
	.sdata(\u_kirsch|h_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix7951z18830|nx100z1 ),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r12_3_ ));

// Location: LCCOMB_X40_Y24_N20
cycloneii_lcell_comb \u_kirsch|r12_2_~feeder (
// Equation(s):
// \u_kirsch|r12_2_~feeder_combout  = \u_kirsch|e_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|e_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|r12_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r12_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r12_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N0
cycloneii_lcell_comb \u_kirsch|i_2_~feeder (
// Equation(s):
// \u_kirsch|i_2_~feeder_combout  = \u_kirsch|d_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|d_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|i_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|i_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_i_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|i_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_2_ ));

// Location: LCFF_X45_Y24_N7
cycloneii_lcell_ff \u_kirsch|reg_h_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_2_ ));

// Location: LCFF_X40_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_r12_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r12_2_~feeder_combout ),
	.sdata(\u_kirsch|h_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix7951z18830|nx100z1 ),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r12_2_ ));

// Location: LCCOMB_X42_Y24_N24
cycloneii_lcell_comb \u_kirsch|r13_1_~feeder (
// Equation(s):
// \u_kirsch|r13_1_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx38970z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_add8_6i49|nx38970z1 ),
	.cin(gnd),
	.combout(\u_kirsch|r13_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r13_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r13_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y24_N25
cycloneii_lcell_ff \u_kirsch|reg_r13_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r13_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r13_1_ ));

// Location: LCCOMB_X38_Y24_N28
cycloneii_lcell_comb \u_kirsch|r13_0_~feeder (
// Equation(s):
// \u_kirsch|r13_0_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx37973z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_add8_6i49|nx37973z1 ),
	.cin(gnd),
	.combout(\u_kirsch|r13_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r13_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r13_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y24_N29
cycloneii_lcell_ff \u_kirsch|reg_r13_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r13_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r13_0_ ));

// Location: LCCOMB_X38_Y24_N0
cycloneii_lcell_comb \u_kirsch|r16_add9_7i11|ix45949z52932 (
// Equation(s):
// \u_kirsch|r16_add9_7i11|nx37973z1  = (\u_kirsch|r12_0_  & (\u_kirsch|r13_0_  $ (VCC))) # (!\u_kirsch|r12_0_  & (\u_kirsch|r13_0_  & VCC))
// \u_kirsch|r16_add9_7i11|nx45949z24  = CARRY((\u_kirsch|r12_0_  & \u_kirsch|r13_0_ ))

	.dataa(\u_kirsch|r12_0_ ),
	.datab(\u_kirsch|r13_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r16_add9_7i11|nx37973z1 ),
	.cout(\u_kirsch|r16_add9_7i11|nx45949z24 ));
// synopsys translate_off
defparam \u_kirsch|r16_add9_7i11|ix45949z52932 .lut_mask = 16'h6688;
defparam \u_kirsch|r16_add9_7i11|ix45949z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N8
cycloneii_lcell_comb \u_kirsch|r16_add9_7i11|ix45949z52928 (
// Equation(s):
// \u_kirsch|r16_add9_7i11|nx41961z1  = ((\u_kirsch|r12_4_  $ (\u_kirsch|r13_4_  $ (!\u_kirsch|r16_add9_7i11|nx45949z15 )))) # (GND)
// \u_kirsch|r16_add9_7i11|nx45949z12  = CARRY((\u_kirsch|r12_4_  & ((\u_kirsch|r13_4_ ) # (!\u_kirsch|r16_add9_7i11|nx45949z15 ))) # (!\u_kirsch|r12_4_  & (\u_kirsch|r13_4_  & !\u_kirsch|r16_add9_7i11|nx45949z15 )))

	.dataa(\u_kirsch|r12_4_ ),
	.datab(\u_kirsch|r13_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r16_add9_7i11|nx45949z15 ),
	.combout(\u_kirsch|r16_add9_7i11|nx41961z1 ),
	.cout(\u_kirsch|r16_add9_7i11|nx45949z12 ));
// synopsys translate_off
defparam \u_kirsch|r16_add9_7i11|ix45949z52928 .lut_mask = 16'h698E;
defparam \u_kirsch|r16_add9_7i11|ix45949z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N14
cycloneii_lcell_comb \u_kirsch|ix34104z52923 (
// Equation(s):
// \u_kirsch|nx34104z1  = (!\u_kirsch|validBit_1_  & (!\u_kirsch|validBit_2_  & (\u_kirsch|validBit_4_  & !\u_kirsch|validBit_3_ )))

	.dataa(\u_kirsch|validBit_1_ ),
	.datab(\u_kirsch|validBit_2_ ),
	.datac(\u_kirsch|validBit_4_ ),
	.datad(\u_kirsch|validBit_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx34104z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix34104z52923 .lut_mask = 16'h0010;
defparam \u_kirsch|ix34104z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y24_N9
cycloneii_lcell_ff \u_kirsch|reg_r16_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r16_add9_7i11|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx34104z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r16_4_ ));

// Location: LCFF_X42_Y24_N15
cycloneii_lcell_ff \u_kirsch|reg_r13_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add8_6i49|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r13_7_ ));

// Location: LCCOMB_X42_Y24_N26
cycloneii_lcell_comb \u_kirsch|r13_6_~feeder (
// Equation(s):
// \u_kirsch|r13_6_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx43955z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_add8_6i49|nx43955z1 ),
	.cin(gnd),
	.combout(\u_kirsch|r13_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r13_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r13_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_r13_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r13_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r13_6_ ));

// Location: LCCOMB_X38_Y24_N30
cycloneii_lcell_comb \u_kirsch|r12_5_~feeder (
// Equation(s):
// \u_kirsch|r12_5_~feeder_combout  = \u_kirsch|e_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|e_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|r12_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r12_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r12_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y24_N31
cycloneii_lcell_ff \u_kirsch|reg_r12_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r12_5_~feeder_combout ),
	.sdata(\u_kirsch|h_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix7951z18830|nx100z1 ),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r12_5_ ));

// Location: LCCOMB_X38_Y24_N10
cycloneii_lcell_comb \u_kirsch|r16_add9_7i11|ix45949z52927 (
// Equation(s):
// \u_kirsch|r16_add9_7i11|nx42958z1  = (\u_kirsch|r13_5_  & ((\u_kirsch|r12_5_  & (\u_kirsch|r16_add9_7i11|nx45949z12  & VCC)) # (!\u_kirsch|r12_5_  & (!\u_kirsch|r16_add9_7i11|nx45949z12 )))) # (!\u_kirsch|r13_5_  & ((\u_kirsch|r12_5_  & 
// (!\u_kirsch|r16_add9_7i11|nx45949z12 )) # (!\u_kirsch|r12_5_  & ((\u_kirsch|r16_add9_7i11|nx45949z12 ) # (GND)))))
// \u_kirsch|r16_add9_7i11|nx45949z9  = CARRY((\u_kirsch|r13_5_  & (!\u_kirsch|r12_5_  & !\u_kirsch|r16_add9_7i11|nx45949z12 )) # (!\u_kirsch|r13_5_  & ((!\u_kirsch|r16_add9_7i11|nx45949z12 ) # (!\u_kirsch|r12_5_ ))))

	.dataa(\u_kirsch|r13_5_ ),
	.datab(\u_kirsch|r12_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r16_add9_7i11|nx45949z12 ),
	.combout(\u_kirsch|r16_add9_7i11|nx42958z1 ),
	.cout(\u_kirsch|r16_add9_7i11|nx45949z9 ));
// synopsys translate_off
defparam \u_kirsch|r16_add9_7i11|ix45949z52927 .lut_mask = 16'h9617;
defparam \u_kirsch|r16_add9_7i11|ix45949z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N12
cycloneii_lcell_comb \u_kirsch|r16_add9_7i11|ix45949z52926 (
// Equation(s):
// \u_kirsch|r16_add9_7i11|nx43955z1  = ((\u_kirsch|r12_6_  $ (\u_kirsch|r13_6_  $ (!\u_kirsch|r16_add9_7i11|nx45949z9 )))) # (GND)
// \u_kirsch|r16_add9_7i11|nx45949z6  = CARRY((\u_kirsch|r12_6_  & ((\u_kirsch|r13_6_ ) # (!\u_kirsch|r16_add9_7i11|nx45949z9 ))) # (!\u_kirsch|r12_6_  & (\u_kirsch|r13_6_  & !\u_kirsch|r16_add9_7i11|nx45949z9 )))

	.dataa(\u_kirsch|r12_6_ ),
	.datab(\u_kirsch|r13_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r16_add9_7i11|nx45949z9 ),
	.combout(\u_kirsch|r16_add9_7i11|nx43955z1 ),
	.cout(\u_kirsch|r16_add9_7i11|nx45949z6 ));
// synopsys translate_off
defparam \u_kirsch|r16_add9_7i11|ix45949z52926 .lut_mask = 16'h698E;
defparam \u_kirsch|r16_add9_7i11|ix45949z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N16
cycloneii_lcell_comb \u_kirsch|r16_add9_7i11|ix45949z52923 (
// Equation(s):
// \u_kirsch|r16_add9_7i11|nx45949z1  = (\u_kirsch|r13_8_  & (\u_kirsch|r16_add9_7i11|nx45949z3  $ (GND))) # (!\u_kirsch|r13_8_  & (!\u_kirsch|r16_add9_7i11|nx45949z3  & VCC))
// \u_kirsch|r16_add9_7i11|nx23445z2  = CARRY((\u_kirsch|r13_8_  & !\u_kirsch|r16_add9_7i11|nx45949z3 ))

	.dataa(\u_kirsch|r13_8_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r16_add9_7i11|nx45949z3 ),
	.combout(\u_kirsch|r16_add9_7i11|nx45949z1 ),
	.cout(\u_kirsch|r16_add9_7i11|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|r16_add9_7i11|ix45949z52923 .lut_mask = 16'hA50A;
defparam \u_kirsch|r16_add9_7i11|ix45949z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N18
cycloneii_lcell_comb \u_kirsch|r16_add9_7i11|ix23445z52923 (
// Equation(s):
// \u_kirsch|r16_add9_7i11|nx23445z1  = \u_kirsch|r16_add9_7i11|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r16_add9_7i11|nx23445z2 ),
	.combout(\u_kirsch|r16_add9_7i11|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r16_add9_7i11|ix23445z52923 .lut_mask = 16'hF0F0;
defparam \u_kirsch|r16_add9_7i11|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X38_Y24_N19
cycloneii_lcell_ff \u_kirsch|reg_r16_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r16_add9_7i11|nx23445z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx34104z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r16_9_ ));

// Location: LCCOMB_X40_Y25_N30
cycloneii_lcell_comb \u_kirsch|x_r3_add9_7i9|ix23445z52923 (
// Equation(s):
// \u_kirsch|x_r3_add9_7i9|nx23445z1  = \u_kirsch|x_r3_add9_7i9|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r3_add9_7i9|nx23445z2 ),
	.combout(\u_kirsch|x_r3_add9_7i9|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r3_add9_7i9|ix23445z52923 .lut_mask = 16'hF0F0;
defparam \u_kirsch|x_r3_add9_7i9|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N18
cycloneii_lcell_comb \u_kirsch|ix54873z52923 (
// Equation(s):
// \u_kirsch|nx54873z1  = (!\u_kirsch|validBit_2_  & (\u_kirsch|validBit_3_  & !\u_kirsch|validBit_1_ ))

	.dataa(\u_kirsch|validBit_2_ ),
	.datab(vcc),
	.datac(\u_kirsch|validBit_3_ ),
	.datad(\u_kirsch|validBit_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx54873z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix54873z52923 .lut_mask = 16'h0050;
defparam \u_kirsch|ix54873z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y25_N31
cycloneii_lcell_ff \u_kirsch|reg_r11_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r3_add9_7i9|nx23445z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx54873z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r11_9_ ));

// Location: LCFF_X38_Y24_N17
cycloneii_lcell_ff \u_kirsch|reg_r16_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r16_add9_7i11|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx34104z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r16_8_ ));

// Location: LCFF_X40_Y25_N27
cycloneii_lcell_ff \u_kirsch|reg_r11_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r3_add9_7i9|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx54873z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r11_7_ ));

// Location: LCFF_X40_Y25_N25
cycloneii_lcell_ff \u_kirsch|reg_r11_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r3_add9_7i9|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx54873z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r11_6_ ));

// Location: LCFF_X38_Y25_N19
cycloneii_lcell_ff \u_kirsch|reg_r11_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|x_r3_add9_7i9|nx42958z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx54873z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r11_5_ ));

// Location: LCFF_X38_Y25_N15
cycloneii_lcell_ff \u_kirsch|reg_r11_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|x_r3_add9_7i9|nx40964z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx54873z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r11_3_ ));

// Location: LCFF_X40_Y25_N17
cycloneii_lcell_ff \u_kirsch|reg_r11_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r3_add9_7i9|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx54873z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r11_2_ ));

// Location: LCFF_X40_Y25_N15
cycloneii_lcell_ff \u_kirsch|reg_r11_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r3_add9_7i9|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx54873z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r11_1_ ));

// Location: LCFF_X38_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_r16_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r16_add9_7i11|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx34104z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r16_0_ ));

// Location: LCCOMB_X38_Y25_N8
cycloneii_lcell_comb \u_kirsch|ix64999z52807|ix100z52933 (
// Equation(s):
// \u_kirsch|ix64999z52807|nx100z28  = CARRY((!\u_kirsch|r11_0_  & \u_kirsch|r16_0_ ))

	.dataa(\u_kirsch|r11_0_ ),
	.datab(\u_kirsch|r16_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|ix64999z52807|nx100z28 ));
// synopsys translate_off
defparam \u_kirsch|ix64999z52807|ix100z52933 .lut_mask = 16'h0044;
defparam \u_kirsch|ix64999z52807|ix100z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y25_N10
cycloneii_lcell_comb \u_kirsch|ix64999z52807|ix100z52932 (
// Equation(s):
// \u_kirsch|ix64999z52807|nx100z25  = CARRY((\u_kirsch|r16_1_  & (\u_kirsch|r11_1_  & !\u_kirsch|ix64999z52807|nx100z28 )) # (!\u_kirsch|r16_1_  & ((\u_kirsch|r11_1_ ) # (!\u_kirsch|ix64999z52807|nx100z28 ))))

	.dataa(\u_kirsch|r16_1_ ),
	.datab(\u_kirsch|r11_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix64999z52807|nx100z28 ),
	.combout(),
	.cout(\u_kirsch|ix64999z52807|nx100z25 ));
// synopsys translate_off
defparam \u_kirsch|ix64999z52807|ix100z52932 .lut_mask = 16'h004D;
defparam \u_kirsch|ix64999z52807|ix100z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y25_N12
cycloneii_lcell_comb \u_kirsch|ix64999z52807|ix100z52931 (
// Equation(s):
// \u_kirsch|ix64999z52807|nx100z22  = CARRY((\u_kirsch|r16_2_  & ((!\u_kirsch|ix64999z52807|nx100z25 ) # (!\u_kirsch|r11_2_ ))) # (!\u_kirsch|r16_2_  & (!\u_kirsch|r11_2_  & !\u_kirsch|ix64999z52807|nx100z25 )))

	.dataa(\u_kirsch|r16_2_ ),
	.datab(\u_kirsch|r11_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix64999z52807|nx100z25 ),
	.combout(),
	.cout(\u_kirsch|ix64999z52807|nx100z22 ));
// synopsys translate_off
defparam \u_kirsch|ix64999z52807|ix100z52931 .lut_mask = 16'h002B;
defparam \u_kirsch|ix64999z52807|ix100z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y25_N14
cycloneii_lcell_comb \u_kirsch|ix64999z52807|ix100z52930 (
// Equation(s):
// \u_kirsch|ix64999z52807|nx100z19  = CARRY((\u_kirsch|r16_3_  & (\u_kirsch|r11_3_  & !\u_kirsch|ix64999z52807|nx100z22 )) # (!\u_kirsch|r16_3_  & ((\u_kirsch|r11_3_ ) # (!\u_kirsch|ix64999z52807|nx100z22 ))))

	.dataa(\u_kirsch|r16_3_ ),
	.datab(\u_kirsch|r11_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix64999z52807|nx100z22 ),
	.combout(),
	.cout(\u_kirsch|ix64999z52807|nx100z19 ));
// synopsys translate_off
defparam \u_kirsch|ix64999z52807|ix100z52930 .lut_mask = 16'h004D;
defparam \u_kirsch|ix64999z52807|ix100z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y25_N16
cycloneii_lcell_comb \u_kirsch|ix64999z52807|ix100z52929 (
// Equation(s):
// \u_kirsch|ix64999z52807|nx100z16  = CARRY((\u_kirsch|r11_4_  & (\u_kirsch|r16_4_  & !\u_kirsch|ix64999z52807|nx100z19 )) # (!\u_kirsch|r11_4_  & ((\u_kirsch|r16_4_ ) # (!\u_kirsch|ix64999z52807|nx100z19 ))))

	.dataa(\u_kirsch|r11_4_ ),
	.datab(\u_kirsch|r16_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix64999z52807|nx100z19 ),
	.combout(),
	.cout(\u_kirsch|ix64999z52807|nx100z16 ));
// synopsys translate_off
defparam \u_kirsch|ix64999z52807|ix100z52929 .lut_mask = 16'h004D;
defparam \u_kirsch|ix64999z52807|ix100z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y25_N18
cycloneii_lcell_comb \u_kirsch|ix64999z52807|ix100z52928 (
// Equation(s):
// \u_kirsch|ix64999z52807|nx100z13  = CARRY((\u_kirsch|r16_5_  & (\u_kirsch|r11_5_  & !\u_kirsch|ix64999z52807|nx100z16 )) # (!\u_kirsch|r16_5_  & ((\u_kirsch|r11_5_ ) # (!\u_kirsch|ix64999z52807|nx100z16 ))))

	.dataa(\u_kirsch|r16_5_ ),
	.datab(\u_kirsch|r11_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix64999z52807|nx100z16 ),
	.combout(),
	.cout(\u_kirsch|ix64999z52807|nx100z13 ));
// synopsys translate_off
defparam \u_kirsch|ix64999z52807|ix100z52928 .lut_mask = 16'h004D;
defparam \u_kirsch|ix64999z52807|ix100z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y25_N20
cycloneii_lcell_comb \u_kirsch|ix64999z52807|ix100z52927 (
// Equation(s):
// \u_kirsch|ix64999z52807|nx100z10  = CARRY((\u_kirsch|r16_6_  & ((!\u_kirsch|ix64999z52807|nx100z13 ) # (!\u_kirsch|r11_6_ ))) # (!\u_kirsch|r16_6_  & (!\u_kirsch|r11_6_  & !\u_kirsch|ix64999z52807|nx100z13 )))

	.dataa(\u_kirsch|r16_6_ ),
	.datab(\u_kirsch|r11_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix64999z52807|nx100z13 ),
	.combout(),
	.cout(\u_kirsch|ix64999z52807|nx100z10 ));
// synopsys translate_off
defparam \u_kirsch|ix64999z52807|ix100z52927 .lut_mask = 16'h002B;
defparam \u_kirsch|ix64999z52807|ix100z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y25_N22
cycloneii_lcell_comb \u_kirsch|ix64999z52807|ix100z52926 (
// Equation(s):
// \u_kirsch|ix64999z52807|nx100z7  = CARRY((\u_kirsch|r16_7_  & (\u_kirsch|r11_7_  & !\u_kirsch|ix64999z52807|nx100z10 )) # (!\u_kirsch|r16_7_  & ((\u_kirsch|r11_7_ ) # (!\u_kirsch|ix64999z52807|nx100z10 ))))

	.dataa(\u_kirsch|r16_7_ ),
	.datab(\u_kirsch|r11_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix64999z52807|nx100z10 ),
	.combout(),
	.cout(\u_kirsch|ix64999z52807|nx100z7 ));
// synopsys translate_off
defparam \u_kirsch|ix64999z52807|ix100z52926 .lut_mask = 16'h004D;
defparam \u_kirsch|ix64999z52807|ix100z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y25_N24
cycloneii_lcell_comb \u_kirsch|ix64999z52807|ix100z52925 (
// Equation(s):
// \u_kirsch|ix64999z52807|nx100z4  = CARRY((\u_kirsch|r11_8_  & (\u_kirsch|r16_8_  & !\u_kirsch|ix64999z52807|nx100z7 )) # (!\u_kirsch|r11_8_  & ((\u_kirsch|r16_8_ ) # (!\u_kirsch|ix64999z52807|nx100z7 ))))

	.dataa(\u_kirsch|r11_8_ ),
	.datab(\u_kirsch|r16_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix64999z52807|nx100z7 ),
	.combout(),
	.cout(\u_kirsch|ix64999z52807|nx100z4 ));
// synopsys translate_off
defparam \u_kirsch|ix64999z52807|ix100z52925 .lut_mask = 16'h004D;
defparam \u_kirsch|ix64999z52807|ix100z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y25_N26
cycloneii_lcell_comb \u_kirsch|ix64999z52807|ix100z52923 (
// Equation(s):
// \u_kirsch|ix64999z52807|nx100z1  = (\u_kirsch|r16_9_  & ((\u_kirsch|ix64999z52807|nx100z4 ) # (!\u_kirsch|r11_9_ ))) # (!\u_kirsch|r16_9_  & (\u_kirsch|ix64999z52807|nx100z4  & !\u_kirsch|r11_9_ ))

	.dataa(vcc),
	.datab(\u_kirsch|r16_9_ ),
	.datac(vcc),
	.datad(\u_kirsch|r11_9_ ),
	.cin(\u_kirsch|ix64999z52807|nx100z4 ),
	.combout(\u_kirsch|ix64999z52807|nx100z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix64999z52807|ix100z52923 .lut_mask = 16'hC0FC;
defparam \u_kirsch|ix64999z52807|ix100z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N4
cycloneii_lcell_comb \u_kirsch|ix64999z52923 (
// Equation(s):
// \u_kirsch|nx64999z1  = (\u_kirsch|validBit_5_  & !\u_kirsch|validBit_3_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|validBit_5_ ),
	.datad(\u_kirsch|validBit_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx64999z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix64999z52923 .lut_mask = 16'h00F0;
defparam \u_kirsch|ix64999z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y25_N11
cycloneii_lcell_ff \u_kirsch|reg_x_r11_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r11_4_~feeder_combout ),
	.sdata(\u_kirsch|r16_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix64999z52807|nx100z1 ),
	.ena(\u_kirsch|nx64999z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r11_4_ ));

// Location: LCCOMB_X37_Y25_N24
cycloneii_lcell_comb \u_kirsch|x_r11_9_~feeder (
// Equation(s):
// \u_kirsch|x_r11_9_~feeder_combout  = \u_kirsch|r11_9_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r11_9_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r11_9_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r11_9_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r11_9_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y25_N25
cycloneii_lcell_ff \u_kirsch|reg_x_r11_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r11_9_~feeder_combout ),
	.sdata(\u_kirsch|r16_9_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix64999z52807|nx100z1 ),
	.ena(\u_kirsch|nx64999z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r11_9_ ));

// Location: LCCOMB_X40_Y25_N0
cycloneii_lcell_comb \u_kirsch|x_r3_9_~feeder (
// Equation(s):
// \u_kirsch|x_r3_9_~feeder_combout  = \u_kirsch|x_r3_add9_7i9|nx23445z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|x_r3_add9_7i9|nx23445z1 ),
	.cin(gnd),
	.combout(\u_kirsch|x_r3_9_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r3_9_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r3_9_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y25_N1
cycloneii_lcell_ff \u_kirsch|reg_x_r3_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r3_9_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx56415z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r3_9_ ));

// Location: LCCOMB_X40_Y26_N24
cycloneii_lcell_comb \u_kirsch|r15_9_~feeder (
// Equation(s):
// \u_kirsch|r15_9_~feeder_combout  = \u_kirsch|x_r3_9_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|x_r3_9_ ),
	.cin(gnd),
	.combout(\u_kirsch|r15_9_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r15_9_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r15_9_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y26_N25
cycloneii_lcell_ff \u_kirsch|reg_r15_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r15_9_~feeder_combout ),
	.sdata(\u_kirsch|b_d1_9_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix47369z52805|nx100z1 ),
	.ena(\u_kirsch|validBit_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r15_9_ ));

// Location: LCCOMB_X40_Y26_N26
cycloneii_lcell_comb \u_kirsch|r15_8_~feeder (
// Equation(s):
// \u_kirsch|r15_8_~feeder_combout  = \u_kirsch|x_r3_8_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|x_r3_8_ ),
	.cin(gnd),
	.combout(\u_kirsch|r15_8_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r15_8_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r15_8_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y26_N17
cycloneii_lcell_ff \u_kirsch|reg_b_d1_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|b_d1_add9_7i10|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_d1_8_ ));

// Location: LCFF_X40_Y26_N27
cycloneii_lcell_ff \u_kirsch|reg_r15_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r15_8_~feeder_combout ),
	.sdata(\u_kirsch|b_d1_8_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix47369z52805|nx100z1 ),
	.ena(\u_kirsch|validBit_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r15_8_ ));

// Location: LCCOMB_X40_Y26_N20
cycloneii_lcell_comb \u_kirsch|r15_7_~feeder (
// Equation(s):
// \u_kirsch|r15_7_~feeder_combout  = \u_kirsch|x_r3_7_ 

	.dataa(\u_kirsch|x_r3_7_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r15_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r15_7_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|r15_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y26_N21
cycloneii_lcell_ff \u_kirsch|reg_r15_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r15_7_~feeder_combout ),
	.sdata(\u_kirsch|b_d1_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix47369z52805|nx100z1 ),
	.ena(\u_kirsch|validBit_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r15_7_ ));

// Location: LCCOMB_X37_Y25_N14
cycloneii_lcell_comb \u_kirsch|x_r11_6_~feeder (
// Equation(s):
// \u_kirsch|x_r11_6_~feeder_combout  = \u_kirsch|r11_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r11_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r11_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r11_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r11_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y24_N13
cycloneii_lcell_ff \u_kirsch|reg_r16_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r16_add9_7i11|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx34104z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r16_6_ ));

// Location: LCFF_X37_Y25_N15
cycloneii_lcell_ff \u_kirsch|reg_x_r11_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r11_6_~feeder_combout ),
	.sdata(\u_kirsch|r16_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix64999z52807|nx100z1 ),
	.ena(\u_kirsch|nx64999z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r11_6_ ));

// Location: LCCOMB_X37_Y25_N0
cycloneii_lcell_comb \u_kirsch|x_r11_5_~feeder (
// Equation(s):
// \u_kirsch|x_r11_5_~feeder_combout  = \u_kirsch|r11_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r11_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|x_r11_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r11_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|x_r11_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y24_N11
cycloneii_lcell_ff \u_kirsch|reg_r16_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r16_add9_7i11|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx34104z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r16_5_ ));

// Location: LCFF_X37_Y25_N1
cycloneii_lcell_ff \u_kirsch|reg_x_r11_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r11_5_~feeder_combout ),
	.sdata(\u_kirsch|r16_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix64999z52807|nx100z1 ),
	.ena(\u_kirsch|nx64999z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r11_5_ ));

// Location: LCFF_X40_Y25_N19
cycloneii_lcell_ff \u_kirsch|reg_x_r3_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r3_add9_7i9|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx56415z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r3_3_ ));

// Location: LCCOMB_X40_Y26_N12
cycloneii_lcell_comb \u_kirsch|r15_3_~feeder (
// Equation(s):
// \u_kirsch|r15_3_~feeder_combout  = \u_kirsch|x_r3_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|x_r3_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|r15_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r15_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r15_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y26_N13
cycloneii_lcell_ff \u_kirsch|reg_r15_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r15_3_~feeder_combout ),
	.sdata(\u_kirsch|b_d1_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix47369z52805|nx100z1 ),
	.ena(\u_kirsch|validBit_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r15_3_ ));

// Location: LCCOMB_X40_Y26_N22
cycloneii_lcell_comb \u_kirsch|r15_2_~feeder (
// Equation(s):
// \u_kirsch|r15_2_~feeder_combout  = \u_kirsch|x_r3_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|x_r3_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|r15_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r15_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r15_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y26_N5
cycloneii_lcell_ff \u_kirsch|reg_b_d1_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|b_d1_add9_7i10|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_d1_2_ ));

// Location: LCFF_X40_Y26_N23
cycloneii_lcell_ff \u_kirsch|reg_r15_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r15_2_~feeder_combout ),
	.sdata(\u_kirsch|b_d1_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix47369z52805|nx100z1 ),
	.ena(\u_kirsch|validBit_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r15_2_ ));

// Location: LCCOMB_X40_Y26_N8
cycloneii_lcell_comb \u_kirsch|r15_1_~feeder (
// Equation(s):
// \u_kirsch|r15_1_~feeder_combout  = \u_kirsch|x_r3_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|x_r3_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|r15_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r15_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r15_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y26_N3
cycloneii_lcell_ff \u_kirsch|reg_b_d1_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|b_d1_add9_7i10|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_d1_1_ ));

// Location: LCFF_X40_Y26_N9
cycloneii_lcell_ff \u_kirsch|reg_r15_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r15_1_~feeder_combout ),
	.sdata(\u_kirsch|b_d1_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix47369z52805|nx100z1 ),
	.ena(\u_kirsch|validBit_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r15_1_ ));

// Location: LCFF_X41_Y26_N3
cycloneii_lcell_ff \u_kirsch|reg_x_r3_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|x_r3_add9_7i9|nx37973z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx56415z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r3_0_ ));

// Location: LCCOMB_X40_Y26_N10
cycloneii_lcell_comb \u_kirsch|r15_0_~feeder (
// Equation(s):
// \u_kirsch|r15_0_~feeder_combout  = \u_kirsch|x_r3_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|x_r3_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|r15_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r15_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r15_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y26_N11
cycloneii_lcell_ff \u_kirsch|reg_r15_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r15_0_~feeder_combout ),
	.sdata(\u_kirsch|b_d1_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix47369z52805|nx100z1 ),
	.ena(\u_kirsch|validBit_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r15_0_ ));

// Location: LCCOMB_X37_Y26_N6
cycloneii_lcell_comb \u_kirsch|ix35772z52808|ix100z52933 (
// Equation(s):
// \u_kirsch|ix35772z52808|nx100z28  = CARRY((\u_kirsch|x_r11_0_  & !\u_kirsch|r15_0_ ))

	.dataa(\u_kirsch|x_r11_0_ ),
	.datab(\u_kirsch|r15_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|ix35772z52808|nx100z28 ));
// synopsys translate_off
defparam \u_kirsch|ix35772z52808|ix100z52933 .lut_mask = 16'h0022;
defparam \u_kirsch|ix35772z52808|ix100z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y26_N8
cycloneii_lcell_comb \u_kirsch|ix35772z52808|ix100z52932 (
// Equation(s):
// \u_kirsch|ix35772z52808|nx100z25  = CARRY((\u_kirsch|x_r11_1_  & (\u_kirsch|r15_1_  & !\u_kirsch|ix35772z52808|nx100z28 )) # (!\u_kirsch|x_r11_1_  & ((\u_kirsch|r15_1_ ) # (!\u_kirsch|ix35772z52808|nx100z28 ))))

	.dataa(\u_kirsch|x_r11_1_ ),
	.datab(\u_kirsch|r15_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix35772z52808|nx100z28 ),
	.combout(),
	.cout(\u_kirsch|ix35772z52808|nx100z25 ));
// synopsys translate_off
defparam \u_kirsch|ix35772z52808|ix100z52932 .lut_mask = 16'h004D;
defparam \u_kirsch|ix35772z52808|ix100z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y26_N10
cycloneii_lcell_comb \u_kirsch|ix35772z52808|ix100z52931 (
// Equation(s):
// \u_kirsch|ix35772z52808|nx100z22  = CARRY((\u_kirsch|x_r11_2_  & ((!\u_kirsch|ix35772z52808|nx100z25 ) # (!\u_kirsch|r15_2_ ))) # (!\u_kirsch|x_r11_2_  & (!\u_kirsch|r15_2_  & !\u_kirsch|ix35772z52808|nx100z25 )))

	.dataa(\u_kirsch|x_r11_2_ ),
	.datab(\u_kirsch|r15_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix35772z52808|nx100z25 ),
	.combout(),
	.cout(\u_kirsch|ix35772z52808|nx100z22 ));
// synopsys translate_off
defparam \u_kirsch|ix35772z52808|ix100z52931 .lut_mask = 16'h002B;
defparam \u_kirsch|ix35772z52808|ix100z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y26_N12
cycloneii_lcell_comb \u_kirsch|ix35772z52808|ix100z52930 (
// Equation(s):
// \u_kirsch|ix35772z52808|nx100z19  = CARRY((\u_kirsch|x_r11_3_  & (\u_kirsch|r15_3_  & !\u_kirsch|ix35772z52808|nx100z22 )) # (!\u_kirsch|x_r11_3_  & ((\u_kirsch|r15_3_ ) # (!\u_kirsch|ix35772z52808|nx100z22 ))))

	.dataa(\u_kirsch|x_r11_3_ ),
	.datab(\u_kirsch|r15_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix35772z52808|nx100z22 ),
	.combout(),
	.cout(\u_kirsch|ix35772z52808|nx100z19 ));
// synopsys translate_off
defparam \u_kirsch|ix35772z52808|ix100z52930 .lut_mask = 16'h004D;
defparam \u_kirsch|ix35772z52808|ix100z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y26_N14
cycloneii_lcell_comb \u_kirsch|ix35772z52808|ix100z52929 (
// Equation(s):
// \u_kirsch|ix35772z52808|nx100z16  = CARRY((\u_kirsch|x_r11_4_  & ((!\u_kirsch|ix35772z52808|nx100z19 ) # (!\u_kirsch|r15_4_ ))) # (!\u_kirsch|x_r11_4_  & (!\u_kirsch|r15_4_  & !\u_kirsch|ix35772z52808|nx100z19 )))

	.dataa(\u_kirsch|x_r11_4_ ),
	.datab(\u_kirsch|r15_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix35772z52808|nx100z19 ),
	.combout(),
	.cout(\u_kirsch|ix35772z52808|nx100z16 ));
// synopsys translate_off
defparam \u_kirsch|ix35772z52808|ix100z52929 .lut_mask = 16'h002B;
defparam \u_kirsch|ix35772z52808|ix100z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y26_N16
cycloneii_lcell_comb \u_kirsch|ix35772z52808|ix100z52928 (
// Equation(s):
// \u_kirsch|ix35772z52808|nx100z13  = CARRY((\u_kirsch|r15_5_  & ((!\u_kirsch|ix35772z52808|nx100z16 ) # (!\u_kirsch|x_r11_5_ ))) # (!\u_kirsch|r15_5_  & (!\u_kirsch|x_r11_5_  & !\u_kirsch|ix35772z52808|nx100z16 )))

	.dataa(\u_kirsch|r15_5_ ),
	.datab(\u_kirsch|x_r11_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix35772z52808|nx100z16 ),
	.combout(),
	.cout(\u_kirsch|ix35772z52808|nx100z13 ));
// synopsys translate_off
defparam \u_kirsch|ix35772z52808|ix100z52928 .lut_mask = 16'h002B;
defparam \u_kirsch|ix35772z52808|ix100z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y26_N18
cycloneii_lcell_comb \u_kirsch|ix35772z52808|ix100z52927 (
// Equation(s):
// \u_kirsch|ix35772z52808|nx100z10  = CARRY((\u_kirsch|r15_6_  & (\u_kirsch|x_r11_6_  & !\u_kirsch|ix35772z52808|nx100z13 )) # (!\u_kirsch|r15_6_  & ((\u_kirsch|x_r11_6_ ) # (!\u_kirsch|ix35772z52808|nx100z13 ))))

	.dataa(\u_kirsch|r15_6_ ),
	.datab(\u_kirsch|x_r11_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix35772z52808|nx100z13 ),
	.combout(),
	.cout(\u_kirsch|ix35772z52808|nx100z10 ));
// synopsys translate_off
defparam \u_kirsch|ix35772z52808|ix100z52927 .lut_mask = 16'h004D;
defparam \u_kirsch|ix35772z52808|ix100z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y26_N20
cycloneii_lcell_comb \u_kirsch|ix35772z52808|ix100z52926 (
// Equation(s):
// \u_kirsch|ix35772z52808|nx100z7  = CARRY((\u_kirsch|x_r11_7_  & (\u_kirsch|r15_7_  & !\u_kirsch|ix35772z52808|nx100z10 )) # (!\u_kirsch|x_r11_7_  & ((\u_kirsch|r15_7_ ) # (!\u_kirsch|ix35772z52808|nx100z10 ))))

	.dataa(\u_kirsch|x_r11_7_ ),
	.datab(\u_kirsch|r15_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix35772z52808|nx100z10 ),
	.combout(),
	.cout(\u_kirsch|ix35772z52808|nx100z7 ));
// synopsys translate_off
defparam \u_kirsch|ix35772z52808|ix100z52926 .lut_mask = 16'h004D;
defparam \u_kirsch|ix35772z52808|ix100z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y26_N22
cycloneii_lcell_comb \u_kirsch|ix35772z52808|ix100z52925 (
// Equation(s):
// \u_kirsch|ix35772z52808|nx100z4  = CARRY((\u_kirsch|x_r11_8_  & ((!\u_kirsch|ix35772z52808|nx100z7 ) # (!\u_kirsch|r15_8_ ))) # (!\u_kirsch|x_r11_8_  & (!\u_kirsch|r15_8_  & !\u_kirsch|ix35772z52808|nx100z7 )))

	.dataa(\u_kirsch|x_r11_8_ ),
	.datab(\u_kirsch|r15_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix35772z52808|nx100z7 ),
	.combout(),
	.cout(\u_kirsch|ix35772z52808|nx100z4 ));
// synopsys translate_off
defparam \u_kirsch|ix35772z52808|ix100z52925 .lut_mask = 16'h002B;
defparam \u_kirsch|ix35772z52808|ix100z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y26_N24
cycloneii_lcell_comb \u_kirsch|ix35772z52808|ix100z52923 (
// Equation(s):
// \u_kirsch|ix35772z52808|nx100z1  = (\u_kirsch|x_r11_9_  & ((\u_kirsch|ix35772z52808|nx100z4 ) # (!\u_kirsch|r15_9_ ))) # (!\u_kirsch|x_r11_9_  & (\u_kirsch|ix35772z52808|nx100z4  & !\u_kirsch|r15_9_ ))

	.dataa(vcc),
	.datab(\u_kirsch|x_r11_9_ ),
	.datac(vcc),
	.datad(\u_kirsch|r15_9_ ),
	.cin(\u_kirsch|ix35772z52808|nx100z4 ),
	.combout(\u_kirsch|ix35772z52808|nx100z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix35772z52808|ix100z52923 .lut_mask = 16'hC0FC;
defparam \u_kirsch|ix35772z52808|ix100z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N10
cycloneii_lcell_comb \u_kirsch|ix35772z52923 (
// Equation(s):
// \u_kirsch|nx35772z1  = (!\u_kirsch|validBit_5_  & (!\u_kirsch|validBit_3_  & \u_kirsch|validBit_6_ ))

	.dataa(vcc),
	.datab(\u_kirsch|validBit_5_ ),
	.datac(\u_kirsch|validBit_3_ ),
	.datad(\u_kirsch|validBit_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx35772z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix35772z52923 .lut_mask = 16'h0300;
defparam \u_kirsch|ix35772z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y26_N29
cycloneii_lcell_ff \u_kirsch|reg_r18_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r18_4_~feeder_combout ),
	.sdata(\u_kirsch|x_r11_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix35772z52808|nx100z1 ),
	.ena(\u_kirsch|nx35772z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r18_4_ ));

// Location: LCCOMB_X42_Y24_N28
cycloneii_lcell_comb \u_kirsch|r9_5_~feeder (
// Equation(s):
// \u_kirsch|r9_5_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx42958z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_add8_6i49|nx42958z1 ),
	.cin(gnd),
	.combout(\u_kirsch|r9_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r9_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r9_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y24_N29
cycloneii_lcell_ff \u_kirsch|reg_r9_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_5_ ));

// Location: LCCOMB_X43_Y25_N0
cycloneii_lcell_comb \u_kirsch|r2_4_~feeder (
// Equation(s):
// \u_kirsch|r2_4_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx41961z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_add8_6i49|nx41961z1 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r2_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y25_N1
cycloneii_lcell_ff \u_kirsch|reg_r2_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx51677z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_4_ ));

// Location: LCCOMB_X42_Y25_N6
cycloneii_lcell_comb \u_kirsch|r2_1_~feeder (
// Equation(s):
// \u_kirsch|r2_1_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx38970z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_add8_6i49|nx38970z1 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r2_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y25_N7
cycloneii_lcell_ff \u_kirsch|reg_r2_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx51677z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_1_ ));

// Location: LCCOMB_X42_Y25_N8
cycloneii_lcell_comb \u_kirsch|r2_0_~feeder (
// Equation(s):
// \u_kirsch|r2_0_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx37973z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_add8_6i49|nx37973z1 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r2_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y25_N9
cycloneii_lcell_ff \u_kirsch|reg_r2_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx51677z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_0_ ));

// Location: LCCOMB_X43_Y25_N8
cycloneii_lcell_comb \u_kirsch|x_r6_add9_8i2|ix45949z52931 (
// Equation(s):
// \u_kirsch|x_r6_add9_8i2|nx38970z1  = (\u_kirsch|r9_1_  & ((\u_kirsch|r2_1_  & (\u_kirsch|x_r6_add9_8i2|nx45949z25  & VCC)) # (!\u_kirsch|r2_1_  & (!\u_kirsch|x_r6_add9_8i2|nx45949z25 )))) # (!\u_kirsch|r9_1_  & ((\u_kirsch|r2_1_  & 
// (!\u_kirsch|x_r6_add9_8i2|nx45949z25 )) # (!\u_kirsch|r2_1_  & ((\u_kirsch|x_r6_add9_8i2|nx45949z25 ) # (GND)))))
// \u_kirsch|x_r6_add9_8i2|nx45949z22  = CARRY((\u_kirsch|r9_1_  & (!\u_kirsch|r2_1_  & !\u_kirsch|x_r6_add9_8i2|nx45949z25 )) # (!\u_kirsch|r9_1_  & ((!\u_kirsch|x_r6_add9_8i2|nx45949z25 ) # (!\u_kirsch|r2_1_ ))))

	.dataa(\u_kirsch|r9_1_ ),
	.datab(\u_kirsch|r2_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r6_add9_8i2|nx45949z25 ),
	.combout(\u_kirsch|x_r6_add9_8i2|nx38970z1 ),
	.cout(\u_kirsch|x_r6_add9_8i2|nx45949z22 ));
// synopsys translate_off
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52931 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y25_N10
cycloneii_lcell_comb \u_kirsch|x_r6_add9_8i2|ix45949z52930 (
// Equation(s):
// \u_kirsch|x_r6_add9_8i2|nx39967z1  = ((\u_kirsch|r9_2_  $ (\u_kirsch|r2_2_  $ (!\u_kirsch|x_r6_add9_8i2|nx45949z22 )))) # (GND)
// \u_kirsch|x_r6_add9_8i2|nx45949z19  = CARRY((\u_kirsch|r9_2_  & ((\u_kirsch|r2_2_ ) # (!\u_kirsch|x_r6_add9_8i2|nx45949z22 ))) # (!\u_kirsch|r9_2_  & (\u_kirsch|r2_2_  & !\u_kirsch|x_r6_add9_8i2|nx45949z22 )))

	.dataa(\u_kirsch|r9_2_ ),
	.datab(\u_kirsch|r2_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r6_add9_8i2|nx45949z22 ),
	.combout(\u_kirsch|x_r6_add9_8i2|nx39967z1 ),
	.cout(\u_kirsch|x_r6_add9_8i2|nx45949z19 ));
// synopsys translate_off
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52930 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y25_N12
cycloneii_lcell_comb \u_kirsch|x_r6_add9_8i2|ix45949z52929 (
// Equation(s):
// \u_kirsch|x_r6_add9_8i2|nx40964z1  = (\u_kirsch|r9_3_  & ((\u_kirsch|r2_3_  & (\u_kirsch|x_r6_add9_8i2|nx45949z19  & VCC)) # (!\u_kirsch|r2_3_  & (!\u_kirsch|x_r6_add9_8i2|nx45949z19 )))) # (!\u_kirsch|r9_3_  & ((\u_kirsch|r2_3_  & 
// (!\u_kirsch|x_r6_add9_8i2|nx45949z19 )) # (!\u_kirsch|r2_3_  & ((\u_kirsch|x_r6_add9_8i2|nx45949z19 ) # (GND)))))
// \u_kirsch|x_r6_add9_8i2|nx45949z16  = CARRY((\u_kirsch|r9_3_  & (!\u_kirsch|r2_3_  & !\u_kirsch|x_r6_add9_8i2|nx45949z19 )) # (!\u_kirsch|r9_3_  & ((!\u_kirsch|x_r6_add9_8i2|nx45949z19 ) # (!\u_kirsch|r2_3_ ))))

	.dataa(\u_kirsch|r9_3_ ),
	.datab(\u_kirsch|r2_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r6_add9_8i2|nx45949z19 ),
	.combout(\u_kirsch|x_r6_add9_8i2|nx40964z1 ),
	.cout(\u_kirsch|x_r6_add9_8i2|nx45949z16 ));
// synopsys translate_off
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52929 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y25_N14
cycloneii_lcell_comb \u_kirsch|x_r6_add9_8i2|ix45949z52928 (
// Equation(s):
// \u_kirsch|x_r6_add9_8i2|nx41961z1  = ((\u_kirsch|r9_4_  $ (\u_kirsch|r2_4_  $ (!\u_kirsch|x_r6_add9_8i2|nx45949z16 )))) # (GND)
// \u_kirsch|x_r6_add9_8i2|nx45949z13  = CARRY((\u_kirsch|r9_4_  & ((\u_kirsch|r2_4_ ) # (!\u_kirsch|x_r6_add9_8i2|nx45949z16 ))) # (!\u_kirsch|r9_4_  & (\u_kirsch|r2_4_  & !\u_kirsch|x_r6_add9_8i2|nx45949z16 )))

	.dataa(\u_kirsch|r9_4_ ),
	.datab(\u_kirsch|r2_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r6_add9_8i2|nx45949z16 ),
	.combout(\u_kirsch|x_r6_add9_8i2|nx41961z1 ),
	.cout(\u_kirsch|x_r6_add9_8i2|nx45949z13 ));
// synopsys translate_off
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52928 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y25_N18
cycloneii_lcell_comb \u_kirsch|x_r6_add9_8i2|ix45949z52926 (
// Equation(s):
// \u_kirsch|x_r6_add9_8i2|nx43955z1  = ((\u_kirsch|r2_6_  $ (\u_kirsch|r9_6_  $ (!\u_kirsch|x_r6_add9_8i2|nx45949z10 )))) # (GND)
// \u_kirsch|x_r6_add9_8i2|nx45949z7  = CARRY((\u_kirsch|r2_6_  & ((\u_kirsch|r9_6_ ) # (!\u_kirsch|x_r6_add9_8i2|nx45949z10 ))) # (!\u_kirsch|r2_6_  & (\u_kirsch|r9_6_  & !\u_kirsch|x_r6_add9_8i2|nx45949z10 )))

	.dataa(\u_kirsch|r2_6_ ),
	.datab(\u_kirsch|r9_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r6_add9_8i2|nx45949z10 ),
	.combout(\u_kirsch|x_r6_add9_8i2|nx43955z1 ),
	.cout(\u_kirsch|x_r6_add9_8i2|nx45949z7 ));
// synopsys translate_off
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52926 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r6_add9_8i2|ix45949z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X43_Y25_N19
cycloneii_lcell_ff \u_kirsch|reg_x_r6_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r6_add9_8i2|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_2_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r6_6_ ));

// Location: LCFF_X42_Y25_N3
cycloneii_lcell_ff \u_kirsch|reg_r2_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r2_add8_6i49|nx42958z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx51677z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_5_ ));

// Location: LCFF_X43_Y25_N15
cycloneii_lcell_ff \u_kirsch|reg_x_r6_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r6_add9_8i2|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_2_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r6_4_ ));

// Location: LCFF_X43_Y25_N13
cycloneii_lcell_ff \u_kirsch|reg_x_r6_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r6_add9_8i2|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_2_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r6_3_ ));

// Location: LCFF_X43_Y25_N11
cycloneii_lcell_ff \u_kirsch|reg_x_r6_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r6_add9_8i2|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_2_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r6_2_ ));

// Location: LCFF_X43_Y25_N9
cycloneii_lcell_ff \u_kirsch|reg_x_r6_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r6_add9_8i2|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_2_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r6_1_ ));

// Location: LCCOMB_X42_Y25_N10
cycloneii_lcell_comb \u_kirsch|r14_add10_8i3|ix46946z52933 (
// Equation(s):
// \u_kirsch|r14_add10_8i3|nx37973z1  = (\u_kirsch|x_r6_0_  & (\u_kirsch|r2_0_  $ (VCC))) # (!\u_kirsch|x_r6_0_  & (\u_kirsch|r2_0_  & VCC))
// \u_kirsch|r14_add10_8i3|nx46946z27  = CARRY((\u_kirsch|x_r6_0_  & \u_kirsch|r2_0_ ))

	.dataa(\u_kirsch|x_r6_0_ ),
	.datab(\u_kirsch|r2_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r14_add10_8i3|nx37973z1 ),
	.cout(\u_kirsch|r14_add10_8i3|nx46946z27 ));
// synopsys translate_off
defparam \u_kirsch|r14_add10_8i3|ix46946z52933 .lut_mask = 16'h6688;
defparam \u_kirsch|r14_add10_8i3|ix46946z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y25_N14
cycloneii_lcell_comb \u_kirsch|r14_add10_8i3|ix46946z52931 (
// Equation(s):
// \u_kirsch|r14_add10_8i3|nx39967z1  = ((\u_kirsch|r2_2_  $ (\u_kirsch|x_r6_2_  $ (!\u_kirsch|r14_add10_8i3|nx46946z24 )))) # (GND)
// \u_kirsch|r14_add10_8i3|nx46946z21  = CARRY((\u_kirsch|r2_2_  & ((\u_kirsch|x_r6_2_ ) # (!\u_kirsch|r14_add10_8i3|nx46946z24 ))) # (!\u_kirsch|r2_2_  & (\u_kirsch|x_r6_2_  & !\u_kirsch|r14_add10_8i3|nx46946z24 )))

	.dataa(\u_kirsch|r2_2_ ),
	.datab(\u_kirsch|x_r6_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r14_add10_8i3|nx46946z24 ),
	.combout(\u_kirsch|r14_add10_8i3|nx39967z1 ),
	.cout(\u_kirsch|r14_add10_8i3|nx46946z21 ));
// synopsys translate_off
defparam \u_kirsch|r14_add10_8i3|ix46946z52931 .lut_mask = 16'h698E;
defparam \u_kirsch|r14_add10_8i3|ix46946z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y25_N18
cycloneii_lcell_comb \u_kirsch|r14_add10_8i3|ix46946z52929 (
// Equation(s):
// \u_kirsch|r14_add10_8i3|nx41961z1  = ((\u_kirsch|r2_4_  $ (\u_kirsch|x_r6_4_  $ (!\u_kirsch|r14_add10_8i3|nx46946z18 )))) # (GND)
// \u_kirsch|r14_add10_8i3|nx46946z15  = CARRY((\u_kirsch|r2_4_  & ((\u_kirsch|x_r6_4_ ) # (!\u_kirsch|r14_add10_8i3|nx46946z18 ))) # (!\u_kirsch|r2_4_  & (\u_kirsch|x_r6_4_  & !\u_kirsch|r14_add10_8i3|nx46946z18 )))

	.dataa(\u_kirsch|r2_4_ ),
	.datab(\u_kirsch|x_r6_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r14_add10_8i3|nx46946z18 ),
	.combout(\u_kirsch|r14_add10_8i3|nx41961z1 ),
	.cout(\u_kirsch|r14_add10_8i3|nx46946z15 ));
// synopsys translate_off
defparam \u_kirsch|r14_add10_8i3|ix46946z52929 .lut_mask = 16'h698E;
defparam \u_kirsch|r14_add10_8i3|ix46946z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y25_N22
cycloneii_lcell_comb \u_kirsch|r14_add10_8i3|ix46946z52927 (
// Equation(s):
// \u_kirsch|r14_add10_8i3|nx43955z1  = ((\u_kirsch|r2_6_  $ (\u_kirsch|x_r6_6_  $ (!\u_kirsch|r14_add10_8i3|nx46946z12 )))) # (GND)
// \u_kirsch|r14_add10_8i3|nx46946z9  = CARRY((\u_kirsch|r2_6_  & ((\u_kirsch|x_r6_6_ ) # (!\u_kirsch|r14_add10_8i3|nx46946z12 ))) # (!\u_kirsch|r2_6_  & (\u_kirsch|x_r6_6_  & !\u_kirsch|r14_add10_8i3|nx46946z12 )))

	.dataa(\u_kirsch|r2_6_ ),
	.datab(\u_kirsch|x_r6_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r14_add10_8i3|nx46946z12 ),
	.combout(\u_kirsch|r14_add10_8i3|nx43955z1 ),
	.cout(\u_kirsch|r14_add10_8i3|nx46946z9 ));
// synopsys translate_off
defparam \u_kirsch|r14_add10_8i3|ix46946z52927 .lut_mask = 16'h698E;
defparam \u_kirsch|r14_add10_8i3|ix46946z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N24
cycloneii_lcell_comb \u_kirsch|ix16422z52923 (
// Equation(s):
// \u_kirsch|nx16422z1  = (!\u_kirsch|validBit_2_  & \u_kirsch|validBit_3_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|validBit_2_ ),
	.datad(\u_kirsch|validBit_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx16422z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix16422z52923 .lut_mask = 16'h0F00;
defparam \u_kirsch|ix16422z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y25_N23
cycloneii_lcell_ff \u_kirsch|reg_r14_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r14_add10_8i3|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx16422z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r14_6_ ));

// Location: LCFF_X42_Y24_N11
cycloneii_lcell_ff \u_kirsch|reg_r13_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add8_6i49|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r13_5_ ));

// Location: LCFF_X42_Y25_N19
cycloneii_lcell_ff \u_kirsch|reg_r14_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r14_add10_8i3|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx16422z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r14_4_ ));

// Location: LCFF_X42_Y24_N7
cycloneii_lcell_ff \u_kirsch|reg_r13_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add8_6i49|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r13_3_ ));

// Location: LCFF_X42_Y25_N15
cycloneii_lcell_ff \u_kirsch|reg_r14_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r14_add10_8i3|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx16422z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r14_2_ ));

// Location: LCFF_X42_Y25_N11
cycloneii_lcell_ff \u_kirsch|reg_r14_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r14_add10_8i3|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx16422z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r14_0_ ));

// Location: LCCOMB_X41_Y25_N4
cycloneii_lcell_comb \u_kirsch|x_r12_add11_8i4|ix62798z52934 (
// Equation(s):
// \u_kirsch|x_r12_add11_8i4|nx37973z1  = (\u_kirsch|r13_0_  & (\u_kirsch|r14_0_  $ (VCC))) # (!\u_kirsch|r13_0_  & (\u_kirsch|r14_0_  & VCC))
// \u_kirsch|x_r12_add11_8i4|nx62798z29  = CARRY((\u_kirsch|r13_0_  & \u_kirsch|r14_0_ ))

	.dataa(\u_kirsch|r13_0_ ),
	.datab(\u_kirsch|r14_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|x_r12_add11_8i4|nx37973z1 ),
	.cout(\u_kirsch|x_r12_add11_8i4|nx62798z29 ));
// synopsys translate_off
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52934 .lut_mask = 16'h6688;
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y25_N6
cycloneii_lcell_comb \u_kirsch|x_r12_add11_8i4|ix62798z52933 (
// Equation(s):
// \u_kirsch|x_r12_add11_8i4|nx38970z1  = (\u_kirsch|r14_1_  & ((\u_kirsch|r13_1_  & (\u_kirsch|x_r12_add11_8i4|nx62798z29  & VCC)) # (!\u_kirsch|r13_1_  & (!\u_kirsch|x_r12_add11_8i4|nx62798z29 )))) # (!\u_kirsch|r14_1_  & ((\u_kirsch|r13_1_  & 
// (!\u_kirsch|x_r12_add11_8i4|nx62798z29 )) # (!\u_kirsch|r13_1_  & ((\u_kirsch|x_r12_add11_8i4|nx62798z29 ) # (GND)))))
// \u_kirsch|x_r12_add11_8i4|nx62798z26  = CARRY((\u_kirsch|r14_1_  & (!\u_kirsch|r13_1_  & !\u_kirsch|x_r12_add11_8i4|nx62798z29 )) # (!\u_kirsch|r14_1_  & ((!\u_kirsch|x_r12_add11_8i4|nx62798z29 ) # (!\u_kirsch|r13_1_ ))))

	.dataa(\u_kirsch|r14_1_ ),
	.datab(\u_kirsch|r13_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r12_add11_8i4|nx62798z29 ),
	.combout(\u_kirsch|x_r12_add11_8i4|nx38970z1 ),
	.cout(\u_kirsch|x_r12_add11_8i4|nx62798z26 ));
// synopsys translate_off
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52933 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y25_N10
cycloneii_lcell_comb \u_kirsch|x_r12_add11_8i4|ix62798z52931 (
// Equation(s):
// \u_kirsch|x_r12_add11_8i4|nx40964z1  = (\u_kirsch|r14_3_  & ((\u_kirsch|r13_3_  & (\u_kirsch|x_r12_add11_8i4|nx62798z23  & VCC)) # (!\u_kirsch|r13_3_  & (!\u_kirsch|x_r12_add11_8i4|nx62798z23 )))) # (!\u_kirsch|r14_3_  & ((\u_kirsch|r13_3_  & 
// (!\u_kirsch|x_r12_add11_8i4|nx62798z23 )) # (!\u_kirsch|r13_3_  & ((\u_kirsch|x_r12_add11_8i4|nx62798z23 ) # (GND)))))
// \u_kirsch|x_r12_add11_8i4|nx62798z20  = CARRY((\u_kirsch|r14_3_  & (!\u_kirsch|r13_3_  & !\u_kirsch|x_r12_add11_8i4|nx62798z23 )) # (!\u_kirsch|r14_3_  & ((!\u_kirsch|x_r12_add11_8i4|nx62798z23 ) # (!\u_kirsch|r13_3_ ))))

	.dataa(\u_kirsch|r14_3_ ),
	.datab(\u_kirsch|r13_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r12_add11_8i4|nx62798z23 ),
	.combout(\u_kirsch|x_r12_add11_8i4|nx40964z1 ),
	.cout(\u_kirsch|x_r12_add11_8i4|nx62798z20 ));
// synopsys translate_off
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52931 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y25_N14
cycloneii_lcell_comb \u_kirsch|x_r12_add11_8i4|ix62798z52929 (
// Equation(s):
// \u_kirsch|x_r12_add11_8i4|nx42958z1  = (\u_kirsch|r14_5_  & ((\u_kirsch|r13_5_  & (\u_kirsch|x_r12_add11_8i4|nx62798z17  & VCC)) # (!\u_kirsch|r13_5_  & (!\u_kirsch|x_r12_add11_8i4|nx62798z17 )))) # (!\u_kirsch|r14_5_  & ((\u_kirsch|r13_5_  & 
// (!\u_kirsch|x_r12_add11_8i4|nx62798z17 )) # (!\u_kirsch|r13_5_  & ((\u_kirsch|x_r12_add11_8i4|nx62798z17 ) # (GND)))))
// \u_kirsch|x_r12_add11_8i4|nx62798z14  = CARRY((\u_kirsch|r14_5_  & (!\u_kirsch|r13_5_  & !\u_kirsch|x_r12_add11_8i4|nx62798z17 )) # (!\u_kirsch|r14_5_  & ((!\u_kirsch|x_r12_add11_8i4|nx62798z17 ) # (!\u_kirsch|r13_5_ ))))

	.dataa(\u_kirsch|r14_5_ ),
	.datab(\u_kirsch|r13_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r12_add11_8i4|nx62798z17 ),
	.combout(\u_kirsch|x_r12_add11_8i4|nx42958z1 ),
	.cout(\u_kirsch|x_r12_add11_8i4|nx62798z14 ));
// synopsys translate_off
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52929 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y25_N16
cycloneii_lcell_comb \u_kirsch|x_r12_add11_8i4|ix62798z52928 (
// Equation(s):
// \u_kirsch|x_r12_add11_8i4|nx43955z1  = ((\u_kirsch|r13_6_  $ (\u_kirsch|r14_6_  $ (!\u_kirsch|x_r12_add11_8i4|nx62798z14 )))) # (GND)
// \u_kirsch|x_r12_add11_8i4|nx62798z11  = CARRY((\u_kirsch|r13_6_  & ((\u_kirsch|r14_6_ ) # (!\u_kirsch|x_r12_add11_8i4|nx62798z14 ))) # (!\u_kirsch|r13_6_  & (\u_kirsch|r14_6_  & !\u_kirsch|x_r12_add11_8i4|nx62798z14 )))

	.dataa(\u_kirsch|r13_6_ ),
	.datab(\u_kirsch|r14_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r12_add11_8i4|nx62798z14 ),
	.combout(\u_kirsch|x_r12_add11_8i4|nx43955z1 ),
	.cout(\u_kirsch|x_r12_add11_8i4|nx62798z11 ));
// synopsys translate_off
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52928 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N10
cycloneii_lcell_comb \u_kirsch|ix58464z52923 (
// Equation(s):
// \u_kirsch|nx58464z1  = (!\u_kirsch|validBit_2_  & (\u_kirsch|validBit_4_  & !\u_kirsch|validBit_3_ ))

	.dataa(vcc),
	.datab(\u_kirsch|validBit_2_ ),
	.datac(\u_kirsch|validBit_4_ ),
	.datad(\u_kirsch|validBit_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx58464z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix58464z52923 .lut_mask = 16'h0030;
defparam \u_kirsch|ix58464z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y25_N17
cycloneii_lcell_ff \u_kirsch|reg_x_r12_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r12_add11_8i4|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx58464z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r12_6_ ));

// Location: LCFF_X41_Y25_N15
cycloneii_lcell_ff \u_kirsch|reg_x_r12_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r12_add11_8i4|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx58464z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r12_5_ ));

// Location: LCFF_X41_Y25_N11
cycloneii_lcell_ff \u_kirsch|reg_x_r12_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r12_add11_8i4|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx58464z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r12_3_ ));

// Location: LCFF_X41_Y25_N7
cycloneii_lcell_ff \u_kirsch|reg_x_r12_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r12_add11_8i4|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx58464z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r12_1_ ));

// Location: LCCOMB_X41_Y27_N8
cycloneii_lcell_comb \u_kirsch|x_r22_add12_8i1|ix63795z52933 (
// Equation(s):
// \u_kirsch|x_r22_add12_8i1|nx39967z1  = ((\u_kirsch|x_r12_2_  $ (\u_kirsch|x_r12_3_  $ (!\u_kirsch|x_r22_add12_8i1|nx63795z21 )))) # (GND)
// \u_kirsch|x_r22_add12_8i1|nx63795z19  = CARRY((\u_kirsch|x_r12_2_  & ((\u_kirsch|x_r12_3_ ) # (!\u_kirsch|x_r22_add12_8i1|nx63795z21 ))) # (!\u_kirsch|x_r12_2_  & (\u_kirsch|x_r12_3_  & !\u_kirsch|x_r22_add12_8i1|nx63795z21 )))

	.dataa(\u_kirsch|x_r12_2_ ),
	.datab(\u_kirsch|x_r12_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r22_add12_8i1|nx63795z21 ),
	.combout(\u_kirsch|x_r22_add12_8i1|nx39967z1 ),
	.cout(\u_kirsch|x_r22_add12_8i1|nx63795z19 ));
// synopsys translate_off
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52933 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y27_N10
cycloneii_lcell_comb \u_kirsch|x_r22_add12_8i1|ix63795z52932 (
// Equation(s):
// \u_kirsch|x_r22_add12_8i1|nx40964z1  = (\u_kirsch|x_r12_4_  & ((\u_kirsch|x_r12_3_  & (\u_kirsch|x_r22_add12_8i1|nx63795z19  & VCC)) # (!\u_kirsch|x_r12_3_  & (!\u_kirsch|x_r22_add12_8i1|nx63795z19 )))) # (!\u_kirsch|x_r12_4_  & ((\u_kirsch|x_r12_3_  & 
// (!\u_kirsch|x_r22_add12_8i1|nx63795z19 )) # (!\u_kirsch|x_r12_3_  & ((\u_kirsch|x_r22_add12_8i1|nx63795z19 ) # (GND)))))
// \u_kirsch|x_r22_add12_8i1|nx63795z17  = CARRY((\u_kirsch|x_r12_4_  & (!\u_kirsch|x_r12_3_  & !\u_kirsch|x_r22_add12_8i1|nx63795z19 )) # (!\u_kirsch|x_r12_4_  & ((!\u_kirsch|x_r22_add12_8i1|nx63795z19 ) # (!\u_kirsch|x_r12_3_ ))))

	.dataa(\u_kirsch|x_r12_4_ ),
	.datab(\u_kirsch|x_r12_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r22_add12_8i1|nx63795z19 ),
	.combout(\u_kirsch|x_r22_add12_8i1|nx40964z1 ),
	.cout(\u_kirsch|x_r22_add12_8i1|nx63795z17 ));
// synopsys translate_off
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52932 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y27_N12
cycloneii_lcell_comb \u_kirsch|x_r22_add12_8i1|ix63795z52931 (
// Equation(s):
// \u_kirsch|x_r22_add12_8i1|nx41961z1  = ((\u_kirsch|x_r12_4_  $ (\u_kirsch|x_r12_5_  $ (!\u_kirsch|x_r22_add12_8i1|nx63795z17 )))) # (GND)
// \u_kirsch|x_r22_add12_8i1|nx63795z15  = CARRY((\u_kirsch|x_r12_4_  & ((\u_kirsch|x_r12_5_ ) # (!\u_kirsch|x_r22_add12_8i1|nx63795z17 ))) # (!\u_kirsch|x_r12_4_  & (\u_kirsch|x_r12_5_  & !\u_kirsch|x_r22_add12_8i1|nx63795z17 )))

	.dataa(\u_kirsch|x_r12_4_ ),
	.datab(\u_kirsch|x_r12_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r22_add12_8i1|nx63795z17 ),
	.combout(\u_kirsch|x_r22_add12_8i1|nx41961z1 ),
	.cout(\u_kirsch|x_r22_add12_8i1|nx63795z15 ));
// synopsys translate_off
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52931 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y27_N14
cycloneii_lcell_comb \u_kirsch|x_r22_add12_8i1|ix63795z52930 (
// Equation(s):
// \u_kirsch|x_r22_add12_8i1|nx42958z1  = (\u_kirsch|x_r12_5_  & ((\u_kirsch|x_r12_6_  & (\u_kirsch|x_r22_add12_8i1|nx63795z15  & VCC)) # (!\u_kirsch|x_r12_6_  & (!\u_kirsch|x_r22_add12_8i1|nx63795z15 )))) # (!\u_kirsch|x_r12_5_  & ((\u_kirsch|x_r12_6_  & 
// (!\u_kirsch|x_r22_add12_8i1|nx63795z15 )) # (!\u_kirsch|x_r12_6_  & ((\u_kirsch|x_r22_add12_8i1|nx63795z15 ) # (GND)))))
// \u_kirsch|x_r22_add12_8i1|nx63795z13  = CARRY((\u_kirsch|x_r12_5_  & (!\u_kirsch|x_r12_6_  & !\u_kirsch|x_r22_add12_8i1|nx63795z15 )) # (!\u_kirsch|x_r12_5_  & ((!\u_kirsch|x_r22_add12_8i1|nx63795z15 ) # (!\u_kirsch|x_r12_6_ ))))

	.dataa(\u_kirsch|x_r12_5_ ),
	.datab(\u_kirsch|x_r12_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r22_add12_8i1|nx63795z15 ),
	.combout(\u_kirsch|x_r22_add12_8i1|nx42958z1 ),
	.cout(\u_kirsch|x_r22_add12_8i1|nx63795z13 ));
// synopsys translate_off
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52930 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N8
cycloneii_lcell_comb \u_kirsch|ix65254z52923 (
// Equation(s):
// \u_kirsch|nx65254z1  = (\u_kirsch|validBit_5_  & (!\u_kirsch|validBit_2_  & (!\u_kirsch|validBit_4_  & !\u_kirsch|validBit_3_ )))

	.dataa(\u_kirsch|validBit_5_ ),
	.datab(\u_kirsch|validBit_2_ ),
	.datac(\u_kirsch|validBit_4_ ),
	.datad(\u_kirsch|validBit_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx65254z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix65254z52923 .lut_mask = 16'h0002;
defparam \u_kirsch|ix65254z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y27_N15
cycloneii_lcell_ff \u_kirsch|reg_x_r22_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r22_add12_8i1|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx65254z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r22_6_ ));

// Location: LCFF_X41_Y27_N13
cycloneii_lcell_ff \u_kirsch|reg_x_r22_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r22_add12_8i1|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx65254z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r22_5_ ));

// Location: LCFF_X41_Y27_N11
cycloneii_lcell_ff \u_kirsch|reg_x_r22_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r22_add12_8i1|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx65254z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r22_4_ ));

// Location: LCFF_X41_Y27_N9
cycloneii_lcell_ff \u_kirsch|reg_x_r22_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r22_add12_8i1|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx65254z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r22_3_ ));

// Location: LCFF_X41_Y25_N5
cycloneii_lcell_ff \u_kirsch|reg_x_r12_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r12_add11_8i4|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx58464z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r12_0_ ));

// Location: LCFF_X40_Y27_N5
cycloneii_lcell_ff \u_kirsch|reg_x_r22_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|x_r12_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|nx65254z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r22_0_ ));

// Location: LCCOMB_X40_Y27_N4
cycloneii_lcell_comb \u_kirsch|r17_sub13_10i1|ix63795z52935 (
// Equation(s):
// \u_kirsch|r17_sub13_10i1|nx63795z11  = CARRY((!\u_kirsch|x_r22_1_  & !\u_kirsch|x_r22_0_ ))

	.dataa(\u_kirsch|x_r22_1_ ),
	.datab(\u_kirsch|x_r22_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|r17_sub13_10i1|nx63795z11 ));
// synopsys translate_off
defparam \u_kirsch|r17_sub13_10i1|ix63795z52935 .lut_mask = 16'h0011;
defparam \u_kirsch|r17_sub13_10i1|ix63795z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y27_N6
cycloneii_lcell_comb \u_kirsch|r17_sub13_10i1|ix63795z52934 (
// Equation(s):
// \u_kirsch|r17_sub13_10i1|nx63795z10  = CARRY((\u_kirsch|x_r22_2_ ) # (!\u_kirsch|r17_sub13_10i1|nx63795z11 ))

	.dataa(\u_kirsch|x_r22_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r17_sub13_10i1|nx63795z11 ),
	.combout(),
	.cout(\u_kirsch|r17_sub13_10i1|nx63795z10 ));
// synopsys translate_off
defparam \u_kirsch|r17_sub13_10i1|ix63795z52934 .lut_mask = 16'h00AF;
defparam \u_kirsch|r17_sub13_10i1|ix63795z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y27_N8
cycloneii_lcell_comb \u_kirsch|r17_sub13_10i1|ix63795z52933 (
// Equation(s):
// \u_kirsch|r17_sub13_10i1|nx63795z9  = CARRY((\u_kirsch|r18_0_  & ((!\u_kirsch|r17_sub13_10i1|nx63795z10 ) # (!\u_kirsch|x_r22_3_ ))) # (!\u_kirsch|r18_0_  & (!\u_kirsch|x_r22_3_  & !\u_kirsch|r17_sub13_10i1|nx63795z10 )))

	.dataa(\u_kirsch|r18_0_ ),
	.datab(\u_kirsch|x_r22_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r17_sub13_10i1|nx63795z10 ),
	.combout(),
	.cout(\u_kirsch|r17_sub13_10i1|nx63795z9 ));
// synopsys translate_off
defparam \u_kirsch|r17_sub13_10i1|ix63795z52933 .lut_mask = 16'h002B;
defparam \u_kirsch|r17_sub13_10i1|ix63795z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y27_N10
cycloneii_lcell_comb \u_kirsch|r17_sub13_10i1|ix63795z52932 (
// Equation(s):
// \u_kirsch|r17_sub13_10i1|nx63795z8  = CARRY((\u_kirsch|r18_1_  & (\u_kirsch|x_r22_4_  & !\u_kirsch|r17_sub13_10i1|nx63795z9 )) # (!\u_kirsch|r18_1_  & ((\u_kirsch|x_r22_4_ ) # (!\u_kirsch|r17_sub13_10i1|nx63795z9 ))))

	.dataa(\u_kirsch|r18_1_ ),
	.datab(\u_kirsch|x_r22_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r17_sub13_10i1|nx63795z9 ),
	.combout(),
	.cout(\u_kirsch|r17_sub13_10i1|nx63795z8 ));
// synopsys translate_off
defparam \u_kirsch|r17_sub13_10i1|ix63795z52932 .lut_mask = 16'h004D;
defparam \u_kirsch|r17_sub13_10i1|ix63795z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y27_N12
cycloneii_lcell_comb \u_kirsch|r17_sub13_10i1|ix63795z52931 (
// Equation(s):
// \u_kirsch|r17_sub13_10i1|nx63795z7  = CARRY((\u_kirsch|r18_2_  & ((!\u_kirsch|r17_sub13_10i1|nx63795z8 ) # (!\u_kirsch|x_r22_5_ ))) # (!\u_kirsch|r18_2_  & (!\u_kirsch|x_r22_5_  & !\u_kirsch|r17_sub13_10i1|nx63795z8 )))

	.dataa(\u_kirsch|r18_2_ ),
	.datab(\u_kirsch|x_r22_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r17_sub13_10i1|nx63795z8 ),
	.combout(),
	.cout(\u_kirsch|r17_sub13_10i1|nx63795z7 ));
// synopsys translate_off
defparam \u_kirsch|r17_sub13_10i1|ix63795z52931 .lut_mask = 16'h002B;
defparam \u_kirsch|r17_sub13_10i1|ix63795z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y27_N14
cycloneii_lcell_comb \u_kirsch|r17_sub13_10i1|ix63795z52930 (
// Equation(s):
// \u_kirsch|r17_sub13_10i1|nx63795z6  = CARRY((\u_kirsch|r18_3_  & (\u_kirsch|x_r22_6_  & !\u_kirsch|r17_sub13_10i1|nx63795z7 )) # (!\u_kirsch|r18_3_  & ((\u_kirsch|x_r22_6_ ) # (!\u_kirsch|r17_sub13_10i1|nx63795z7 ))))

	.dataa(\u_kirsch|r18_3_ ),
	.datab(\u_kirsch|x_r22_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r17_sub13_10i1|nx63795z7 ),
	.combout(),
	.cout(\u_kirsch|r17_sub13_10i1|nx63795z6 ));
// synopsys translate_off
defparam \u_kirsch|r17_sub13_10i1|ix63795z52930 .lut_mask = 16'h004D;
defparam \u_kirsch|r17_sub13_10i1|ix63795z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y27_N16
cycloneii_lcell_comb \u_kirsch|r17_sub13_10i1|ix63795z52929 (
// Equation(s):
// \u_kirsch|r17_sub13_10i1|d_6_  = ((\u_kirsch|x_r22_7_  $ (\u_kirsch|r18_4_  $ (\u_kirsch|r17_sub13_10i1|nx63795z6 )))) # (GND)
// \u_kirsch|r17_sub13_10i1|nx63795z5  = CARRY((\u_kirsch|x_r22_7_  & (\u_kirsch|r18_4_  & !\u_kirsch|r17_sub13_10i1|nx63795z6 )) # (!\u_kirsch|x_r22_7_  & ((\u_kirsch|r18_4_ ) # (!\u_kirsch|r17_sub13_10i1|nx63795z6 ))))

	.dataa(\u_kirsch|x_r22_7_ ),
	.datab(\u_kirsch|r18_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r17_sub13_10i1|nx63795z6 ),
	.combout(\u_kirsch|r17_sub13_10i1|d_6_ ),
	.cout(\u_kirsch|r17_sub13_10i1|nx63795z5 ));
// synopsys translate_off
defparam \u_kirsch|r17_sub13_10i1|ix63795z52929 .lut_mask = 16'h964D;
defparam \u_kirsch|r17_sub13_10i1|ix63795z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X40_Y27_N17
cycloneii_lcell_ff \u_kirsch|reg_r17_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r17_sub13_10i1|d_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_7_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r17_7_ ));

// Location: LCCOMB_X41_Y24_N14
cycloneii_lcell_comb \u_kirsch|r2_7_~feeder (
// Equation(s):
// \u_kirsch|r2_7_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx44952z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|r2_add8_6i49|nx44952z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r2_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_7_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|r2_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y24_N15
cycloneii_lcell_ff \u_kirsch|reg_r2_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx51677z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_7_ ));

// Location: LCCOMB_X42_Y25_N24
cycloneii_lcell_comb \u_kirsch|r14_add10_8i3|ix46946z52926 (
// Equation(s):
// \u_kirsch|r14_add10_8i3|nx44952z1  = (\u_kirsch|x_r6_7_  & ((\u_kirsch|r2_7_  & (\u_kirsch|r14_add10_8i3|nx46946z9  & VCC)) # (!\u_kirsch|r2_7_  & (!\u_kirsch|r14_add10_8i3|nx46946z9 )))) # (!\u_kirsch|x_r6_7_  & ((\u_kirsch|r2_7_  & 
// (!\u_kirsch|r14_add10_8i3|nx46946z9 )) # (!\u_kirsch|r2_7_  & ((\u_kirsch|r14_add10_8i3|nx46946z9 ) # (GND)))))
// \u_kirsch|r14_add10_8i3|nx46946z6  = CARRY((\u_kirsch|x_r6_7_  & (!\u_kirsch|r2_7_  & !\u_kirsch|r14_add10_8i3|nx46946z9 )) # (!\u_kirsch|x_r6_7_  & ((!\u_kirsch|r14_add10_8i3|nx46946z9 ) # (!\u_kirsch|r2_7_ ))))

	.dataa(\u_kirsch|x_r6_7_ ),
	.datab(\u_kirsch|r2_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r14_add10_8i3|nx46946z9 ),
	.combout(\u_kirsch|r14_add10_8i3|nx44952z1 ),
	.cout(\u_kirsch|r14_add10_8i3|nx46946z6 ));
// synopsys translate_off
defparam \u_kirsch|r14_add10_8i3|ix46946z52926 .lut_mask = 16'h9617;
defparam \u_kirsch|r14_add10_8i3|ix46946z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y25_N25
cycloneii_lcell_ff \u_kirsch|reg_r14_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r14_add10_8i3|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx16422z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r14_7_ ));

// Location: LCCOMB_X41_Y25_N18
cycloneii_lcell_comb \u_kirsch|x_r12_add11_8i4|ix62798z52927 (
// Equation(s):
// \u_kirsch|x_r12_add11_8i4|nx44952z1  = (\u_kirsch|r13_7_  & ((\u_kirsch|r14_7_  & (\u_kirsch|x_r12_add11_8i4|nx62798z11  & VCC)) # (!\u_kirsch|r14_7_  & (!\u_kirsch|x_r12_add11_8i4|nx62798z11 )))) # (!\u_kirsch|r13_7_  & ((\u_kirsch|r14_7_  & 
// (!\u_kirsch|x_r12_add11_8i4|nx62798z11 )) # (!\u_kirsch|r14_7_  & ((\u_kirsch|x_r12_add11_8i4|nx62798z11 ) # (GND)))))
// \u_kirsch|x_r12_add11_8i4|nx62798z8  = CARRY((\u_kirsch|r13_7_  & (!\u_kirsch|r14_7_  & !\u_kirsch|x_r12_add11_8i4|nx62798z11 )) # (!\u_kirsch|r13_7_  & ((!\u_kirsch|x_r12_add11_8i4|nx62798z11 ) # (!\u_kirsch|r14_7_ ))))

	.dataa(\u_kirsch|r13_7_ ),
	.datab(\u_kirsch|r14_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r12_add11_8i4|nx62798z11 ),
	.combout(\u_kirsch|x_r12_add11_8i4|nx44952z1 ),
	.cout(\u_kirsch|x_r12_add11_8i4|nx62798z8 ));
// synopsys translate_off
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52927 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y25_N19
cycloneii_lcell_ff \u_kirsch|reg_x_r12_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r12_add11_8i4|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx58464z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r12_7_ ));

// Location: LCCOMB_X41_Y27_N18
cycloneii_lcell_comb \u_kirsch|x_r22_add12_8i1|ix63795z52928 (
// Equation(s):
// \u_kirsch|x_r22_add12_8i1|nx44952z1  = (\u_kirsch|x_r12_8_  & ((\u_kirsch|x_r12_7_  & (\u_kirsch|x_r22_add12_8i1|nx63795z11  & VCC)) # (!\u_kirsch|x_r12_7_  & (!\u_kirsch|x_r22_add12_8i1|nx63795z11 )))) # (!\u_kirsch|x_r12_8_  & ((\u_kirsch|x_r12_7_  & 
// (!\u_kirsch|x_r22_add12_8i1|nx63795z11 )) # (!\u_kirsch|x_r12_7_  & ((\u_kirsch|x_r22_add12_8i1|nx63795z11 ) # (GND)))))
// \u_kirsch|x_r22_add12_8i1|nx63795z9  = CARRY((\u_kirsch|x_r12_8_  & (!\u_kirsch|x_r12_7_  & !\u_kirsch|x_r22_add12_8i1|nx63795z11 )) # (!\u_kirsch|x_r12_8_  & ((!\u_kirsch|x_r22_add12_8i1|nx63795z11 ) # (!\u_kirsch|x_r12_7_ ))))

	.dataa(\u_kirsch|x_r12_8_ ),
	.datab(\u_kirsch|x_r12_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r22_add12_8i1|nx63795z11 ),
	.combout(\u_kirsch|x_r22_add12_8i1|nx44952z1 ),
	.cout(\u_kirsch|x_r22_add12_8i1|nx63795z9 ));
// synopsys translate_off
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52928 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y27_N19
cycloneii_lcell_ff \u_kirsch|reg_x_r22_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r22_add12_8i1|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx65254z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r22_8_ ));

// Location: LCCOMB_X40_Y27_N18
cycloneii_lcell_comb \u_kirsch|r17_sub13_10i1|ix63795z52928 (
// Equation(s):
// \u_kirsch|r17_sub13_10i1|d_7_  = (\u_kirsch|r18_5_  & ((\u_kirsch|x_r22_8_  & (!\u_kirsch|r17_sub13_10i1|nx63795z5 )) # (!\u_kirsch|x_r22_8_  & (\u_kirsch|r17_sub13_10i1|nx63795z5  & VCC)))) # (!\u_kirsch|r18_5_  & ((\u_kirsch|x_r22_8_  & 
// ((\u_kirsch|r17_sub13_10i1|nx63795z5 ) # (GND))) # (!\u_kirsch|x_r22_8_  & (!\u_kirsch|r17_sub13_10i1|nx63795z5 ))))
// \u_kirsch|r17_sub13_10i1|nx63795z4  = CARRY((\u_kirsch|r18_5_  & (\u_kirsch|x_r22_8_  & !\u_kirsch|r17_sub13_10i1|nx63795z5 )) # (!\u_kirsch|r18_5_  & ((\u_kirsch|x_r22_8_ ) # (!\u_kirsch|r17_sub13_10i1|nx63795z5 ))))

	.dataa(\u_kirsch|r18_5_ ),
	.datab(\u_kirsch|x_r22_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r17_sub13_10i1|nx63795z5 ),
	.combout(\u_kirsch|r17_sub13_10i1|d_7_ ),
	.cout(\u_kirsch|r17_sub13_10i1|nx63795z4 ));
// synopsys translate_off
defparam \u_kirsch|r17_sub13_10i1|ix63795z52928 .lut_mask = 16'h694D;
defparam \u_kirsch|r17_sub13_10i1|ix63795z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X40_Y27_N19
cycloneii_lcell_ff \u_kirsch|reg_r17_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r17_sub13_10i1|d_7_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_7_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r17_8_ ));

// Location: LCCOMB_X42_Y23_N8
cycloneii_lcell_comb \u_kirsch|ix6165z52926 (
// Equation(s):
// \u_kirsch|nx6165z2  = (\u_kirsch|r17_7_  & \u_kirsch|r17_8_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|r17_7_ ),
	.datad(\u_kirsch|r17_8_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx6165z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix6165z52926 .lut_mask = 16'hF000;
defparam \u_kirsch|ix6165z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N4
cycloneii_lcell_comb \u_kirsch|r9_8_~feeder (
// Equation(s):
// \u_kirsch|r9_8_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx23445z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|r2_add8_6i49|nx23445z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r9_8_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r9_8_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|r9_8_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y24_N5
cycloneii_lcell_ff \u_kirsch|reg_r9_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_8_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_8_ ));

// Location: LCCOMB_X41_Y24_N0
cycloneii_lcell_comb \u_kirsch|r9_7_~feeder (
// Equation(s):
// \u_kirsch|r9_7_~feeder_combout  = \u_kirsch|r2_add8_6i49|nx44952z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|r2_add8_6i49|nx44952z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r9_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r9_7_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|r9_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_r9_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_7_ ));

// Location: LCCOMB_X43_Y25_N24
cycloneii_lcell_comb \u_kirsch|x_r6_add9_8i2|ix23445z52923 (
// Equation(s):
// \u_kirsch|x_r6_add9_8i2|nx23445z1  = \u_kirsch|x_r6_add9_8i2|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r6_add9_8i2|nx23445z2 ),
	.combout(\u_kirsch|x_r6_add9_8i2|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r6_add9_8i2|ix23445z52923 .lut_mask = 16'hF0F0;
defparam \u_kirsch|x_r6_add9_8i2|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X43_Y25_N25
cycloneii_lcell_ff \u_kirsch|reg_x_r6_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r6_add9_8i2|nx23445z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_2_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r6_9_ ));

// Location: LCCOMB_X42_Y25_N28
cycloneii_lcell_comb \u_kirsch|r14_add10_8i3|ix46946z52923 (
// Equation(s):
// \u_kirsch|r14_add10_8i3|nx46946z1  = (\u_kirsch|x_r6_9_  & (!\u_kirsch|r14_add10_8i3|nx46946z3 )) # (!\u_kirsch|x_r6_9_  & ((\u_kirsch|r14_add10_8i3|nx46946z3 ) # (GND)))
// \u_kirsch|r14_add10_8i3|nx23445z2  = CARRY((!\u_kirsch|r14_add10_8i3|nx46946z3 ) # (!\u_kirsch|x_r6_9_ ))

	.dataa(vcc),
	.datab(\u_kirsch|x_r6_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r14_add10_8i3|nx46946z3 ),
	.combout(\u_kirsch|r14_add10_8i3|nx46946z1 ),
	.cout(\u_kirsch|r14_add10_8i3|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|r14_add10_8i3|ix46946z52923 .lut_mask = 16'h3C3F;
defparam \u_kirsch|r14_add10_8i3|ix46946z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y25_N30
cycloneii_lcell_comb \u_kirsch|r14_add10_8i3|ix23445z52923 (
// Equation(s):
// \u_kirsch|r14_add10_8i3|nx23445z1  = !\u_kirsch|r14_add10_8i3|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r14_add10_8i3|nx23445z2 ),
	.combout(\u_kirsch|r14_add10_8i3|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r14_add10_8i3|ix23445z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|r14_add10_8i3|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y25_N31
cycloneii_lcell_ff \u_kirsch|reg_r14_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r14_add10_8i3|nx23445z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx16422z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r14_10_ ));

// Location: LCFF_X42_Y25_N29
cycloneii_lcell_ff \u_kirsch|reg_r14_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r14_add10_8i3|nx46946z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx16422z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r14_9_ ));

// Location: LCFF_X42_Y24_N17
cycloneii_lcell_ff \u_kirsch|reg_r13_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add8_6i49|nx23445z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r13_8_ ));

// Location: LCCOMB_X41_Y25_N22
cycloneii_lcell_comb \u_kirsch|x_r12_add11_8i4|ix62798z52925 (
// Equation(s):
// \u_kirsch|x_r12_add11_8i4|nx46946z1  = (\u_kirsch|r14_9_  & (!\u_kirsch|x_r12_add11_8i4|nx62798z5 )) # (!\u_kirsch|r14_9_  & ((\u_kirsch|x_r12_add11_8i4|nx62798z5 ) # (GND)))
// \u_kirsch|x_r12_add11_8i4|nx62798z3  = CARRY((!\u_kirsch|x_r12_add11_8i4|nx62798z5 ) # (!\u_kirsch|r14_9_ ))

	.dataa(vcc),
	.datab(\u_kirsch|r14_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r12_add11_8i4|nx62798z5 ),
	.combout(\u_kirsch|x_r12_add11_8i4|nx46946z1 ),
	.cout(\u_kirsch|x_r12_add11_8i4|nx62798z3 ));
// synopsys translate_off
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52925 .lut_mask = 16'h3C3F;
defparam \u_kirsch|x_r12_add11_8i4|ix62798z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y25_N26
cycloneii_lcell_comb \u_kirsch|x_r12_add11_8i4|ix23445z52923 (
// Equation(s):
// \u_kirsch|x_r12_add11_8i4|nx23445z1  = \u_kirsch|x_r12_add11_8i4|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r12_add11_8i4|nx23445z2 ),
	.combout(\u_kirsch|x_r12_add11_8i4|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|x_r12_add11_8i4|ix23445z52923 .lut_mask = 16'hF0F0;
defparam \u_kirsch|x_r12_add11_8i4|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y25_N27
cycloneii_lcell_ff \u_kirsch|reg_x_r12_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r12_add11_8i4|nx23445z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx58464z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r12_11_ ));

// Location: LCFF_X41_Y25_N23
cycloneii_lcell_ff \u_kirsch|reg_x_r12_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r12_add11_8i4|nx46946z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx58464z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r12_9_ ));

// Location: LCCOMB_X41_Y27_N20
cycloneii_lcell_comb \u_kirsch|x_r22_add12_8i1|ix63795z52927 (
// Equation(s):
// \u_kirsch|x_r22_add12_8i1|nx45949z1  = ((\u_kirsch|x_r12_8_  $ (\u_kirsch|x_r12_9_  $ (!\u_kirsch|x_r22_add12_8i1|nx63795z9 )))) # (GND)
// \u_kirsch|x_r22_add12_8i1|nx63795z7  = CARRY((\u_kirsch|x_r12_8_  & ((\u_kirsch|x_r12_9_ ) # (!\u_kirsch|x_r22_add12_8i1|nx63795z9 ))) # (!\u_kirsch|x_r12_8_  & (\u_kirsch|x_r12_9_  & !\u_kirsch|x_r22_add12_8i1|nx63795z9 )))

	.dataa(\u_kirsch|x_r12_8_ ),
	.datab(\u_kirsch|x_r12_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r22_add12_8i1|nx63795z9 ),
	.combout(\u_kirsch|x_r22_add12_8i1|nx45949z1 ),
	.cout(\u_kirsch|x_r22_add12_8i1|nx63795z7 ));
// synopsys translate_off
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52927 .lut_mask = 16'h698E;
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y27_N22
cycloneii_lcell_comb \u_kirsch|x_r22_add12_8i1|ix63795z52926 (
// Equation(s):
// \u_kirsch|x_r22_add12_8i1|nx46946z1  = (\u_kirsch|x_r12_10_  & ((\u_kirsch|x_r12_9_  & (\u_kirsch|x_r22_add12_8i1|nx63795z7  & VCC)) # (!\u_kirsch|x_r12_9_  & (!\u_kirsch|x_r22_add12_8i1|nx63795z7 )))) # (!\u_kirsch|x_r12_10_  & ((\u_kirsch|x_r12_9_  & 
// (!\u_kirsch|x_r22_add12_8i1|nx63795z7 )) # (!\u_kirsch|x_r12_9_  & ((\u_kirsch|x_r22_add12_8i1|nx63795z7 ) # (GND)))))
// \u_kirsch|x_r22_add12_8i1|nx63795z5  = CARRY((\u_kirsch|x_r12_10_  & (!\u_kirsch|x_r12_9_  & !\u_kirsch|x_r22_add12_8i1|nx63795z7 )) # (!\u_kirsch|x_r12_10_  & ((!\u_kirsch|x_r22_add12_8i1|nx63795z7 ) # (!\u_kirsch|x_r12_9_ ))))

	.dataa(\u_kirsch|x_r12_10_ ),
	.datab(\u_kirsch|x_r12_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|x_r22_add12_8i1|nx63795z7 ),
	.combout(\u_kirsch|x_r22_add12_8i1|nx46946z1 ),
	.cout(\u_kirsch|x_r22_add12_8i1|nx63795z5 ));
// synopsys translate_off
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52926 .lut_mask = 16'h9617;
defparam \u_kirsch|x_r22_add12_8i1|ix63795z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y27_N25
cycloneii_lcell_ff \u_kirsch|reg_x_r22_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r22_add12_8i1|nx62798z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx65254z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r22_11_ ));

// Location: LCFF_X41_Y27_N23
cycloneii_lcell_ff \u_kirsch|reg_x_r22_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r22_add12_8i1|nx46946z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx65254z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r22_10_ ));

// Location: LCFF_X41_Y27_N21
cycloneii_lcell_ff \u_kirsch|reg_x_r22_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|x_r22_add12_8i1|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx65254z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|x_r22_9_ ));

// Location: LCCOMB_X40_Y27_N20
cycloneii_lcell_comb \u_kirsch|r17_sub13_10i1|ix63795z52927 (
// Equation(s):
// \u_kirsch|r17_sub13_10i1|d_8_  = ((\u_kirsch|r18_6_  $ (\u_kirsch|x_r22_9_  $ (\u_kirsch|r17_sub13_10i1|nx63795z4 )))) # (GND)
// \u_kirsch|r17_sub13_10i1|nx63795z3  = CARRY((\u_kirsch|r18_6_  & ((!\u_kirsch|r17_sub13_10i1|nx63795z4 ) # (!\u_kirsch|x_r22_9_ ))) # (!\u_kirsch|r18_6_  & (!\u_kirsch|x_r22_9_  & !\u_kirsch|r17_sub13_10i1|nx63795z4 )))

	.dataa(\u_kirsch|r18_6_ ),
	.datab(\u_kirsch|x_r22_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r17_sub13_10i1|nx63795z4 ),
	.combout(\u_kirsch|r17_sub13_10i1|d_8_ ),
	.cout(\u_kirsch|r17_sub13_10i1|nx63795z3 ));
// synopsys translate_off
defparam \u_kirsch|r17_sub13_10i1|ix63795z52927 .lut_mask = 16'h962B;
defparam \u_kirsch|r17_sub13_10i1|ix63795z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X40_Y27_N25
cycloneii_lcell_ff \u_kirsch|reg_r17_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r17_sub13_10i1|d_10_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_7_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r17_11_ ));

// Location: LCFF_X40_Y27_N21
cycloneii_lcell_ff \u_kirsch|reg_r17_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r17_sub13_10i1|d_8_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|validBit_7_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r17_9_ ));

// Location: LCCOMB_X42_Y23_N6
cycloneii_lcell_comb \u_kirsch|ix6165z52925 (
// Equation(s):
// \u_kirsch|nx6165z1  = (\u_kirsch|p_o_valid  & ((\u_kirsch|r17_10_ ) # ((\u_kirsch|r17_11_ ) # (\u_kirsch|r17_9_ ))))

	.dataa(\u_kirsch|r17_10_ ),
	.datab(\u_kirsch|r17_11_ ),
	.datac(\u_kirsch|r17_9_ ),
	.datad(\u_kirsch|p_o_valid ),
	.cin(gnd),
	.combout(\u_kirsch|nx6165z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix6165z52925 .lut_mask = 16'hFE00;
defparam \u_kirsch|ix6165z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N26
cycloneii_lcell_comb \u_kirsch|ix6165z52924 (
// Equation(s):
// \u_kirsch|p_o_edge  = (\u_kirsch|nx6165z1 ) # ((\u_kirsch|p_o_valid  & ((\u_kirsch|r17_12_ ) # (\u_kirsch|nx6165z2 ))))

	.dataa(\u_kirsch|r17_12_ ),
	.datab(\u_kirsch|p_o_valid ),
	.datac(\u_kirsch|nx6165z2 ),
	.datad(\u_kirsch|nx6165z1 ),
	.cin(gnd),
	.combout(\u_kirsch|p_o_edge ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix6165z52924 .lut_mask = 16'hFFC8;
defparam \u_kirsch|ix6165z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N18
cycloneii_lcell_comb \u_kirsch|ix8159z52923 (
// Equation(s):
// \u_kirsch|p_o_dir_0_  = (\u_kirsch|final_dir_0_  & \u_kirsch|p_o_edge )

	.dataa(\u_kirsch|final_dir_0_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|p_o_edge ),
	.cin(gnd),
	.combout(\u_kirsch|p_o_dir_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix8159z52923 .lut_mask = 16'hAA00;
defparam \u_kirsch|ix8159z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N4
cycloneii_lcell_comb \u_uw_uart|ix38742z52924 (
// Equation(s):
// \u_uw_uart|nx38742z1  = (\u_kirsch|nx64269z1  & (!\u_uw_uart|ack  & ((!\u_uw_uart|o_pixavail )))) # (!\u_kirsch|nx64269z1  & (((!\u_uw_uart|ack  & !\u_uw_uart|o_pixavail )) # (!\u_kirsch|p_o_mode_1_ )))

	.dataa(\u_kirsch|nx64269z1 ),
	.datab(\u_uw_uart|ack ),
	.datac(\u_kirsch|p_o_mode_1_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|nx38742z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix38742z52924 .lut_mask = 16'h0537;
defparam \u_uw_uart|ix38742z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N30
cycloneii_lcell_comb \u_uw_uart|ix40736z52926 (
// Equation(s):
// \u_uw_uart|nx40736z4  = (\u_uw_uart|ack  & (((\u_uw_uart|nx39480z2 )))) # (!\u_uw_uart|ack  & ((\u_uw_uart|o_pixavail  & ((\u_uw_uart|nx39480z2 ))) # (!\u_uw_uart|o_pixavail  & (\u_uw_uart|i_uarts|RxErr ))))

	.dataa(\u_uw_uart|i_uarts|RxErr ),
	.datab(\u_uw_uart|nx39480z2 ),
	.datac(\u_uw_uart|ack ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|nx40736z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40736z52926 .lut_mask = 16'hCCCA;
defparam \u_uw_uart|ix40736z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N0
cycloneii_lcell_comb \u_uw_uart|ix40736z52925 (
// Equation(s):
// \u_uw_uart|nx40736z3  = (\nrst~combout  & ((\u_uw_uart|nx40736z4 ) # ((!\u_kirsch|nx64269z1  & !\u_kirsch|p_o_mode_1_ ))))

	.dataa(\u_kirsch|nx64269z1 ),
	.datab(\u_kirsch|p_o_mode_1_ ),
	.datac(\nrst~combout ),
	.datad(\u_uw_uart|nx40736z4 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx40736z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40736z52925 .lut_mask = 16'hF010;
defparam \u_uw_uart|ix40736z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y23_N19
cycloneii_lcell_ff \u_uw_uart|reg_mdata_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|p_o_dir_0_ ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx38742z1 ),
	.sload(!\u_kirsch|p_o_valid ),
	.ena(\u_uw_uart|nx40736z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_1_ ));

// Location: LCCOMB_X43_Y23_N16
cycloneii_lcell_comb \u_uw_uart|sdout_1_~feeder (
// Equation(s):
// \u_uw_uart|sdout_1_~feeder_combout  = \u_uw_uart|mdata_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y23_N17
cycloneii_lcell_ff \u_uw_uart|reg_sdout_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_1_ ));

// Location: LCCOMB_X37_Y26_N30
cycloneii_lcell_comb \u_kirsch|final_dir_2_~feeder (
// Equation(s):
// \u_kirsch|final_dir_2_~feeder_combout  = \u_kirsch|first_cw_2_ 

	.dataa(\u_kirsch|first_cw_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|final_dir_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|final_dir_2_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|final_dir_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y23_N27
cycloneii_lcell_ff \u_kirsch|reg_stage1_eSe_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix27953z18832|nx100z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx27953z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|stage1_eSe_2_ ));

// Location: LCCOMB_X37_Y25_N12
cycloneii_lcell_comb \u_kirsch|second_cw_2_~feeder (
// Equation(s):
// \u_kirsch|second_cw_2_~feeder_combout  = \u_kirsch|stage1_eSe_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|stage1_eSe_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|second_cw_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|second_cw_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|second_cw_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y24_N17
cycloneii_lcell_ff \u_kirsch|reg_stage1_sSw_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix7951z18830|nx100z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx7951z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|stage1_sSw_2_ ));

// Location: LCFF_X37_Y25_N13
cycloneii_lcell_ff \u_kirsch|reg_second_cw_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|second_cw_2_~feeder_combout ),
	.sdata(\u_kirsch|stage1_sSw_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix64999z52807|nx100z1 ),
	.ena(\u_kirsch|nx64999z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|second_cw_2_ ));

// Location: LCFF_X37_Y26_N31
cycloneii_lcell_ff \u_kirsch|reg_final_dir_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|final_dir_2_~feeder_combout ),
	.sdata(\u_kirsch|second_cw_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix35772z52808|nx100z1 ),
	.ena(\u_kirsch|nx35772z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|final_dir_2_ ));

// Location: LCCOMB_X42_Y23_N2
cycloneii_lcell_comb \u_kirsch|ix6165z52923 (
// Equation(s):
// \u_kirsch|p_o_dir_2_  = (\u_kirsch|final_dir_2_  & \u_kirsch|p_o_edge )

	.dataa(vcc),
	.datab(\u_kirsch|final_dir_2_ ),
	.datac(vcc),
	.datad(\u_kirsch|p_o_edge ),
	.cin(gnd),
	.combout(\u_kirsch|p_o_dir_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix6165z52923 .lut_mask = 16'hCC00;
defparam \u_kirsch|ix6165z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y23_N3
cycloneii_lcell_ff \u_uw_uart|reg_mdata_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|p_o_dir_2_ ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx38742z1 ),
	.sload(!\u_kirsch|p_o_valid ),
	.ena(\u_uw_uart|nx40736z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_3_ ));

// Location: LCCOMB_X43_Y23_N18
cycloneii_lcell_comb \u_uw_uart|sdout_3_~feeder (
// Equation(s):
// \u_uw_uart|sdout_3_~feeder_combout  = \u_uw_uart|mdata_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|mdata_3_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_3_~feeder .lut_mask = 16'hF0F0;
defparam \u_uw_uart|sdout_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y23_N19
cycloneii_lcell_ff \u_uw_uart|reg_sdout_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_3_ ));

// Location: LCCOMB_X42_Y23_N20
cycloneii_lcell_comb \u_uw_uart|ix38742z52923 (
// Equation(s):
// \u_uw_uart|mdata_7n5ss1_4_  = (\u_uw_uart|nx38742z1 ) # (!\u_kirsch|p_o_valid )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|nx38742z1 ),
	.datad(\u_kirsch|p_o_valid ),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_7n5ss1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix38742z52923 .lut_mask = 16'hF0FF;
defparam \u_uw_uart|ix38742z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y23_N21
cycloneii_lcell_ff \u_uw_uart|reg_mdata_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_7n5ss1_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx40736z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_5_ ));

// Location: LCCOMB_X43_Y23_N20
cycloneii_lcell_comb \u_uw_uart|sdout_5_~feeder (
// Equation(s):
// \u_uw_uart|sdout_5_~feeder_combout  = \u_uw_uart|mdata_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|mdata_5_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_5_~feeder .lut_mask = 16'hF0F0;
defparam \u_uw_uart|sdout_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y23_N21
cycloneii_lcell_ff \u_uw_uart|reg_sdout_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_5_ ));

// Location: LCCOMB_X42_Y23_N10
cycloneii_lcell_comb \u_uw_uart|ix40736z52924 (
// Equation(s):
// \u_uw_uart|nx40736z2  = (\u_uw_uart|ack ) # (\u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|ack ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|nx40736z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40736z52924 .lut_mask = 16'hFFF0;
defparam \u_uw_uart|ix40736z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N14
cycloneii_lcell_comb \u_uw_uart|ix40736z52923 (
// Equation(s):
// \u_uw_uart|mdata_7n5ss1_6_  = (\u_kirsch|nx64269z1  & (((!\u_uw_uart|nx40736z2 )) # (!\u_kirsch|p_o_valid ))) # (!\u_kirsch|nx64269z1  & (\u_kirsch|p_o_mode_1_  & ((!\u_uw_uart|nx40736z2 ) # (!\u_kirsch|p_o_valid ))))

	.dataa(\u_kirsch|nx64269z1 ),
	.datab(\u_kirsch|p_o_valid ),
	.datac(\u_kirsch|p_o_mode_1_ ),
	.datad(\u_uw_uart|nx40736z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_7n5ss1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40736z52923 .lut_mask = 16'h32FA;
defparam \u_uw_uart|ix40736z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y23_N15
cycloneii_lcell_ff \u_uw_uart|reg_mdata_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_7n5ss1_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx40736z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_7_ ));

// Location: LCCOMB_X43_Y23_N22
cycloneii_lcell_comb \u_uw_uart|sdout_7_~feeder (
// Equation(s):
// \u_uw_uart|sdout_7_~feeder_combout  = \u_uw_uart|mdata_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_7_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y23_N23
cycloneii_lcell_ff \u_uw_uart|reg_sdout_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_7_ ));

// Location: LCCOMB_X46_Y23_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix35603z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_  = (!\u_uw_uart|sdout_7_  & !\u_uw_uart|i_uarts|TxFSM_1_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|sdout_7_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix35603z52923 .lut_mask = 16'h000F;
defparam \u_uw_uart|i_uarts|ix35603z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix35603z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx35603z1  = (!\u_uw_uart|i_uarts|TxFSM_0_  & ((\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|TopTx ))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|ld_sdout ))))

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(\u_uw_uart|ld_sdout ),
	.datac(\u_uw_uart|i_uarts|TopTx ),
	.datad(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx35603z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix35603z52924 .lut_mask = 16'h00E4;
defparam \u_uw_uart|i_uarts|ix35603z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y23_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx34606z1 ));

// Location: LCCOMB_X46_Y23_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34606z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_  = (\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|nx34606z1 ))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|sdout_7_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|sdout_7_ ),
	.datad(\u_uw_uart|i_uarts|nx34606z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34606z52923 .lut_mask = 16'hCF03;
defparam \u_uw_uart|i_uarts|ix34606z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y23_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx33609z1 ));

// Location: LCCOMB_X46_Y23_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix33609z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_  = (\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|nx33609z1 ))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|sdout_5_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|sdout_5_ ),
	.datad(\u_uw_uart|i_uarts|nx33609z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix33609z52923 .lut_mask = 16'hCF03;
defparam \u_uw_uart|i_uarts|ix33609z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y23_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx32612z1 ));

// Location: LCCOMB_X46_Y23_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32612z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_  = (\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|nx32612z1 ))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|sdout_5_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|sdout_5_ ),
	.datad(\u_uw_uart|i_uarts|nx32612z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32612z52923 .lut_mask = 16'hCF03;
defparam \u_uw_uart|i_uarts|ix32612z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y23_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx31615z1 ));

// Location: LCCOMB_X43_Y22_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix31615z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_  = (\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|nx31615z1 ))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|sdout_3_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|sdout_3_ ),
	.datac(\u_uw_uart|i_uarts|nx31615z1 ),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix31615z52923 .lut_mask = 16'hF033;
defparam \u_uw_uart|i_uarts|ix31615z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx30618z1 ));

// Location: LCCOMB_X43_Y22_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix30618z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_  = (\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|nx30618z1 ))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|sdout_2_ ))

	.dataa(\u_uw_uart|sdout_2_ ),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|nx30618z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix30618z52923 .lut_mask = 16'hDD11;
defparam \u_uw_uart|i_uarts|ix30618z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx29621z1 ));

// Location: LCCOMB_X43_Y22_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix29621z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_  = (\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|nx29621z1 ))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|sdout_1_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|sdout_1_ ),
	.datad(\u_uw_uart|i_uarts|nx29621z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix29621z52923 .lut_mask = 16'hCF03;
defparam \u_uw_uart|i_uarts|ix29621z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx28624z1 ));

// Location: LCCOMB_X43_Y22_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix28624z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_  = (\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|nx28624z1 ))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|sdout_0_ ))

	.dataa(\u_uw_uart|sdout_0_ ),
	.datab(\u_uw_uart|i_uarts|nx28624z1 ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix28624z52923 .lut_mask = 16'hCC55;
defparam \u_uw_uart|i_uarts|ix28624z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx61140z1 ));

// Location: LCCOMB_X50_Y23_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix61140z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_  = (\u_uw_uart|i_uarts|TxFSM_0_ ) # ((\u_uw_uart|i_uarts|TxFSM_1_  & \u_uw_uart|i_uarts|nx61140z1 ))

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|nx61140z1 ),
	.datad(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix61140z52923 .lut_mask = 16'hFFA0;
defparam \u_uw_uart|i_uarts|ix61140z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix61812z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx61812z1  = (\u_uw_uart|i_uarts|TxFSM_1_  & (((\u_uw_uart|i_uarts|TopTx  & !\u_uw_uart|i_uarts|TxFSM_0_ )))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|TxFSM_0_  & ((\u_uw_uart|i_uarts|TopTx ))) # 
// (!\u_uw_uart|i_uarts|TxFSM_0_  & (\u_uw_uart|ld_sdout ))))

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(\u_uw_uart|ld_sdout ),
	.datac(\u_uw_uart|i_uarts|TopTx ),
	.datad(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx61812z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix61812z52923 .lut_mask = 16'h50E4;
defparam \u_uw_uart|i_uarts|ix61812z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y23_N1
cycloneii_lcell_ff reg_out_txflex_obuf(
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx61812z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx21351z2));

// Location: LCFF_X37_Y23_N11
cycloneii_lcell_ff \u_kirsch|modgen_counter_o_row|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_o_row|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx17322z4 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_o_row|nx58250z11 ));

// Location: LCCOMB_X37_Y23_N0
cycloneii_lcell_comb ix57590z52923(
// Equation(s):
// nx57590z1 = (\u_kirsch|modgen_counter_o_row|nx58250z15  & (!\u_kirsch|modgen_counter_o_row|nx58250z9  & (\u_kirsch|modgen_counter_o_row|nx58250z11  $ (!\u_kirsch|modgen_counter_o_row|nx58250z13 )))) # (!\u_kirsch|modgen_counter_o_row|nx58250z15  & 
// (!\u_kirsch|modgen_counter_o_row|nx58250z13  & (\u_kirsch|modgen_counter_o_row|nx58250z11  $ (!\u_kirsch|modgen_counter_o_row|nx58250z9 ))))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z15 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z11 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx58250z13 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z9 ),
	.cin(gnd),
	.combout(nx57590z1),
	.cout());
// synopsys translate_off
defparam ix57590z52923.lut_mask = 16'h0483;
defparam ix57590z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y23_N1
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_0_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx57590z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx41851z1));

// Location: LCFF_X37_Y23_N7
cycloneii_lcell_ff \u_kirsch|modgen_counter_o_row|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_o_row|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx17322z4 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_o_row|nx58250z15 ));

// Location: LCCOMB_X38_Y23_N16
cycloneii_lcell_comb ix58587z52923(
// Equation(s):
// nx58587z1 = (\u_kirsch|modgen_counter_o_row|nx58250z11  & (\u_kirsch|modgen_counter_o_row|nx58250z15  & (\u_kirsch|modgen_counter_o_row|nx58250z9  $ (\u_kirsch|modgen_counter_o_row|nx58250z13 )))) # (!\u_kirsch|modgen_counter_o_row|nx58250z11  & 
// (!\u_kirsch|modgen_counter_o_row|nx58250z9  & ((\u_kirsch|modgen_counter_o_row|nx58250z15 ) # (\u_kirsch|modgen_counter_o_row|nx58250z13 ))))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z9 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z11 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx58250z15 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z13 ),
	.cin(gnd),
	.combout(nx58587z1),
	.cout());
// synopsys translate_off
defparam ix58587z52923.lut_mask = 16'h5190;
defparam ix58587z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N17
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_1_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx58587z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx42848z1));

// Location: LCCOMB_X37_Y23_N26
cycloneii_lcell_comb ix59584z52923(
// Equation(s):
// nx59584z1 = (\u_kirsch|modgen_counter_o_row|nx58250z13  & (\u_kirsch|modgen_counter_o_row|nx58250z15  & ((!\u_kirsch|modgen_counter_o_row|nx58250z9 )))) # (!\u_kirsch|modgen_counter_o_row|nx58250z13  & ((\u_kirsch|modgen_counter_o_row|nx58250z11  & 
// ((!\u_kirsch|modgen_counter_o_row|nx58250z9 ))) # (!\u_kirsch|modgen_counter_o_row|nx58250z11  & (\u_kirsch|modgen_counter_o_row|nx58250z15 ))))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z15 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z11 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx58250z13 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z9 ),
	.cin(gnd),
	.combout(nx59584z1),
	.cout());
// synopsys translate_off
defparam ix59584z52923.lut_mask = 16'h02AE;
defparam ix59584z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y23_N27
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_2_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx59584z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx43845z1));

// Location: LCCOMB_X37_Y23_N4
cycloneii_lcell_comb ix60581z52923(
// Equation(s):
// nx60581z1 = (\u_kirsch|modgen_counter_o_row|nx58250z15  & (\u_kirsch|modgen_counter_o_row|nx58250z11  $ ((!\u_kirsch|modgen_counter_o_row|nx58250z13 )))) # (!\u_kirsch|modgen_counter_o_row|nx58250z15  & ((\u_kirsch|modgen_counter_o_row|nx58250z11  & 
// (!\u_kirsch|modgen_counter_o_row|nx58250z13  & !\u_kirsch|modgen_counter_o_row|nx58250z9 )) # (!\u_kirsch|modgen_counter_o_row|nx58250z11  & (\u_kirsch|modgen_counter_o_row|nx58250z13  & \u_kirsch|modgen_counter_o_row|nx58250z9 ))))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z15 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z11 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx58250z13 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z9 ),
	.cin(gnd),
	.combout(nx60581z1),
	.cout());
// synopsys translate_off
defparam ix60581z52923.lut_mask = 16'h9286;
defparam ix60581z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y23_N5
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_3_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx60581z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx44842z1));

// Location: LCCOMB_X37_Y23_N22
cycloneii_lcell_comb ix61578z52923(
// Equation(s):
// nx61578z1 = (\u_kirsch|modgen_counter_o_row|nx58250z11  & (\u_kirsch|modgen_counter_o_row|nx58250z9  & ((\u_kirsch|modgen_counter_o_row|nx58250z13 ) # (!\u_kirsch|modgen_counter_o_row|nx58250z15 )))) # (!\u_kirsch|modgen_counter_o_row|nx58250z11  & 
// (!\u_kirsch|modgen_counter_o_row|nx58250z15  & (\u_kirsch|modgen_counter_o_row|nx58250z13  & !\u_kirsch|modgen_counter_o_row|nx58250z9 )))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z15 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z11 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx58250z13 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z9 ),
	.cin(gnd),
	.combout(nx61578z1),
	.cout());
// synopsys translate_off
defparam ix61578z52923.lut_mask = 16'hC410;
defparam ix61578z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y23_N23
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_4_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx61578z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx45839z1));

// Location: LCCOMB_X37_Y23_N24
cycloneii_lcell_comb ix62575z52923(
// Equation(s):
// nx62575z1 = (\u_kirsch|modgen_counter_o_row|nx58250z13  & ((\u_kirsch|modgen_counter_o_row|nx58250z15  & ((\u_kirsch|modgen_counter_o_row|nx58250z9 ))) # (!\u_kirsch|modgen_counter_o_row|nx58250z15  & (\u_kirsch|modgen_counter_o_row|nx58250z11 )))) # 
// (!\u_kirsch|modgen_counter_o_row|nx58250z13  & (\u_kirsch|modgen_counter_o_row|nx58250z11  & (\u_kirsch|modgen_counter_o_row|nx58250z15  $ (\u_kirsch|modgen_counter_o_row|nx58250z9 ))))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z15 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z11 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx58250z13 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z9 ),
	.cin(gnd),
	.combout(nx62575z1),
	.cout());
// synopsys translate_off
defparam ix62575z52923.lut_mask = 16'hE448;
defparam ix62575z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y23_N25
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_5_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx62575z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx46836z1));

// Location: LCCOMB_X37_Y23_N2
cycloneii_lcell_comb ix63572z52923(
// Equation(s):
// nx63572z1 = (\u_kirsch|modgen_counter_o_row|nx58250z11  & (!\u_kirsch|modgen_counter_o_row|nx58250z13  & (\u_kirsch|modgen_counter_o_row|nx58250z15  $ (!\u_kirsch|modgen_counter_o_row|nx58250z9 )))) # (!\u_kirsch|modgen_counter_o_row|nx58250z11  & 
// (\u_kirsch|modgen_counter_o_row|nx58250z15  & (\u_kirsch|modgen_counter_o_row|nx58250z13  $ (!\u_kirsch|modgen_counter_o_row|nx58250z9 ))))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z15 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z11 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx58250z13 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z9 ),
	.cin(gnd),
	.combout(nx63572z1),
	.cout());
// synopsys translate_off
defparam ix63572z52923.lut_mask = 16'h2806;
defparam ix63572z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y23_N3
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_6_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx63572z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx47833z1));

// Location: LCCOMB_X38_Y23_N26
cycloneii_lcell_comb ix30z52923(
// Equation(s):
// nx30z1 = (\u_kirsch|modgen_counter_o_row|nx58250z7  & (!\u_kirsch|modgen_counter_o_row|nx1041z1  & (\u_kirsch|modgen_counter_o_row|nx58250z5  $ (!\u_kirsch|modgen_counter_o_row|nx58250z3 )))) # (!\u_kirsch|modgen_counter_o_row|nx58250z7  & 
// (!\u_kirsch|modgen_counter_o_row|nx58250z5  & (\u_kirsch|modgen_counter_o_row|nx1041z1  $ (!\u_kirsch|modgen_counter_o_row|nx58250z3 ))))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z7 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z5 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx1041z1 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z3 ),
	.cin(gnd),
	.combout(nx30z1),
	.cout());
// synopsys translate_off
defparam ix30z52923.lut_mask = 16'h1803;
defparam ix30z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N27
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_8_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx30z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx49827z1));

// Location: LCCOMB_X38_Y23_N28
cycloneii_lcell_comb ix1027z52923(
// Equation(s):
// nx1027z1 = (\u_kirsch|modgen_counter_o_row|nx58250z7  & (\u_kirsch|modgen_counter_o_row|nx1041z1  $ (((\u_kirsch|modgen_counter_o_row|nx58250z5 ) # (!\u_kirsch|modgen_counter_o_row|nx58250z3 ))))) # (!\u_kirsch|modgen_counter_o_row|nx58250z7  & 
// (\u_kirsch|modgen_counter_o_row|nx58250z5  & (!\u_kirsch|modgen_counter_o_row|nx1041z1  & !\u_kirsch|modgen_counter_o_row|nx58250z3 )))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z7 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z5 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx1041z1 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z3 ),
	.cin(gnd),
	.combout(nx1027z1),
	.cout());
// synopsys translate_off
defparam ix1027z52923.lut_mask = 16'h280E;
defparam ix1027z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N29
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_9_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx1027z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx50824z1));

// Location: LCCOMB_X38_Y23_N30
cycloneii_lcell_comb ix25683z52923(
// Equation(s):
// nx25683z1 = (\u_kirsch|modgen_counter_o_row|nx58250z5  & (\u_kirsch|modgen_counter_o_row|nx58250z7  & (!\u_kirsch|modgen_counter_o_row|nx1041z1 ))) # (!\u_kirsch|modgen_counter_o_row|nx58250z5  & ((\u_kirsch|modgen_counter_o_row|nx58250z3  & 
// ((!\u_kirsch|modgen_counter_o_row|nx1041z1 ))) # (!\u_kirsch|modgen_counter_o_row|nx58250z3  & (\u_kirsch|modgen_counter_o_row|nx58250z7 ))))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z7 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z5 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx1041z1 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z3 ),
	.cin(gnd),
	.combout(nx25683z1),
	.cout());
// synopsys translate_off
defparam ix25683z52923.lut_mask = 16'h0B2A;
defparam ix25683z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N31
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_10_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx25683z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx62540z1));

// Location: LCCOMB_X38_Y23_N0
cycloneii_lcell_comb ix26680z52923(
// Equation(s):
// nx26680z1 = (\u_kirsch|modgen_counter_o_row|nx58250z7  & (\u_kirsch|modgen_counter_o_row|nx58250z5  $ (((!\u_kirsch|modgen_counter_o_row|nx58250z3 ))))) # (!\u_kirsch|modgen_counter_o_row|nx58250z7  & ((\u_kirsch|modgen_counter_o_row|nx58250z5  & 
// (\u_kirsch|modgen_counter_o_row|nx1041z1  & !\u_kirsch|modgen_counter_o_row|nx58250z3 )) # (!\u_kirsch|modgen_counter_o_row|nx58250z5  & (!\u_kirsch|modgen_counter_o_row|nx1041z1  & \u_kirsch|modgen_counter_o_row|nx58250z3 ))))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z7 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z5 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx1041z1 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z3 ),
	.cin(gnd),
	.combout(nx26680z1),
	.cout());
// synopsys translate_off
defparam ix26680z52923.lut_mask = 16'h8962;
defparam ix26680z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N1
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_11_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx26680z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx63537z1));

// Location: LCCOMB_X38_Y23_N18
cycloneii_lcell_comb ix27677z52923(
// Equation(s):
// nx27677z1 = (\u_kirsch|modgen_counter_o_row|nx1041z1  & (\u_kirsch|modgen_counter_o_row|nx58250z3  & ((\u_kirsch|modgen_counter_o_row|nx58250z5 ) # (!\u_kirsch|modgen_counter_o_row|nx58250z7 )))) # (!\u_kirsch|modgen_counter_o_row|nx1041z1  & 
// (!\u_kirsch|modgen_counter_o_row|nx58250z7  & (\u_kirsch|modgen_counter_o_row|nx58250z5  & !\u_kirsch|modgen_counter_o_row|nx58250z3 )))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z7 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z5 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx1041z1 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z3 ),
	.cin(gnd),
	.combout(nx27677z1),
	.cout());
// synopsys translate_off
defparam ix27677z52923.lut_mask = 16'hD004;
defparam ix27677z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N19
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_12_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx27677z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx64534z1));

// Location: LCCOMB_X38_Y23_N4
cycloneii_lcell_comb ix28674z52923(
// Equation(s):
// nx28674z1 = (\u_kirsch|modgen_counter_o_row|nx58250z5  & ((\u_kirsch|modgen_counter_o_row|nx58250z7  & (\u_kirsch|modgen_counter_o_row|nx1041z1 )) # (!\u_kirsch|modgen_counter_o_row|nx58250z7  & ((\u_kirsch|modgen_counter_o_row|nx58250z3 ))))) # 
// (!\u_kirsch|modgen_counter_o_row|nx58250z5  & (\u_kirsch|modgen_counter_o_row|nx58250z3  & (\u_kirsch|modgen_counter_o_row|nx58250z7  $ (\u_kirsch|modgen_counter_o_row|nx1041z1 ))))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z7 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z5 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx1041z1 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z3 ),
	.cin(gnd),
	.combout(nx28674z1),
	.cout());
// synopsys translate_off
defparam ix28674z52923.lut_mask = 16'hD680;
defparam ix28674z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N5
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_13_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx28674z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx65531z1));

// Location: LCCOMB_X38_Y23_N22
cycloneii_lcell_comb ix29671z52923(
// Equation(s):
// nx29671z1 = (\u_kirsch|modgen_counter_o_row|nx1041z1  & (\u_kirsch|modgen_counter_o_row|nx58250z7  & (\u_kirsch|modgen_counter_o_row|nx58250z5  $ (\u_kirsch|modgen_counter_o_row|nx58250z3 )))) # (!\u_kirsch|modgen_counter_o_row|nx1041z1  & 
// (!\u_kirsch|modgen_counter_o_row|nx58250z5  & (\u_kirsch|modgen_counter_o_row|nx58250z7  $ (\u_kirsch|modgen_counter_o_row|nx58250z3 ))))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z7 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z5 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx1041z1 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z3 ),
	.cin(gnd),
	.combout(nx29671z1),
	.cout());
// synopsys translate_off
defparam ix29671z52923.lut_mask = 16'h2182;
defparam ix29671z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N23
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_14_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx29671z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx992z1));

// Location: LCCOMB_X37_Y23_N30
cycloneii_lcell_comb \u_kirsch|ix11673z52927 (
// Equation(s):
// \u_kirsch|nx11673z5  = (\u_kirsch|modgen_counter_o_row|nx58250z15 ) # ((\u_kirsch|modgen_counter_o_row|nx58250z13 ) # ((\u_kirsch|modgen_counter_o_row|nx1041z1 ) # (\u_kirsch|modgen_counter_o_row|nx58250z3 )))

	.dataa(\u_kirsch|modgen_counter_o_row|nx58250z15 ),
	.datab(\u_kirsch|modgen_counter_o_row|nx58250z13 ),
	.datac(\u_kirsch|modgen_counter_o_row|nx1041z1 ),
	.datad(\u_kirsch|modgen_counter_o_row|nx58250z3 ),
	.cin(gnd),
	.combout(\u_kirsch|nx11673z5 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix11673z52927 .lut_mask = 16'hFFFE;
defparam \u_kirsch|ix11673z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y23_N24
cycloneii_lcell_comb \u_kirsch|ix11673z52923 (
// Equation(s):
// \u_kirsch|nx11673z1  = (\u_kirsch|modgen_counter_col|nx58250z15  & (!\u_kirsch|nx11673z4  & (!\u_kirsch|nx11673z5 ))) # (!\u_kirsch|modgen_counter_col|nx58250z15  & (((!\u_kirsch|nx11673z4  & !\u_kirsch|nx11673z5 )) # (!\u_kirsch|nx11673z2 )))

	.dataa(\u_kirsch|modgen_counter_col|nx58250z15 ),
	.datab(\u_kirsch|nx11673z4 ),
	.datac(\u_kirsch|nx11673z5 ),
	.datad(\u_kirsch|nx11673z2 ),
	.cin(gnd),
	.combout(\u_kirsch|nx11673z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix11673z52923 .lut_mask = 16'h0357;
defparam \u_kirsch|ix11673z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N25
cycloneii_lcell_ff \u_kirsch|reg_out_signal_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx11673z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|nx64269z1 ));

// Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix21351z43919(
	.datain(!nx21351z2),
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
	.padio(txflex));
// synopsys translate_off
defparam ix21351z43919.input_async_reset = "none";
defparam ix21351z43919.input_power_up = "low";
defparam ix21351z43919.input_register_mode = "none";
defparam ix21351z43919.input_sync_reset = "none";
defparam ix21351z43919.oe_async_reset = "none";
defparam ix21351z43919.oe_power_up = "low";
defparam ix21351z43919.oe_register_mode = "none";
defparam ix21351z43919.oe_sync_reset = "none";
defparam ix21351z43919.operation_mode = "output";
defparam ix21351z43919.output_async_reset = "none";
defparam ix21351z43919.output_power_up = "low";
defparam ix21351z43919.output_register_mode = "none";
defparam ix21351z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix41851z43919(
	.datain(nx41851z1),
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
	.padio(o_sevenseg[0]));
// synopsys translate_off
defparam ix41851z43919.input_async_reset = "none";
defparam ix41851z43919.input_power_up = "low";
defparam ix41851z43919.input_register_mode = "none";
defparam ix41851z43919.input_sync_reset = "none";
defparam ix41851z43919.oe_async_reset = "none";
defparam ix41851z43919.oe_power_up = "low";
defparam ix41851z43919.oe_register_mode = "none";
defparam ix41851z43919.oe_sync_reset = "none";
defparam ix41851z43919.operation_mode = "output";
defparam ix41851z43919.output_async_reset = "none";
defparam ix41851z43919.output_power_up = "low";
defparam ix41851z43919.output_register_mode = "none";
defparam ix41851z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix42848z43919(
	.datain(nx42848z1),
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
	.padio(o_sevenseg[1]));
// synopsys translate_off
defparam ix42848z43919.input_async_reset = "none";
defparam ix42848z43919.input_power_up = "low";
defparam ix42848z43919.input_register_mode = "none";
defparam ix42848z43919.input_sync_reset = "none";
defparam ix42848z43919.oe_async_reset = "none";
defparam ix42848z43919.oe_power_up = "low";
defparam ix42848z43919.oe_register_mode = "none";
defparam ix42848z43919.oe_sync_reset = "none";
defparam ix42848z43919.operation_mode = "output";
defparam ix42848z43919.output_async_reset = "none";
defparam ix42848z43919.output_power_up = "low";
defparam ix42848z43919.output_register_mode = "none";
defparam ix42848z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix43845z43919(
	.datain(nx43845z1),
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
	.padio(o_sevenseg[2]));
// synopsys translate_off
defparam ix43845z43919.input_async_reset = "none";
defparam ix43845z43919.input_power_up = "low";
defparam ix43845z43919.input_register_mode = "none";
defparam ix43845z43919.input_sync_reset = "none";
defparam ix43845z43919.oe_async_reset = "none";
defparam ix43845z43919.oe_power_up = "low";
defparam ix43845z43919.oe_register_mode = "none";
defparam ix43845z43919.oe_sync_reset = "none";
defparam ix43845z43919.operation_mode = "output";
defparam ix43845z43919.output_async_reset = "none";
defparam ix43845z43919.output_power_up = "low";
defparam ix43845z43919.output_register_mode = "none";
defparam ix43845z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix44842z43919(
	.datain(nx44842z1),
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
	.padio(o_sevenseg[3]));
// synopsys translate_off
defparam ix44842z43919.input_async_reset = "none";
defparam ix44842z43919.input_power_up = "low";
defparam ix44842z43919.input_register_mode = "none";
defparam ix44842z43919.input_sync_reset = "none";
defparam ix44842z43919.oe_async_reset = "none";
defparam ix44842z43919.oe_power_up = "low";
defparam ix44842z43919.oe_register_mode = "none";
defparam ix44842z43919.oe_sync_reset = "none";
defparam ix44842z43919.operation_mode = "output";
defparam ix44842z43919.output_async_reset = "none";
defparam ix44842z43919.output_power_up = "low";
defparam ix44842z43919.output_register_mode = "none";
defparam ix44842z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix45839z43919(
	.datain(nx45839z1),
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
	.padio(o_sevenseg[4]));
// synopsys translate_off
defparam ix45839z43919.input_async_reset = "none";
defparam ix45839z43919.input_power_up = "low";
defparam ix45839z43919.input_register_mode = "none";
defparam ix45839z43919.input_sync_reset = "none";
defparam ix45839z43919.oe_async_reset = "none";
defparam ix45839z43919.oe_power_up = "low";
defparam ix45839z43919.oe_register_mode = "none";
defparam ix45839z43919.oe_sync_reset = "none";
defparam ix45839z43919.operation_mode = "output";
defparam ix45839z43919.output_async_reset = "none";
defparam ix45839z43919.output_power_up = "low";
defparam ix45839z43919.output_register_mode = "none";
defparam ix45839z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix46836z43919(
	.datain(nx46836z1),
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
	.padio(o_sevenseg[5]));
// synopsys translate_off
defparam ix46836z43919.input_async_reset = "none";
defparam ix46836z43919.input_power_up = "low";
defparam ix46836z43919.input_register_mode = "none";
defparam ix46836z43919.input_sync_reset = "none";
defparam ix46836z43919.oe_async_reset = "none";
defparam ix46836z43919.oe_power_up = "low";
defparam ix46836z43919.oe_register_mode = "none";
defparam ix46836z43919.oe_sync_reset = "none";
defparam ix46836z43919.operation_mode = "output";
defparam ix46836z43919.output_async_reset = "none";
defparam ix46836z43919.output_power_up = "low";
defparam ix46836z43919.output_register_mode = "none";
defparam ix46836z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix47833z43919(
	.datain(nx47833z1),
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
	.padio(o_sevenseg[6]));
// synopsys translate_off
defparam ix47833z43919.input_async_reset = "none";
defparam ix47833z43919.input_power_up = "low";
defparam ix47833z43919.input_register_mode = "none";
defparam ix47833z43919.input_sync_reset = "none";
defparam ix47833z43919.oe_async_reset = "none";
defparam ix47833z43919.oe_power_up = "low";
defparam ix47833z43919.oe_register_mode = "none";
defparam ix47833z43919.oe_sync_reset = "none";
defparam ix47833z43919.operation_mode = "output";
defparam ix47833z43919.output_async_reset = "none";
defparam ix47833z43919.output_power_up = "low";
defparam ix47833z43919.output_register_mode = "none";
defparam ix47833z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_7_(
	.datain(vcc),
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
	.padio(o_sevenseg[7]));
// synopsys translate_off
defparam o_sevenseg_obuf_7_.input_async_reset = "none";
defparam o_sevenseg_obuf_7_.input_power_up = "low";
defparam o_sevenseg_obuf_7_.input_register_mode = "none";
defparam o_sevenseg_obuf_7_.input_sync_reset = "none";
defparam o_sevenseg_obuf_7_.oe_async_reset = "none";
defparam o_sevenseg_obuf_7_.oe_power_up = "low";
defparam o_sevenseg_obuf_7_.oe_register_mode = "none";
defparam o_sevenseg_obuf_7_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_7_.operation_mode = "output";
defparam o_sevenseg_obuf_7_.output_async_reset = "none";
defparam o_sevenseg_obuf_7_.output_power_up = "low";
defparam o_sevenseg_obuf_7_.output_register_mode = "none";
defparam o_sevenseg_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix49827z43919(
	.datain(nx49827z1),
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
	.padio(o_sevenseg[8]));
// synopsys translate_off
defparam ix49827z43919.input_async_reset = "none";
defparam ix49827z43919.input_power_up = "low";
defparam ix49827z43919.input_register_mode = "none";
defparam ix49827z43919.input_sync_reset = "none";
defparam ix49827z43919.oe_async_reset = "none";
defparam ix49827z43919.oe_power_up = "low";
defparam ix49827z43919.oe_register_mode = "none";
defparam ix49827z43919.oe_sync_reset = "none";
defparam ix49827z43919.operation_mode = "output";
defparam ix49827z43919.output_async_reset = "none";
defparam ix49827z43919.output_power_up = "low";
defparam ix49827z43919.output_register_mode = "none";
defparam ix49827z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix50824z43919(
	.datain(nx50824z1),
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
	.padio(o_sevenseg[9]));
// synopsys translate_off
defparam ix50824z43919.input_async_reset = "none";
defparam ix50824z43919.input_power_up = "low";
defparam ix50824z43919.input_register_mode = "none";
defparam ix50824z43919.input_sync_reset = "none";
defparam ix50824z43919.oe_async_reset = "none";
defparam ix50824z43919.oe_power_up = "low";
defparam ix50824z43919.oe_register_mode = "none";
defparam ix50824z43919.oe_sync_reset = "none";
defparam ix50824z43919.operation_mode = "output";
defparam ix50824z43919.output_async_reset = "none";
defparam ix50824z43919.output_power_up = "low";
defparam ix50824z43919.output_register_mode = "none";
defparam ix50824z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix62540z43919(
	.datain(nx62540z1),
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
	.padio(o_sevenseg[10]));
// synopsys translate_off
defparam ix62540z43919.input_async_reset = "none";
defparam ix62540z43919.input_power_up = "low";
defparam ix62540z43919.input_register_mode = "none";
defparam ix62540z43919.input_sync_reset = "none";
defparam ix62540z43919.oe_async_reset = "none";
defparam ix62540z43919.oe_power_up = "low";
defparam ix62540z43919.oe_register_mode = "none";
defparam ix62540z43919.oe_sync_reset = "none";
defparam ix62540z43919.operation_mode = "output";
defparam ix62540z43919.output_async_reset = "none";
defparam ix62540z43919.output_power_up = "low";
defparam ix62540z43919.output_register_mode = "none";
defparam ix62540z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix63537z43919(
	.datain(nx63537z1),
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
	.padio(o_sevenseg[11]));
// synopsys translate_off
defparam ix63537z43919.input_async_reset = "none";
defparam ix63537z43919.input_power_up = "low";
defparam ix63537z43919.input_register_mode = "none";
defparam ix63537z43919.input_sync_reset = "none";
defparam ix63537z43919.oe_async_reset = "none";
defparam ix63537z43919.oe_power_up = "low";
defparam ix63537z43919.oe_register_mode = "none";
defparam ix63537z43919.oe_sync_reset = "none";
defparam ix63537z43919.operation_mode = "output";
defparam ix63537z43919.output_async_reset = "none";
defparam ix63537z43919.output_power_up = "low";
defparam ix63537z43919.output_register_mode = "none";
defparam ix63537z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix64534z43919(
	.datain(nx64534z1),
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
	.padio(o_sevenseg[12]));
// synopsys translate_off
defparam ix64534z43919.input_async_reset = "none";
defparam ix64534z43919.input_power_up = "low";
defparam ix64534z43919.input_register_mode = "none";
defparam ix64534z43919.input_sync_reset = "none";
defparam ix64534z43919.oe_async_reset = "none";
defparam ix64534z43919.oe_power_up = "low";
defparam ix64534z43919.oe_register_mode = "none";
defparam ix64534z43919.oe_sync_reset = "none";
defparam ix64534z43919.operation_mode = "output";
defparam ix64534z43919.output_async_reset = "none";
defparam ix64534z43919.output_power_up = "low";
defparam ix64534z43919.output_register_mode = "none";
defparam ix64534z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix65531z43919(
	.datain(nx65531z1),
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
	.padio(o_sevenseg[13]));
// synopsys translate_off
defparam ix65531z43919.input_async_reset = "none";
defparam ix65531z43919.input_power_up = "low";
defparam ix65531z43919.input_register_mode = "none";
defparam ix65531z43919.input_sync_reset = "none";
defparam ix65531z43919.oe_async_reset = "none";
defparam ix65531z43919.oe_power_up = "low";
defparam ix65531z43919.oe_register_mode = "none";
defparam ix65531z43919.oe_sync_reset = "none";
defparam ix65531z43919.operation_mode = "output";
defparam ix65531z43919.output_async_reset = "none";
defparam ix65531z43919.output_power_up = "low";
defparam ix65531z43919.output_register_mode = "none";
defparam ix65531z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix992z43919(
	.datain(nx992z1),
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
	.padio(o_sevenseg[14]));
// synopsys translate_off
defparam ix992z43919.input_async_reset = "none";
defparam ix992z43919.input_power_up = "low";
defparam ix992z43919.input_register_mode = "none";
defparam ix992z43919.input_sync_reset = "none";
defparam ix992z43919.oe_async_reset = "none";
defparam ix992z43919.oe_power_up = "low";
defparam ix992z43919.oe_register_mode = "none";
defparam ix992z43919.oe_sync_reset = "none";
defparam ix992z43919.operation_mode = "output";
defparam ix992z43919.output_async_reset = "none";
defparam ix992z43919.output_power_up = "low";
defparam ix992z43919.output_register_mode = "none";
defparam ix992z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_15_(
	.datain(vcc),
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
	.padio(o_sevenseg[15]));
// synopsys translate_off
defparam o_sevenseg_obuf_15_.input_async_reset = "none";
defparam o_sevenseg_obuf_15_.input_power_up = "low";
defparam o_sevenseg_obuf_15_.input_register_mode = "none";
defparam o_sevenseg_obuf_15_.input_sync_reset = "none";
defparam o_sevenseg_obuf_15_.oe_async_reset = "none";
defparam o_sevenseg_obuf_15_.oe_power_up = "low";
defparam o_sevenseg_obuf_15_.oe_register_mode = "none";
defparam o_sevenseg_obuf_15_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_15_.operation_mode = "output";
defparam o_sevenseg_obuf_15_.output_async_reset = "none";
defparam o_sevenseg_obuf_15_.output_power_up = "low";
defparam o_sevenseg_obuf_15_.output_register_mode = "none";
defparam o_sevenseg_obuf_15_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_mode_obuf_0_(
	.datain(!\u_kirsch|nx64269z1 ),
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

// Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_mode_obuf_1_(
	.datain(\u_kirsch|p_o_mode_1_ ),
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

// Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_nrst_obuf(
	.datain(!\nrst~combout ),
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
	.padio(o_nrst));
// synopsys translate_off
defparam o_nrst_obuf.input_async_reset = "none";
defparam o_nrst_obuf.input_power_up = "low";
defparam o_nrst_obuf.input_register_mode = "none";
defparam o_nrst_obuf.input_sync_reset = "none";
defparam o_nrst_obuf.oe_async_reset = "none";
defparam o_nrst_obuf.oe_power_up = "low";
defparam o_nrst_obuf.oe_register_mode = "none";
defparam o_nrst_obuf.oe_sync_reset = "none";
defparam o_nrst_obuf.operation_mode = "output";
defparam o_nrst_obuf.output_async_reset = "none";
defparam o_nrst_obuf.output_power_up = "low";
defparam o_nrst_obuf.output_register_mode = "none";
defparam o_nrst_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_0_(
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
defparam u_kirsch_debug_led_red_triBus3_0_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_0_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_0_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_0_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_0_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_1_(
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
defparam u_kirsch_debug_led_red_triBus3_1_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_1_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_1_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_1_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_1_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_2_(
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
defparam u_kirsch_debug_led_red_triBus3_2_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_2_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_2_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_2_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_2_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_3_(
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
defparam u_kirsch_debug_led_red_triBus3_3_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_3_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_3_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_3_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_3_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_4_(
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
defparam u_kirsch_debug_led_red_triBus3_4_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_4_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_4_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_4_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_4_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_5_(
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
defparam u_kirsch_debug_led_red_triBus3_5_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_5_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_5_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_5_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_5_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_6_(
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
defparam u_kirsch_debug_led_red_triBus3_6_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_6_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_6_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_6_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_6_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_7_(
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
defparam u_kirsch_debug_led_red_triBus3_7_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_7_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_7_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_7_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_7_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_8_(
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
defparam u_kirsch_debug_led_red_triBus3_8_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_8_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_8_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_8_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_8_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_9_(
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
defparam u_kirsch_debug_led_red_triBus3_9_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_9_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_9_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_9_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_9_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_10_(
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
defparam u_kirsch_debug_led_red_triBus3_10_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_10_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_10_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_10_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_10_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_11_(
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
defparam u_kirsch_debug_led_red_triBus3_11_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_11_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_11_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_11_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_11_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_12_(
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
defparam u_kirsch_debug_led_red_triBus3_12_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_12_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_12_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_12_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_12_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_13_(
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
defparam u_kirsch_debug_led_red_triBus3_13_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_13_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_13_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_13_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_13_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_14_(
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
defparam u_kirsch_debug_led_red_triBus3_14_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_14_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_14_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_14_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_14_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_15_(
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
defparam u_kirsch_debug_led_red_triBus3_15_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_15_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_15_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_15_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_15_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_red_triBus3_16_(
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
defparam u_kirsch_debug_led_red_triBus3_16_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_16_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_16_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_16_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_16_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_grn_triBus4_0_(
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
defparam u_kirsch_debug_led_grn_triBus4_0_.input_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.input_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_0_.input_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.input_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.oe_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.oe_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_0_.oe_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.operation_mode = "output";
defparam u_kirsch_debug_led_grn_triBus4_0_.output_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.output_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_0_.output_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_grn_triBus4_1_(
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
defparam u_kirsch_debug_led_grn_triBus4_1_.input_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.input_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_1_.input_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.input_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.oe_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.oe_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_1_.oe_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.operation_mode = "output";
defparam u_kirsch_debug_led_grn_triBus4_1_.output_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.output_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_1_.output_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_grn_triBus4_2_(
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
defparam u_kirsch_debug_led_grn_triBus4_2_.input_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.input_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_2_.input_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.input_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.oe_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.oe_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_2_.oe_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.operation_mode = "output";
defparam u_kirsch_debug_led_grn_triBus4_2_.output_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.output_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_2_.output_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_grn_triBus4_3_(
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
defparam u_kirsch_debug_led_grn_triBus4_3_.input_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.input_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_3_.input_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.input_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.oe_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.oe_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_3_.oe_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.operation_mode = "output";
defparam u_kirsch_debug_led_grn_triBus4_3_.output_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.output_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_3_.output_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_grn_triBus4_4_(
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
defparam u_kirsch_debug_led_grn_triBus4_4_.input_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.input_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_4_.input_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.input_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.oe_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.oe_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_4_.oe_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.operation_mode = "output";
defparam u_kirsch_debug_led_grn_triBus4_4_.output_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.output_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_4_.output_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_kirsch_debug_led_grn_triBus4_5_(
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
defparam u_kirsch_debug_led_grn_triBus4_5_.input_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.input_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_5_.input_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.input_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.oe_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.oe_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_5_.oe_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.operation_mode = "output";
defparam u_kirsch_debug_led_grn_triBus4_5_.output_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.output_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_5_.output_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_0_obuf_0_(
	.datain(vcc),
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
	.padio(debug_sevenseg_0[0]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_0_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_0_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_0_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_0_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_0_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_0_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_0_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_0_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_0_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_0_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_0_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_0_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_0_obuf_1_(
	.datain(gnd),
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
	.padio(debug_sevenseg_0[1]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_1_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_1_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_1_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_1_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_1_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_1_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_1_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_1_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_1_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_1_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_1_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_1_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_0_obuf_2_(
	.datain(gnd),
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
	.padio(debug_sevenseg_0[2]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_2_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_2_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_2_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_2_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_2_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_2_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_2_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_2_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_2_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_2_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_2_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_2_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_0_obuf_3_(
	.datain(gnd),
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
	.padio(debug_sevenseg_0[3]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_3_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_3_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_3_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_3_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_3_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_3_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_3_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_3_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_3_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_3_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_3_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_3_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_0_obuf_4_(
	.datain(gnd),
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
	.padio(debug_sevenseg_0[4]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_4_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_4_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_4_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_4_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_4_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_4_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_4_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_4_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_4_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_4_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_4_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_4_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_0_obuf_5_(
	.datain(gnd),
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
	.padio(debug_sevenseg_0[5]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_5_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_5_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_5_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_5_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_5_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_5_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_5_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_5_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_5_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_5_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_5_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_5_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_0_obuf_6_(
	.datain(gnd),
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
	.padio(debug_sevenseg_0[6]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_6_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_6_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_6_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_6_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_6_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_6_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_6_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_6_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_6_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_6_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_6_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_6_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_0_obuf_7_(
	.datain(vcc),
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
	.padio(debug_sevenseg_0[7]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_7_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_7_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_7_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_7_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_7_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_7_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_7_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_7_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_7_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_7_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_7_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_7_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_1_obuf_0_(
	.datain(vcc),
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
	.padio(debug_sevenseg_1[0]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_0_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_0_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_0_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_0_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_0_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_0_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_0_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_0_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_0_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_0_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_0_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_0_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_1_obuf_1_(
	.datain(gnd),
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
	.padio(debug_sevenseg_1[1]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_1_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_1_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_1_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_1_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_1_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_1_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_1_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_1_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_1_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_1_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_1_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_1_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_1_obuf_2_(
	.datain(gnd),
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
	.padio(debug_sevenseg_1[2]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_2_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_2_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_2_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_2_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_2_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_2_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_2_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_2_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_2_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_2_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_2_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_2_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_1_obuf_3_(
	.datain(gnd),
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
	.padio(debug_sevenseg_1[3]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_3_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_3_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_3_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_3_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_3_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_3_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_3_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_3_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_3_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_3_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_3_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_3_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_1_obuf_4_(
	.datain(gnd),
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
	.padio(debug_sevenseg_1[4]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_4_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_4_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_4_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_4_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_4_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_4_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_4_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_4_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_4_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_4_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_4_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_4_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_1_obuf_5_(
	.datain(gnd),
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
	.padio(debug_sevenseg_1[5]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_5_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_5_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_5_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_5_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_5_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_5_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_5_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_5_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_5_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_5_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_5_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_5_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_1_obuf_6_(
	.datain(gnd),
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
	.padio(debug_sevenseg_1[6]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_6_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_6_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_6_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_6_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_6_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_6_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_6_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_6_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_6_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_6_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_6_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_6_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_1_obuf_7_(
	.datain(vcc),
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
	.padio(debug_sevenseg_1[7]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_7_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_7_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_7_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_7_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_7_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_7_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_7_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_7_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_7_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_7_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_7_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_7_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_2_obuf_0_(
	.datain(vcc),
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
	.padio(debug_sevenseg_2[0]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_0_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_0_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_0_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_0_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_0_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_0_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_0_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_0_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_0_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_0_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_0_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_0_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_2_obuf_1_(
	.datain(gnd),
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
	.padio(debug_sevenseg_2[1]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_1_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_1_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_1_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_1_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_1_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_1_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_1_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_1_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_1_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_1_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_1_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_1_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_2_obuf_2_(
	.datain(gnd),
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
	.padio(debug_sevenseg_2[2]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_2_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_2_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_2_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_2_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_2_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_2_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_2_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_2_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_2_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_2_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_2_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_2_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_2_obuf_3_(
	.datain(gnd),
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
	.padio(debug_sevenseg_2[3]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_3_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_3_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_3_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_3_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_3_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_3_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_3_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_3_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_3_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_3_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_3_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_3_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_2_obuf_4_(
	.datain(gnd),
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
	.padio(debug_sevenseg_2[4]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_4_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_4_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_4_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_4_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_4_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_4_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_4_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_4_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_4_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_4_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_4_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_4_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_2_obuf_5_(
	.datain(gnd),
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
	.padio(debug_sevenseg_2[5]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_5_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_5_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_5_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_5_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_5_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_5_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_5_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_5_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_5_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_5_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_5_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_5_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_2_obuf_6_(
	.datain(gnd),
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
	.padio(debug_sevenseg_2[6]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_6_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_6_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_6_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_6_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_6_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_6_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_6_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_6_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_6_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_6_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_6_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_6_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_2_obuf_7_(
	.datain(vcc),
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
	.padio(debug_sevenseg_2[7]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_7_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_7_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_7_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_7_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_7_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_7_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_7_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_7_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_7_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_7_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_7_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_7_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_3_obuf_0_(
	.datain(vcc),
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
	.padio(debug_sevenseg_3[0]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_0_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_0_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_0_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_0_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_0_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_0_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_0_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_0_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_0_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_0_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_0_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_0_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_3_obuf_1_(
	.datain(gnd),
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
	.padio(debug_sevenseg_3[1]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_1_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_1_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_1_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_1_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_1_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_1_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_1_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_1_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_1_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_1_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_1_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_1_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_3_obuf_2_(
	.datain(gnd),
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
	.padio(debug_sevenseg_3[2]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_2_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_2_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_2_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_2_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_2_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_2_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_2_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_2_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_2_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_2_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_2_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_2_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_3_obuf_3_(
	.datain(gnd),
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
	.padio(debug_sevenseg_3[3]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_3_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_3_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_3_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_3_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_3_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_3_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_3_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_3_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_3_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_3_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_3_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_3_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_3_obuf_4_(
	.datain(gnd),
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
	.padio(debug_sevenseg_3[4]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_4_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_4_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_4_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_4_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_4_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_4_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_4_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_4_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_4_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_4_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_4_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_4_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_3_obuf_5_(
	.datain(gnd),
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
	.padio(debug_sevenseg_3[5]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_5_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_5_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_5_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_5_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_5_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_5_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_5_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_5_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_5_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_5_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_5_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_5_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_3_obuf_6_(
	.datain(gnd),
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
	.padio(debug_sevenseg_3[6]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_6_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_6_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_6_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_6_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_6_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_6_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_6_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_6_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_6_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_6_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_6_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_6_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_3_obuf_7_(
	.datain(vcc),
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
	.padio(debug_sevenseg_3[7]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_7_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_7_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_7_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_7_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_7_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_7_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_7_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_7_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_7_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_7_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_7_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_7_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_4_obuf_0_(
	.datain(vcc),
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
	.padio(debug_sevenseg_4[0]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_0_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_0_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_0_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_0_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_0_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_0_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_0_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_0_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_0_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_0_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_0_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_0_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_4_obuf_1_(
	.datain(gnd),
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
	.padio(debug_sevenseg_4[1]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_1_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_1_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_1_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_1_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_1_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_1_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_1_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_1_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_1_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_1_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_1_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_1_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_4_obuf_2_(
	.datain(gnd),
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
	.padio(debug_sevenseg_4[2]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_2_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_2_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_2_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_2_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_2_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_2_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_2_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_2_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_2_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_2_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_2_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_2_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_4_obuf_3_(
	.datain(gnd),
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
	.padio(debug_sevenseg_4[3]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_3_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_3_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_3_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_3_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_3_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_3_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_3_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_3_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_3_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_3_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_3_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_3_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_4_obuf_4_(
	.datain(gnd),
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
	.padio(debug_sevenseg_4[4]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_4_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_4_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_4_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_4_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_4_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_4_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_4_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_4_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_4_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_4_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_4_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_4_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_4_obuf_5_(
	.datain(gnd),
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
	.padio(debug_sevenseg_4[5]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_5_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_5_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_5_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_5_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_5_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_5_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_5_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_5_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_5_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_5_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_5_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_5_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_4_obuf_6_(
	.datain(gnd),
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
	.padio(debug_sevenseg_4[6]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_6_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_6_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_6_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_6_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_6_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_6_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_6_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_6_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_6_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_6_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_6_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_6_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_4_obuf_7_(
	.datain(vcc),
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
	.padio(debug_sevenseg_4[7]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_7_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_7_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_7_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_7_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_7_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_7_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_7_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_7_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_7_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_7_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_7_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_7_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_5_obuf_0_(
	.datain(vcc),
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
	.padio(debug_sevenseg_5[0]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_0_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_0_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_0_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_0_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_0_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_0_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_0_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_0_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_0_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_0_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_0_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_0_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_5_obuf_1_(
	.datain(gnd),
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
	.padio(debug_sevenseg_5[1]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_1_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_1_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_1_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_1_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_1_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_1_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_1_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_1_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_1_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_1_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_1_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_1_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_5_obuf_2_(
	.datain(gnd),
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
	.padio(debug_sevenseg_5[2]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_2_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_2_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_2_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_2_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_2_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_2_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_2_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_2_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_2_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_2_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_2_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_2_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_5_obuf_3_(
	.datain(gnd),
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
	.padio(debug_sevenseg_5[3]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_3_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_3_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_3_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_3_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_3_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_3_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_3_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_3_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_3_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_3_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_3_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_3_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_5_obuf_4_(
	.datain(gnd),
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
	.padio(debug_sevenseg_5[4]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_4_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_4_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_4_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_4_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_4_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_4_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_4_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_4_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_4_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_4_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_4_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_4_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_5_obuf_5_(
	.datain(gnd),
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
	.padio(debug_sevenseg_5[5]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_5_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_5_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_5_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_5_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_5_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_5_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_5_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_5_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_5_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_5_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_5_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_5_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_5_obuf_6_(
	.datain(gnd),
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
	.padio(debug_sevenseg_5[6]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_6_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_6_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_6_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_6_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_6_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_6_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_6_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_6_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_6_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_6_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_6_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_6_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_sevenseg_5_obuf_7_(
	.datain(vcc),
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
	.padio(debug_sevenseg_5[7]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_7_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_7_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_7_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_7_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_7_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_7_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_7_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_7_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_7_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_7_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_7_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_7_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_key[1]~I (
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
defparam \debug_key[1]~I .input_async_reset = "none";
defparam \debug_key[1]~I .input_power_up = "low";
defparam \debug_key[1]~I .input_register_mode = "none";
defparam \debug_key[1]~I .input_sync_reset = "none";
defparam \debug_key[1]~I .oe_async_reset = "none";
defparam \debug_key[1]~I .oe_power_up = "low";
defparam \debug_key[1]~I .oe_register_mode = "none";
defparam \debug_key[1]~I .oe_sync_reset = "none";
defparam \debug_key[1]~I .operation_mode = "input";
defparam \debug_key[1]~I .output_async_reset = "none";
defparam \debug_key[1]~I .output_power_up = "low";
defparam \debug_key[1]~I .output_register_mode = "none";
defparam \debug_key[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_key[2]~I (
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
defparam \debug_key[2]~I .input_async_reset = "none";
defparam \debug_key[2]~I .input_power_up = "low";
defparam \debug_key[2]~I .input_register_mode = "none";
defparam \debug_key[2]~I .input_sync_reset = "none";
defparam \debug_key[2]~I .oe_async_reset = "none";
defparam \debug_key[2]~I .oe_power_up = "low";
defparam \debug_key[2]~I .oe_register_mode = "none";
defparam \debug_key[2]~I .oe_sync_reset = "none";
defparam \debug_key[2]~I .operation_mode = "input";
defparam \debug_key[2]~I .output_async_reset = "none";
defparam \debug_key[2]~I .output_power_up = "low";
defparam \debug_key[2]~I .output_register_mode = "none";
defparam \debug_key[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_key[3]~I (
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
defparam \debug_key[3]~I .input_async_reset = "none";
defparam \debug_key[3]~I .input_power_up = "low";
defparam \debug_key[3]~I .input_register_mode = "none";
defparam \debug_key[3]~I .input_sync_reset = "none";
defparam \debug_key[3]~I .oe_async_reset = "none";
defparam \debug_key[3]~I .oe_power_up = "low";
defparam \debug_key[3]~I .oe_register_mode = "none";
defparam \debug_key[3]~I .oe_sync_reset = "none";
defparam \debug_key[3]~I .operation_mode = "input";
defparam \debug_key[3]~I .output_async_reset = "none";
defparam \debug_key[3]~I .output_power_up = "low";
defparam \debug_key[3]~I .output_register_mode = "none";
defparam \debug_key[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[0]~I (
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
defparam \debug_switch[0]~I .input_async_reset = "none";
defparam \debug_switch[0]~I .input_power_up = "low";
defparam \debug_switch[0]~I .input_register_mode = "none";
defparam \debug_switch[0]~I .input_sync_reset = "none";
defparam \debug_switch[0]~I .oe_async_reset = "none";
defparam \debug_switch[0]~I .oe_power_up = "low";
defparam \debug_switch[0]~I .oe_register_mode = "none";
defparam \debug_switch[0]~I .oe_sync_reset = "none";
defparam \debug_switch[0]~I .operation_mode = "input";
defparam \debug_switch[0]~I .output_async_reset = "none";
defparam \debug_switch[0]~I .output_power_up = "low";
defparam \debug_switch[0]~I .output_register_mode = "none";
defparam \debug_switch[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[1]~I (
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
defparam \debug_switch[1]~I .input_async_reset = "none";
defparam \debug_switch[1]~I .input_power_up = "low";
defparam \debug_switch[1]~I .input_register_mode = "none";
defparam \debug_switch[1]~I .input_sync_reset = "none";
defparam \debug_switch[1]~I .oe_async_reset = "none";
defparam \debug_switch[1]~I .oe_power_up = "low";
defparam \debug_switch[1]~I .oe_register_mode = "none";
defparam \debug_switch[1]~I .oe_sync_reset = "none";
defparam \debug_switch[1]~I .operation_mode = "input";
defparam \debug_switch[1]~I .output_async_reset = "none";
defparam \debug_switch[1]~I .output_power_up = "low";
defparam \debug_switch[1]~I .output_register_mode = "none";
defparam \debug_switch[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[2]~I (
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
defparam \debug_switch[2]~I .input_async_reset = "none";
defparam \debug_switch[2]~I .input_power_up = "low";
defparam \debug_switch[2]~I .input_register_mode = "none";
defparam \debug_switch[2]~I .input_sync_reset = "none";
defparam \debug_switch[2]~I .oe_async_reset = "none";
defparam \debug_switch[2]~I .oe_power_up = "low";
defparam \debug_switch[2]~I .oe_register_mode = "none";
defparam \debug_switch[2]~I .oe_sync_reset = "none";
defparam \debug_switch[2]~I .operation_mode = "input";
defparam \debug_switch[2]~I .output_async_reset = "none";
defparam \debug_switch[2]~I .output_power_up = "low";
defparam \debug_switch[2]~I .output_register_mode = "none";
defparam \debug_switch[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[3]~I (
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
defparam \debug_switch[3]~I .input_async_reset = "none";
defparam \debug_switch[3]~I .input_power_up = "low";
defparam \debug_switch[3]~I .input_register_mode = "none";
defparam \debug_switch[3]~I .input_sync_reset = "none";
defparam \debug_switch[3]~I .oe_async_reset = "none";
defparam \debug_switch[3]~I .oe_power_up = "low";
defparam \debug_switch[3]~I .oe_register_mode = "none";
defparam \debug_switch[3]~I .oe_sync_reset = "none";
defparam \debug_switch[3]~I .operation_mode = "input";
defparam \debug_switch[3]~I .output_async_reset = "none";
defparam \debug_switch[3]~I .output_power_up = "low";
defparam \debug_switch[3]~I .output_register_mode = "none";
defparam \debug_switch[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[4]~I (
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
defparam \debug_switch[4]~I .input_async_reset = "none";
defparam \debug_switch[4]~I .input_power_up = "low";
defparam \debug_switch[4]~I .input_register_mode = "none";
defparam \debug_switch[4]~I .input_sync_reset = "none";
defparam \debug_switch[4]~I .oe_async_reset = "none";
defparam \debug_switch[4]~I .oe_power_up = "low";
defparam \debug_switch[4]~I .oe_register_mode = "none";
defparam \debug_switch[4]~I .oe_sync_reset = "none";
defparam \debug_switch[4]~I .operation_mode = "input";
defparam \debug_switch[4]~I .output_async_reset = "none";
defparam \debug_switch[4]~I .output_power_up = "low";
defparam \debug_switch[4]~I .output_register_mode = "none";
defparam \debug_switch[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[5]~I (
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
defparam \debug_switch[5]~I .input_async_reset = "none";
defparam \debug_switch[5]~I .input_power_up = "low";
defparam \debug_switch[5]~I .input_register_mode = "none";
defparam \debug_switch[5]~I .input_sync_reset = "none";
defparam \debug_switch[5]~I .oe_async_reset = "none";
defparam \debug_switch[5]~I .oe_power_up = "low";
defparam \debug_switch[5]~I .oe_register_mode = "none";
defparam \debug_switch[5]~I .oe_sync_reset = "none";
defparam \debug_switch[5]~I .operation_mode = "input";
defparam \debug_switch[5]~I .output_async_reset = "none";
defparam \debug_switch[5]~I .output_power_up = "low";
defparam \debug_switch[5]~I .output_register_mode = "none";
defparam \debug_switch[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[6]~I (
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
defparam \debug_switch[6]~I .input_async_reset = "none";
defparam \debug_switch[6]~I .input_power_up = "low";
defparam \debug_switch[6]~I .input_register_mode = "none";
defparam \debug_switch[6]~I .input_sync_reset = "none";
defparam \debug_switch[6]~I .oe_async_reset = "none";
defparam \debug_switch[6]~I .oe_power_up = "low";
defparam \debug_switch[6]~I .oe_register_mode = "none";
defparam \debug_switch[6]~I .oe_sync_reset = "none";
defparam \debug_switch[6]~I .operation_mode = "input";
defparam \debug_switch[6]~I .output_async_reset = "none";
defparam \debug_switch[6]~I .output_power_up = "low";
defparam \debug_switch[6]~I .output_register_mode = "none";
defparam \debug_switch[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[7]~I (
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
defparam \debug_switch[7]~I .input_async_reset = "none";
defparam \debug_switch[7]~I .input_power_up = "low";
defparam \debug_switch[7]~I .input_register_mode = "none";
defparam \debug_switch[7]~I .input_sync_reset = "none";
defparam \debug_switch[7]~I .oe_async_reset = "none";
defparam \debug_switch[7]~I .oe_power_up = "low";
defparam \debug_switch[7]~I .oe_register_mode = "none";
defparam \debug_switch[7]~I .oe_sync_reset = "none";
defparam \debug_switch[7]~I .operation_mode = "input";
defparam \debug_switch[7]~I .output_async_reset = "none";
defparam \debug_switch[7]~I .output_power_up = "low";
defparam \debug_switch[7]~I .output_register_mode = "none";
defparam \debug_switch[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[8]~I (
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
defparam \debug_switch[8]~I .input_async_reset = "none";
defparam \debug_switch[8]~I .input_power_up = "low";
defparam \debug_switch[8]~I .input_register_mode = "none";
defparam \debug_switch[8]~I .input_sync_reset = "none";
defparam \debug_switch[8]~I .oe_async_reset = "none";
defparam \debug_switch[8]~I .oe_power_up = "low";
defparam \debug_switch[8]~I .oe_register_mode = "none";
defparam \debug_switch[8]~I .oe_sync_reset = "none";
defparam \debug_switch[8]~I .operation_mode = "input";
defparam \debug_switch[8]~I .output_async_reset = "none";
defparam \debug_switch[8]~I .output_power_up = "low";
defparam \debug_switch[8]~I .output_register_mode = "none";
defparam \debug_switch[8]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[9]~I (
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
defparam \debug_switch[9]~I .input_async_reset = "none";
defparam \debug_switch[9]~I .input_power_up = "low";
defparam \debug_switch[9]~I .input_register_mode = "none";
defparam \debug_switch[9]~I .input_sync_reset = "none";
defparam \debug_switch[9]~I .oe_async_reset = "none";
defparam \debug_switch[9]~I .oe_power_up = "low";
defparam \debug_switch[9]~I .oe_register_mode = "none";
defparam \debug_switch[9]~I .oe_sync_reset = "none";
defparam \debug_switch[9]~I .operation_mode = "input";
defparam \debug_switch[9]~I .output_async_reset = "none";
defparam \debug_switch[9]~I .output_power_up = "low";
defparam \debug_switch[9]~I .output_register_mode = "none";
defparam \debug_switch[9]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[10]~I (
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
defparam \debug_switch[10]~I .input_async_reset = "none";
defparam \debug_switch[10]~I .input_power_up = "low";
defparam \debug_switch[10]~I .input_register_mode = "none";
defparam \debug_switch[10]~I .input_sync_reset = "none";
defparam \debug_switch[10]~I .oe_async_reset = "none";
defparam \debug_switch[10]~I .oe_power_up = "low";
defparam \debug_switch[10]~I .oe_register_mode = "none";
defparam \debug_switch[10]~I .oe_sync_reset = "none";
defparam \debug_switch[10]~I .operation_mode = "input";
defparam \debug_switch[10]~I .output_async_reset = "none";
defparam \debug_switch[10]~I .output_power_up = "low";
defparam \debug_switch[10]~I .output_register_mode = "none";
defparam \debug_switch[10]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[11]~I (
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
defparam \debug_switch[11]~I .input_async_reset = "none";
defparam \debug_switch[11]~I .input_power_up = "low";
defparam \debug_switch[11]~I .input_register_mode = "none";
defparam \debug_switch[11]~I .input_sync_reset = "none";
defparam \debug_switch[11]~I .oe_async_reset = "none";
defparam \debug_switch[11]~I .oe_power_up = "low";
defparam \debug_switch[11]~I .oe_register_mode = "none";
defparam \debug_switch[11]~I .oe_sync_reset = "none";
defparam \debug_switch[11]~I .operation_mode = "input";
defparam \debug_switch[11]~I .output_async_reset = "none";
defparam \debug_switch[11]~I .output_power_up = "low";
defparam \debug_switch[11]~I .output_register_mode = "none";
defparam \debug_switch[11]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[12]~I (
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
defparam \debug_switch[12]~I .input_async_reset = "none";
defparam \debug_switch[12]~I .input_power_up = "low";
defparam \debug_switch[12]~I .input_register_mode = "none";
defparam \debug_switch[12]~I .input_sync_reset = "none";
defparam \debug_switch[12]~I .oe_async_reset = "none";
defparam \debug_switch[12]~I .oe_power_up = "low";
defparam \debug_switch[12]~I .oe_register_mode = "none";
defparam \debug_switch[12]~I .oe_sync_reset = "none";
defparam \debug_switch[12]~I .operation_mode = "input";
defparam \debug_switch[12]~I .output_async_reset = "none";
defparam \debug_switch[12]~I .output_power_up = "low";
defparam \debug_switch[12]~I .output_register_mode = "none";
defparam \debug_switch[12]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[13]~I (
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
defparam \debug_switch[13]~I .input_async_reset = "none";
defparam \debug_switch[13]~I .input_power_up = "low";
defparam \debug_switch[13]~I .input_register_mode = "none";
defparam \debug_switch[13]~I .input_sync_reset = "none";
defparam \debug_switch[13]~I .oe_async_reset = "none";
defparam \debug_switch[13]~I .oe_power_up = "low";
defparam \debug_switch[13]~I .oe_register_mode = "none";
defparam \debug_switch[13]~I .oe_sync_reset = "none";
defparam \debug_switch[13]~I .operation_mode = "input";
defparam \debug_switch[13]~I .output_async_reset = "none";
defparam \debug_switch[13]~I .output_power_up = "low";
defparam \debug_switch[13]~I .output_register_mode = "none";
defparam \debug_switch[13]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[14]~I (
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
defparam \debug_switch[14]~I .input_async_reset = "none";
defparam \debug_switch[14]~I .input_power_up = "low";
defparam \debug_switch[14]~I .input_register_mode = "none";
defparam \debug_switch[14]~I .input_sync_reset = "none";
defparam \debug_switch[14]~I .oe_async_reset = "none";
defparam \debug_switch[14]~I .oe_power_up = "low";
defparam \debug_switch[14]~I .oe_register_mode = "none";
defparam \debug_switch[14]~I .oe_sync_reset = "none";
defparam \debug_switch[14]~I .operation_mode = "input";
defparam \debug_switch[14]~I .output_async_reset = "none";
defparam \debug_switch[14]~I .output_power_up = "low";
defparam \debug_switch[14]~I .output_register_mode = "none";
defparam \debug_switch[14]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[15]~I (
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
defparam \debug_switch[15]~I .input_async_reset = "none";
defparam \debug_switch[15]~I .input_power_up = "low";
defparam \debug_switch[15]~I .input_register_mode = "none";
defparam \debug_switch[15]~I .input_sync_reset = "none";
defparam \debug_switch[15]~I .oe_async_reset = "none";
defparam \debug_switch[15]~I .oe_power_up = "low";
defparam \debug_switch[15]~I .oe_register_mode = "none";
defparam \debug_switch[15]~I .oe_sync_reset = "none";
defparam \debug_switch[15]~I .operation_mode = "input";
defparam \debug_switch[15]~I .output_async_reset = "none";
defparam \debug_switch[15]~I .output_power_up = "low";
defparam \debug_switch[15]~I .output_register_mode = "none";
defparam \debug_switch[15]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[16]~I (
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
defparam \debug_switch[16]~I .input_async_reset = "none";
defparam \debug_switch[16]~I .input_power_up = "low";
defparam \debug_switch[16]~I .input_register_mode = "none";
defparam \debug_switch[16]~I .input_sync_reset = "none";
defparam \debug_switch[16]~I .oe_async_reset = "none";
defparam \debug_switch[16]~I .oe_power_up = "low";
defparam \debug_switch[16]~I .oe_register_mode = "none";
defparam \debug_switch[16]~I .oe_sync_reset = "none";
defparam \debug_switch[16]~I .operation_mode = "input";
defparam \debug_switch[16]~I .output_async_reset = "none";
defparam \debug_switch[16]~I .output_power_up = "low";
defparam \debug_switch[16]~I .output_register_mode = "none";
defparam \debug_switch[16]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[17]~I (
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
defparam \debug_switch[17]~I .input_async_reset = "none";
defparam \debug_switch[17]~I .input_power_up = "low";
defparam \debug_switch[17]~I .input_register_mode = "none";
defparam \debug_switch[17]~I .input_sync_reset = "none";
defparam \debug_switch[17]~I .oe_async_reset = "none";
defparam \debug_switch[17]~I .oe_power_up = "low";
defparam \debug_switch[17]~I .oe_register_mode = "none";
defparam \debug_switch[17]~I .oe_sync_reset = "none";
defparam \debug_switch[17]~I .operation_mode = "input";
defparam \debug_switch[17]~I .output_async_reset = "none";
defparam \debug_switch[17]~I .output_power_up = "low";
defparam \debug_switch[17]~I .output_register_mode = "none";
defparam \debug_switch[17]~I .output_sync_reset = "none";
// synopsys translate_on

endmodule
