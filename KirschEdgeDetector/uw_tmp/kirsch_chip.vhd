-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

-- DATE "07/23/2014 13:12:24"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	kirsch_chip IS
    PORT (
	i_clock : IN std_logic;
	i_reset : IN std_logic;
	i_valid : IN std_logic;
	i_pixel : IN std_logic_vector(7 DOWNTO 0);
	o_valid : OUT std_logic;
	o_edge : OUT std_logic;
	o_dir : OUT std_logic_vector(2 DOWNTO 0);
	o_mode : OUT std_logic_vector(1 DOWNTO 0);
	o_row : OUT std_logic_vector(7 DOWNTO 0);
	debug_key : IN std_logic_vector(3 DOWNTO 1);
	debug_switch : IN std_logic_vector(17 DOWNTO 0);
	debug_led_red : OUT std_logic_vector(17 DOWNTO 0);
	debug_led_grn : OUT std_logic_vector(5 DOWNTO 0);
	debug_num_0 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_1 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_2 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_3 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_4 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_5 : OUT std_logic_vector(3 DOWNTO 0)
	);
END kirsch_chip;

ARCHITECTURE structure OF kirsch_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_i_reset : std_logic;
SIGNAL ww_i_valid : std_logic;
SIGNAL ww_i_pixel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_valid : std_logic;
SIGNAL ww_o_edge : std_logic;
SIGNAL ww_o_dir : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_row : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_key : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_debug_switch : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_red : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_grn : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug_num_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_5 : std_logic_vector(3 DOWNTO 0);
SIGNAL Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL i_clock_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL r17_12_a : std_logic;
SIGNAL r18_6_a : std_logic;
SIGNAL r18_5_a : std_logic;
SIGNAL x_r22_7_a : std_logic;
SIGNAL r18_3_a : std_logic;
SIGNAL r18_2_a : std_logic;
SIGNAL x_r22_4_a : std_logic;
SIGNAL x_r22_3_a : std_logic;
SIGNAL x_r22_1_a : std_logic;
SIGNAL x_r22_12_a : std_logic;
SIGNAL r18_9_a : std_logic;
SIGNAL x_r22_11_a : std_logic;
SIGNAL r18_7_a : std_logic;
SIGNAL r17_sub13_10i1_anx63795z1 : std_logic;
SIGNAL r17_sub13_10i1_ad_11_a : std_logic;
SIGNAL x_r11_7_a : std_logic;
SIGNAL r15_6_a : std_logic;
SIGNAL x_r11_5_a : std_logic;
SIGNAL x_r11_3_a : std_logic;
SIGNAL r15_2_a : std_logic;
SIGNAL modgen_counter_o_row_anx58250z5 : std_logic;
SIGNAL nx11673z2 : std_logic;
SIGNAL x_r12_7_a : std_logic;
SIGNAL x_r12_4_a : std_logic;
SIGNAL x_r12_1_a : std_logic;
SIGNAL x_r22_add12_8i1_anx37973z1 : std_logic;
SIGNAL x_r22_add12_8i1_anx39967z1 : std_logic;
SIGNAL x_r22_add12_8i1_anx40964z1 : std_logic;
SIGNAL x_r22_add12_8i1_anx43955z1 : std_logic;
SIGNAL x_r12_11_a : std_logic;
SIGNAL x_r12_10_a : std_logic;
SIGNAL x_r22_add12_8i1_anx63795z5 : std_logic;
SIGNAL x_r22_add12_8i1_anx62798z1 : std_logic;
SIGNAL x_r22_add12_8i1_anx63795z3 : std_logic;
SIGNAL x_r22_add12_8i1_anx63795z1 : std_logic;
SIGNAL x_r3_6_a : std_logic;
SIGNAL b_d1_2_a : std_logic;
SIGNAL r16_7_a : std_logic;
SIGNAL r16_5_a : std_logic;
SIGNAL r11_4_a : std_logic;
SIGNAL r16_3_a : std_logic;
SIGNAL r14_8_a : std_logic;
SIGNAL r13_6_a : std_logic;
SIGNAL r13_4_a : std_logic;
SIGNAL r14_3_a : std_logic;
SIGNAL r13_0_a : std_logic;
SIGNAL x_r12_add11_8i4_anx38970z1 : std_logic;
SIGNAL x_r12_add11_8i4_anx41961z1 : std_logic;
SIGNAL x_r12_add11_8i4_anx44952z1 : std_logic;
SIGNAL x_r12_add11_8i4_anx62798z3 : std_logic;
SIGNAL r14_10_a : std_logic;
SIGNAL x_r12_add11_8i4_anx62798z1 : std_logic;
SIGNAL x_r12_add11_8i4_anx23445z2 : std_logic;
SIGNAL x_r12_add11_8i4_anx23445z1 : std_logic;
SIGNAL g_6_a : std_logic;
SIGNAL r5_6_a : std_logic;
SIGNAL x_r5_6_a : std_logic;
SIGNAL x_r3_7n3s1f1_6_a : std_logic;
SIGNAL x_r5_5_a : std_logic;
SIGNAL r5_4_a : std_logic;
SIGNAL x_r5_4_a : std_logic;
SIGNAL x_r3_7n3s1f1_4_a : std_logic;
SIGNAL r5_1_a : std_logic;
SIGNAL x_r5_1_a : std_logic;
SIGNAL x_r3_7n3s1f1_1_a : std_logic;
SIGNAL r9_7_a : std_logic;
SIGNAL r10_5_a : std_logic;
SIGNAL r10_4_a : std_logic;
SIGNAL r10_2_a : std_logic;
SIGNAL r9_0_a : std_logic;
SIGNAL b_d1_add9_7i10_anx39967z1 : std_logic;
SIGNAL r12_7_a : std_logic;
SIGNAL r12_5_a : std_logic;
SIGNAL r12_2_a : std_logic;
SIGNAL r12_1_a : std_logic;
SIGNAL r16_add9_7i11_anx40964z1 : std_logic;
SIGNAL r16_add9_7i11_anx42958z1 : std_logic;
SIGNAL r16_add9_7i11_anx44952z1 : std_logic;
SIGNAL d_5_a : std_logic;
SIGNAL d_2_a : std_logic;
SIGNAL h_5_a : std_logic;
SIGNAL h_2_a : std_logic;
SIGNAL x_r6_8_a : std_logic;
SIGNAL x_r6_6_a : std_logic;
SIGNAL x_r6_5_a : std_logic;
SIGNAL x_r6_4_a : std_logic;
SIGNAL x_r6_3_a : std_logic;
SIGNAL x_r6_2_a : std_logic;
SIGNAL x_r6_1_a : std_logic;
SIGNAL r14_add10_8i3_anx40964z1 : std_logic;
SIGNAL r14_add10_8i3_anx45949z1 : std_logic;
SIGNAL nx51677z12 : std_logic;
SIGNAL r2_6n3s1f2_7_a : std_logic;
SIGNAL nx51677z14 : std_logic;
SIGNAL r2_6n3s1f2_6_a : std_logic;
SIGNAL nx51677z5 : std_logic;
SIGNAL r2_6n3s1f1_5_a : std_logic;
SIGNAL nx51677z6 : std_logic;
SIGNAL r2_6n3s1f1_4_a : std_logic;
SIGNAL nx51677z7 : std_logic;
SIGNAL r2_6n3s1f1_3_a : std_logic;
SIGNAL nx51677z8 : std_logic;
SIGNAL r2_6n3s1f1_2_a : std_logic;
SIGNAL nx51677z19 : std_logic;
SIGNAL r2_6n3s1f2_1_a : std_logic;
SIGNAL nx51677z10 : std_logic;
SIGNAL r2_6n3s1f1_0_a : std_logic;
SIGNAL r14_add10_8i3_anx23445z2 : std_logic;
SIGNAL r14_add10_8i3_anx23445z1 : std_logic;
SIGNAL nx20419z6 : std_logic;
SIGNAL nx34631z1 : std_logic;
SIGNAL nx31640z1 : std_logic;
SIGNAL i_5_a : std_logic;
SIGNAL i_2_a : std_logic;
SIGNAL x_r6_add9_8i2_anx38970z1 : std_logic;
SIGNAL x_r6_add9_8i2_anx39967z1 : std_logic;
SIGNAL x_r6_add9_8i2_anx40964z1 : std_logic;
SIGNAL x_r6_add9_8i2_anx41961z1 : std_logic;
SIGNAL x_r6_add9_8i2_anx42958z1 : std_logic;
SIGNAL x_r6_add9_8i2_anx43955z1 : std_logic;
SIGNAL x_r6_add9_8i2_anx45949z1 : std_logic;
SIGNAL we_0_a : std_logic;
SIGNAL we_1_a : std_logic;
SIGNAL we_2_a : std_logic;
SIGNAL r18_9_afeeder_combout : std_logic;
SIGNAL r18_7_afeeder_combout : std_logic;
SIGNAL r18_6_afeeder_combout : std_logic;
SIGNAL r18_5_afeeder_combout : std_logic;
SIGNAL r18_3_afeeder_combout : std_logic;
SIGNAL r18_2_afeeder_combout : std_logic;
SIGNAL r15_6_afeeder_combout : std_logic;
SIGNAL r15_2_afeeder_combout : std_logic;
SIGNAL x_r11_7_afeeder_combout : std_logic;
SIGNAL x_r11_5_afeeder_combout : std_logic;
SIGNAL x_r11_3_afeeder_combout : std_logic;
SIGNAL r5_6_afeeder_combout : std_logic;
SIGNAL r5_4_afeeder_combout : std_logic;
SIGNAL r5_1_afeeder_combout : std_logic;
SIGNAL x_r5_6_afeeder_combout : std_logic;
SIGNAL x_r5_5_afeeder_combout : std_logic;
SIGNAL x_r5_4_afeeder_combout : std_logic;
SIGNAL x_r5_1_afeeder_combout : std_logic;
SIGNAL r10_5_afeeder_combout : std_logic;
SIGNAL r10_4_afeeder_combout : std_logic;
SIGNAL r10_2_afeeder_combout : std_logic;
SIGNAL r12_7_afeeder_combout : std_logic;
SIGNAL r12_5_afeeder_combout : std_logic;
SIGNAL r12_2_afeeder_combout : std_logic;
SIGNAL r12_1_afeeder_combout : std_logic;
SIGNAL r9_0_afeeder_combout : std_logic;
SIGNAL r13_4_afeeder_combout : std_logic;
SIGNAL r9_7_afeeder_combout : std_logic;
SIGNAL i_clock_acombout : std_logic;
SIGNAL i_clock_aclkctrl_outclk : std_logic;
SIGNAL modgen_counter_o_row_anx58250z14 : std_logic;
SIGNAL modgen_counter_o_row_anx52268z1 : std_logic;
SIGNAL i_reset_acombout : std_logic;
SIGNAL modgen_counter_col_anx51271z1 : std_logic;
SIGNAL i_valid_acombout : std_logic;
SIGNAL vBit_1_a : std_logic;
SIGNAL nx40914z1 : std_logic;
SIGNAL modgen_counter_col_anx58250z15 : std_logic;
SIGNAL modgen_counter_col_anx58250z14 : std_logic;
SIGNAL modgen_counter_col_anx58250z12 : std_logic;
SIGNAL modgen_counter_col_anx53265z1 : std_logic;
SIGNAL modgen_counter_col_anx58250z11 : std_logic;
SIGNAL modgen_counter_col_anx58250z10 : std_logic;
SIGNAL modgen_counter_col_anx58250z8 : std_logic;
SIGNAL modgen_counter_col_anx55259z1 : std_logic;
SIGNAL modgen_counter_col_anx58250z7 : std_logic;
SIGNAL modgen_counter_col_anx58250z6 : std_logic;
SIGNAL modgen_counter_col_anx58250z4 : std_logic;
SIGNAL modgen_counter_col_anx57253z1 : std_logic;
SIGNAL modgen_counter_col_anx58250z3 : std_logic;
SIGNAL modgen_counter_col_anx58250z2 : std_logic;
SIGNAL modgen_counter_col_anx58250z1 : std_logic;
SIGNAL modgen_counter_col_anx1041z1 : std_logic;
SIGNAL modgen_counter_col_anx56256z1 : std_logic;
SIGNAL modgen_counter_col_anx58250z5 : std_logic;
SIGNAL nx17322z3 : std_logic;
SIGNAL vBit_2_a : std_logic;
SIGNAL modgen_counter_col_anx54262z1 : std_logic;
SIGNAL modgen_counter_col_anx58250z9 : std_logic;
SIGNAL modgen_counter_col_anx52268z1 : std_logic;
SIGNAL modgen_counter_col_anx58250z13 : std_logic;
SIGNAL nx17322z2 : std_logic;
SIGNAL nx17322z1 : std_logic;
SIGNAL modgen_counter_o_row_anx57253z3 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z13 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z12 : std_logic;
SIGNAL modgen_counter_o_row_anx53265z1 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z11 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z10 : std_logic;
SIGNAL modgen_counter_o_row_anx54262z1 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z9 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z8 : std_logic;
SIGNAL modgen_counter_o_row_anx55259z1 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z7 : std_logic;
SIGNAL nx20419z5 : std_logic;
SIGNAL nx20419z3 : std_logic;
SIGNAL nx20419z4 : std_logic;
SIGNAL nx20419z2 : std_logic;
SIGNAL nx20419z1 : std_logic;
SIGNAL validBit_0_a : std_logic;
SIGNAL validBit_1_a : std_logic;
SIGNAL validBit_2_a : std_logic;
SIGNAL validBit_3_a : std_logic;
SIGNAL validBit_4_a : std_logic;
SIGNAL validBit_5_a : std_logic;
SIGNAL validBit_6_a : std_logic;
SIGNAL validBit_7_a : std_logic;
SIGNAL o_valid_dup0 : std_logic;
SIGNAL nx51677z1 : std_logic;
SIGNAL nx28524z1_a_wirecell_combout : std_logic;
SIGNAL state_1_a : std_logic;
SIGNAL state_2_a : std_logic;
SIGNAL state_2_a_wirecell_combout : std_logic;
SIGNAL nx28524z1 : std_logic;
SIGNAL nx20492z1 : std_logic;
SIGNAL nx36625z2 : std_logic;
SIGNAL c_7_a : std_logic;
SIGNAL b_7_a : std_logic;
SIGNAL e_7_afeeder_combout : std_logic;
SIGNAL e_7_a : std_logic;
SIGNAL f_7_a : std_logic;
SIGNAL nx51677z3 : std_logic;
SIGNAL nx51677z2 : std_logic;
SIGNAL r2_6n3s1f1_7_a : std_logic;
SIGNAL nx35628z1 : std_logic;
SIGNAL d_6_a : std_logic;
SIGNAL nx21489z1 : std_logic;
SIGNAL c_6_a : std_logic;
SIGNAL b_6_a : std_logic;
SIGNAL i_6_afeeder_combout : std_logic;
SIGNAL i_6_a : std_logic;
SIGNAL h_6_a : std_logic;
SIGNAL e_6_a : std_logic;
SIGNAL f_6_a : std_logic;
SIGNAL nx51677z4 : std_logic;
SIGNAL r2_6n3s1f1_6_a : std_logic;
SIGNAL nx22486z1 : std_logic;
SIGNAL c_5_a : std_logic;
SIGNAL b_5_a : std_logic;
SIGNAL a_5_a : std_logic;
SIGNAL nx51677z11 : std_logic;
SIGNAL e_5_a : std_logic;
SIGNAL nx51677z13 : std_logic;
SIGNAL nx51677z15 : std_logic;
SIGNAL f_5_a : std_logic;
SIGNAL g_5_afeeder_combout : std_logic;
SIGNAL g_5_a : std_logic;
SIGNAL r2_6n3s1f2_5_a : std_logic;
SIGNAL nx23483z1 : std_logic;
SIGNAL c_4_a : std_logic;
SIGNAL b_4_a : std_logic;
SIGNAL a_4_a : std_logic;
SIGNAL e_4_a : std_logic;
SIGNAL nx51677z16 : std_logic;
SIGNAL r2_6n3s1f2_4_a : std_logic;
SIGNAL e_3_a : std_logic;
SIGNAL f_3_a : std_logic;
SIGNAL g_3_afeeder_combout : std_logic;
SIGNAL g_3_a : std_logic;
SIGNAL nx51677z17 : std_logic;
SIGNAL r2_6n3s1f2_3_a : std_logic;
SIGNAL e_2_afeeder_combout : std_logic;
SIGNAL e_2_a : std_logic;
SIGNAL f_2_a : std_logic;
SIGNAL g_2_afeeder_combout : std_logic;
SIGNAL g_2_a : std_logic;
SIGNAL nx25477z1 : std_logic;
SIGNAL c_2_a : std_logic;
SIGNAL nx51677z18 : std_logic;
SIGNAL r2_6n3s1f2_2_a : std_logic;
SIGNAL nx30643z1 : std_logic;
SIGNAL d_1_a : std_logic;
SIGNAL nx26474z1 : std_logic;
SIGNAL c_1_a : std_logic;
SIGNAL b_1_a : std_logic;
SIGNAL e_1_a : std_logic;
SIGNAL f_1_a : std_logic;
SIGNAL i_1_a : std_logic;
SIGNAL h_1_a : std_logic;
SIGNAL nx51677z9 : std_logic;
SIGNAL r2_6n3s1f1_1_a : std_logic;
SIGNAL e_0_a : std_logic;
SIGNAL f_0_a : std_logic;
SIGNAL g_0_a : std_logic;
SIGNAL nx51677z20 : std_logic;
SIGNAL r2_6n3s1f2_0_a : std_logic;
SIGNAL r2_add8_6i49_anx44952z22 : std_logic;
SIGNAL r2_add8_6i49_anx44952z19 : std_logic;
SIGNAL r2_add8_6i49_anx44952z16 : std_logic;
SIGNAL r2_add8_6i49_anx44952z13 : std_logic;
SIGNAL r2_add8_6i49_anx44952z10 : std_logic;
SIGNAL r2_add8_6i49_anx44952z7 : std_logic;
SIGNAL r2_add8_6i49_anx44952z4 : std_logic;
SIGNAL r2_add8_6i49_anx23445z2 : std_logic;
SIGNAL r2_add8_6i49_anx23445z1 : std_logic;
SIGNAL nx250z1 : std_logic;
SIGNAL r13_8_a : std_logic;
SIGNAL r2_add8_6i49_anx44952z1 : std_logic;
SIGNAL r2_7_a : std_logic;
SIGNAL r2_add8_6i49_anx43955z1 : std_logic;
SIGNAL r9_6_afeeder_combout : std_logic;
SIGNAL r9_6_a : std_logic;
SIGNAL r2_add8_6i49_anx42958z1 : std_logic;
SIGNAL r2_5_afeeder_combout : std_logic;
SIGNAL r2_5_a : std_logic;
SIGNAL r2_add8_6i49_anx41961z1 : std_logic;
SIGNAL r2_4_afeeder_combout : std_logic;
SIGNAL r2_4_a : std_logic;
SIGNAL r2_add8_6i49_anx40964z1 : std_logic;
SIGNAL r9_3_afeeder_combout : std_logic;
SIGNAL r9_3_a : std_logic;
SIGNAL r2_add8_6i49_anx39967z1 : std_logic;
SIGNAL r9_2_afeeder_combout : std_logic;
SIGNAL r9_2_a : std_logic;
SIGNAL r2_add8_6i49_anx38970z1 : std_logic;
SIGNAL r9_1_afeeder_combout : std_logic;
SIGNAL r9_1_a : std_logic;
SIGNAL r2_add8_6i49_anx37973z1 : std_logic;
SIGNAL r2_0_afeeder_combout : std_logic;
SIGNAL r2_0_a : std_logic;
SIGNAL x_r6_add9_8i2_anx45949z25 : std_logic;
SIGNAL x_r6_add9_8i2_anx45949z22 : std_logic;
SIGNAL x_r6_add9_8i2_anx45949z19 : std_logic;
SIGNAL x_r6_add9_8i2_anx45949z16 : std_logic;
SIGNAL x_r6_add9_8i2_anx45949z13 : std_logic;
SIGNAL x_r6_add9_8i2_anx45949z10 : std_logic;
SIGNAL x_r6_add9_8i2_anx45949z7 : std_logic;
SIGNAL x_r6_add9_8i2_anx44952z1 : std_logic;
SIGNAL x_r6_7_a : std_logic;
SIGNAL r2_6_a : std_logic;
SIGNAL r2_3_a : std_logic;
SIGNAL r2_2_afeeder_combout : std_logic;
SIGNAL r2_2_a : std_logic;
SIGNAL r2_1_afeeder_combout : std_logic;
SIGNAL r2_1_a : std_logic;
SIGNAL x_r6_add9_8i2_anx37973z1 : std_logic;
SIGNAL x_r6_0_a : std_logic;
SIGNAL r14_add10_8i3_anx46946z27 : std_logic;
SIGNAL r14_add10_8i3_anx46946z24 : std_logic;
SIGNAL r14_add10_8i3_anx46946z21 : std_logic;
SIGNAL r14_add10_8i3_anx46946z18 : std_logic;
SIGNAL r14_add10_8i3_anx46946z15 : std_logic;
SIGNAL r14_add10_8i3_anx46946z12 : std_logic;
SIGNAL r14_add10_8i3_anx46946z9 : std_logic;
SIGNAL r14_add10_8i3_anx44952z1 : std_logic;
SIGNAL nx16422z1 : std_logic;
SIGNAL r14_7_a : std_logic;
SIGNAL r14_add10_8i3_anx43955z1 : std_logic;
SIGNAL r14_6_a : std_logic;
SIGNAL r14_add10_8i3_anx42958z1 : std_logic;
SIGNAL r14_5_a : std_logic;
SIGNAL r14_add10_8i3_anx41961z1 : std_logic;
SIGNAL r14_4_a : std_logic;
SIGNAL r13_3_a : std_logic;
SIGNAL r14_add10_8i3_anx39967z1 : std_logic;
SIGNAL r14_2_a : std_logic;
SIGNAL r14_add10_8i3_anx38970z1 : std_logic;
SIGNAL r14_1_a : std_logic;
SIGNAL r14_add10_8i3_anx37973z1 : std_logic;
SIGNAL r14_0_a : std_logic;
SIGNAL x_r12_add11_8i4_anx62798z29 : std_logic;
SIGNAL x_r12_add11_8i4_anx62798z26 : std_logic;
SIGNAL x_r12_add11_8i4_anx62798z23 : std_logic;
SIGNAL x_r12_add11_8i4_anx62798z20 : std_logic;
SIGNAL x_r12_add11_8i4_anx62798z17 : std_logic;
SIGNAL x_r12_add11_8i4_anx62798z14 : std_logic;
SIGNAL x_r12_add11_8i4_anx62798z11 : std_logic;
SIGNAL x_r12_add11_8i4_anx62798z8 : std_logic;
SIGNAL x_r12_add11_8i4_anx45949z1 : std_logic;
SIGNAL nx58464z1 : std_logic;
SIGNAL x_r12_8_a : std_logic;
SIGNAL x_r12_add11_8i4_anx43955z1 : std_logic;
SIGNAL x_r12_6_a : std_logic;
SIGNAL x_r12_add11_8i4_anx42958z1 : std_logic;
SIGNAL x_r12_5_a : std_logic;
SIGNAL x_r12_add11_8i4_anx40964z1 : std_logic;
SIGNAL x_r12_3_a : std_logic;
SIGNAL x_r12_add11_8i4_anx39967z1 : std_logic;
SIGNAL x_r12_2_a : std_logic;
SIGNAL x_r12_add11_8i4_anx37973z1 : std_logic;
SIGNAL x_r12_0_a : std_logic;
SIGNAL x_r22_add12_8i1_anx63795z23 : std_logic;
SIGNAL x_r22_add12_8i1_anx63795z21 : std_logic;
SIGNAL x_r22_add12_8i1_anx63795z19 : std_logic;
SIGNAL x_r22_add12_8i1_anx63795z17 : std_logic;
SIGNAL x_r22_add12_8i1_anx63795z15 : std_logic;
SIGNAL x_r22_add12_8i1_anx63795z13 : std_logic;
SIGNAL x_r22_add12_8i1_anx63795z11 : std_logic;
SIGNAL x_r22_add12_8i1_anx44952z1 : std_logic;
SIGNAL nx65254z1 : std_logic;
SIGNAL x_r22_8_a : std_logic;
SIGNAL r5_3_afeeder_combout : std_logic;
SIGNAL nx24480z1 : std_logic;
SIGNAL c_3_a : std_logic;
SIGNAL b_3_a : std_logic;
SIGNAL f_4_a : std_logic;
SIGNAL g_4_a : std_logic;
SIGNAL b_2_a : std_logic;
SIGNAL g_1_a : std_logic;
SIGNAL ix7380z18833_anx100z22 : std_logic;
SIGNAL ix7380z18833_anx100z19 : std_logic;
SIGNAL ix7380z18833_anx100z16 : std_logic;
SIGNAL ix7380z18833_anx100z13 : std_logic;
SIGNAL ix7380z18833_anx100z10 : std_logic;
SIGNAL ix7380z18833_anx100z7 : std_logic;
SIGNAL ix7380z18833_anx100z4 : std_logic;
SIGNAL ix7380z18833_anx100z1 : std_logic;
SIGNAL nx7380z1 : std_logic;
SIGNAL r5_3_a : std_logic;
SIGNAL x_r5_3_afeeder_combout : std_logic;
SIGNAL nx27471z1 : std_logic;
SIGNAL c_0_a : std_logic;
SIGNAL ix27953z18832_anx100z22 : std_logic;
SIGNAL ix27953z18832_anx100z19 : std_logic;
SIGNAL ix27953z18832_anx100z16 : std_logic;
SIGNAL ix27953z18832_anx100z13 : std_logic;
SIGNAL ix27953z18832_anx100z10 : std_logic;
SIGNAL ix27953z18832_anx100z7 : std_logic;
SIGNAL ix27953z18832_anx100z4 : std_logic;
SIGNAL ix27953z18832_anx100z1 : std_logic;
SIGNAL nx27953z1 : std_logic;
SIGNAL x_r5_3_a : std_logic;
SIGNAL x_r3_7n3s1f1_3_a : std_logic;
SIGNAL r5_2_afeeder_combout : std_logic;
SIGNAL r5_2_a : std_logic;
SIGNAL x_r5_2_afeeder_combout : std_logic;
SIGNAL x_r5_2_a : std_logic;
SIGNAL x_r3_7n3s1f1_2_a : std_logic;
SIGNAL x_r5_0_afeeder_combout : std_logic;
SIGNAL x_r5_0_a : std_logic;
SIGNAL r5_0_afeeder_combout : std_logic;
SIGNAL b_0_a : std_logic;
SIGNAL r5_0_a : std_logic;
SIGNAL x_r3_7n3s1f1_0_a : std_logic;
SIGNAL x_r3_add9_7i9_anx45949z24 : std_logic;
SIGNAL x_r3_add9_7i9_anx45949z21 : std_logic;
SIGNAL x_r3_add9_7i9_anx45949z18 : std_logic;
SIGNAL x_r3_add9_7i9_anx45949z15 : std_logic;
SIGNAL x_r3_add9_7i9_anx41961z1 : std_logic;
SIGNAL nx56415z1 : std_logic;
SIGNAL x_r3_4_a : std_logic;
SIGNAL r15_4_afeeder_combout : std_logic;
SIGNAL r9_4_afeeder_combout : std_logic;
SIGNAL r9_4_a : std_logic;
SIGNAL a_3_a : std_logic;
SIGNAL r10_3_afeeder_combout : std_logic;
SIGNAL nx32637z1 : std_logic;
SIGNAL d_3_a : std_logic;
SIGNAL a_7_a : std_logic;
SIGNAL nx33634z1 : std_logic;
SIGNAL d_4_a : std_logic;
SIGNAL a_2_a : std_logic;
SIGNAL a_1_a : std_logic;
SIGNAL a_0_a : std_logic;
SIGNAL ix48448z18833_anx100z22 : std_logic;
SIGNAL ix48448z18833_anx100z19 : std_logic;
SIGNAL ix48448z18833_anx100z16 : std_logic;
SIGNAL ix48448z18833_anx100z13 : std_logic;
SIGNAL ix48448z18833_anx100z10 : std_logic;
SIGNAL ix48448z18833_anx100z7 : std_logic;
SIGNAL ix48448z18833_anx100z4 : std_logic;
SIGNAL ix48448z18833_anx100z1 : std_logic;
SIGNAL r10_3_a : std_logic;
SIGNAL r10_1_afeeder_combout : std_logic;
SIGNAL r10_1_a : std_logic;
SIGNAL r10_0_afeeder_combout : std_logic;
SIGNAL nx29646z1 : std_logic;
SIGNAL d_0_a : std_logic;
SIGNAL r10_0_a : std_logic;
SIGNAL b_d1_add9_7i10_anx45949z24 : std_logic;
SIGNAL b_d1_add9_7i10_anx45949z21 : std_logic;
SIGNAL b_d1_add9_7i10_anx45949z18 : std_logic;
SIGNAL b_d1_add9_7i10_anx45949z15 : std_logic;
SIGNAL b_d1_add9_7i10_anx41961z1 : std_logic;
SIGNAL b_d1_4_a : std_logic;
SIGNAL r9_8_afeeder_combout : std_logic;
SIGNAL r9_8_a : std_logic;
SIGNAL r10_7_afeeder_combout : std_logic;
SIGNAL nx36625z1 : std_logic;
SIGNAL d_7_a : std_logic;
SIGNAL r10_7_a : std_logic;
SIGNAL a_6_a : std_logic;
SIGNAL r10_6_afeeder_combout : std_logic;
SIGNAL r10_6_a : std_logic;
SIGNAL r9_5_afeeder_combout : std_logic;
SIGNAL r9_5_a : std_logic;
SIGNAL b_d1_add9_7i10_anx45949z12 : std_logic;
SIGNAL b_d1_add9_7i10_anx45949z9 : std_logic;
SIGNAL b_d1_add9_7i10_anx45949z6 : std_logic;
SIGNAL b_d1_add9_7i10_anx45949z3 : std_logic;
SIGNAL b_d1_add9_7i10_anx23445z2 : std_logic;
SIGNAL b_d1_add9_7i10_anx23445z1 : std_logic;
SIGNAL b_d1_9_a : std_logic;
SIGNAL g_7_a : std_logic;
SIGNAL r5_7_afeeder_combout : std_logic;
SIGNAL r5_7_a : std_logic;
SIGNAL x_r5_7_afeeder_combout : std_logic;
SIGNAL x_r5_7_a : std_logic;
SIGNAL x_r3_7n3s1f1_7_a : std_logic;
SIGNAL r5_5_afeeder_combout : std_logic;
SIGNAL r5_5_a : std_logic;
SIGNAL x_r3_7n3s1f1_5_a : std_logic;
SIGNAL x_r3_add9_7i9_anx45949z12 : std_logic;
SIGNAL x_r3_add9_7i9_anx45949z9 : std_logic;
SIGNAL x_r3_add9_7i9_anx45949z6 : std_logic;
SIGNAL x_r3_add9_7i9_anx45949z3 : std_logic;
SIGNAL x_r3_add9_7i9_anx23445z2 : std_logic;
SIGNAL x_r3_add9_7i9_anx23445z1 : std_logic;
SIGNAL x_r3_9_a : std_logic;
SIGNAL x_r3_add9_7i9_anx45949z1 : std_logic;
SIGNAL x_r3_8_a : std_logic;
SIGNAL x_r3_add9_7i9_anx44952z1 : std_logic;
SIGNAL x_r3_7_a : std_logic;
SIGNAL b_d1_add9_7i10_anx43955z1 : std_logic;
SIGNAL b_d1_6_a : std_logic;
SIGNAL x_r3_add9_7i9_anx42958z1 : std_logic;
SIGNAL x_r3_5_a : std_logic;
SIGNAL b_d1_add9_7i10_anx40964z1 : std_logic;
SIGNAL b_d1_3_a : std_logic;
SIGNAL x_r3_add9_7i9_anx39967z1 : std_logic;
SIGNAL x_r3_2_a : std_logic;
SIGNAL x_r3_add9_7i9_anx38970z1 : std_logic;
SIGNAL x_r3_1_afeeder_combout : std_logic;
SIGNAL x_r3_1_a : std_logic;
SIGNAL x_r3_add9_7i9_anx37973z1 : std_logic;
SIGNAL x_r3_0_a : std_logic;
SIGNAL ix23013z52805_anx100z28 : std_logic;
SIGNAL ix23013z52805_anx100z25 : std_logic;
SIGNAL ix23013z52805_anx100z22 : std_logic;
SIGNAL ix23013z52805_anx100z19 : std_logic;
SIGNAL ix23013z52805_anx100z16 : std_logic;
SIGNAL ix23013z52805_anx100z13 : std_logic;
SIGNAL ix23013z52805_anx100z10 : std_logic;
SIGNAL ix23013z52805_anx100z7 : std_logic;
SIGNAL ix23013z52805_anx100z4 : std_logic;
SIGNAL ix23013z52805_anx100z1 : std_logic;
SIGNAL r15_4_a : std_logic;
SIGNAL r18_4_afeeder_combout : std_logic;
SIGNAL x_r11_4_afeeder_combout : std_logic;
SIGNAL r12_4_afeeder_combout : std_logic;
SIGNAL i_4_afeeder_combout : std_logic;
SIGNAL i_4_a : std_logic;
SIGNAL h_4_afeeder_combout : std_logic;
SIGNAL h_4_a : std_logic;
SIGNAL i_7_afeeder_combout : std_logic;
SIGNAL i_7_a : std_logic;
SIGNAL h_7_afeeder_combout : std_logic;
SIGNAL h_7_a : std_logic;
SIGNAL i_3_a : std_logic;
SIGNAL h_3_a : std_logic;
SIGNAL i_0_a : std_logic;
SIGNAL h_0_a : std_logic;
SIGNAL ix250z18831_anx100z22 : std_logic;
SIGNAL ix250z18831_anx100z19 : std_logic;
SIGNAL ix250z18831_anx100z16 : std_logic;
SIGNAL ix250z18831_anx100z13 : std_logic;
SIGNAL ix250z18831_anx100z10 : std_logic;
SIGNAL ix250z18831_anx100z7 : std_logic;
SIGNAL ix250z18831_anx100z4 : std_logic;
SIGNAL ix250z18831_anx100z1 : std_logic;
SIGNAL r12_4_a : std_logic;
SIGNAL r12_3_afeeder_combout : std_logic;
SIGNAL r12_3_a : std_logic;
SIGNAL r13_2_afeeder_combout : std_logic;
SIGNAL r13_2_a : std_logic;
SIGNAL r13_1_afeeder_combout : std_logic;
SIGNAL r13_1_a : std_logic;
SIGNAL r12_0_afeeder_combout : std_logic;
SIGNAL r12_0_a : std_logic;
SIGNAL r16_add9_7i11_anx45949z24 : std_logic;
SIGNAL r16_add9_7i11_anx45949z21 : std_logic;
SIGNAL r16_add9_7i11_anx45949z18 : std_logic;
SIGNAL r16_add9_7i11_anx45949z15 : std_logic;
SIGNAL r16_add9_7i11_anx41961z1 : std_logic;
SIGNAL nx34104z1 : std_logic;
SIGNAL r16_4_a : std_logic;
SIGNAL r13_7_a : std_logic;
SIGNAL r12_6_afeeder_combout : std_logic;
SIGNAL r12_6_a : std_logic;
SIGNAL r13_5_a : std_logic;
SIGNAL r16_add9_7i11_anx45949z12 : std_logic;
SIGNAL r16_add9_7i11_anx45949z9 : std_logic;
SIGNAL r16_add9_7i11_anx45949z6 : std_logic;
SIGNAL r16_add9_7i11_anx45949z3 : std_logic;
SIGNAL r16_add9_7i11_anx23445z2 : std_logic;
SIGNAL r16_add9_7i11_anx23445z1 : std_logic;
SIGNAL r16_9_a : std_logic;
SIGNAL nx54873z1 : std_logic;
SIGNAL r11_9_a : std_logic;
SIGNAL r11_8_a : std_logic;
SIGNAL r11_7_a : std_logic;
SIGNAL r16_add9_7i11_anx43955z1 : std_logic;
SIGNAL r16_6_a : std_logic;
SIGNAL r11_5_a : std_logic;
SIGNAL x_r3_add9_7i9_anx40964z1 : std_logic;
SIGNAL r11_3_a : std_logic;
SIGNAL r11_2_a : std_logic;
SIGNAL r11_1_a : std_logic;
SIGNAL r16_add9_7i11_anx37973z1 : std_logic;
SIGNAL r16_0_a : std_logic;
SIGNAL ix42030z52807_anx100z28 : std_logic;
SIGNAL ix42030z52807_anx100z25 : std_logic;
SIGNAL ix42030z52807_anx100z22 : std_logic;
SIGNAL ix42030z52807_anx100z19 : std_logic;
SIGNAL ix42030z52807_anx100z16 : std_logic;
SIGNAL ix42030z52807_anx100z13 : std_logic;
SIGNAL ix42030z52807_anx100z10 : std_logic;
SIGNAL ix42030z52807_anx100z7 : std_logic;
SIGNAL ix42030z52807_anx100z4 : std_logic;
SIGNAL ix42030z52807_anx100z1 : std_logic;
SIGNAL nx42030z1 : std_logic;
SIGNAL x_r11_4_a : std_logic;
SIGNAL r15_9_afeeder_combout : std_logic;
SIGNAL r15_9_a : std_logic;
SIGNAL x_r11_9_afeeder_combout : std_logic;
SIGNAL x_r11_9_a : std_logic;
SIGNAL x_r11_8_afeeder_combout : std_logic;
SIGNAL r16_add9_7i11_anx45949z1 : std_logic;
SIGNAL r16_8_a : std_logic;
SIGNAL x_r11_8_a : std_logic;
SIGNAL r15_7_afeeder_combout : std_logic;
SIGNAL b_d1_add9_7i10_anx44952z1 : std_logic;
SIGNAL b_d1_7_a : std_logic;
SIGNAL r15_7_a : std_logic;
SIGNAL x_r3_add9_7i9_anx43955z1 : std_logic;
SIGNAL r11_6_a : std_logic;
SIGNAL x_r11_6_afeeder_combout : std_logic;
SIGNAL x_r11_6_a : std_logic;
SIGNAL r15_5_afeeder_combout : std_logic;
SIGNAL b_d1_add9_7i10_anx42958z1 : std_logic;
SIGNAL b_d1_5_a : std_logic;
SIGNAL r15_5_a : std_logic;
SIGNAL x_r3_3_a : std_logic;
SIGNAL r15_3_afeeder_combout : std_logic;
SIGNAL r15_3_a : std_logic;
SIGNAL x_r11_2_afeeder_combout : std_logic;
SIGNAL r16_add9_7i11_anx39967z1 : std_logic;
SIGNAL r16_2_a : std_logic;
SIGNAL x_r11_2_a : std_logic;
SIGNAL r15_1_afeeder_combout : std_logic;
SIGNAL b_d1_add9_7i10_anx38970z1 : std_logic;
SIGNAL b_d1_1_a : std_logic;
SIGNAL r15_1_a : std_logic;
SIGNAL r15_0_afeeder_combout : std_logic;
SIGNAL b_d1_add9_7i10_anx37973z1 : std_logic;
SIGNAL b_d1_0_a : std_logic;
SIGNAL r15_0_a : std_logic;
SIGNAL ix17266z52808_anx100z28 : std_logic;
SIGNAL ix17266z52808_anx100z25 : std_logic;
SIGNAL ix17266z52808_anx100z22 : std_logic;
SIGNAL ix17266z52808_anx100z19 : std_logic;
SIGNAL ix17266z52808_anx100z16 : std_logic;
SIGNAL ix17266z52808_anx100z13 : std_logic;
SIGNAL ix17266z52808_anx100z10 : std_logic;
SIGNAL ix17266z52808_anx100z7 : std_logic;
SIGNAL ix17266z52808_anx100z4 : std_logic;
SIGNAL ix17266z52808_anx100z1 : std_logic;
SIGNAL nx17266z1 : std_logic;
SIGNAL r18_4_a : std_logic;
SIGNAL x_r22_add12_8i1_anx42958z1 : std_logic;
SIGNAL x_r22_6_a : std_logic;
SIGNAL x_r22_add12_8i1_anx41961z1 : std_logic;
SIGNAL x_r22_5_a : std_logic;
SIGNAL r18_1_afeeder_combout : std_logic;
SIGNAL x_r11_1_afeeder_combout : std_logic;
SIGNAL r16_add9_7i11_anx38970z1 : std_logic;
SIGNAL r16_1_a : std_logic;
SIGNAL x_r11_1_a : std_logic;
SIGNAL r18_1_a : std_logic;
SIGNAL r18_0_afeeder_combout : std_logic;
SIGNAL r11_0_a : std_logic;
SIGNAL x_r11_0_afeeder_combout : std_logic;
SIGNAL x_r11_0_a : std_logic;
SIGNAL r18_0_a : std_logic;
SIGNAL x_r22_add12_8i1_anx38970z1 : std_logic;
SIGNAL x_r22_2_a : std_logic;
SIGNAL x_r22_0_a : std_logic;
SIGNAL r17_sub13_10i1_anx63795z11 : std_logic;
SIGNAL r17_sub13_10i1_anx63795z10 : std_logic;
SIGNAL r17_sub13_10i1_anx63795z9 : std_logic;
SIGNAL r17_sub13_10i1_anx63795z8 : std_logic;
SIGNAL r17_sub13_10i1_anx63795z7 : std_logic;
SIGNAL r17_sub13_10i1_anx63795z6 : std_logic;
SIGNAL r17_sub13_10i1_anx63795z5 : std_logic;
SIGNAL r17_sub13_10i1_ad_7_a : std_logic;
SIGNAL r17_8_a : std_logic;
SIGNAL r17_sub13_10i1_ad_6_a : std_logic;
SIGNAL r17_7_a : std_logic;
SIGNAL nx36874z2 : std_logic;
SIGNAL r2_8_afeeder_combout : std_logic;
SIGNAL r2_8_a : std_logic;
SIGNAL x_r6_add9_8i2_anx45949z4 : std_logic;
SIGNAL x_r6_add9_8i2_anx23445z2 : std_logic;
SIGNAL x_r6_add9_8i2_anx23445z1 : std_logic;
SIGNAL x_r6_9_a : std_logic;
SIGNAL r14_add10_8i3_anx46946z6 : std_logic;
SIGNAL r14_add10_8i3_anx46946z3 : std_logic;
SIGNAL r14_add10_8i3_anx46946z1 : std_logic;
SIGNAL r14_9_a : std_logic;
SIGNAL x_r12_add11_8i4_anx62798z5 : std_logic;
SIGNAL x_r12_add11_8i4_anx46946z1 : std_logic;
SIGNAL x_r12_9_a : std_logic;
SIGNAL x_r22_add12_8i1_anx63795z9 : std_logic;
SIGNAL x_r22_add12_8i1_anx63795z7 : std_logic;
SIGNAL x_r22_add12_8i1_anx46946z1 : std_logic;
SIGNAL x_r22_10_a : std_logic;
SIGNAL x_r22_add12_8i1_anx45949z1 : std_logic;
SIGNAL x_r22_9_a : std_logic;
SIGNAL r17_sub13_10i1_anx63795z4 : std_logic;
SIGNAL r17_sub13_10i1_anx63795z3 : std_logic;
SIGNAL r17_sub13_10i1_ad_9_a : std_logic;
SIGNAL r17_10_a : std_logic;
SIGNAL r15_8_afeeder_combout : std_logic;
SIGNAL b_d1_add9_7i10_anx45949z1 : std_logic;
SIGNAL b_d1_8_a : std_logic;
SIGNAL r15_8_a : std_logic;
SIGNAL r18_8_afeeder_combout : std_logic;
SIGNAL r18_8_a : std_logic;
SIGNAL r17_sub13_10i1_anx63795z2 : std_logic;
SIGNAL r17_sub13_10i1_ad_10_a : std_logic;
SIGNAL r17_11_a : std_logic;
SIGNAL nx36874z1 : std_logic;
SIGNAL r17_sub13_10i1_ad_8_a : std_logic;
SIGNAL r17_9_a : std_logic;
SIGNAL o_edge_dup0 : std_logic;
SIGNAL ix7380z18833_anx100z1_a_wirecell_combout : std_logic;
SIGNAL stage1_wNw_0_a : std_logic;
SIGNAL first_cw_9n1ss1_0_a : std_logic;
SIGNAL first_cw_0_a : std_logic;
SIGNAL final_dir_0_afeeder_combout : std_logic;
SIGNAL stage1_eSe_2_a : std_logic;
SIGNAL second_cw_9n2ss1_0_a : std_logic;
SIGNAL second_cw_0_a : std_logic;
SIGNAL final_dir_0_a : std_logic;
SIGNAL o_dir_dup0_0_a : std_logic;
SIGNAL first_cw_1_a : std_logic;
SIGNAL final_dir_1_afeeder_combout : std_logic;
SIGNAL second_cw_1_a : std_logic;
SIGNAL final_dir_1_a : std_logic;
SIGNAL o_dir_dup0_1_a : std_logic;
SIGNAL stage1_wNw_2_a : std_logic;
SIGNAL first_cw_2_afeeder_combout : std_logic;
SIGNAL stage1_nNe_2_a : std_logic;
SIGNAL first_cw_2_a : std_logic;
SIGNAL final_dir_2_afeeder_combout : std_logic;
SIGNAL second_cw_2_afeeder_combout : std_logic;
SIGNAL stage1_sSw_2_a : std_logic;
SIGNAL second_cw_2_a : std_logic;
SIGNAL final_dir_2_a : std_logic;
SIGNAL o_dir_dup0_2_a : std_logic;
SIGNAL modgen_counter_o_row_anx58250z6 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z4 : std_logic;
SIGNAL modgen_counter_o_row_anx57253z1 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z3 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z2 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z1 : std_logic;
SIGNAL modgen_counter_o_row_anx1041z1 : std_logic;
SIGNAL modgen_counter_o_row_anx51271z1 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z15 : std_logic;
SIGNAL nx11673z3 : std_logic;
SIGNAL nx11673z1 : std_logic;
SIGNAL nx47893z1 : std_logic;
SIGNAL o_mode_dup0_1_afeeder_combout : std_logic;
SIGNAL o_mode_dup0_1_a : std_logic;
SIGNAL nx16335z1_afeeder_combout : std_logic;
SIGNAL nx16335z1 : std_logic;
SIGNAL nx17332z1_afeeder_combout : std_logic;
SIGNAL nx17332z1 : std_logic;
SIGNAL nx18329z1_afeeder_combout : std_logic;
SIGNAL nx18329z1 : std_logic;
SIGNAL nx19326z1 : std_logic;
SIGNAL nx20323z1 : std_logic;
SIGNAL modgen_counter_o_row_anx56256z1 : std_logic;
SIGNAL nx21320z1_afeeder_combout : std_logic;
SIGNAL nx21320z1 : std_logic;
SIGNAL nx22317z1 : std_logic;
SIGNAL nx23314z1_afeeder_combout : std_logic;
SIGNAL nx23314z1 : std_logic;
SIGNAL Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL i_pixel_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_nx47893z1 : std_logic;
SIGNAL ALT_INV_nx28524z1 : std_logic;

BEGIN

ww_i_clock <= i_clock;
ww_i_reset <= i_reset;
ww_i_valid <= i_valid;
ww_i_pixel <= i_pixel;
o_valid <= ww_o_valid;
o_edge <= ww_o_edge;
o_dir <= ww_o_dir;
o_mode <= ww_o_mode;
o_row <= ww_o_row;
ww_debug_key <= debug_key;
ww_debug_switch <= debug_switch;
debug_led_red <= ww_debug_led_red;
debug_led_grn <= ww_debug_led_grn;
debug_num_0 <= ww_debug_num_0;
debug_num_1 <= ww_debug_num_1;
debug_num_2 <= ww_debug_num_2;
debug_num_3 <= ww_debug_num_3;
debug_num_4 <= ww_debug_num_4;
debug_num_5 <= ww_debug_num_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & 
i_pixel_acombout(1) & i_pixel_acombout(0));

Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus <= (modgen_counter_col_anx1041z1 & modgen_counter_col_anx58250z3 & modgen_counter_col_anx58250z5 & modgen_counter_col_anx58250z7 & modgen_counter_col_anx58250z9 & 
modgen_counter_col_anx58250z11 & modgen_counter_col_anx58250z13 & modgen_counter_col_anx58250z15);

Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(0) <= Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(1) <= Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(2) <= Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(3) <= Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(4) <= Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(5) <= Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(6) <= Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(7) <= Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & 
i_pixel_acombout(1) & i_pixel_acombout(0));

Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus <= (modgen_counter_col_anx1041z1 & modgen_counter_col_anx58250z3 & modgen_counter_col_anx58250z5 & modgen_counter_col_anx58250z7 & modgen_counter_col_anx58250z9 & 
modgen_counter_col_anx58250z11 & modgen_counter_col_anx58250z13 & modgen_counter_col_anx58250z15);

Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(0) <= Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(1) <= Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(2) <= Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(3) <= Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(4) <= Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(5) <= Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(6) <= Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(7) <= Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & 
i_pixel_acombout(1) & i_pixel_acombout(0));

Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus <= (modgen_counter_col_anx1041z1 & modgen_counter_col_anx58250z3 & modgen_counter_col_anx58250z5 & modgen_counter_col_anx58250z7 & modgen_counter_col_anx58250z9 & 
modgen_counter_col_anx58250z11 & modgen_counter_col_anx58250z13 & modgen_counter_col_anx58250z15);

Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(0) <= Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(1) <= Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(2) <= Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(3) <= Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(4) <= Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(5) <= Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(6) <= Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(7) <= Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

i_clock_aclkctrl_INCLK_bus <= (gnd & gnd & gnd & i_clock_acombout);
ALT_INV_nx47893z1 <= NOT nx47893z1;
ALT_INV_nx28524z1 <= NOT nx28524z1;

reg_r17_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r17_sub13_10i1_ad_11_a,
	ena => validBit_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r17_12_a);

reg_r18_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r18_6_afeeder_combout,
	sdata => x_r11_6_a,
	sload => ix17266z52808_anx100z1,
	ena => nx17266z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r18_6_a);

reg_r18_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r18_5_afeeder_combout,
	sdata => x_r11_5_a,
	sload => ix17266z52808_anx100z1,
	ena => nx17266z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r18_5_a);

reg_x_r22_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r22_add12_8i1_anx43955z1,
	ena => nx65254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r22_7_a);

reg_r18_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r18_3_afeeder_combout,
	sdata => x_r11_3_a,
	sload => ix17266z52808_anx100z1,
	ena => nx17266z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r18_3_a);

reg_r18_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r18_2_afeeder_combout,
	sdata => x_r11_2_a,
	sload => ix17266z52808_anx100z1,
	ena => nx17266z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r18_2_a);

reg_x_r22_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r22_add12_8i1_anx40964z1,
	ena => nx65254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r22_4_a);

reg_x_r22_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r22_add12_8i1_anx39967z1,
	ena => nx65254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r22_3_a);

reg_x_r22_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r22_add12_8i1_anx37973z1,
	ena => nx65254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r22_1_a);

reg_x_r22_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r22_add12_8i1_anx63795z1,
	ena => nx65254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r22_12_a);

reg_r18_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r18_9_afeeder_combout,
	sdata => x_r11_9_a,
	sload => ix17266z52808_anx100z1,
	ena => nx17266z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r18_9_a);

reg_x_r22_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r22_add12_8i1_anx62798z1,
	ena => nx65254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r22_11_a);

reg_r18_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r18_7_afeeder_combout,
	sdata => x_r11_7_a,
	sload => ix17266z52808_anx100z1,
	ena => nx17266z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r18_7_a);

r17_sub13_10i1_aix63795z52925 : cycloneii_lcell_comb
-- Equation(s):
-- r17_sub13_10i1_ad_10_a = (x_r22_11_a $ r18_8_a $ r17_sub13_10i1_anx63795z2) # GND
-- r17_sub13_10i1_anx63795z1 = CARRY(x_r22_11_a & r18_8_a & !r17_sub13_10i1_anx63795z2 # !x_r22_11_a & (r18_8_a # !r17_sub13_10i1_anx63795z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r22_11_a,
	datab => r18_8_a,
	datad => VCC,
	cin => r17_sub13_10i1_anx63795z2,
	combout => r17_sub13_10i1_ad_10_a,
	cout => r17_sub13_10i1_anx63795z1);

r17_sub13_10i1_aix63795z52923 : cycloneii_lcell_comb
-- Equation(s):
-- r17_sub13_10i1_ad_11_a = x_r22_12_a $ r17_sub13_10i1_anx63795z1 $ !r18_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r22_12_a,
	datad => r18_9_a,
	cin => r17_sub13_10i1_anx63795z1,
	combout => r17_sub13_10i1_ad_11_a);

reg_x_r11_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r11_7_afeeder_combout,
	sdata => r16_7_a,
	sload => ix42030z52807_anx100z1,
	ena => nx42030z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r11_7_a);

reg_r15_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r15_6_afeeder_combout,
	sdata => b_d1_6_a,
	sload => ix23013z52805_anx100z1,
	ena => validBit_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_6_a);

reg_x_r11_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r11_5_afeeder_combout,
	sdata => r16_5_a,
	sload => ix42030z52807_anx100z1,
	ena => nx42030z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r11_5_a);

reg_x_r11_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r11_3_afeeder_combout,
	sdata => r16_3_a,
	sload => ix42030z52807_anx100z1,
	ena => nx42030z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r11_3_a);

reg_r15_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r15_2_afeeder_combout,
	sdata => b_d1_2_a,
	sload => ix23013z52805_anx100z1,
	ena => validBit_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_2_a);

modgen_counter_o_row_areg_q_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx56256z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z5);

ix11673z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx11673z2 = modgen_counter_col_anx1041z1 # modgen_counter_col_anx58250z13 # modgen_counter_col_anx58250z3 # modgen_counter_col_anx58250z15

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_col_anx1041z1,
	datab => modgen_counter_col_anx58250z13,
	datac => modgen_counter_col_anx58250z3,
	datad => modgen_counter_col_anx58250z15,
	combout => nx11673z2);

reg_x_r12_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r12_add11_8i4_anx44952z1,
	ena => nx58464z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r12_7_a);

reg_x_r12_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r12_add11_8i4_anx41961z1,
	ena => nx58464z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r12_4_a);

reg_x_r12_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r12_add11_8i4_anx38970z1,
	ena => nx58464z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r12_1_a);

x_r22_add12_8i1_aix63795z52935 : cycloneii_lcell_comb
-- Equation(s):
-- x_r22_add12_8i1_anx37973z1 = x_r12_1_a & (x_r12_0_a $ VCC) # !x_r12_1_a & x_r12_0_a & VCC
-- x_r22_add12_8i1_anx63795z23 = CARRY(x_r12_1_a & x_r12_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_r12_1_a,
	datab => x_r12_0_a,
	datad => VCC,
	combout => x_r22_add12_8i1_anx37973z1,
	cout => x_r22_add12_8i1_anx63795z23);

x_r22_add12_8i1_aix63795z52933 : cycloneii_lcell_comb
-- Equation(s):
-- x_r22_add12_8i1_anx39967z1 = (x_r12_3_a $ x_r12_2_a $ !x_r22_add12_8i1_anx63795z21) # GND
-- x_r22_add12_8i1_anx63795z19 = CARRY(x_r12_3_a & (x_r12_2_a # !x_r22_add12_8i1_anx63795z21) # !x_r12_3_a & x_r12_2_a & !x_r22_add12_8i1_anx63795z21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r12_3_a,
	datab => x_r12_2_a,
	datad => VCC,
	cin => x_r22_add12_8i1_anx63795z21,
	combout => x_r22_add12_8i1_anx39967z1,
	cout => x_r22_add12_8i1_anx63795z19);

x_r22_add12_8i1_aix63795z52932 : cycloneii_lcell_comb
-- Equation(s):
-- x_r22_add12_8i1_anx40964z1 = x_r12_4_a & (x_r12_3_a & x_r22_add12_8i1_anx63795z19 & VCC # !x_r12_3_a & !x_r22_add12_8i1_anx63795z19) # !x_r12_4_a & (x_r12_3_a & !x_r22_add12_8i1_anx63795z19 # !x_r12_3_a & (x_r22_add12_8i1_anx63795z19 # GND))
-- x_r22_add12_8i1_anx63795z17 = CARRY(x_r12_4_a & !x_r12_3_a & !x_r22_add12_8i1_anx63795z19 # !x_r12_4_a & (!x_r22_add12_8i1_anx63795z19 # !x_r12_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r12_4_a,
	datab => x_r12_3_a,
	datad => VCC,
	cin => x_r22_add12_8i1_anx63795z19,
	combout => x_r22_add12_8i1_anx40964z1,
	cout => x_r22_add12_8i1_anx63795z17);

x_r22_add12_8i1_aix63795z52929 : cycloneii_lcell_comb
-- Equation(s):
-- x_r22_add12_8i1_anx43955z1 = (x_r12_7_a $ x_r12_6_a $ !x_r22_add12_8i1_anx63795z13) # GND
-- x_r22_add12_8i1_anx63795z11 = CARRY(x_r12_7_a & (x_r12_6_a # !x_r22_add12_8i1_anx63795z13) # !x_r12_7_a & x_r12_6_a & !x_r22_add12_8i1_anx63795z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r12_7_a,
	datab => x_r12_6_a,
	datad => VCC,
	cin => x_r22_add12_8i1_anx63795z13,
	combout => x_r22_add12_8i1_anx43955z1,
	cout => x_r22_add12_8i1_anx63795z11);

reg_x_r12_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r12_add11_8i4_anx23445z1,
	ena => nx58464z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r12_11_a);

reg_x_r12_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r12_add11_8i4_anx62798z1,
	ena => nx58464z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r12_10_a);

x_r22_add12_8i1_aix63795z52926 : cycloneii_lcell_comb
-- Equation(s):
-- x_r22_add12_8i1_anx46946z1 = x_r12_10_a & (x_r12_9_a & x_r22_add12_8i1_anx63795z7 & VCC # !x_r12_9_a & !x_r22_add12_8i1_anx63795z7) # !x_r12_10_a & (x_r12_9_a & !x_r22_add12_8i1_anx63795z7 # !x_r12_9_a & (x_r22_add12_8i1_anx63795z7 # GND))
-- x_r22_add12_8i1_anx63795z5 = CARRY(x_r12_10_a & !x_r12_9_a & !x_r22_add12_8i1_anx63795z7 # !x_r12_10_a & (!x_r22_add12_8i1_anx63795z7 # !x_r12_9_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r12_10_a,
	datab => x_r12_9_a,
	datad => VCC,
	cin => x_r22_add12_8i1_anx63795z7,
	combout => x_r22_add12_8i1_anx46946z1,
	cout => x_r22_add12_8i1_anx63795z5);

x_r22_add12_8i1_aix63795z52925 : cycloneii_lcell_comb
-- Equation(s):
-- x_r22_add12_8i1_anx62798z1 = (x_r12_10_a $ x_r12_11_a $ !x_r22_add12_8i1_anx63795z5) # GND
-- x_r22_add12_8i1_anx63795z3 = CARRY(x_r12_10_a & (x_r12_11_a # !x_r22_add12_8i1_anx63795z5) # !x_r12_10_a & x_r12_11_a & !x_r22_add12_8i1_anx63795z5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r12_10_a,
	datab => x_r12_11_a,
	datad => VCC,
	cin => x_r22_add12_8i1_anx63795z5,
	combout => x_r22_add12_8i1_anx62798z1,
	cout => x_r22_add12_8i1_anx63795z3);

x_r22_add12_8i1_aix63795z52923 : cycloneii_lcell_comb
-- Equation(s):
-- x_r22_add12_8i1_anx63795z1 = x_r22_add12_8i1_anx63795z3 $ x_r12_11_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => x_r12_11_a,
	cin => x_r22_add12_8i1_anx63795z3,
	combout => x_r22_add12_8i1_anx63795z1);

reg_x_r3_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => x_r3_add9_7i9_anx43955z1,
	sload => VCC,
	ena => nx56415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r3_6_a);

reg_b_d1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_d1_add9_7i10_anx39967z1,
	ena => validBit_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_d1_2_a);

reg_r16_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r16_add9_7i11_anx44952z1,
	ena => nx34104z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r16_7_a);

reg_r16_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r16_add9_7i11_anx42958z1,
	ena => nx34104z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r16_5_a);

reg_r11_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => x_r3_add9_7i9_anx41961z1,
	sload => VCC,
	ena => nx54873z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_4_a);

reg_r16_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r16_add9_7i11_anx40964z1,
	ena => nx34104z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r16_3_a);

reg_r14_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_add10_8i3_anx45949z1,
	ena => nx16422z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_8_a);

reg_r13_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r2_add8_6i49_anx43955z1,
	sload => VCC,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_6_a);

reg_r13_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r13_4_afeeder_combout,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_4_a);

reg_r14_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_add10_8i3_anx40964z1,
	ena => nx16422z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_3_a);

reg_r13_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r2_add8_6i49_anx37973z1,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_0_a);

x_r12_add11_8i4_aix62798z52933 : cycloneii_lcell_comb
-- Equation(s):
-- x_r12_add11_8i4_anx38970z1 = r13_1_a & (r14_1_a & x_r12_add11_8i4_anx62798z29 & VCC # !r14_1_a & !x_r12_add11_8i4_anx62798z29) # !r13_1_a & (r14_1_a & !x_r12_add11_8i4_anx62798z29 # !r14_1_a & (x_r12_add11_8i4_anx62798z29 # GND))
-- x_r12_add11_8i4_anx62798z26 = CARRY(r13_1_a & !r14_1_a & !x_r12_add11_8i4_anx62798z29 # !r13_1_a & (!x_r12_add11_8i4_anx62798z29 # !r14_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_1_a,
	datab => r14_1_a,
	datad => VCC,
	cin => x_r12_add11_8i4_anx62798z29,
	combout => x_r12_add11_8i4_anx38970z1,
	cout => x_r12_add11_8i4_anx62798z26);

x_r12_add11_8i4_aix62798z52930 : cycloneii_lcell_comb
-- Equation(s):
-- x_r12_add11_8i4_anx41961z1 = (r13_4_a $ r14_4_a $ !x_r12_add11_8i4_anx62798z20) # GND
-- x_r12_add11_8i4_anx62798z17 = CARRY(r13_4_a & (r14_4_a # !x_r12_add11_8i4_anx62798z20) # !r13_4_a & r14_4_a & !x_r12_add11_8i4_anx62798z20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_4_a,
	datab => r14_4_a,
	datad => VCC,
	cin => x_r12_add11_8i4_anx62798z20,
	combout => x_r12_add11_8i4_anx41961z1,
	cout => x_r12_add11_8i4_anx62798z17);

x_r12_add11_8i4_aix62798z52927 : cycloneii_lcell_comb
-- Equation(s):
-- x_r12_add11_8i4_anx44952z1 = r13_7_a & (r14_7_a & x_r12_add11_8i4_anx62798z11 & VCC # !r14_7_a & !x_r12_add11_8i4_anx62798z11) # !r13_7_a & (r14_7_a & !x_r12_add11_8i4_anx62798z11 # !r14_7_a & (x_r12_add11_8i4_anx62798z11 # GND))
-- x_r12_add11_8i4_anx62798z8 = CARRY(r13_7_a & !r14_7_a & !x_r12_add11_8i4_anx62798z11 # !r13_7_a & (!x_r12_add11_8i4_anx62798z11 # !r14_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_7_a,
	datab => r14_7_a,
	datad => VCC,
	cin => x_r12_add11_8i4_anx62798z11,
	combout => x_r12_add11_8i4_anx44952z1,
	cout => x_r12_add11_8i4_anx62798z8);

x_r12_add11_8i4_aix62798z52925 : cycloneii_lcell_comb
-- Equation(s):
-- x_r12_add11_8i4_anx46946z1 = r14_9_a & !x_r12_add11_8i4_anx62798z5 # !r14_9_a & (x_r12_add11_8i4_anx62798z5 # GND)
-- x_r12_add11_8i4_anx62798z3 = CARRY(!x_r12_add11_8i4_anx62798z5 # !r14_9_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r14_9_a,
	datad => VCC,
	cin => x_r12_add11_8i4_anx62798z5,
	combout => x_r12_add11_8i4_anx46946z1,
	cout => x_r12_add11_8i4_anx62798z3);

reg_r14_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_add10_8i3_anx23445z1,
	ena => nx16422z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_10_a);

x_r12_add11_8i4_aix62798z52923 : cycloneii_lcell_comb
-- Equation(s):
-- x_r12_add11_8i4_anx62798z1 = r14_10_a & (x_r12_add11_8i4_anx62798z3 $ GND) # !r14_10_a & !x_r12_add11_8i4_anx62798z3 & VCC
-- x_r12_add11_8i4_anx23445z2 = CARRY(r14_10_a & !x_r12_add11_8i4_anx62798z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r14_10_a,
	datad => VCC,
	cin => x_r12_add11_8i4_anx62798z3,
	combout => x_r12_add11_8i4_anx62798z1,
	cout => x_r12_add11_8i4_anx23445z2);

x_r12_add11_8i4_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- x_r12_add11_8i4_anx23445z1 = x_r12_add11_8i4_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => x_r12_add11_8i4_anx23445z2,
	combout => x_r12_add11_8i4_anx23445z1);

reg_g_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_6_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_6_a);

reg_r5_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_6_afeeder_combout,
	sdata => b_6_a,
	sload => ix7380z18833_anx100z1,
	ena => nx7380z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_6_a);

reg_x_r5_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r5_6_afeeder_combout,
	sdata => f_6_a,
	sload => ix27953z18832_anx100z1,
	ena => nx27953z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r5_6_a);

ix8431z52924 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_7n3s1f1_6_a = validBit_2_a & r5_6_a # !validBit_2_a & (x_r5_6_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r5_6_a,
	datac => x_r5_6_a,
	datad => validBit_2_a,
	combout => x_r3_7n3s1f1_6_a);

reg_x_r5_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r5_5_afeeder_combout,
	sdata => f_5_a,
	sload => ix27953z18832_anx100z1,
	ena => nx27953z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r5_5_a);

reg_r5_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_4_afeeder_combout,
	sdata => b_4_a,
	sload => ix7380z18833_anx100z1,
	ena => nx7380z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_4_a);

reg_x_r5_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r5_4_afeeder_combout,
	sdata => f_4_a,
	sload => ix27953z18832_anx100z1,
	ena => nx27953z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r5_4_a);

ix8431z52926 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_7n3s1f1_4_a = validBit_2_a & (r5_4_a) # !validBit_2_a & x_r5_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_r5_4_a,
	datab => r5_4_a,
	datad => validBit_2_a,
	combout => x_r3_7n3s1f1_4_a);

reg_r5_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_1_afeeder_combout,
	sdata => b_1_a,
	sload => ix7380z18833_anx100z1,
	ena => nx7380z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_1_a);

reg_x_r5_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r5_1_afeeder_combout,
	sdata => f_1_a,
	sload => ix27953z18832_anx100z1,
	ena => nx27953z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r5_1_a);

ix8431z52929 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_7n3s1f1_1_a = validBit_2_a & r5_1_a # !validBit_2_a & (x_r5_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r5_1_a,
	datac => x_r5_1_a,
	datad => validBit_2_a,
	combout => x_r3_7n3s1f1_1_a);

reg_r9_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r9_7_afeeder_combout,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_7_a);

reg_r10_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r10_5_afeeder_combout,
	sdata => d_5_a,
	sload => ix48448z18833_anx100z1,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r10_5_a);

reg_r10_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r10_4_afeeder_combout,
	sdata => d_4_a,
	sload => ix48448z18833_anx100z1,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r10_4_a);

reg_r10_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r10_2_afeeder_combout,
	sdata => d_2_a,
	sload => ix48448z18833_anx100z1,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r10_2_a);

reg_r9_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r9_0_afeeder_combout,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_0_a);

b_d1_add9_7i10_aix45949z52930 : cycloneii_lcell_comb
-- Equation(s):
-- b_d1_add9_7i10_anx39967z1 = (r10_2_a $ r9_2_a $ !b_d1_add9_7i10_anx45949z21) # GND
-- b_d1_add9_7i10_anx45949z18 = CARRY(r10_2_a & (r9_2_a # !b_d1_add9_7i10_anx45949z21) # !r10_2_a & r9_2_a & !b_d1_add9_7i10_anx45949z21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r10_2_a,
	datab => r9_2_a,
	datad => VCC,
	cin => b_d1_add9_7i10_anx45949z21,
	combout => b_d1_add9_7i10_anx39967z1,
	cout => b_d1_add9_7i10_anx45949z18);

reg_r12_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_7_afeeder_combout,
	sdata => h_7_a,
	sload => ix250z18831_anx100z1,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_7_a);

reg_r12_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_5_afeeder_combout,
	sdata => h_5_a,
	sload => ix250z18831_anx100z1,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_5_a);

reg_r12_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_2_afeeder_combout,
	sdata => h_2_a,
	sload => ix250z18831_anx100z1,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_2_a);

reg_r12_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_1_afeeder_combout,
	sdata => h_1_a,
	sload => ix250z18831_anx100z1,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_1_a);

r16_add9_7i11_aix45949z52929 : cycloneii_lcell_comb
-- Equation(s):
-- r16_add9_7i11_anx40964z1 = r13_3_a & (r12_3_a & r16_add9_7i11_anx45949z18 & VCC # !r12_3_a & !r16_add9_7i11_anx45949z18) # !r13_3_a & (r12_3_a & !r16_add9_7i11_anx45949z18 # !r12_3_a & (r16_add9_7i11_anx45949z18 # GND))
-- r16_add9_7i11_anx45949z15 = CARRY(r13_3_a & !r12_3_a & !r16_add9_7i11_anx45949z18 # !r13_3_a & (!r16_add9_7i11_anx45949z18 # !r12_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_3_a,
	datab => r12_3_a,
	datad => VCC,
	cin => r16_add9_7i11_anx45949z18,
	combout => r16_add9_7i11_anx40964z1,
	cout => r16_add9_7i11_anx45949z15);

r16_add9_7i11_aix45949z52927 : cycloneii_lcell_comb
-- Equation(s):
-- r16_add9_7i11_anx42958z1 = r12_5_a & (r13_5_a & r16_add9_7i11_anx45949z12 & VCC # !r13_5_a & !r16_add9_7i11_anx45949z12) # !r12_5_a & (r13_5_a & !r16_add9_7i11_anx45949z12 # !r13_5_a & (r16_add9_7i11_anx45949z12 # GND))
-- r16_add9_7i11_anx45949z9 = CARRY(r12_5_a & !r13_5_a & !r16_add9_7i11_anx45949z12 # !r12_5_a & (!r16_add9_7i11_anx45949z12 # !r13_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r12_5_a,
	datab => r13_5_a,
	datad => VCC,
	cin => r16_add9_7i11_anx45949z12,
	combout => r16_add9_7i11_anx42958z1,
	cout => r16_add9_7i11_anx45949z9);

r16_add9_7i11_aix45949z52925 : cycloneii_lcell_comb
-- Equation(s):
-- r16_add9_7i11_anx44952z1 = r12_7_a & (r13_7_a & r16_add9_7i11_anx45949z6 & VCC # !r13_7_a & !r16_add9_7i11_anx45949z6) # !r12_7_a & (r13_7_a & !r16_add9_7i11_anx45949z6 # !r13_7_a & (r16_add9_7i11_anx45949z6 # GND))
-- r16_add9_7i11_anx45949z3 = CARRY(r12_7_a & !r13_7_a & !r16_add9_7i11_anx45949z6 # !r12_7_a & (!r16_add9_7i11_anx45949z6 # !r13_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r12_7_a,
	datab => r13_7_a,
	datad => VCC,
	cin => r16_add9_7i11_anx45949z6,
	combout => r16_add9_7i11_anx44952z1,
	cout => r16_add9_7i11_anx45949z3);

reg_d_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx34631z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(5),
	sload => ALT_INV_nx28524z1,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_5_a);

reg_d_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx31640z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(2),
	sload => ALT_INV_nx28524z1,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_2_a);

reg_h_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_5_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_5_a);

reg_h_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_2_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_2_a);

reg_x_r6_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r6_add9_8i2_anx45949z1,
	ena => validBit_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r6_8_a);

reg_x_r6_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r6_add9_8i2_anx43955z1,
	ena => validBit_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r6_6_a);

reg_x_r6_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r6_add9_8i2_anx42958z1,
	ena => validBit_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r6_5_a);

reg_x_r6_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r6_add9_8i2_anx41961z1,
	ena => validBit_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r6_4_a);

reg_x_r6_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r6_add9_8i2_anx40964z1,
	ena => validBit_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r6_3_a);

reg_x_r6_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r6_add9_8i2_anx39967z1,
	ena => validBit_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r6_2_a);

reg_x_r6_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r6_add9_8i2_anx38970z1,
	ena => validBit_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r6_1_a);

r14_add10_8i3_aix46946z52930 : cycloneii_lcell_comb
-- Equation(s):
-- r14_add10_8i3_anx40964z1 = x_r6_3_a & (r2_3_a & r14_add10_8i3_anx46946z21 & VCC # !r2_3_a & !r14_add10_8i3_anx46946z21) # !x_r6_3_a & (r2_3_a & !r14_add10_8i3_anx46946z21 # !r2_3_a & (r14_add10_8i3_anx46946z21 # GND))
-- r14_add10_8i3_anx46946z18 = CARRY(x_r6_3_a & !r2_3_a & !r14_add10_8i3_anx46946z21 # !x_r6_3_a & (!r14_add10_8i3_anx46946z21 # !r2_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r6_3_a,
	datab => r2_3_a,
	datad => VCC,
	cin => r14_add10_8i3_anx46946z21,
	combout => r14_add10_8i3_anx40964z1,
	cout => r14_add10_8i3_anx46946z18);

r14_add10_8i3_aix46946z52925 : cycloneii_lcell_comb
-- Equation(s):
-- r14_add10_8i3_anx45949z1 = (x_r6_8_a $ r2_8_a $ !r14_add10_8i3_anx46946z6) # GND
-- r14_add10_8i3_anx46946z3 = CARRY(x_r6_8_a & (r2_8_a # !r14_add10_8i3_anx46946z6) # !x_r6_8_a & r2_8_a & !r14_add10_8i3_anx46946z6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r6_8_a,
	datab => r2_8_a,
	datad => VCC,
	cin => r14_add10_8i3_anx46946z6,
	combout => r14_add10_8i3_anx45949z1,
	cout => r14_add10_8i3_anx46946z3);

ix51677z52943 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z12 = nx51677z11 & (nx51677z13) # !nx51677z11 & (nx51677z13 & (c_7_a) # !nx51677z13 & e_7_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e_7_a,
	datab => c_7_a,
	datac => nx51677z11,
	datad => nx51677z13,
	combout => nx51677z12);

ix51677z52941 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f2_7_a = nx51677z11 & (nx51677z12 & g_7_a # !nx51677z12 & (a_7_a)) # !nx51677z11 & (nx51677z12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51677z11,
	datab => g_7_a,
	datac => a_7_a,
	datad => nx51677z12,
	combout => r2_6n3s1f2_7_a);

ix51677z52946 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z14 = nx51677z11 & (nx51677z13) # !nx51677z11 & (nx51677z13 & c_6_a # !nx51677z13 & (e_6_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_6_a,
	datab => nx51677z11,
	datac => e_6_a,
	datad => nx51677z13,
	combout => nx51677z14);

ix51677z52945 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f2_6_a = nx51677z11 & (nx51677z14 & (g_6_a) # !nx51677z14 & a_6_a) # !nx51677z11 & (nx51677z14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_6_a,
	datab => nx51677z11,
	datac => g_6_a,
	datad => nx51677z14,
	combout => r2_6n3s1f2_6_a);

ix51677z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z5 = nx51677z3 & (h_5_a # nx51677z1) # !nx51677z3 & f_5_a & (!nx51677z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_5_a,
	datab => nx51677z3,
	datac => h_5_a,
	datad => nx51677z1,
	combout => nx51677z5);

ix51677z52929 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f1_5_a = nx51677z5 & (d_5_a # !nx51677z1) # !nx51677z5 & (b_5_a & nx51677z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_5_a,
	datab => nx51677z5,
	datac => b_5_a,
	datad => nx51677z1,
	combout => r2_6n3s1f1_5_a);

ix51677z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z6 = nx51677z3 & (h_4_a # nx51677z1) # !nx51677z3 & (f_4_a & !nx51677z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_4_a,
	datab => nx51677z3,
	datac => f_4_a,
	datad => nx51677z1,
	combout => nx51677z6);

ix51677z52931 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f1_4_a = nx51677z1 & (nx51677z6 & d_4_a # !nx51677z6 & (b_4_a)) # !nx51677z1 & (nx51677z6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_4_a,
	datab => nx51677z1,
	datac => b_4_a,
	datad => nx51677z6,
	combout => r2_6n3s1f1_4_a);

ix51677z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z7 = nx51677z3 & (nx51677z1 # h_3_a) # !nx51677z3 & !nx51677z1 & (f_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51677z3,
	datab => nx51677z1,
	datac => h_3_a,
	datad => f_3_a,
	combout => nx51677z7);

ix51677z52933 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f1_3_a = nx51677z1 & (nx51677z7 & d_3_a # !nx51677z7 & (b_3_a)) # !nx51677z1 & (nx51677z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_3_a,
	datab => nx51677z1,
	datac => b_3_a,
	datad => nx51677z7,
	combout => r2_6n3s1f1_3_a);

ix51677z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z8 = nx51677z1 & (nx51677z3) # !nx51677z1 & (nx51677z3 & (h_2_a) # !nx51677z3 & f_2_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_2_a,
	datab => nx51677z1,
	datac => h_2_a,
	datad => nx51677z3,
	combout => nx51677z8);

ix51677z52935 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f1_2_a = nx51677z1 & (nx51677z8 & d_2_a # !nx51677z8 & (b_2_a)) # !nx51677z1 & (nx51677z8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_2_a,
	datab => nx51677z1,
	datac => b_2_a,
	datad => nx51677z8,
	combout => r2_6n3s1f1_2_a);

ix51677z52956 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z19 = nx51677z11 & (nx51677z13) # !nx51677z11 & (nx51677z13 & c_1_a # !nx51677z13 & (e_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_1_a,
	datab => nx51677z11,
	datac => e_1_a,
	datad => nx51677z13,
	combout => nx51677z19);

ix51677z52955 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f2_1_a = nx51677z11 & (nx51677z19 & g_1_a # !nx51677z19 & (a_1_a)) # !nx51677z11 & (nx51677z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => g_1_a,
	datab => nx51677z11,
	datac => a_1_a,
	datad => nx51677z19,
	combout => r2_6n3s1f2_1_a);

ix51677z52940 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z10 = nx51677z3 & (h_0_a # nx51677z1) # !nx51677z3 & f_0_a & (!nx51677z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_0_a,
	datab => nx51677z3,
	datac => h_0_a,
	datad => nx51677z1,
	combout => nx51677z10);

ix51677z52939 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f1_0_a = nx51677z1 & (nx51677z10 & d_0_a # !nx51677z10 & (b_0_a)) # !nx51677z1 & (nx51677z10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51677z1,
	datab => d_0_a,
	datac => b_0_a,
	datad => nx51677z10,
	combout => r2_6n3s1f1_0_a);

r14_add10_8i3_aix46946z52923 : cycloneii_lcell_comb
-- Equation(s):
-- r14_add10_8i3_anx46946z1 = x_r6_9_a & !r14_add10_8i3_anx46946z3 # !x_r6_9_a & (r14_add10_8i3_anx46946z3 # GND)
-- r14_add10_8i3_anx23445z2 = CARRY(!r14_add10_8i3_anx46946z3 # !x_r6_9_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_r6_9_a,
	datad => VCC,
	cin => r14_add10_8i3_anx46946z3,
	combout => r14_add10_8i3_anx46946z1,
	cout => r14_add10_8i3_anx23445z2);

r14_add10_8i3_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- r14_add10_8i3_anx23445z1 = !r14_add10_8i3_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => r14_add10_8i3_anx23445z2,
	combout => r14_add10_8i3_anx23445z1);

ix20419z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx20419z6 = modgen_counter_o_row_anx1041z1 # modgen_counter_o_row_anx58250z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_o_row_anx1041z1,
	datad => modgen_counter_o_row_anx58250z3,
	combout => nx20419z6);

Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_1:Generate_mem_1_u_mem0_mem|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => we_1_a,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

ix34631z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx34631z1 = state_2_a & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(5) # !state_2_a & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(5),
	datab => state_2_a,
	datad => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(5),
	combout => nx34631z1);

ix31640z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx31640z1 = state_2_a & (Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(2)) # !state_2_a & Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(2),
	datab => state_2_a,
	datad => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(2),
	combout => nx31640z1);

reg_i_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_5_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_5_a);

reg_i_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_2_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_2_a);

x_r6_add9_8i2_aix45949z52931 : cycloneii_lcell_comb
-- Equation(s):
-- x_r6_add9_8i2_anx38970z1 = r2_1_a & (r9_1_a & x_r6_add9_8i2_anx45949z25 & VCC # !r9_1_a & !x_r6_add9_8i2_anx45949z25) # !r2_1_a & (r9_1_a & !x_r6_add9_8i2_anx45949z25 # !r9_1_a & (x_r6_add9_8i2_anx45949z25 # GND))
-- x_r6_add9_8i2_anx45949z22 = CARRY(r2_1_a & !r9_1_a & !x_r6_add9_8i2_anx45949z25 # !r2_1_a & (!x_r6_add9_8i2_anx45949z25 # !r9_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_1_a,
	datab => r9_1_a,
	datad => VCC,
	cin => x_r6_add9_8i2_anx45949z25,
	combout => x_r6_add9_8i2_anx38970z1,
	cout => x_r6_add9_8i2_anx45949z22);

x_r6_add9_8i2_aix45949z52930 : cycloneii_lcell_comb
-- Equation(s):
-- x_r6_add9_8i2_anx39967z1 = (r2_2_a $ r9_2_a $ !x_r6_add9_8i2_anx45949z22) # GND
-- x_r6_add9_8i2_anx45949z19 = CARRY(r2_2_a & (r9_2_a # !x_r6_add9_8i2_anx45949z22) # !r2_2_a & r9_2_a & !x_r6_add9_8i2_anx45949z22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_2_a,
	datab => r9_2_a,
	datad => VCC,
	cin => x_r6_add9_8i2_anx45949z22,
	combout => x_r6_add9_8i2_anx39967z1,
	cout => x_r6_add9_8i2_anx45949z19);

x_r6_add9_8i2_aix45949z52929 : cycloneii_lcell_comb
-- Equation(s):
-- x_r6_add9_8i2_anx40964z1 = r2_3_a & (r9_3_a & x_r6_add9_8i2_anx45949z19 & VCC # !r9_3_a & !x_r6_add9_8i2_anx45949z19) # !r2_3_a & (r9_3_a & !x_r6_add9_8i2_anx45949z19 # !r9_3_a & (x_r6_add9_8i2_anx45949z19 # GND))
-- x_r6_add9_8i2_anx45949z16 = CARRY(r2_3_a & !r9_3_a & !x_r6_add9_8i2_anx45949z19 # !r2_3_a & (!x_r6_add9_8i2_anx45949z19 # !r9_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_3_a,
	datab => r9_3_a,
	datad => VCC,
	cin => x_r6_add9_8i2_anx45949z19,
	combout => x_r6_add9_8i2_anx40964z1,
	cout => x_r6_add9_8i2_anx45949z16);

x_r6_add9_8i2_aix45949z52928 : cycloneii_lcell_comb
-- Equation(s):
-- x_r6_add9_8i2_anx41961z1 = (r9_4_a $ r2_4_a $ !x_r6_add9_8i2_anx45949z16) # GND
-- x_r6_add9_8i2_anx45949z13 = CARRY(r9_4_a & (r2_4_a # !x_r6_add9_8i2_anx45949z16) # !r9_4_a & r2_4_a & !x_r6_add9_8i2_anx45949z16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9_4_a,
	datab => r2_4_a,
	datad => VCC,
	cin => x_r6_add9_8i2_anx45949z16,
	combout => x_r6_add9_8i2_anx41961z1,
	cout => x_r6_add9_8i2_anx45949z13);

x_r6_add9_8i2_aix45949z52927 : cycloneii_lcell_comb
-- Equation(s):
-- x_r6_add9_8i2_anx42958z1 = r9_5_a & (r2_5_a & x_r6_add9_8i2_anx45949z13 & VCC # !r2_5_a & !x_r6_add9_8i2_anx45949z13) # !r9_5_a & (r2_5_a & !x_r6_add9_8i2_anx45949z13 # !r2_5_a & (x_r6_add9_8i2_anx45949z13 # GND))
-- x_r6_add9_8i2_anx45949z10 = CARRY(r9_5_a & !r2_5_a & !x_r6_add9_8i2_anx45949z13 # !r9_5_a & (!x_r6_add9_8i2_anx45949z13 # !r2_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9_5_a,
	datab => r2_5_a,
	datad => VCC,
	cin => x_r6_add9_8i2_anx45949z13,
	combout => x_r6_add9_8i2_anx42958z1,
	cout => x_r6_add9_8i2_anx45949z10);

x_r6_add9_8i2_aix45949z52926 : cycloneii_lcell_comb
-- Equation(s):
-- x_r6_add9_8i2_anx43955z1 = (r2_6_a $ r9_6_a $ !x_r6_add9_8i2_anx45949z10) # GND
-- x_r6_add9_8i2_anx45949z7 = CARRY(r2_6_a & (r9_6_a # !x_r6_add9_8i2_anx45949z10) # !r2_6_a & r9_6_a & !x_r6_add9_8i2_anx45949z10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_6_a,
	datab => r9_6_a,
	datad => VCC,
	cin => x_r6_add9_8i2_anx45949z10,
	combout => x_r6_add9_8i2_anx43955z1,
	cout => x_r6_add9_8i2_anx45949z7);

x_r6_add9_8i2_aix45949z52923 : cycloneii_lcell_comb
-- Equation(s):
-- x_r6_add9_8i2_anx45949z1 = (r9_8_a $ r2_8_a $ !x_r6_add9_8i2_anx45949z4) # GND
-- x_r6_add9_8i2_anx23445z2 = CARRY(r9_8_a & (r2_8_a # !x_r6_add9_8i2_anx45949z4) # !r9_8_a & r2_8_a & !x_r6_add9_8i2_anx45949z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9_8_a,
	datab => r2_8_a,
	datad => VCC,
	cin => x_r6_add9_8i2_anx45949z4,
	combout => x_r6_add9_8i2_anx45949z1,
	cout => x_r6_add9_8i2_anx23445z2);

ix7740z52931 : cycloneii_lcell_comb
-- Equation(s):
-- we_0_a = i_valid_acombout & !nx28524z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i_valid_acombout,
	datad => nx28524z1,
	combout => we_0_a);

ix62017z52923 : cycloneii_lcell_comb
-- Equation(s):
-- we_1_a = i_valid_acombout & state_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i_valid_acombout,
	datad => state_1_a,
	combout => we_1_a);

ix64834z52923 : cycloneii_lcell_comb
-- Equation(s):
-- we_2_a = i_valid_acombout & state_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_valid_acombout,
	datac => state_2_a,
	combout => we_2_a);

r18_9_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r18_9_afeeder_combout = r15_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r15_9_a,
	combout => r18_9_afeeder_combout);

r18_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r18_7_afeeder_combout = r15_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r15_7_a,
	combout => r18_7_afeeder_combout);

r18_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r18_6_afeeder_combout = r15_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r15_6_a,
	combout => r18_6_afeeder_combout);

r18_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r18_5_afeeder_combout = r15_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r15_5_a,
	combout => r18_5_afeeder_combout);

r18_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r18_3_afeeder_combout = r15_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r15_3_a,
	combout => r18_3_afeeder_combout);

r18_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r18_2_afeeder_combout = r15_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r15_2_a,
	combout => r18_2_afeeder_combout);

r15_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r15_6_afeeder_combout = x_r3_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_r3_6_a,
	combout => r15_6_afeeder_combout);

r15_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r15_2_afeeder_combout = x_r3_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_r3_2_a,
	combout => r15_2_afeeder_combout);

x_r11_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r11_7_afeeder_combout = r11_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_7_a,
	combout => x_r11_7_afeeder_combout);

x_r11_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r11_5_afeeder_combout = r11_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_5_a,
	combout => x_r11_5_afeeder_combout);

x_r11_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r11_3_afeeder_combout = r11_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_3_a,
	combout => x_r11_3_afeeder_combout);

r5_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_6_afeeder_combout = g_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => g_6_a,
	combout => r5_6_afeeder_combout);

r5_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_4_afeeder_combout = g_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => g_4_a,
	combout => r5_4_afeeder_combout);

r5_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_1_afeeder_combout = g_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => g_1_a,
	combout => r5_1_afeeder_combout);

x_r5_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r5_6_afeeder_combout = c_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => c_6_a,
	combout => x_r5_6_afeeder_combout);

x_r5_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r5_5_afeeder_combout = c_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => c_5_a,
	combout => x_r5_5_afeeder_combout);

x_r5_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r5_4_afeeder_combout = c_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => c_4_a,
	combout => x_r5_4_afeeder_combout);

x_r5_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r5_1_afeeder_combout = c_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => c_1_a,
	combout => x_r5_1_afeeder_combout);

r10_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r10_5_afeeder_combout = a_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => a_5_a,
	combout => r10_5_afeeder_combout);

r10_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r10_4_afeeder_combout = a_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => a_4_a,
	combout => r10_4_afeeder_combout);

r10_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r10_2_afeeder_combout = a_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => a_2_a,
	combout => r10_2_afeeder_combout);

r12_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_7_afeeder_combout = e_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => e_7_a,
	combout => r12_7_afeeder_combout);

r12_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_5_afeeder_combout = e_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e_5_a,
	combout => r12_5_afeeder_combout);

r12_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_2_afeeder_combout = e_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e_2_a,
	combout => r12_2_afeeder_combout);

r12_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_1_afeeder_combout = e_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => e_1_a,
	combout => r12_1_afeeder_combout);

r9_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r9_0_afeeder_combout = r2_add8_6i49_anx37973z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_add8_6i49_anx37973z1,
	combout => r9_0_afeeder_combout);

r13_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r13_4_afeeder_combout = r2_add8_6i49_anx41961z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_add8_6i49_anx41961z1,
	combout => r13_4_afeeder_combout);

r9_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r9_7_afeeder_combout = r2_add8_6i49_anx44952z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r2_add8_6i49_anx44952z1,
	combout => r9_7_afeeder_combout);

i_clock_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_clock,
	combout => i_clock_acombout);

i_clock_aclkctrl : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => i_clock_aclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => i_clock_aclkctrl_outclk);

modgen_counter_o_row_aix58250z52931 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx51271z1 = modgen_counter_o_row_anx58250z15 $ VCC
-- modgen_counter_o_row_anx58250z14 = CARRY(modgen_counter_o_row_anx58250z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx58250z15,
	datad => VCC,
	combout => modgen_counter_o_row_anx51271z1,
	cout => modgen_counter_o_row_anx58250z14);

modgen_counter_o_row_aix58250z52930 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx52268z1 = modgen_counter_o_row_anx58250z13 & !modgen_counter_o_row_anx58250z14 # !modgen_counter_o_row_anx58250z13 & (modgen_counter_o_row_anx58250z14 # GND)
-- modgen_counter_o_row_anx58250z12 = CARRY(!modgen_counter_o_row_anx58250z14 # !modgen_counter_o_row_anx58250z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_row_anx58250z13,
	datad => VCC,
	cin => modgen_counter_o_row_anx58250z14,
	combout => modgen_counter_o_row_anx52268z1,
	cout => modgen_counter_o_row_anx58250z12);

i_reset_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_reset,
	combout => i_reset_acombout);

modgen_counter_col_aix58250z52931 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_col_anx51271z1 = modgen_counter_col_anx58250z15 $ VCC
-- modgen_counter_col_anx58250z14 = CARRY(modgen_counter_col_anx58250z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_col_anx58250z15,
	datad => VCC,
	combout => modgen_counter_col_anx51271z1,
	cout => modgen_counter_col_anx58250z14);

ix13876z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_valid,
	combout => i_valid_acombout);

reg_in_i_valid_ibuf : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_valid_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vBit_1_a);

ix40914z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx40914z1 = i_reset_acombout # vBit_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_reset_acombout,
	datac => vBit_1_a,
	combout => nx40914z1);

modgen_counter_col_areg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_col_anx51271z1,
	sclr => i_reset_acombout,
	ena => nx40914z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_col_anx58250z15);

modgen_counter_col_aix58250z52930 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_col_anx52268z1 = modgen_counter_col_anx58250z13 & !modgen_counter_col_anx58250z14 # !modgen_counter_col_anx58250z13 & (modgen_counter_col_anx58250z14 # GND)
-- modgen_counter_col_anx58250z12 = CARRY(!modgen_counter_col_anx58250z14 # !modgen_counter_col_anx58250z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_col_anx58250z13,
	datad => VCC,
	cin => modgen_counter_col_anx58250z14,
	combout => modgen_counter_col_anx52268z1,
	cout => modgen_counter_col_anx58250z12);

modgen_counter_col_aix58250z52929 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_col_anx53265z1 = modgen_counter_col_anx58250z11 & (modgen_counter_col_anx58250z12 $ GND) # !modgen_counter_col_anx58250z11 & !modgen_counter_col_anx58250z12 & VCC
-- modgen_counter_col_anx58250z10 = CARRY(modgen_counter_col_anx58250z11 & !modgen_counter_col_anx58250z12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_col_anx58250z11,
	datad => VCC,
	cin => modgen_counter_col_anx58250z12,
	combout => modgen_counter_col_anx53265z1,
	cout => modgen_counter_col_anx58250z10);

modgen_counter_col_areg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_col_anx53265z1,
	sclr => i_reset_acombout,
	ena => nx40914z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_col_anx58250z11);

modgen_counter_col_aix58250z52928 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_col_anx54262z1 = modgen_counter_col_anx58250z9 & !modgen_counter_col_anx58250z10 # !modgen_counter_col_anx58250z9 & (modgen_counter_col_anx58250z10 # GND)
-- modgen_counter_col_anx58250z8 = CARRY(!modgen_counter_col_anx58250z10 # !modgen_counter_col_anx58250z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_col_anx58250z9,
	datad => VCC,
	cin => modgen_counter_col_anx58250z10,
	combout => modgen_counter_col_anx54262z1,
	cout => modgen_counter_col_anx58250z8);

modgen_counter_col_aix58250z52927 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_col_anx55259z1 = modgen_counter_col_anx58250z7 & (modgen_counter_col_anx58250z8 $ GND) # !modgen_counter_col_anx58250z7 & !modgen_counter_col_anx58250z8 & VCC
-- modgen_counter_col_anx58250z6 = CARRY(modgen_counter_col_anx58250z7 & !modgen_counter_col_anx58250z8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_col_anx58250z7,
	datad => VCC,
	cin => modgen_counter_col_anx58250z8,
	combout => modgen_counter_col_anx55259z1,
	cout => modgen_counter_col_anx58250z6);

modgen_counter_col_areg_q_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_col_anx55259z1,
	sclr => i_reset_acombout,
	ena => nx40914z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_col_anx58250z7);

modgen_counter_col_aix58250z52926 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_col_anx56256z1 = modgen_counter_col_anx58250z5 & !modgen_counter_col_anx58250z6 # !modgen_counter_col_anx58250z5 & (modgen_counter_col_anx58250z6 # GND)
-- modgen_counter_col_anx58250z4 = CARRY(!modgen_counter_col_anx58250z6 # !modgen_counter_col_anx58250z5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_col_anx58250z5,
	datad => VCC,
	cin => modgen_counter_col_anx58250z6,
	combout => modgen_counter_col_anx56256z1,
	cout => modgen_counter_col_anx58250z4);

modgen_counter_col_aix58250z52925 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_col_anx57253z1 = modgen_counter_col_anx58250z3 & (modgen_counter_col_anx58250z4 $ GND) # !modgen_counter_col_anx58250z3 & !modgen_counter_col_anx58250z4 & VCC
-- modgen_counter_col_anx58250z2 = CARRY(modgen_counter_col_anx58250z3 & !modgen_counter_col_anx58250z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_col_anx58250z3,
	datad => VCC,
	cin => modgen_counter_col_anx58250z4,
	combout => modgen_counter_col_anx57253z1,
	cout => modgen_counter_col_anx58250z2);

modgen_counter_col_areg_q_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_col_anx57253z1,
	sclr => i_reset_acombout,
	ena => nx40914z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_col_anx58250z3);

modgen_counter_col_aix58250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_col_anx58250z1 = modgen_counter_col_anx58250z2 $ modgen_counter_col_anx1041z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_col_anx1041z1,
	cin => modgen_counter_col_anx58250z2,
	combout => modgen_counter_col_anx58250z1);

modgen_counter_col_areg_q_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_col_anx58250z1,
	sclr => i_reset_acombout,
	ena => nx40914z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_col_anx1041z1);

modgen_counter_col_areg_q_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_col_anx56256z1,
	sclr => i_reset_acombout,
	ena => nx40914z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_col_anx58250z5);

ix17322z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z3 = !modgen_counter_col_anx58250z3 & !modgen_counter_col_anx58250z7 & !modgen_counter_col_anx1041z1 & !modgen_counter_col_anx58250z5

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_col_anx58250z3,
	datab => modgen_counter_col_anx58250z7,
	datac => modgen_counter_col_anx1041z1,
	datad => modgen_counter_col_anx58250z5,
	combout => nx17322z3);

reg_vBit_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => vBit_1_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vBit_2_a);

modgen_counter_col_areg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_col_anx54262z1,
	sclr => i_reset_acombout,
	ena => nx40914z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_col_anx58250z9);

modgen_counter_col_areg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_col_anx52268z1,
	sclr => i_reset_acombout,
	ena => nx40914z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_col_anx58250z13);

ix17322z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z2 = !modgen_counter_col_anx58250z11 & !modgen_counter_col_anx58250z9 & !modgen_counter_col_anx58250z13 & !modgen_counter_col_anx58250z15

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_col_anx58250z11,
	datab => modgen_counter_col_anx58250z9,
	datac => modgen_counter_col_anx58250z13,
	datad => modgen_counter_col_anx58250z15,
	combout => nx17322z2);

ix17322z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z1 = !i_valid_acombout & nx17322z3 & vBit_2_a & nx17322z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => nx17322z3,
	datac => vBit_2_a,
	datad => nx17322z2,
	combout => nx17322z1);

modgen_counter_o_row_aix57253z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx57253z3 = i_reset_acombout # nx17322z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i_reset_acombout,
	datad => nx17322z1,
	combout => modgen_counter_o_row_anx57253z3);

modgen_counter_o_row_areg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx52268z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z13);

modgen_counter_o_row_aix58250z52929 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx53265z1 = modgen_counter_o_row_anx58250z11 & (modgen_counter_o_row_anx58250z12 $ GND) # !modgen_counter_o_row_anx58250z11 & !modgen_counter_o_row_anx58250z12 & VCC
-- modgen_counter_o_row_anx58250z10 = CARRY(modgen_counter_o_row_anx58250z11 & !modgen_counter_o_row_anx58250z12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_row_anx58250z11,
	datad => VCC,
	cin => modgen_counter_o_row_anx58250z12,
	combout => modgen_counter_o_row_anx53265z1,
	cout => modgen_counter_o_row_anx58250z10);

modgen_counter_o_row_areg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx53265z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z11);

modgen_counter_o_row_aix58250z52928 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx54262z1 = modgen_counter_o_row_anx58250z9 & !modgen_counter_o_row_anx58250z10 # !modgen_counter_o_row_anx58250z9 & (modgen_counter_o_row_anx58250z10 # GND)
-- modgen_counter_o_row_anx58250z8 = CARRY(!modgen_counter_o_row_anx58250z10 # !modgen_counter_o_row_anx58250z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx58250z9,
	datad => VCC,
	cin => modgen_counter_o_row_anx58250z10,
	combout => modgen_counter_o_row_anx54262z1,
	cout => modgen_counter_o_row_anx58250z8);

modgen_counter_o_row_areg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx54262z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z9);

modgen_counter_o_row_aix58250z52927 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx55259z1 = modgen_counter_o_row_anx58250z7 & (modgen_counter_o_row_anx58250z8 $ GND) # !modgen_counter_o_row_anx58250z7 & !modgen_counter_o_row_anx58250z8 & VCC
-- modgen_counter_o_row_anx58250z6 = CARRY(modgen_counter_o_row_anx58250z7 & !modgen_counter_o_row_anx58250z8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_row_anx58250z7,
	datad => VCC,
	cin => modgen_counter_o_row_anx58250z8,
	combout => modgen_counter_o_row_anx55259z1,
	cout => modgen_counter_o_row_anx58250z6);

modgen_counter_o_row_areg_q_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_row_anx55259z1,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z7);

ix20419z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx20419z5 = modgen_counter_o_row_anx58250z5 # modgen_counter_o_row_anx58250z9 # modgen_counter_o_row_anx58250z7 # modgen_counter_o_row_anx58250z11

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx58250z5,
	datab => modgen_counter_o_row_anx58250z9,
	datac => modgen_counter_o_row_anx58250z7,
	datad => modgen_counter_o_row_anx58250z11,
	combout => nx20419z5);

ix20419z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx20419z3 = modgen_counter_col_anx1041z1 # modgen_counter_col_anx58250z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_col_anx1041z1,
	datac => modgen_counter_col_anx58250z3,
	combout => nx20419z3);

ix20419z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx20419z4 = modgen_counter_col_anx58250z5 # modgen_counter_col_anx58250z7 # modgen_counter_col_anx58250z9 # modgen_counter_col_anx58250z11

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_col_anx58250z5,
	datab => modgen_counter_col_anx58250z7,
	datac => modgen_counter_col_anx58250z9,
	datad => modgen_counter_col_anx58250z11,
	combout => nx20419z4);

ix20419z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx20419z2 = i_valid_acombout & (nx20419z3 # modgen_counter_col_anx58250z13 # nx20419z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => nx20419z3,
	datac => modgen_counter_col_anx58250z13,
	datad => nx20419z4,
	combout => nx20419z2);

ix20419z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx20419z1 = nx20419z2 & (nx20419z6 # nx20419z5 # modgen_counter_o_row_anx58250z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx20419z6,
	datab => nx20419z5,
	datac => modgen_counter_o_row_anx58250z13,
	datad => nx20419z2,
	combout => nx20419z1);

reg_validBit_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx20419z1,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => validBit_0_a);

reg_validBit_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => validBit_0_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => validBit_1_a);

reg_validBit_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => validBit_1_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => validBit_2_a);

reg_validBit_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => validBit_2_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => validBit_3_a);

reg_validBit_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => validBit_3_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => validBit_4_a);

reg_validBit_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => validBit_4_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => validBit_5_a);

reg_validBit_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => validBit_5_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => validBit_6_a);

reg_validBit_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => validBit_6_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => validBit_7_a);

reg_validBit_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => validBit_7_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_valid_dup0);

ix51677z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z1 = validBit_0_a # !validBit_1_a & validBit_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => validBit_1_a,
	datac => validBit_2_a,
	datad => validBit_0_a,
	combout => nx51677z1);

nx28524z1_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- nx28524z1_a_wirecell_combout = !nx28524z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx28524z1,
	combout => nx28524z1_a_wirecell_combout);

reg_state_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx28524z1_a_wirecell_combout,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state_1_a);

reg_state_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => state_1_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state_2_a);

state_2_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- state_2_a_wirecell_combout = !state_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => state_2_a,
	combout => state_2_a_wirecell_combout);

reg_state_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => state_2_a_wirecell_combout,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx28524z1);

ix7740z43926 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(0),
	combout => i_pixel_acombout(0));

ix7740z43925 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(1),
	combout => i_pixel_acombout(1));

ix7740z43924 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(2),
	combout => i_pixel_acombout(2));

ix7740z43923 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(3),
	combout => i_pixel_acombout(3));

ix7740z43922 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(4),
	combout => i_pixel_acombout(4));

ix7740z43921 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(5),
	combout => i_pixel_acombout(5));

ix7740z43920 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(6),
	combout => i_pixel_acombout(6));

ix7740z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(7),
	combout => i_pixel_acombout(7));

ix20492z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx20492z1 = nx28524z1 & Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(7) # !nx28524z1 & (Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(7),
	datab => nx28524z1,
	datad => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(7),
	combout => nx20492z1);

Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_2:Generate_mem_2_u_mem0_mem|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => we_2_a,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

ix36625z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx36625z2 = !i_reset_acombout & i_valid_acombout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_reset_acombout,
	datac => i_valid_acombout,
	combout => nx36625z2);

reg_c_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx20492z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(7),
	sload => state_1_a,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_7_a);

reg_b_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_7_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_7_a);

e_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- e_7_afeeder_combout = i_pixel_acombout(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => i_pixel_acombout(7),
	combout => e_7_afeeder_combout);

reg_in_i_pixel_ibuf_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => e_7_afeeder_combout,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_7_a);

reg_f_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_7_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_7_a);

ix51677z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z3 = !validBit_0_a & (validBit_2_a # validBit_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => validBit_2_a,
	datab => validBit_1_a,
	datad => validBit_0_a,
	combout => nx51677z3);

ix51677z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z2 = nx51677z1 & (nx51677z3) # !nx51677z1 & (nx51677z3 & h_7_a # !nx51677z3 & (f_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_7_a,
	datab => nx51677z1,
	datac => f_7_a,
	datad => nx51677z3,
	combout => nx51677z2);

ix51677z52923 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f1_7_a = nx51677z1 & (nx51677z2 & d_7_a # !nx51677z2 & (b_7_a)) # !nx51677z1 & (nx51677z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_7_a,
	datab => nx51677z1,
	datac => b_7_a,
	datad => nx51677z2,
	combout => r2_6n3s1f1_7_a);

Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_0:Generate_mem_0_u_mem0_mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => we_0_a,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

ix35628z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx35628z1 = state_2_a & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(6) # !state_2_a & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(6),
	datab => state_2_a,
	datad => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(6),
	combout => nx35628z1);

reg_d_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx35628z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(6),
	sload => ALT_INV_nx28524z1,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_6_a);

ix21489z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx21489z1 = nx28524z1 & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(6)) # !nx28524z1 & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(6),
	datab => nx28524z1,
	datad => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(6),
	combout => nx21489z1);

reg_c_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx21489z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(6),
	sload => state_1_a,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_6_a);

reg_b_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_6_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_6_a);

i_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- i_6_afeeder_combout = d_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_6_a,
	combout => i_6_afeeder_combout);

reg_i_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => i_6_afeeder_combout,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_6_a);

reg_h_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_6_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_6_a);

reg_in_i_pixel_ibuf_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(6),
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_6_a);

reg_f_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_6_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_6_a);

ix51677z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z4 = nx51677z1 & nx51677z3 # !nx51677z1 & (nx51677z3 & h_6_a # !nx51677z3 & (f_6_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51677z1,
	datab => nx51677z3,
	datac => h_6_a,
	datad => f_6_a,
	combout => nx51677z4);

ix51677z52927 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f1_6_a = nx51677z1 & (nx51677z4 & d_6_a # !nx51677z4 & (b_6_a)) # !nx51677z1 & (nx51677z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51677z1,
	datab => d_6_a,
	datac => b_6_a,
	datad => nx51677z4,
	combout => r2_6n3s1f1_6_a);

ix22486z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx22486z1 = nx28524z1 & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(5)) # !nx28524z1 & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(5),
	datab => nx28524z1,
	datad => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(5),
	combout => nx22486z1);

reg_c_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx22486z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(5),
	sload => state_1_a,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_5_a);

reg_b_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_5_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_5_a);

reg_a_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_5_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_5_a);

ix51677z52942 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z11 = !validBit_0_a & (validBit_1_a # !validBit_2_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => validBit_1_a,
	datac => validBit_2_a,
	datad => validBit_0_a,
	combout => nx51677z11);

reg_in_i_pixel_ibuf_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(5),
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_5_a);

ix51677z52944 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z13 = validBit_0_a # !validBit_2_a & !validBit_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => validBit_2_a,
	datab => validBit_1_a,
	datad => validBit_0_a,
	combout => nx51677z13);

ix51677z52948 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z15 = nx51677z11 & (nx51677z13) # !nx51677z11 & (nx51677z13 & c_5_a # !nx51677z13 & (e_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_5_a,
	datab => nx51677z11,
	datac => e_5_a,
	datad => nx51677z13,
	combout => nx51677z15);

reg_f_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_5_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_5_a);

g_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- g_5_afeeder_combout = f_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_5_a,
	combout => g_5_afeeder_combout);

reg_g_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => g_5_afeeder_combout,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_5_a);

ix51677z52947 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f2_5_a = nx51677z11 & (nx51677z15 & (g_5_a) # !nx51677z15 & a_5_a) # !nx51677z11 & (nx51677z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51677z11,
	datab => a_5_a,
	datac => nx51677z15,
	datad => g_5_a,
	combout => r2_6n3s1f2_5_a);

ix23483z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx23483z1 = nx28524z1 & Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(4) # !nx28524z1 & (Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28524z1,
	datab => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(4),
	datad => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(4),
	combout => nx23483z1);

reg_c_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx23483z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(4),
	sload => state_1_a,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_4_a);

reg_b_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_4_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_4_a);

reg_a_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_4_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_4_a);

reg_in_i_pixel_ibuf_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(4),
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_4_a);

ix51677z52950 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z16 = nx51677z11 & (nx51677z13) # !nx51677z11 & (nx51677z13 & c_4_a # !nx51677z13 & (e_4_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51677z11,
	datab => c_4_a,
	datac => e_4_a,
	datad => nx51677z13,
	combout => nx51677z16);

ix51677z52949 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f2_4_a = nx51677z11 & (nx51677z16 & g_4_a # !nx51677z16 & (a_4_a)) # !nx51677z11 & (nx51677z16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => g_4_a,
	datab => nx51677z11,
	datac => a_4_a,
	datad => nx51677z16,
	combout => r2_6n3s1f2_4_a);

reg_in_i_pixel_ibuf_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(3),
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_3_a);

reg_f_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_3_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_3_a);

g_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- g_3_afeeder_combout = f_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_3_a,
	combout => g_3_afeeder_combout);

reg_g_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => g_3_afeeder_combout,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_3_a);

ix51677z52952 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z17 = nx51677z13 & (c_3_a # nx51677z11) # !nx51677z13 & (e_3_a & !nx51677z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_3_a,
	datab => nx51677z13,
	datac => e_3_a,
	datad => nx51677z11,
	combout => nx51677z17);

ix51677z52951 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f2_3_a = nx51677z11 & (nx51677z17 & (g_3_a) # !nx51677z17 & a_3_a) # !nx51677z11 & (nx51677z17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_3_a,
	datab => g_3_a,
	datac => nx51677z11,
	datad => nx51677z17,
	combout => r2_6n3s1f2_3_a);

e_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- e_2_afeeder_combout = i_pixel_acombout(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => i_pixel_acombout(2),
	combout => e_2_afeeder_combout);

reg_in_i_pixel_ibuf_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => e_2_afeeder_combout,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_2_a);

reg_f_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_2_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_2_a);

g_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- g_2_afeeder_combout = f_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => f_2_a,
	combout => g_2_afeeder_combout);

reg_g_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => g_2_afeeder_combout,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_2_a);

ix25477z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx25477z1 = nx28524z1 & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(2)) # !nx28524z1 & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28524z1,
	datab => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(2),
	datad => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(2),
	combout => nx25477z1);

reg_c_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx25477z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(2),
	sload => state_1_a,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_2_a);

ix51677z52954 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z18 = nx51677z13 & (c_2_a # nx51677z11) # !nx51677z13 & (e_2_a & !nx51677z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51677z13,
	datab => c_2_a,
	datac => e_2_a,
	datad => nx51677z11,
	combout => nx51677z18);

ix51677z52953 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f2_2_a = nx51677z11 & (nx51677z18 & (g_2_a) # !nx51677z18 & a_2_a) # !nx51677z11 & (nx51677z18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_2_a,
	datab => g_2_a,
	datac => nx51677z11,
	datad => nx51677z18,
	combout => r2_6n3s1f2_2_a);

ix30643z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx30643z1 = state_2_a & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(1) # !state_2_a & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_2_a,
	datab => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(1),
	datad => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(1),
	combout => nx30643z1);

reg_d_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx30643z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(1),
	sload => ALT_INV_nx28524z1,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_1_a);

ix26474z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx26474z1 = nx28524z1 & Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(1) # !nx28524z1 & (Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(1),
	datab => nx28524z1,
	datad => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(1),
	combout => nx26474z1);

reg_c_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx26474z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(1),
	sload => state_1_a,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_1_a);

reg_b_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_1_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_1_a);

reg_in_i_pixel_ibuf_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(1),
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_1_a);

reg_f_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_1_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_1_a);

reg_i_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_1_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_1_a);

reg_h_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_1_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_1_a);

ix51677z52938 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z9 = nx51677z1 & (nx51677z3) # !nx51677z1 & (nx51677z3 & (h_1_a) # !nx51677z3 & f_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51677z1,
	datab => f_1_a,
	datac => h_1_a,
	datad => nx51677z3,
	combout => nx51677z9);

ix51677z52937 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f1_1_a = nx51677z1 & (nx51677z9 & d_1_a # !nx51677z9 & (b_1_a)) # !nx51677z1 & (nx51677z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51677z1,
	datab => d_1_a,
	datac => b_1_a,
	datad => nx51677z9,
	combout => r2_6n3s1f1_1_a);

reg_in_i_pixel_ibuf_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(0),
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_0_a);

reg_f_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_0_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_0_a);

reg_g_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_0_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_0_a);

ix51677z52958 : cycloneii_lcell_comb
-- Equation(s):
-- nx51677z20 = nx51677z13 & (c_0_a # nx51677z11) # !nx51677z13 & (e_0_a & !nx51677z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_0_a,
	datab => nx51677z13,
	datac => e_0_a,
	datad => nx51677z11,
	combout => nx51677z20);

ix51677z52957 : cycloneii_lcell_comb
-- Equation(s):
-- r2_6n3s1f2_0_a = nx51677z11 & (nx51677z20 & (g_0_a) # !nx51677z20 & a_0_a) # !nx51677z11 & (nx51677z20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_0_a,
	datab => nx51677z11,
	datac => g_0_a,
	datad => nx51677z20,
	combout => r2_6n3s1f2_0_a);

r2_add8_6i49_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- r2_add8_6i49_anx37973z1 = r2_6n3s1f1_0_a & (r2_6n3s1f2_0_a $ VCC) # !r2_6n3s1f1_0_a & r2_6n3s1f2_0_a & VCC
-- r2_add8_6i49_anx44952z22 = CARRY(r2_6n3s1f1_0_a & r2_6n3s1f2_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r2_6n3s1f1_0_a,
	datab => r2_6n3s1f2_0_a,
	datad => VCC,
	combout => r2_add8_6i49_anx37973z1,
	cout => r2_add8_6i49_anx44952z22);

r2_add8_6i49_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- r2_add8_6i49_anx38970z1 = r2_6n3s1f2_1_a & (r2_6n3s1f1_1_a & r2_add8_6i49_anx44952z22 & VCC # !r2_6n3s1f1_1_a & !r2_add8_6i49_anx44952z22) # !r2_6n3s1f2_1_a & (r2_6n3s1f1_1_a & !r2_add8_6i49_anx44952z22 # !r2_6n3s1f1_1_a & (r2_add8_6i49_anx44952z22 # 
-- GND))
-- r2_add8_6i49_anx44952z19 = CARRY(r2_6n3s1f2_1_a & !r2_6n3s1f1_1_a & !r2_add8_6i49_anx44952z22 # !r2_6n3s1f2_1_a & (!r2_add8_6i49_anx44952z22 # !r2_6n3s1f1_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_6n3s1f2_1_a,
	datab => r2_6n3s1f1_1_a,
	datad => VCC,
	cin => r2_add8_6i49_anx44952z22,
	combout => r2_add8_6i49_anx38970z1,
	cout => r2_add8_6i49_anx44952z19);

r2_add8_6i49_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- r2_add8_6i49_anx39967z1 = (r2_6n3s1f1_2_a $ r2_6n3s1f2_2_a $ !r2_add8_6i49_anx44952z19) # GND
-- r2_add8_6i49_anx44952z16 = CARRY(r2_6n3s1f1_2_a & (r2_6n3s1f2_2_a # !r2_add8_6i49_anx44952z19) # !r2_6n3s1f1_2_a & r2_6n3s1f2_2_a & !r2_add8_6i49_anx44952z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_6n3s1f1_2_a,
	datab => r2_6n3s1f2_2_a,
	datad => VCC,
	cin => r2_add8_6i49_anx44952z19,
	combout => r2_add8_6i49_anx39967z1,
	cout => r2_add8_6i49_anx44952z16);

r2_add8_6i49_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- r2_add8_6i49_anx40964z1 = r2_6n3s1f1_3_a & (r2_6n3s1f2_3_a & r2_add8_6i49_anx44952z16 & VCC # !r2_6n3s1f2_3_a & !r2_add8_6i49_anx44952z16) # !r2_6n3s1f1_3_a & (r2_6n3s1f2_3_a & !r2_add8_6i49_anx44952z16 # !r2_6n3s1f2_3_a & (r2_add8_6i49_anx44952z16 # 
-- GND))
-- r2_add8_6i49_anx44952z13 = CARRY(r2_6n3s1f1_3_a & !r2_6n3s1f2_3_a & !r2_add8_6i49_anx44952z16 # !r2_6n3s1f1_3_a & (!r2_add8_6i49_anx44952z16 # !r2_6n3s1f2_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_6n3s1f1_3_a,
	datab => r2_6n3s1f2_3_a,
	datad => VCC,
	cin => r2_add8_6i49_anx44952z16,
	combout => r2_add8_6i49_anx40964z1,
	cout => r2_add8_6i49_anx44952z13);

r2_add8_6i49_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- r2_add8_6i49_anx41961z1 = (r2_6n3s1f1_4_a $ r2_6n3s1f2_4_a $ !r2_add8_6i49_anx44952z13) # GND
-- r2_add8_6i49_anx44952z10 = CARRY(r2_6n3s1f1_4_a & (r2_6n3s1f2_4_a # !r2_add8_6i49_anx44952z13) # !r2_6n3s1f1_4_a & r2_6n3s1f2_4_a & !r2_add8_6i49_anx44952z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_6n3s1f1_4_a,
	datab => r2_6n3s1f2_4_a,
	datad => VCC,
	cin => r2_add8_6i49_anx44952z13,
	combout => r2_add8_6i49_anx41961z1,
	cout => r2_add8_6i49_anx44952z10);

r2_add8_6i49_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- r2_add8_6i49_anx42958z1 = r2_6n3s1f1_5_a & (r2_6n3s1f2_5_a & r2_add8_6i49_anx44952z10 & VCC # !r2_6n3s1f2_5_a & !r2_add8_6i49_anx44952z10) # !r2_6n3s1f1_5_a & (r2_6n3s1f2_5_a & !r2_add8_6i49_anx44952z10 # !r2_6n3s1f2_5_a & (r2_add8_6i49_anx44952z10 # 
-- GND))
-- r2_add8_6i49_anx44952z7 = CARRY(r2_6n3s1f1_5_a & !r2_6n3s1f2_5_a & !r2_add8_6i49_anx44952z10 # !r2_6n3s1f1_5_a & (!r2_add8_6i49_anx44952z10 # !r2_6n3s1f2_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_6n3s1f1_5_a,
	datab => r2_6n3s1f2_5_a,
	datad => VCC,
	cin => r2_add8_6i49_anx44952z10,
	combout => r2_add8_6i49_anx42958z1,
	cout => r2_add8_6i49_anx44952z7);

r2_add8_6i49_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- r2_add8_6i49_anx43955z1 = (r2_6n3s1f2_6_a $ r2_6n3s1f1_6_a $ !r2_add8_6i49_anx44952z7) # GND
-- r2_add8_6i49_anx44952z4 = CARRY(r2_6n3s1f2_6_a & (r2_6n3s1f1_6_a # !r2_add8_6i49_anx44952z7) # !r2_6n3s1f2_6_a & r2_6n3s1f1_6_a & !r2_add8_6i49_anx44952z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_6n3s1f2_6_a,
	datab => r2_6n3s1f1_6_a,
	datad => VCC,
	cin => r2_add8_6i49_anx44952z7,
	combout => r2_add8_6i49_anx43955z1,
	cout => r2_add8_6i49_anx44952z4);

r2_add8_6i49_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- r2_add8_6i49_anx44952z1 = r2_6n3s1f2_7_a & (r2_6n3s1f1_7_a & r2_add8_6i49_anx44952z4 & VCC # !r2_6n3s1f1_7_a & !r2_add8_6i49_anx44952z4) # !r2_6n3s1f2_7_a & (r2_6n3s1f1_7_a & !r2_add8_6i49_anx44952z4 # !r2_6n3s1f1_7_a & (r2_add8_6i49_anx44952z4 # GND))
-- r2_add8_6i49_anx23445z2 = CARRY(r2_6n3s1f2_7_a & !r2_6n3s1f1_7_a & !r2_add8_6i49_anx44952z4 # !r2_6n3s1f2_7_a & (!r2_add8_6i49_anx44952z4 # !r2_6n3s1f1_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_6n3s1f2_7_a,
	datab => r2_6n3s1f1_7_a,
	datad => VCC,
	cin => r2_add8_6i49_anx44952z4,
	combout => r2_add8_6i49_anx44952z1,
	cout => r2_add8_6i49_anx23445z2);

r2_add8_6i49_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- r2_add8_6i49_anx23445z1 = !r2_add8_6i49_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => r2_add8_6i49_anx23445z2,
	combout => r2_add8_6i49_anx23445z1);

ix250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx250z1 = !validBit_1_a & !validBit_0_a & !validBit_2_a & validBit_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => validBit_1_a,
	datab => validBit_0_a,
	datac => validBit_2_a,
	datad => validBit_3_a,
	combout => nx250z1);

reg_r13_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r2_add8_6i49_anx23445z1,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_8_a);

reg_r2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r2_add8_6i49_anx44952z1,
	ena => nx51677z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_7_a);

r9_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r9_6_afeeder_combout = r2_add8_6i49_anx43955z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r2_add8_6i49_anx43955z1,
	combout => r9_6_afeeder_combout);

reg_r9_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r9_6_afeeder_combout,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_6_a);

r2_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r2_5_afeeder_combout = r2_add8_6i49_anx42958z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_add8_6i49_anx42958z1,
	combout => r2_5_afeeder_combout);

reg_r2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r2_5_afeeder_combout,
	ena => nx51677z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_5_a);

r2_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r2_4_afeeder_combout = r2_add8_6i49_anx41961z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_add8_6i49_anx41961z1,
	combout => r2_4_afeeder_combout);

reg_r2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r2_4_afeeder_combout,
	ena => nx51677z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_4_a);

r9_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r9_3_afeeder_combout = r2_add8_6i49_anx40964z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_add8_6i49_anx40964z1,
	combout => r9_3_afeeder_combout);

reg_r9_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r9_3_afeeder_combout,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_3_a);

r9_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r9_2_afeeder_combout = r2_add8_6i49_anx39967z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r2_add8_6i49_anx39967z1,
	combout => r9_2_afeeder_combout);

reg_r9_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r9_2_afeeder_combout,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_2_a);

r9_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r9_1_afeeder_combout = r2_add8_6i49_anx38970z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_add8_6i49_anx38970z1,
	combout => r9_1_afeeder_combout);

reg_r9_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r9_1_afeeder_combout,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_1_a);

r2_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r2_0_afeeder_combout = r2_add8_6i49_anx37973z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_add8_6i49_anx37973z1,
	combout => r2_0_afeeder_combout);

reg_r2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r2_0_afeeder_combout,
	ena => nx51677z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_0_a);

x_r6_add9_8i2_aix45949z52932 : cycloneii_lcell_comb
-- Equation(s):
-- x_r6_add9_8i2_anx37973z1 = r9_0_a & (r2_0_a $ VCC) # !r9_0_a & r2_0_a & VCC
-- x_r6_add9_8i2_anx45949z25 = CARRY(r9_0_a & r2_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r9_0_a,
	datab => r2_0_a,
	datad => VCC,
	combout => x_r6_add9_8i2_anx37973z1,
	cout => x_r6_add9_8i2_anx45949z25);

x_r6_add9_8i2_aix45949z52925 : cycloneii_lcell_comb
-- Equation(s):
-- x_r6_add9_8i2_anx44952z1 = r9_7_a & (r2_7_a & x_r6_add9_8i2_anx45949z7 & VCC # !r2_7_a & !x_r6_add9_8i2_anx45949z7) # !r9_7_a & (r2_7_a & !x_r6_add9_8i2_anx45949z7 # !r2_7_a & (x_r6_add9_8i2_anx45949z7 # GND))
-- x_r6_add9_8i2_anx45949z4 = CARRY(r9_7_a & !r2_7_a & !x_r6_add9_8i2_anx45949z7 # !r9_7_a & (!x_r6_add9_8i2_anx45949z7 # !r2_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9_7_a,
	datab => r2_7_a,
	datad => VCC,
	cin => x_r6_add9_8i2_anx45949z7,
	combout => x_r6_add9_8i2_anx44952z1,
	cout => x_r6_add9_8i2_anx45949z4);

reg_x_r6_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r6_add9_8i2_anx44952z1,
	ena => validBit_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r6_7_a);

reg_r2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r2_add8_6i49_anx43955z1,
	ena => nx51677z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_6_a);

reg_r2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r2_add8_6i49_anx40964z1,
	sload => VCC,
	ena => nx51677z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_3_a);

r2_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r2_2_afeeder_combout = r2_add8_6i49_anx39967z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_add8_6i49_anx39967z1,
	combout => r2_2_afeeder_combout);

reg_r2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r2_2_afeeder_combout,
	ena => nx51677z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_2_a);

r2_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r2_1_afeeder_combout = r2_add8_6i49_anx38970z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_add8_6i49_anx38970z1,
	combout => r2_1_afeeder_combout);

reg_r2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r2_1_afeeder_combout,
	ena => nx51677z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_1_a);

reg_x_r6_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r6_add9_8i2_anx37973z1,
	ena => validBit_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r6_0_a);

r14_add10_8i3_aix46946z52933 : cycloneii_lcell_comb
-- Equation(s):
-- r14_add10_8i3_anx37973z1 = r2_0_a & (x_r6_0_a $ VCC) # !r2_0_a & x_r6_0_a & VCC
-- r14_add10_8i3_anx46946z27 = CARRY(r2_0_a & x_r6_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r2_0_a,
	datab => x_r6_0_a,
	datad => VCC,
	combout => r14_add10_8i3_anx37973z1,
	cout => r14_add10_8i3_anx46946z27);

r14_add10_8i3_aix46946z52932 : cycloneii_lcell_comb
-- Equation(s):
-- r14_add10_8i3_anx38970z1 = x_r6_1_a & (r2_1_a & r14_add10_8i3_anx46946z27 & VCC # !r2_1_a & !r14_add10_8i3_anx46946z27) # !x_r6_1_a & (r2_1_a & !r14_add10_8i3_anx46946z27 # !r2_1_a & (r14_add10_8i3_anx46946z27 # GND))
-- r14_add10_8i3_anx46946z24 = CARRY(x_r6_1_a & !r2_1_a & !r14_add10_8i3_anx46946z27 # !x_r6_1_a & (!r14_add10_8i3_anx46946z27 # !r2_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r6_1_a,
	datab => r2_1_a,
	datad => VCC,
	cin => r14_add10_8i3_anx46946z27,
	combout => r14_add10_8i3_anx38970z1,
	cout => r14_add10_8i3_anx46946z24);

r14_add10_8i3_aix46946z52931 : cycloneii_lcell_comb
-- Equation(s):
-- r14_add10_8i3_anx39967z1 = (x_r6_2_a $ r2_2_a $ !r14_add10_8i3_anx46946z24) # GND
-- r14_add10_8i3_anx46946z21 = CARRY(x_r6_2_a & (r2_2_a # !r14_add10_8i3_anx46946z24) # !x_r6_2_a & r2_2_a & !r14_add10_8i3_anx46946z24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r6_2_a,
	datab => r2_2_a,
	datad => VCC,
	cin => r14_add10_8i3_anx46946z24,
	combout => r14_add10_8i3_anx39967z1,
	cout => r14_add10_8i3_anx46946z21);

r14_add10_8i3_aix46946z52929 : cycloneii_lcell_comb
-- Equation(s):
-- r14_add10_8i3_anx41961z1 = (x_r6_4_a $ r2_4_a $ !r14_add10_8i3_anx46946z18) # GND
-- r14_add10_8i3_anx46946z15 = CARRY(x_r6_4_a & (r2_4_a # !r14_add10_8i3_anx46946z18) # !x_r6_4_a & r2_4_a & !r14_add10_8i3_anx46946z18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r6_4_a,
	datab => r2_4_a,
	datad => VCC,
	cin => r14_add10_8i3_anx46946z18,
	combout => r14_add10_8i3_anx41961z1,
	cout => r14_add10_8i3_anx46946z15);

r14_add10_8i3_aix46946z52928 : cycloneii_lcell_comb
-- Equation(s):
-- r14_add10_8i3_anx42958z1 = x_r6_5_a & (r2_5_a & r14_add10_8i3_anx46946z15 & VCC # !r2_5_a & !r14_add10_8i3_anx46946z15) # !x_r6_5_a & (r2_5_a & !r14_add10_8i3_anx46946z15 # !r2_5_a & (r14_add10_8i3_anx46946z15 # GND))
-- r14_add10_8i3_anx46946z12 = CARRY(x_r6_5_a & !r2_5_a & !r14_add10_8i3_anx46946z15 # !x_r6_5_a & (!r14_add10_8i3_anx46946z15 # !r2_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r6_5_a,
	datab => r2_5_a,
	datad => VCC,
	cin => r14_add10_8i3_anx46946z15,
	combout => r14_add10_8i3_anx42958z1,
	cout => r14_add10_8i3_anx46946z12);

r14_add10_8i3_aix46946z52927 : cycloneii_lcell_comb
-- Equation(s):
-- r14_add10_8i3_anx43955z1 = (x_r6_6_a $ r2_6_a $ !r14_add10_8i3_anx46946z12) # GND
-- r14_add10_8i3_anx46946z9 = CARRY(x_r6_6_a & (r2_6_a # !r14_add10_8i3_anx46946z12) # !x_r6_6_a & r2_6_a & !r14_add10_8i3_anx46946z12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r6_6_a,
	datab => r2_6_a,
	datad => VCC,
	cin => r14_add10_8i3_anx46946z12,
	combout => r14_add10_8i3_anx43955z1,
	cout => r14_add10_8i3_anx46946z9);

r14_add10_8i3_aix46946z52926 : cycloneii_lcell_comb
-- Equation(s):
-- r14_add10_8i3_anx44952z1 = r2_7_a & (x_r6_7_a & r14_add10_8i3_anx46946z9 & VCC # !x_r6_7_a & !r14_add10_8i3_anx46946z9) # !r2_7_a & (x_r6_7_a & !r14_add10_8i3_anx46946z9 # !x_r6_7_a & (r14_add10_8i3_anx46946z9 # GND))
-- r14_add10_8i3_anx46946z6 = CARRY(r2_7_a & !x_r6_7_a & !r14_add10_8i3_anx46946z9 # !r2_7_a & (!r14_add10_8i3_anx46946z9 # !x_r6_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_7_a,
	datab => x_r6_7_a,
	datad => VCC,
	cin => r14_add10_8i3_anx46946z9,
	combout => r14_add10_8i3_anx44952z1,
	cout => r14_add10_8i3_anx46946z6);

ix16422z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx16422z1 = validBit_3_a & !validBit_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => validBit_3_a,
	datad => validBit_2_a,
	combout => nx16422z1);

reg_r14_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_add10_8i3_anx44952z1,
	ena => nx16422z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_7_a);

reg_r14_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_add10_8i3_anx43955z1,
	ena => nx16422z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_6_a);

reg_r14_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_add10_8i3_anx42958z1,
	ena => nx16422z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_5_a);

reg_r14_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_add10_8i3_anx41961z1,
	ena => nx16422z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_4_a);

reg_r13_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r2_add8_6i49_anx40964z1,
	sload => VCC,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_3_a);

reg_r14_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_add10_8i3_anx39967z1,
	ena => nx16422z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_2_a);

reg_r14_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_add10_8i3_anx38970z1,
	ena => nx16422z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_1_a);

reg_r14_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_add10_8i3_anx37973z1,
	ena => nx16422z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_0_a);

x_r12_add11_8i4_aix62798z52934 : cycloneii_lcell_comb
-- Equation(s):
-- x_r12_add11_8i4_anx37973z1 = r13_0_a & (r14_0_a $ VCC) # !r13_0_a & r14_0_a & VCC
-- x_r12_add11_8i4_anx62798z29 = CARRY(r13_0_a & r14_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r13_0_a,
	datab => r14_0_a,
	datad => VCC,
	combout => x_r12_add11_8i4_anx37973z1,
	cout => x_r12_add11_8i4_anx62798z29);

x_r12_add11_8i4_aix62798z52932 : cycloneii_lcell_comb
-- Equation(s):
-- x_r12_add11_8i4_anx39967z1 = (r13_2_a $ r14_2_a $ !x_r12_add11_8i4_anx62798z26) # GND
-- x_r12_add11_8i4_anx62798z23 = CARRY(r13_2_a & (r14_2_a # !x_r12_add11_8i4_anx62798z26) # !r13_2_a & r14_2_a & !x_r12_add11_8i4_anx62798z26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_2_a,
	datab => r14_2_a,
	datad => VCC,
	cin => x_r12_add11_8i4_anx62798z26,
	combout => x_r12_add11_8i4_anx39967z1,
	cout => x_r12_add11_8i4_anx62798z23);

x_r12_add11_8i4_aix62798z52931 : cycloneii_lcell_comb
-- Equation(s):
-- x_r12_add11_8i4_anx40964z1 = r14_3_a & (r13_3_a & x_r12_add11_8i4_anx62798z23 & VCC # !r13_3_a & !x_r12_add11_8i4_anx62798z23) # !r14_3_a & (r13_3_a & !x_r12_add11_8i4_anx62798z23 # !r13_3_a & (x_r12_add11_8i4_anx62798z23 # GND))
-- x_r12_add11_8i4_anx62798z20 = CARRY(r14_3_a & !r13_3_a & !x_r12_add11_8i4_anx62798z23 # !r14_3_a & (!x_r12_add11_8i4_anx62798z23 # !r13_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r14_3_a,
	datab => r13_3_a,
	datad => VCC,
	cin => x_r12_add11_8i4_anx62798z23,
	combout => x_r12_add11_8i4_anx40964z1,
	cout => x_r12_add11_8i4_anx62798z20);

x_r12_add11_8i4_aix62798z52929 : cycloneii_lcell_comb
-- Equation(s):
-- x_r12_add11_8i4_anx42958z1 = r13_5_a & (r14_5_a & x_r12_add11_8i4_anx62798z17 & VCC # !r14_5_a & !x_r12_add11_8i4_anx62798z17) # !r13_5_a & (r14_5_a & !x_r12_add11_8i4_anx62798z17 # !r14_5_a & (x_r12_add11_8i4_anx62798z17 # GND))
-- x_r12_add11_8i4_anx62798z14 = CARRY(r13_5_a & !r14_5_a & !x_r12_add11_8i4_anx62798z17 # !r13_5_a & (!x_r12_add11_8i4_anx62798z17 # !r14_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_5_a,
	datab => r14_5_a,
	datad => VCC,
	cin => x_r12_add11_8i4_anx62798z17,
	combout => x_r12_add11_8i4_anx42958z1,
	cout => x_r12_add11_8i4_anx62798z14);

x_r12_add11_8i4_aix62798z52928 : cycloneii_lcell_comb
-- Equation(s):
-- x_r12_add11_8i4_anx43955z1 = (r13_6_a $ r14_6_a $ !x_r12_add11_8i4_anx62798z14) # GND
-- x_r12_add11_8i4_anx62798z11 = CARRY(r13_6_a & (r14_6_a # !x_r12_add11_8i4_anx62798z14) # !r13_6_a & r14_6_a & !x_r12_add11_8i4_anx62798z14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_6_a,
	datab => r14_6_a,
	datad => VCC,
	cin => x_r12_add11_8i4_anx62798z14,
	combout => x_r12_add11_8i4_anx43955z1,
	cout => x_r12_add11_8i4_anx62798z11);

x_r12_add11_8i4_aix62798z52926 : cycloneii_lcell_comb
-- Equation(s):
-- x_r12_add11_8i4_anx45949z1 = (r14_8_a $ r13_8_a $ !x_r12_add11_8i4_anx62798z8) # GND
-- x_r12_add11_8i4_anx62798z5 = CARRY(r14_8_a & (r13_8_a # !x_r12_add11_8i4_anx62798z8) # !r14_8_a & r13_8_a & !x_r12_add11_8i4_anx62798z8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r14_8_a,
	datab => r13_8_a,
	datad => VCC,
	cin => x_r12_add11_8i4_anx62798z8,
	combout => x_r12_add11_8i4_anx45949z1,
	cout => x_r12_add11_8i4_anx62798z5);

ix58464z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx58464z1 = !validBit_2_a & validBit_4_a & !validBit_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => validBit_2_a,
	datac => validBit_4_a,
	datad => validBit_3_a,
	combout => nx58464z1);

reg_x_r12_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r12_add11_8i4_anx45949z1,
	ena => nx58464z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r12_8_a);

reg_x_r12_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r12_add11_8i4_anx43955z1,
	ena => nx58464z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r12_6_a);

reg_x_r12_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r12_add11_8i4_anx42958z1,
	ena => nx58464z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r12_5_a);

reg_x_r12_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r12_add11_8i4_anx40964z1,
	ena => nx58464z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r12_3_a);

reg_x_r12_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r12_add11_8i4_anx39967z1,
	ena => nx58464z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r12_2_a);

reg_x_r12_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r12_add11_8i4_anx37973z1,
	ena => nx58464z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r12_0_a);

x_r22_add12_8i1_aix63795z52934 : cycloneii_lcell_comb
-- Equation(s):
-- x_r22_add12_8i1_anx38970z1 = x_r12_1_a & (x_r12_2_a & x_r22_add12_8i1_anx63795z23 & VCC # !x_r12_2_a & !x_r22_add12_8i1_anx63795z23) # !x_r12_1_a & (x_r12_2_a & !x_r22_add12_8i1_anx63795z23 # !x_r12_2_a & (x_r22_add12_8i1_anx63795z23 # GND))
-- x_r22_add12_8i1_anx63795z21 = CARRY(x_r12_1_a & !x_r12_2_a & !x_r22_add12_8i1_anx63795z23 # !x_r12_1_a & (!x_r22_add12_8i1_anx63795z23 # !x_r12_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r12_1_a,
	datab => x_r12_2_a,
	datad => VCC,
	cin => x_r22_add12_8i1_anx63795z23,
	combout => x_r22_add12_8i1_anx38970z1,
	cout => x_r22_add12_8i1_anx63795z21);

x_r22_add12_8i1_aix63795z52931 : cycloneii_lcell_comb
-- Equation(s):
-- x_r22_add12_8i1_anx41961z1 = (x_r12_4_a $ x_r12_5_a $ !x_r22_add12_8i1_anx63795z17) # GND
-- x_r22_add12_8i1_anx63795z15 = CARRY(x_r12_4_a & (x_r12_5_a # !x_r22_add12_8i1_anx63795z17) # !x_r12_4_a & x_r12_5_a & !x_r22_add12_8i1_anx63795z17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r12_4_a,
	datab => x_r12_5_a,
	datad => VCC,
	cin => x_r22_add12_8i1_anx63795z17,
	combout => x_r22_add12_8i1_anx41961z1,
	cout => x_r22_add12_8i1_anx63795z15);

x_r22_add12_8i1_aix63795z52930 : cycloneii_lcell_comb
-- Equation(s):
-- x_r22_add12_8i1_anx42958z1 = x_r12_5_a & (x_r12_6_a & x_r22_add12_8i1_anx63795z15 & VCC # !x_r12_6_a & !x_r22_add12_8i1_anx63795z15) # !x_r12_5_a & (x_r12_6_a & !x_r22_add12_8i1_anx63795z15 # !x_r12_6_a & (x_r22_add12_8i1_anx63795z15 # GND))
-- x_r22_add12_8i1_anx63795z13 = CARRY(x_r12_5_a & !x_r12_6_a & !x_r22_add12_8i1_anx63795z15 # !x_r12_5_a & (!x_r22_add12_8i1_anx63795z15 # !x_r12_6_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r12_5_a,
	datab => x_r12_6_a,
	datad => VCC,
	cin => x_r22_add12_8i1_anx63795z15,
	combout => x_r22_add12_8i1_anx42958z1,
	cout => x_r22_add12_8i1_anx63795z13);

x_r22_add12_8i1_aix63795z52928 : cycloneii_lcell_comb
-- Equation(s):
-- x_r22_add12_8i1_anx44952z1 = x_r12_7_a & (x_r12_8_a & x_r22_add12_8i1_anx63795z11 & VCC # !x_r12_8_a & !x_r22_add12_8i1_anx63795z11) # !x_r12_7_a & (x_r12_8_a & !x_r22_add12_8i1_anx63795z11 # !x_r12_8_a & (x_r22_add12_8i1_anx63795z11 # GND))
-- x_r22_add12_8i1_anx63795z9 = CARRY(x_r12_7_a & !x_r12_8_a & !x_r22_add12_8i1_anx63795z11 # !x_r12_7_a & (!x_r22_add12_8i1_anx63795z11 # !x_r12_8_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r12_7_a,
	datab => x_r12_8_a,
	datad => VCC,
	cin => x_r22_add12_8i1_anx63795z11,
	combout => x_r22_add12_8i1_anx44952z1,
	cout => x_r22_add12_8i1_anx63795z9);

ix65254z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx65254z1 = validBit_5_a & !validBit_4_a & !validBit_3_a & !validBit_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => validBit_5_a,
	datab => validBit_4_a,
	datac => validBit_3_a,
	datad => validBit_2_a,
	combout => nx65254z1);

reg_x_r22_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r22_add12_8i1_anx44952z1,
	ena => nx65254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r22_8_a);

r5_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_3_afeeder_combout = g_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => g_3_a,
	combout => r5_3_afeeder_combout);

ix24480z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx24480z1 = nx28524z1 & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(3)) # !nx28524z1 & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(3),
	datab => nx28524z1,
	datad => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(3),
	combout => nx24480z1);

reg_c_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx24480z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(3),
	sload => state_1_a,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_3_a);

reg_b_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_3_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_3_a);

reg_f_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_4_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_4_a);

reg_g_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_4_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_4_a);

reg_b_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_2_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_2_a);

reg_g_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_1_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_1_a);

ix7380z18833_aix100z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix7380z18833_anx100z22 = CARRY(b_0_a & !g_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_0_a,
	datab => g_0_a,
	datad => VCC,
	cout => ix7380z18833_anx100z22);

ix7380z18833_aix100z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix7380z18833_anx100z19 = CARRY(b_1_a & g_1_a & !ix7380z18833_anx100z22 # !b_1_a & (g_1_a # !ix7380z18833_anx100z22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => g_1_a,
	datad => VCC,
	cin => ix7380z18833_anx100z22,
	cout => ix7380z18833_anx100z19);

ix7380z18833_aix100z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix7380z18833_anx100z16 = CARRY(g_2_a & b_2_a & !ix7380z18833_anx100z19 # !g_2_a & (b_2_a # !ix7380z18833_anx100z19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => g_2_a,
	datab => b_2_a,
	datad => VCC,
	cin => ix7380z18833_anx100z19,
	cout => ix7380z18833_anx100z16);

ix7380z18833_aix100z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix7380z18833_anx100z13 = CARRY(b_3_a & g_3_a & !ix7380z18833_anx100z16 # !b_3_a & (g_3_a # !ix7380z18833_anx100z16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_3_a,
	datab => g_3_a,
	datad => VCC,
	cin => ix7380z18833_anx100z16,
	cout => ix7380z18833_anx100z13);

ix7380z18833_aix100z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix7380z18833_anx100z10 = CARRY(b_4_a & (!ix7380z18833_anx100z13 # !g_4_a) # !b_4_a & !g_4_a & !ix7380z18833_anx100z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_4_a,
	datab => g_4_a,
	datad => VCC,
	cin => ix7380z18833_anx100z13,
	cout => ix7380z18833_anx100z10);

ix7380z18833_aix100z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix7380z18833_anx100z7 = CARRY(g_5_a & (!ix7380z18833_anx100z10 # !b_5_a) # !g_5_a & !b_5_a & !ix7380z18833_anx100z10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => g_5_a,
	datab => b_5_a,
	datad => VCC,
	cin => ix7380z18833_anx100z10,
	cout => ix7380z18833_anx100z7);

ix7380z18833_aix100z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix7380z18833_anx100z4 = CARRY(g_6_a & b_6_a & !ix7380z18833_anx100z7 # !g_6_a & (b_6_a # !ix7380z18833_anx100z7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => g_6_a,
	datab => b_6_a,
	datad => VCC,
	cin => ix7380z18833_anx100z7,
	cout => ix7380z18833_anx100z4);

ix7380z18833_aix100z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix7380z18833_anx100z1 = g_7_a & ix7380z18833_anx100z4 & b_7_a # !g_7_a & (ix7380z18833_anx100z4 # b_7_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => g_7_a,
	datad => b_7_a,
	cin => ix7380z18833_anx100z4,
	combout => ix7380z18833_anx100z1);

ix7380z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx7380z1 = validBit_1_a & !validBit_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => validBit_1_a,
	datac => validBit_0_a,
	combout => nx7380z1);

reg_r5_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_3_afeeder_combout,
	sdata => b_3_a,
	sload => ix7380z18833_anx100z1,
	ena => nx7380z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_3_a);

x_r5_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r5_3_afeeder_combout = c_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => c_3_a,
	combout => x_r5_3_afeeder_combout);

ix27471z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx27471z1 = nx28524z1 & Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(0) # !nx28524z1 & (Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(0),
	datab => nx28524z1,
	datad => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(0),
	combout => nx27471z1);

reg_c_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx27471z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(0),
	sload => state_1_a,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_0_a);

ix27953z18832_aix100z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix27953z18832_anx100z22 = CARRY(f_0_a & !c_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_0_a,
	datab => c_0_a,
	datad => VCC,
	cout => ix27953z18832_anx100z22);

ix27953z18832_aix100z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix27953z18832_anx100z19 = CARRY(f_1_a & c_1_a & !ix27953z18832_anx100z22 # !f_1_a & (c_1_a # !ix27953z18832_anx100z22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_1_a,
	datab => c_1_a,
	datad => VCC,
	cin => ix27953z18832_anx100z22,
	cout => ix27953z18832_anx100z19);

ix27953z18832_aix100z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix27953z18832_anx100z16 = CARRY(c_2_a & f_2_a & !ix27953z18832_anx100z19 # !c_2_a & (f_2_a # !ix27953z18832_anx100z19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => c_2_a,
	datab => f_2_a,
	datad => VCC,
	cin => ix27953z18832_anx100z19,
	cout => ix27953z18832_anx100z16);

ix27953z18832_aix100z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix27953z18832_anx100z13 = CARRY(c_3_a & (!ix27953z18832_anx100z16 # !f_3_a) # !c_3_a & !f_3_a & !ix27953z18832_anx100z16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => c_3_a,
	datab => f_3_a,
	datad => VCC,
	cin => ix27953z18832_anx100z16,
	cout => ix27953z18832_anx100z13);

ix27953z18832_aix100z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix27953z18832_anx100z10 = CARRY(c_4_a & f_4_a & !ix27953z18832_anx100z13 # !c_4_a & (f_4_a # !ix27953z18832_anx100z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => c_4_a,
	datab => f_4_a,
	datad => VCC,
	cin => ix27953z18832_anx100z13,
	cout => ix27953z18832_anx100z10);

ix27953z18832_aix100z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix27953z18832_anx100z7 = CARRY(f_5_a & c_5_a & !ix27953z18832_anx100z10 # !f_5_a & (c_5_a # !ix27953z18832_anx100z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => f_5_a,
	datab => c_5_a,
	datad => VCC,
	cin => ix27953z18832_anx100z10,
	cout => ix27953z18832_anx100z7);

ix27953z18832_aix100z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix27953z18832_anx100z4 = CARRY(c_6_a & f_6_a & !ix27953z18832_anx100z7 # !c_6_a & (f_6_a # !ix27953z18832_anx100z7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => c_6_a,
	datab => f_6_a,
	datad => VCC,
	cin => ix27953z18832_anx100z7,
	cout => ix27953z18832_anx100z4);

ix27953z18832_aix100z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix27953z18832_anx100z1 = c_7_a & ix27953z18832_anx100z4 & f_7_a # !c_7_a & (ix27953z18832_anx100z4 # f_7_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => c_7_a,
	datad => f_7_a,
	cin => ix27953z18832_anx100z4,
	combout => ix27953z18832_anx100z1);

ix27953z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx27953z1 = !validBit_0_a & validBit_2_a & !validBit_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => validBit_0_a,
	datab => validBit_2_a,
	datac => validBit_1_a,
	combout => nx27953z1);

reg_x_r5_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r5_3_afeeder_combout,
	sdata => f_3_a,
	sload => ix27953z18832_anx100z1,
	ena => nx27953z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r5_3_a);

ix8431z52927 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_7n3s1f1_3_a = validBit_2_a & r5_3_a # !validBit_2_a & (x_r5_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => validBit_2_a,
	datac => r5_3_a,
	datad => x_r5_3_a,
	combout => x_r3_7n3s1f1_3_a);

r5_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_2_afeeder_combout = g_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => g_2_a,
	combout => r5_2_afeeder_combout);

reg_r5_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_2_afeeder_combout,
	sdata => b_2_a,
	sload => ix7380z18833_anx100z1,
	ena => nx7380z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_2_a);

x_r5_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r5_2_afeeder_combout = c_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => c_2_a,
	combout => x_r5_2_afeeder_combout);

reg_x_r5_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r5_2_afeeder_combout,
	sdata => f_2_a,
	sload => ix27953z18832_anx100z1,
	ena => nx27953z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r5_2_a);

ix8431z52928 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_7n3s1f1_2_a = validBit_2_a & r5_2_a # !validBit_2_a & (x_r5_2_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => validBit_2_a,
	datac => r5_2_a,
	datad => x_r5_2_a,
	combout => x_r3_7n3s1f1_2_a);

x_r5_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r5_0_afeeder_combout = c_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => c_0_a,
	combout => x_r5_0_afeeder_combout);

reg_x_r5_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r5_0_afeeder_combout,
	sdata => f_0_a,
	sload => ix27953z18832_anx100z1,
	ena => nx27953z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r5_0_a);

r5_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_0_afeeder_combout = g_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => g_0_a,
	combout => r5_0_afeeder_combout);

reg_b_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_0_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_0_a);

reg_r5_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_0_afeeder_combout,
	sdata => b_0_a,
	sload => ix7380z18833_anx100z1,
	ena => nx7380z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_0_a);

ix8431z52930 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_7n3s1f1_0_a = validBit_2_a & (r5_0_a) # !validBit_2_a & x_r5_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_r5_0_a,
	datac => r5_0_a,
	datad => validBit_2_a,
	combout => x_r3_7n3s1f1_0_a);

x_r3_add9_7i9_aix45949z52932 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_add9_7i9_anx37973z1 = r2_0_a & (x_r3_7n3s1f1_0_a $ VCC) # !r2_0_a & x_r3_7n3s1f1_0_a & VCC
-- x_r3_add9_7i9_anx45949z24 = CARRY(r2_0_a & x_r3_7n3s1f1_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r2_0_a,
	datab => x_r3_7n3s1f1_0_a,
	datad => VCC,
	combout => x_r3_add9_7i9_anx37973z1,
	cout => x_r3_add9_7i9_anx45949z24);

x_r3_add9_7i9_aix45949z52931 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_add9_7i9_anx38970z1 = x_r3_7n3s1f1_1_a & (r2_1_a & x_r3_add9_7i9_anx45949z24 & VCC # !r2_1_a & !x_r3_add9_7i9_anx45949z24) # !x_r3_7n3s1f1_1_a & (r2_1_a & !x_r3_add9_7i9_anx45949z24 # !r2_1_a & (x_r3_add9_7i9_anx45949z24 # GND))
-- x_r3_add9_7i9_anx45949z21 = CARRY(x_r3_7n3s1f1_1_a & !r2_1_a & !x_r3_add9_7i9_anx45949z24 # !x_r3_7n3s1f1_1_a & (!x_r3_add9_7i9_anx45949z24 # !r2_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r3_7n3s1f1_1_a,
	datab => r2_1_a,
	datad => VCC,
	cin => x_r3_add9_7i9_anx45949z24,
	combout => x_r3_add9_7i9_anx38970z1,
	cout => x_r3_add9_7i9_anx45949z21);

x_r3_add9_7i9_aix45949z52930 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_add9_7i9_anx39967z1 = (r2_2_a $ x_r3_7n3s1f1_2_a $ !x_r3_add9_7i9_anx45949z21) # GND
-- x_r3_add9_7i9_anx45949z18 = CARRY(r2_2_a & (x_r3_7n3s1f1_2_a # !x_r3_add9_7i9_anx45949z21) # !r2_2_a & x_r3_7n3s1f1_2_a & !x_r3_add9_7i9_anx45949z21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_2_a,
	datab => x_r3_7n3s1f1_2_a,
	datad => VCC,
	cin => x_r3_add9_7i9_anx45949z21,
	combout => x_r3_add9_7i9_anx39967z1,
	cout => x_r3_add9_7i9_anx45949z18);

x_r3_add9_7i9_aix45949z52929 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_add9_7i9_anx40964z1 = r2_3_a & (x_r3_7n3s1f1_3_a & x_r3_add9_7i9_anx45949z18 & VCC # !x_r3_7n3s1f1_3_a & !x_r3_add9_7i9_anx45949z18) # !r2_3_a & (x_r3_7n3s1f1_3_a & !x_r3_add9_7i9_anx45949z18 # !x_r3_7n3s1f1_3_a & (x_r3_add9_7i9_anx45949z18 # GND))
-- x_r3_add9_7i9_anx45949z15 = CARRY(r2_3_a & !x_r3_7n3s1f1_3_a & !x_r3_add9_7i9_anx45949z18 # !r2_3_a & (!x_r3_add9_7i9_anx45949z18 # !x_r3_7n3s1f1_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_3_a,
	datab => x_r3_7n3s1f1_3_a,
	datad => VCC,
	cin => x_r3_add9_7i9_anx45949z18,
	combout => x_r3_add9_7i9_anx40964z1,
	cout => x_r3_add9_7i9_anx45949z15);

x_r3_add9_7i9_aix45949z52928 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_add9_7i9_anx41961z1 = (x_r3_7n3s1f1_4_a $ r2_4_a $ !x_r3_add9_7i9_anx45949z15) # GND
-- x_r3_add9_7i9_anx45949z12 = CARRY(x_r3_7n3s1f1_4_a & (r2_4_a # !x_r3_add9_7i9_anx45949z15) # !x_r3_7n3s1f1_4_a & r2_4_a & !x_r3_add9_7i9_anx45949z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r3_7n3s1f1_4_a,
	datab => r2_4_a,
	datad => VCC,
	cin => x_r3_add9_7i9_anx45949z15,
	combout => x_r3_add9_7i9_anx41961z1,
	cout => x_r3_add9_7i9_anx45949z12);

ix56415z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx56415z1 = validBit_2_a & !validBit_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => validBit_2_a,
	datac => validBit_1_a,
	combout => nx56415z1);

reg_x_r3_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => x_r3_add9_7i9_anx41961z1,
	sload => VCC,
	ena => nx56415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r3_4_a);

r15_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r15_4_afeeder_combout = x_r3_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_r3_4_a,
	combout => r15_4_afeeder_combout);

r9_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r9_4_afeeder_combout = r2_add8_6i49_anx41961z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r2_add8_6i49_anx41961z1,
	combout => r9_4_afeeder_combout);

reg_r9_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r9_4_afeeder_combout,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_4_a);

reg_a_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_3_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_3_a);

r10_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r10_3_afeeder_combout = a_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_3_a,
	combout => r10_3_afeeder_combout);

ix32637z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx32637z1 = state_2_a & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(3) # !state_2_a & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(3),
	datab => state_2_a,
	datad => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(3),
	combout => nx32637z1);

reg_d_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx32637z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(3),
	sload => ALT_INV_nx28524z1,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_3_a);

reg_a_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_7_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_7_a);

ix33634z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx33634z1 = state_2_a & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(4) # !state_2_a & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(4),
	datab => state_2_a,
	datad => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(4),
	combout => nx33634z1);

reg_d_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx33634z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(4),
	sload => ALT_INV_nx28524z1,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_4_a);

reg_a_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_2_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_2_a);

reg_a_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_1_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_1_a);

reg_a_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_0_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_0_a);

ix48448z18833_aix100z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix48448z18833_anx100z22 = CARRY(d_0_a & !a_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_0_a,
	datab => a_0_a,
	datad => VCC,
	cout => ix48448z18833_anx100z22);

ix48448z18833_aix100z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix48448z18833_anx100z19 = CARRY(d_1_a & a_1_a & !ix48448z18833_anx100z22 # !d_1_a & (a_1_a # !ix48448z18833_anx100z22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d_1_a,
	datab => a_1_a,
	datad => VCC,
	cin => ix48448z18833_anx100z22,
	cout => ix48448z18833_anx100z19);

ix48448z18833_aix100z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix48448z18833_anx100z16 = CARRY(d_2_a & (!ix48448z18833_anx100z19 # !a_2_a) # !d_2_a & !a_2_a & !ix48448z18833_anx100z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d_2_a,
	datab => a_2_a,
	datad => VCC,
	cin => ix48448z18833_anx100z19,
	cout => ix48448z18833_anx100z16);

ix48448z18833_aix100z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix48448z18833_anx100z13 = CARRY(d_3_a & a_3_a & !ix48448z18833_anx100z16 # !d_3_a & (a_3_a # !ix48448z18833_anx100z16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d_3_a,
	datab => a_3_a,
	datad => VCC,
	cin => ix48448z18833_anx100z16,
	cout => ix48448z18833_anx100z13);

ix48448z18833_aix100z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix48448z18833_anx100z10 = CARRY(a_4_a & d_4_a & !ix48448z18833_anx100z13 # !a_4_a & (d_4_a # !ix48448z18833_anx100z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_4_a,
	datab => d_4_a,
	datad => VCC,
	cin => ix48448z18833_anx100z13,
	cout => ix48448z18833_anx100z10);

ix48448z18833_aix100z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix48448z18833_anx100z7 = CARRY(d_5_a & a_5_a & !ix48448z18833_anx100z10 # !d_5_a & (a_5_a # !ix48448z18833_anx100z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d_5_a,
	datab => a_5_a,
	datad => VCC,
	cin => ix48448z18833_anx100z10,
	cout => ix48448z18833_anx100z7);

ix48448z18833_aix100z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix48448z18833_anx100z4 = CARRY(a_6_a & d_6_a & !ix48448z18833_anx100z7 # !a_6_a & (d_6_a # !ix48448z18833_anx100z7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_6_a,
	datab => d_6_a,
	datad => VCC,
	cin => ix48448z18833_anx100z7,
	cout => ix48448z18833_anx100z4);

ix48448z18833_aix100z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix48448z18833_anx100z1 = d_7_a & (ix48448z18833_anx100z4 # !a_7_a) # !d_7_a & ix48448z18833_anx100z4 & !a_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d_7_a,
	datad => a_7_a,
	cin => ix48448z18833_anx100z4,
	combout => ix48448z18833_anx100z1);

reg_r10_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r10_3_afeeder_combout,
	sdata => d_3_a,
	sload => ix48448z18833_anx100z1,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r10_3_a);

r10_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r10_1_afeeder_combout = a_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => a_1_a,
	combout => r10_1_afeeder_combout);

reg_r10_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r10_1_afeeder_combout,
	sdata => d_1_a,
	sload => ix48448z18833_anx100z1,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r10_1_a);

r10_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r10_0_afeeder_combout = a_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => a_0_a,
	combout => r10_0_afeeder_combout);

ix29646z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx29646z1 = state_2_a & (Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(0)) # !state_2_a & Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state_2_a,
	datab => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(0),
	datad => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(0),
	combout => nx29646z1);

reg_d_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx29646z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(0),
	sload => ALT_INV_nx28524z1,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_0_a);

reg_r10_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r10_0_afeeder_combout,
	sdata => d_0_a,
	sload => ix48448z18833_anx100z1,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r10_0_a);

b_d1_add9_7i10_aix45949z52932 : cycloneii_lcell_comb
-- Equation(s):
-- b_d1_add9_7i10_anx37973z1 = r9_0_a & (r10_0_a $ VCC) # !r9_0_a & r10_0_a & VCC
-- b_d1_add9_7i10_anx45949z24 = CARRY(r9_0_a & r10_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r9_0_a,
	datab => r10_0_a,
	datad => VCC,
	combout => b_d1_add9_7i10_anx37973z1,
	cout => b_d1_add9_7i10_anx45949z24);

b_d1_add9_7i10_aix45949z52931 : cycloneii_lcell_comb
-- Equation(s):
-- b_d1_add9_7i10_anx38970z1 = r9_1_a & (r10_1_a & b_d1_add9_7i10_anx45949z24 & VCC # !r10_1_a & !b_d1_add9_7i10_anx45949z24) # !r9_1_a & (r10_1_a & !b_d1_add9_7i10_anx45949z24 # !r10_1_a & (b_d1_add9_7i10_anx45949z24 # GND))
-- b_d1_add9_7i10_anx45949z21 = CARRY(r9_1_a & !r10_1_a & !b_d1_add9_7i10_anx45949z24 # !r9_1_a & (!b_d1_add9_7i10_anx45949z24 # !r10_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9_1_a,
	datab => r10_1_a,
	datad => VCC,
	cin => b_d1_add9_7i10_anx45949z24,
	combout => b_d1_add9_7i10_anx38970z1,
	cout => b_d1_add9_7i10_anx45949z21);

b_d1_add9_7i10_aix45949z52929 : cycloneii_lcell_comb
-- Equation(s):
-- b_d1_add9_7i10_anx40964z1 = r9_3_a & (r10_3_a & b_d1_add9_7i10_anx45949z18 & VCC # !r10_3_a & !b_d1_add9_7i10_anx45949z18) # !r9_3_a & (r10_3_a & !b_d1_add9_7i10_anx45949z18 # !r10_3_a & (b_d1_add9_7i10_anx45949z18 # GND))
-- b_d1_add9_7i10_anx45949z15 = CARRY(r9_3_a & !r10_3_a & !b_d1_add9_7i10_anx45949z18 # !r9_3_a & (!b_d1_add9_7i10_anx45949z18 # !r10_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9_3_a,
	datab => r10_3_a,
	datad => VCC,
	cin => b_d1_add9_7i10_anx45949z18,
	combout => b_d1_add9_7i10_anx40964z1,
	cout => b_d1_add9_7i10_anx45949z15);

b_d1_add9_7i10_aix45949z52928 : cycloneii_lcell_comb
-- Equation(s):
-- b_d1_add9_7i10_anx41961z1 = (r10_4_a $ r9_4_a $ !b_d1_add9_7i10_anx45949z15) # GND
-- b_d1_add9_7i10_anx45949z12 = CARRY(r10_4_a & (r9_4_a # !b_d1_add9_7i10_anx45949z15) # !r10_4_a & r9_4_a & !b_d1_add9_7i10_anx45949z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r10_4_a,
	datab => r9_4_a,
	datad => VCC,
	cin => b_d1_add9_7i10_anx45949z15,
	combout => b_d1_add9_7i10_anx41961z1,
	cout => b_d1_add9_7i10_anx45949z12);

reg_b_d1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_d1_add9_7i10_anx41961z1,
	ena => validBit_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_d1_4_a);

r9_8_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r9_8_afeeder_combout = r2_add8_6i49_anx23445z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_add8_6i49_anx23445z1,
	combout => r9_8_afeeder_combout);

reg_r9_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r9_8_afeeder_combout,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_8_a);

r10_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r10_7_afeeder_combout = a_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => a_7_a,
	combout => r10_7_afeeder_combout);

ix36625z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx36625z1 = state_2_a & Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(7) # !state_2_a & (Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Generate_mem_1_u_mem0_mem_aix64056z29482_aauto_generated_aq_a(7),
	datab => state_2_a,
	datad => Generate_mem_0_u_mem0_mem_aix64056z29481_aauto_generated_aq_a(7),
	combout => nx36625z1);

reg_d_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx36625z1,
	sdata => Generate_mem_2_u_mem0_mem_aix64056z29483_aauto_generated_aq_a(7),
	sload => ALT_INV_nx28524z1,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_7_a);

reg_r10_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r10_7_afeeder_combout,
	sdata => d_7_a,
	sload => ix48448z18833_anx100z1,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r10_7_a);

reg_a_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_6_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_6_a);

r10_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r10_6_afeeder_combout = a_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => a_6_a,
	combout => r10_6_afeeder_combout);

reg_r10_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r10_6_afeeder_combout,
	sdata => d_6_a,
	sload => ix48448z18833_anx100z1,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r10_6_a);

r9_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r9_5_afeeder_combout = r2_add8_6i49_anx42958z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r2_add8_6i49_anx42958z1,
	combout => r9_5_afeeder_combout);

reg_r9_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r9_5_afeeder_combout,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_5_a);

b_d1_add9_7i10_aix45949z52927 : cycloneii_lcell_comb
-- Equation(s):
-- b_d1_add9_7i10_anx42958z1 = r10_5_a & (r9_5_a & b_d1_add9_7i10_anx45949z12 & VCC # !r9_5_a & !b_d1_add9_7i10_anx45949z12) # !r10_5_a & (r9_5_a & !b_d1_add9_7i10_anx45949z12 # !r9_5_a & (b_d1_add9_7i10_anx45949z12 # GND))
-- b_d1_add9_7i10_anx45949z9 = CARRY(r10_5_a & !r9_5_a & !b_d1_add9_7i10_anx45949z12 # !r10_5_a & (!b_d1_add9_7i10_anx45949z12 # !r9_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r10_5_a,
	datab => r9_5_a,
	datad => VCC,
	cin => b_d1_add9_7i10_anx45949z12,
	combout => b_d1_add9_7i10_anx42958z1,
	cout => b_d1_add9_7i10_anx45949z9);

b_d1_add9_7i10_aix45949z52926 : cycloneii_lcell_comb
-- Equation(s):
-- b_d1_add9_7i10_anx43955z1 = (r9_6_a $ r10_6_a $ !b_d1_add9_7i10_anx45949z9) # GND
-- b_d1_add9_7i10_anx45949z6 = CARRY(r9_6_a & (r10_6_a # !b_d1_add9_7i10_anx45949z9) # !r9_6_a & r10_6_a & !b_d1_add9_7i10_anx45949z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9_6_a,
	datab => r10_6_a,
	datad => VCC,
	cin => b_d1_add9_7i10_anx45949z9,
	combout => b_d1_add9_7i10_anx43955z1,
	cout => b_d1_add9_7i10_anx45949z6);

b_d1_add9_7i10_aix45949z52925 : cycloneii_lcell_comb
-- Equation(s):
-- b_d1_add9_7i10_anx44952z1 = r9_7_a & (r10_7_a & b_d1_add9_7i10_anx45949z6 & VCC # !r10_7_a & !b_d1_add9_7i10_anx45949z6) # !r9_7_a & (r10_7_a & !b_d1_add9_7i10_anx45949z6 # !r10_7_a & (b_d1_add9_7i10_anx45949z6 # GND))
-- b_d1_add9_7i10_anx45949z3 = CARRY(r9_7_a & !r10_7_a & !b_d1_add9_7i10_anx45949z6 # !r9_7_a & (!b_d1_add9_7i10_anx45949z6 # !r10_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9_7_a,
	datab => r10_7_a,
	datad => VCC,
	cin => b_d1_add9_7i10_anx45949z6,
	combout => b_d1_add9_7i10_anx44952z1,
	cout => b_d1_add9_7i10_anx45949z3);

b_d1_add9_7i10_aix45949z52923 : cycloneii_lcell_comb
-- Equation(s):
-- b_d1_add9_7i10_anx45949z1 = r9_8_a & (b_d1_add9_7i10_anx45949z3 $ GND) # !r9_8_a & !b_d1_add9_7i10_anx45949z3 & VCC
-- b_d1_add9_7i10_anx23445z2 = CARRY(r9_8_a & !b_d1_add9_7i10_anx45949z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r9_8_a,
	datad => VCC,
	cin => b_d1_add9_7i10_anx45949z3,
	combout => b_d1_add9_7i10_anx45949z1,
	cout => b_d1_add9_7i10_anx23445z2);

b_d1_add9_7i10_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- b_d1_add9_7i10_anx23445z1 = b_d1_add9_7i10_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => b_d1_add9_7i10_anx23445z2,
	combout => b_d1_add9_7i10_anx23445z1);

reg_b_d1_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_d1_add9_7i10_anx23445z1,
	ena => validBit_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_d1_9_a);

reg_g_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_7_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_7_a);

r5_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_7_afeeder_combout = g_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => g_7_a,
	combout => r5_7_afeeder_combout);

reg_r5_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_7_afeeder_combout,
	sdata => b_7_a,
	sload => ix7380z18833_anx100z1,
	ena => nx7380z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_7_a);

x_r5_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r5_7_afeeder_combout = c_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => c_7_a,
	combout => x_r5_7_afeeder_combout);

reg_x_r5_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r5_7_afeeder_combout,
	sdata => f_7_a,
	sload => ix27953z18832_anx100z1,
	ena => nx27953z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r5_7_a);

ix8431z52923 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_7n3s1f1_7_a = validBit_2_a & r5_7_a # !validBit_2_a & (x_r5_7_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r5_7_a,
	datac => x_r5_7_a,
	datad => validBit_2_a,
	combout => x_r3_7n3s1f1_7_a);

r5_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_5_afeeder_combout = g_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => g_5_a,
	combout => r5_5_afeeder_combout);

reg_r5_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_5_afeeder_combout,
	sdata => b_5_a,
	sload => ix7380z18833_anx100z1,
	ena => nx7380z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_5_a);

ix8431z52925 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_7n3s1f1_5_a = validBit_2_a & (r5_5_a) # !validBit_2_a & x_r5_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_r5_5_a,
	datab => r5_5_a,
	datad => validBit_2_a,
	combout => x_r3_7n3s1f1_5_a);

x_r3_add9_7i9_aix45949z52927 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_add9_7i9_anx42958z1 = r2_5_a & (x_r3_7n3s1f1_5_a & x_r3_add9_7i9_anx45949z12 & VCC # !x_r3_7n3s1f1_5_a & !x_r3_add9_7i9_anx45949z12) # !r2_5_a & (x_r3_7n3s1f1_5_a & !x_r3_add9_7i9_anx45949z12 # !x_r3_7n3s1f1_5_a & (x_r3_add9_7i9_anx45949z12 # GND))
-- x_r3_add9_7i9_anx45949z9 = CARRY(r2_5_a & !x_r3_7n3s1f1_5_a & !x_r3_add9_7i9_anx45949z12 # !r2_5_a & (!x_r3_add9_7i9_anx45949z12 # !x_r3_7n3s1f1_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_5_a,
	datab => x_r3_7n3s1f1_5_a,
	datad => VCC,
	cin => x_r3_add9_7i9_anx45949z12,
	combout => x_r3_add9_7i9_anx42958z1,
	cout => x_r3_add9_7i9_anx45949z9);

x_r3_add9_7i9_aix45949z52926 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_add9_7i9_anx43955z1 = (x_r3_7n3s1f1_6_a $ r2_6_a $ !x_r3_add9_7i9_anx45949z9) # GND
-- x_r3_add9_7i9_anx45949z6 = CARRY(x_r3_7n3s1f1_6_a & (r2_6_a # !x_r3_add9_7i9_anx45949z9) # !x_r3_7n3s1f1_6_a & r2_6_a & !x_r3_add9_7i9_anx45949z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r3_7n3s1f1_6_a,
	datab => r2_6_a,
	datad => VCC,
	cin => x_r3_add9_7i9_anx45949z9,
	combout => x_r3_add9_7i9_anx43955z1,
	cout => x_r3_add9_7i9_anx45949z6);

x_r3_add9_7i9_aix45949z52925 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_add9_7i9_anx44952z1 = r2_7_a & (x_r3_7n3s1f1_7_a & x_r3_add9_7i9_anx45949z6 & VCC # !x_r3_7n3s1f1_7_a & !x_r3_add9_7i9_anx45949z6) # !r2_7_a & (x_r3_7n3s1f1_7_a & !x_r3_add9_7i9_anx45949z6 # !x_r3_7n3s1f1_7_a & (x_r3_add9_7i9_anx45949z6 # GND))
-- x_r3_add9_7i9_anx45949z3 = CARRY(r2_7_a & !x_r3_7n3s1f1_7_a & !x_r3_add9_7i9_anx45949z6 # !r2_7_a & (!x_r3_add9_7i9_anx45949z6 # !x_r3_7n3s1f1_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_7_a,
	datab => x_r3_7n3s1f1_7_a,
	datad => VCC,
	cin => x_r3_add9_7i9_anx45949z6,
	combout => x_r3_add9_7i9_anx44952z1,
	cout => x_r3_add9_7i9_anx45949z3);

x_r3_add9_7i9_aix45949z52923 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_add9_7i9_anx45949z1 = r2_8_a & (x_r3_add9_7i9_anx45949z3 $ GND) # !r2_8_a & !x_r3_add9_7i9_anx45949z3 & VCC
-- x_r3_add9_7i9_anx23445z2 = CARRY(r2_8_a & !x_r3_add9_7i9_anx45949z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_8_a,
	datad => VCC,
	cin => x_r3_add9_7i9_anx45949z3,
	combout => x_r3_add9_7i9_anx45949z1,
	cout => x_r3_add9_7i9_anx23445z2);

x_r3_add9_7i9_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_add9_7i9_anx23445z1 = x_r3_add9_7i9_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => x_r3_add9_7i9_anx23445z2,
	combout => x_r3_add9_7i9_anx23445z1);

reg_x_r3_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r3_add9_7i9_anx23445z1,
	ena => nx56415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r3_9_a);

reg_x_r3_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r3_add9_7i9_anx45949z1,
	ena => nx56415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r3_8_a);

reg_x_r3_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r3_add9_7i9_anx44952z1,
	ena => nx56415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r3_7_a);

reg_b_d1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_d1_add9_7i10_anx43955z1,
	ena => validBit_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_d1_6_a);

reg_x_r3_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => x_r3_add9_7i9_anx42958z1,
	sload => VCC,
	ena => nx56415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r3_5_a);

reg_b_d1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_d1_add9_7i10_anx40964z1,
	ena => validBit_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_d1_3_a);

reg_x_r3_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => x_r3_add9_7i9_anx39967z1,
	sload => VCC,
	ena => nx56415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r3_2_a);

x_r3_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r3_1_afeeder_combout = x_r3_add9_7i9_anx38970z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_r3_add9_7i9_anx38970z1,
	combout => x_r3_1_afeeder_combout);

reg_x_r3_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r3_1_afeeder_combout,
	ena => nx56415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r3_1_a);

reg_x_r3_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => x_r3_add9_7i9_anx37973z1,
	sload => VCC,
	ena => nx56415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r3_0_a);

ix23013z52805_aix100z52933 : cycloneii_lcell_comb
-- Equation(s):
-- ix23013z52805_anx100z28 = CARRY(b_d1_0_a & !x_r3_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_d1_0_a,
	datab => x_r3_0_a,
	datad => VCC,
	cout => ix23013z52805_anx100z28);

ix23013z52805_aix100z52932 : cycloneii_lcell_comb
-- Equation(s):
-- ix23013z52805_anx100z25 = CARRY(b_d1_1_a & x_r3_1_a & !ix23013z52805_anx100z28 # !b_d1_1_a & (x_r3_1_a # !ix23013z52805_anx100z28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_d1_1_a,
	datab => x_r3_1_a,
	datad => VCC,
	cin => ix23013z52805_anx100z28,
	cout => ix23013z52805_anx100z25);

ix23013z52805_aix100z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix23013z52805_anx100z22 = CARRY(b_d1_2_a & (!ix23013z52805_anx100z25 # !x_r3_2_a) # !b_d1_2_a & !x_r3_2_a & !ix23013z52805_anx100z25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_d1_2_a,
	datab => x_r3_2_a,
	datad => VCC,
	cin => ix23013z52805_anx100z25,
	cout => ix23013z52805_anx100z22);

ix23013z52805_aix100z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix23013z52805_anx100z19 = CARRY(x_r3_3_a & (!ix23013z52805_anx100z22 # !b_d1_3_a) # !x_r3_3_a & !b_d1_3_a & !ix23013z52805_anx100z22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r3_3_a,
	datab => b_d1_3_a,
	datad => VCC,
	cin => ix23013z52805_anx100z22,
	cout => ix23013z52805_anx100z19);

ix23013z52805_aix100z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix23013z52805_anx100z16 = CARRY(x_r3_4_a & b_d1_4_a & !ix23013z52805_anx100z19 # !x_r3_4_a & (b_d1_4_a # !ix23013z52805_anx100z19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r3_4_a,
	datab => b_d1_4_a,
	datad => VCC,
	cin => ix23013z52805_anx100z19,
	cout => ix23013z52805_anx100z16);

ix23013z52805_aix100z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix23013z52805_anx100z13 = CARRY(b_d1_5_a & x_r3_5_a & !ix23013z52805_anx100z16 # !b_d1_5_a & (x_r3_5_a # !ix23013z52805_anx100z16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_d1_5_a,
	datab => x_r3_5_a,
	datad => VCC,
	cin => ix23013z52805_anx100z16,
	cout => ix23013z52805_anx100z13);

ix23013z52805_aix100z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix23013z52805_anx100z10 = CARRY(x_r3_6_a & b_d1_6_a & !ix23013z52805_anx100z13 # !x_r3_6_a & (b_d1_6_a # !ix23013z52805_anx100z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r3_6_a,
	datab => b_d1_6_a,
	datad => VCC,
	cin => ix23013z52805_anx100z13,
	cout => ix23013z52805_anx100z10);

ix23013z52805_aix100z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix23013z52805_anx100z7 = CARRY(b_d1_7_a & x_r3_7_a & !ix23013z52805_anx100z10 # !b_d1_7_a & (x_r3_7_a # !ix23013z52805_anx100z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_d1_7_a,
	datab => x_r3_7_a,
	datad => VCC,
	cin => ix23013z52805_anx100z10,
	cout => ix23013z52805_anx100z7);

ix23013z52805_aix100z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix23013z52805_anx100z4 = CARRY(b_d1_8_a & (!ix23013z52805_anx100z7 # !x_r3_8_a) # !b_d1_8_a & !x_r3_8_a & !ix23013z52805_anx100z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_d1_8_a,
	datab => x_r3_8_a,
	datad => VCC,
	cin => ix23013z52805_anx100z7,
	cout => ix23013z52805_anx100z4);

ix23013z52805_aix100z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix23013z52805_anx100z1 = b_d1_9_a & (ix23013z52805_anx100z4 # !x_r3_9_a) # !b_d1_9_a & ix23013z52805_anx100z4 & !x_r3_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => b_d1_9_a,
	datad => x_r3_9_a,
	cin => ix23013z52805_anx100z4,
	combout => ix23013z52805_anx100z1);

reg_r15_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r15_4_afeeder_combout,
	sdata => b_d1_4_a,
	sload => ix23013z52805_anx100z1,
	ena => validBit_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_4_a);

r18_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r18_4_afeeder_combout = r15_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r15_4_a,
	combout => r18_4_afeeder_combout);

x_r11_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r11_4_afeeder_combout = r11_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r11_4_a,
	combout => x_r11_4_afeeder_combout);

r12_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_4_afeeder_combout = e_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => e_4_a,
	combout => r12_4_afeeder_combout);

i_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- i_4_afeeder_combout = d_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_4_a,
	combout => i_4_afeeder_combout);

reg_i_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => i_4_afeeder_combout,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_4_a);

h_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- h_4_afeeder_combout = i_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => i_4_a,
	combout => h_4_afeeder_combout);

reg_h_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => h_4_afeeder_combout,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_4_a);

i_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- i_7_afeeder_combout = d_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_7_a,
	combout => i_7_afeeder_combout);

reg_i_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => i_7_afeeder_combout,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_7_a);

h_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- h_7_afeeder_combout = i_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => i_7_a,
	combout => h_7_afeeder_combout);

reg_h_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => h_7_afeeder_combout,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_7_a);

reg_i_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_3_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_3_a);

reg_h_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_3_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_3_a);

reg_i_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_0_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_0_a);

reg_h_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_0_a,
	sload => VCC,
	ena => nx36625z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_0_a);

ix250z18831_aix100z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix250z18831_anx100z22 = CARRY(!e_0_a & h_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e_0_a,
	datab => h_0_a,
	datad => VCC,
	cout => ix250z18831_anx100z22);

ix250z18831_aix100z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix250z18831_anx100z19 = CARRY(h_1_a & e_1_a & !ix250z18831_anx100z22 # !h_1_a & (e_1_a # !ix250z18831_anx100z22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_1_a,
	datab => e_1_a,
	datad => VCC,
	cin => ix250z18831_anx100z22,
	cout => ix250z18831_anx100z19);

ix250z18831_aix100z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix250z18831_anx100z16 = CARRY(h_2_a & (!ix250z18831_anx100z19 # !e_2_a) # !h_2_a & !e_2_a & !ix250z18831_anx100z19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_2_a,
	datab => e_2_a,
	datad => VCC,
	cin => ix250z18831_anx100z19,
	cout => ix250z18831_anx100z16);

ix250z18831_aix100z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix250z18831_anx100z13 = CARRY(e_3_a & (!ix250z18831_anx100z16 # !h_3_a) # !e_3_a & !h_3_a & !ix250z18831_anx100z16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => e_3_a,
	datab => h_3_a,
	datad => VCC,
	cin => ix250z18831_anx100z16,
	cout => ix250z18831_anx100z13);

ix250z18831_aix100z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix250z18831_anx100z10 = CARRY(h_4_a & (!ix250z18831_anx100z13 # !e_4_a) # !h_4_a & !e_4_a & !ix250z18831_anx100z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_4_a,
	datab => e_4_a,
	datad => VCC,
	cin => ix250z18831_anx100z13,
	cout => ix250z18831_anx100z10);

ix250z18831_aix100z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix250z18831_anx100z7 = CARRY(h_5_a & e_5_a & !ix250z18831_anx100z10 # !h_5_a & (e_5_a # !ix250z18831_anx100z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_5_a,
	datab => e_5_a,
	datad => VCC,
	cin => ix250z18831_anx100z10,
	cout => ix250z18831_anx100z7);

ix250z18831_aix100z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix250z18831_anx100z4 = CARRY(e_6_a & h_6_a & !ix250z18831_anx100z7 # !e_6_a & (h_6_a # !ix250z18831_anx100z7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => e_6_a,
	datab => h_6_a,
	datad => VCC,
	cin => ix250z18831_anx100z7,
	cout => ix250z18831_anx100z4);

ix250z18831_aix100z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix250z18831_anx100z1 = h_7_a & (ix250z18831_anx100z4 # !e_7_a) # !h_7_a & ix250z18831_anx100z4 & !e_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_7_a,
	datad => e_7_a,
	cin => ix250z18831_anx100z4,
	combout => ix250z18831_anx100z1);

reg_r12_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_4_afeeder_combout,
	sdata => h_4_a,
	sload => ix250z18831_anx100z1,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_4_a);

r12_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_3_afeeder_combout = e_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => e_3_a,
	combout => r12_3_afeeder_combout);

reg_r12_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_3_afeeder_combout,
	sdata => h_3_a,
	sload => ix250z18831_anx100z1,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_3_a);

r13_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r13_2_afeeder_combout = r2_add8_6i49_anx39967z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_add8_6i49_anx39967z1,
	combout => r13_2_afeeder_combout);

reg_r13_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r13_2_afeeder_combout,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_2_a);

r13_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r13_1_afeeder_combout = r2_add8_6i49_anx38970z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_add8_6i49_anx38970z1,
	combout => r13_1_afeeder_combout);

reg_r13_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r13_1_afeeder_combout,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_1_a);

r12_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_0_afeeder_combout = e_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => e_0_a,
	combout => r12_0_afeeder_combout);

reg_r12_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_0_afeeder_combout,
	sdata => h_0_a,
	sload => ix250z18831_anx100z1,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_0_a);

r16_add9_7i11_aix45949z52932 : cycloneii_lcell_comb
-- Equation(s):
-- r16_add9_7i11_anx37973z1 = r13_0_a & (r12_0_a $ VCC) # !r13_0_a & r12_0_a & VCC
-- r16_add9_7i11_anx45949z24 = CARRY(r13_0_a & r12_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r13_0_a,
	datab => r12_0_a,
	datad => VCC,
	combout => r16_add9_7i11_anx37973z1,
	cout => r16_add9_7i11_anx45949z24);

r16_add9_7i11_aix45949z52931 : cycloneii_lcell_comb
-- Equation(s):
-- r16_add9_7i11_anx38970z1 = r12_1_a & (r13_1_a & r16_add9_7i11_anx45949z24 & VCC # !r13_1_a & !r16_add9_7i11_anx45949z24) # !r12_1_a & (r13_1_a & !r16_add9_7i11_anx45949z24 # !r13_1_a & (r16_add9_7i11_anx45949z24 # GND))
-- r16_add9_7i11_anx45949z21 = CARRY(r12_1_a & !r13_1_a & !r16_add9_7i11_anx45949z24 # !r12_1_a & (!r16_add9_7i11_anx45949z24 # !r13_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r12_1_a,
	datab => r13_1_a,
	datad => VCC,
	cin => r16_add9_7i11_anx45949z24,
	combout => r16_add9_7i11_anx38970z1,
	cout => r16_add9_7i11_anx45949z21);

r16_add9_7i11_aix45949z52930 : cycloneii_lcell_comb
-- Equation(s):
-- r16_add9_7i11_anx39967z1 = (r12_2_a $ r13_2_a $ !r16_add9_7i11_anx45949z21) # GND
-- r16_add9_7i11_anx45949z18 = CARRY(r12_2_a & (r13_2_a # !r16_add9_7i11_anx45949z21) # !r12_2_a & r13_2_a & !r16_add9_7i11_anx45949z21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r12_2_a,
	datab => r13_2_a,
	datad => VCC,
	cin => r16_add9_7i11_anx45949z21,
	combout => r16_add9_7i11_anx39967z1,
	cout => r16_add9_7i11_anx45949z18);

r16_add9_7i11_aix45949z52928 : cycloneii_lcell_comb
-- Equation(s):
-- r16_add9_7i11_anx41961z1 = (r13_4_a $ r12_4_a $ !r16_add9_7i11_anx45949z15) # GND
-- r16_add9_7i11_anx45949z12 = CARRY(r13_4_a & (r12_4_a # !r16_add9_7i11_anx45949z15) # !r13_4_a & r12_4_a & !r16_add9_7i11_anx45949z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_4_a,
	datab => r12_4_a,
	datad => VCC,
	cin => r16_add9_7i11_anx45949z15,
	combout => r16_add9_7i11_anx41961z1,
	cout => r16_add9_7i11_anx45949z12);

ix34104z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx34104z1 = !validBit_1_a & validBit_4_a & !validBit_2_a & !validBit_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => validBit_1_a,
	datab => validBit_4_a,
	datac => validBit_2_a,
	datad => validBit_3_a,
	combout => nx34104z1);

reg_r16_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r16_add9_7i11_anx41961z1,
	ena => nx34104z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r16_4_a);

reg_r13_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r2_add8_6i49_anx44952z1,
	sload => VCC,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_7_a);

r12_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_6_afeeder_combout = e_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => e_6_a,
	combout => r12_6_afeeder_combout);

reg_r12_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_6_afeeder_combout,
	sdata => h_6_a,
	sload => ix250z18831_anx100z1,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_6_a);

reg_r13_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r2_add8_6i49_anx42958z1,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_5_a);

r16_add9_7i11_aix45949z52926 : cycloneii_lcell_comb
-- Equation(s):
-- r16_add9_7i11_anx43955z1 = (r13_6_a $ r12_6_a $ !r16_add9_7i11_anx45949z9) # GND
-- r16_add9_7i11_anx45949z6 = CARRY(r13_6_a & (r12_6_a # !r16_add9_7i11_anx45949z9) # !r13_6_a & r12_6_a & !r16_add9_7i11_anx45949z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_6_a,
	datab => r12_6_a,
	datad => VCC,
	cin => r16_add9_7i11_anx45949z9,
	combout => r16_add9_7i11_anx43955z1,
	cout => r16_add9_7i11_anx45949z6);

r16_add9_7i11_aix45949z52923 : cycloneii_lcell_comb
-- Equation(s):
-- r16_add9_7i11_anx45949z1 = r13_8_a & (r16_add9_7i11_anx45949z3 $ GND) # !r13_8_a & !r16_add9_7i11_anx45949z3 & VCC
-- r16_add9_7i11_anx23445z2 = CARRY(r13_8_a & !r16_add9_7i11_anx45949z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r13_8_a,
	datad => VCC,
	cin => r16_add9_7i11_anx45949z3,
	combout => r16_add9_7i11_anx45949z1,
	cout => r16_add9_7i11_anx23445z2);

r16_add9_7i11_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- r16_add9_7i11_anx23445z1 = r16_add9_7i11_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => r16_add9_7i11_anx23445z2,
	combout => r16_add9_7i11_anx23445z1);

reg_r16_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r16_add9_7i11_anx23445z1,
	ena => nx34104z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r16_9_a);

ix54873z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx54873z1 = !validBit_2_a & !validBit_1_a & validBit_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => validBit_2_a,
	datac => validBit_1_a,
	datad => validBit_3_a,
	combout => nx54873z1);

reg_r11_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => x_r3_add9_7i9_anx23445z1,
	sload => VCC,
	ena => nx54873z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_9_a);

reg_r11_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => x_r3_add9_7i9_anx45949z1,
	sload => VCC,
	ena => nx54873z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_8_a);

reg_r11_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => x_r3_add9_7i9_anx44952z1,
	sload => VCC,
	ena => nx54873z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_7_a);

reg_r16_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r16_add9_7i11_anx43955z1,
	ena => nx34104z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r16_6_a);

reg_r11_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => x_r3_add9_7i9_anx42958z1,
	sload => VCC,
	ena => nx54873z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_5_a);

reg_r11_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r3_add9_7i9_anx40964z1,
	ena => nx54873z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_3_a);

reg_r11_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r3_add9_7i9_anx39967z1,
	ena => nx54873z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_2_a);

reg_r11_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => x_r3_add9_7i9_anx38970z1,
	sload => VCC,
	ena => nx54873z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_1_a);

reg_r16_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r16_add9_7i11_anx37973z1,
	ena => nx34104z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r16_0_a);

ix42030z52807_aix100z52933 : cycloneii_lcell_comb
-- Equation(s):
-- ix42030z52807_anx100z28 = CARRY(!r11_0_a & r16_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r11_0_a,
	datab => r16_0_a,
	datad => VCC,
	cout => ix42030z52807_anx100z28);

ix42030z52807_aix100z52932 : cycloneii_lcell_comb
-- Equation(s):
-- ix42030z52807_anx100z25 = CARRY(r16_1_a & r11_1_a & !ix42030z52807_anx100z28 # !r16_1_a & (r11_1_a # !ix42030z52807_anx100z28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r16_1_a,
	datab => r11_1_a,
	datad => VCC,
	cin => ix42030z52807_anx100z28,
	cout => ix42030z52807_anx100z25);

ix42030z52807_aix100z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix42030z52807_anx100z22 = CARRY(r16_2_a & (!ix42030z52807_anx100z25 # !r11_2_a) # !r16_2_a & !r11_2_a & !ix42030z52807_anx100z25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r16_2_a,
	datab => r11_2_a,
	datad => VCC,
	cin => ix42030z52807_anx100z25,
	cout => ix42030z52807_anx100z22);

ix42030z52807_aix100z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix42030z52807_anx100z19 = CARRY(r16_3_a & r11_3_a & !ix42030z52807_anx100z22 # !r16_3_a & (r11_3_a # !ix42030z52807_anx100z22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r16_3_a,
	datab => r11_3_a,
	datad => VCC,
	cin => ix42030z52807_anx100z22,
	cout => ix42030z52807_anx100z19);

ix42030z52807_aix100z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix42030z52807_anx100z16 = CARRY(r11_4_a & r16_4_a & !ix42030z52807_anx100z19 # !r11_4_a & (r16_4_a # !ix42030z52807_anx100z19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r11_4_a,
	datab => r16_4_a,
	datad => VCC,
	cin => ix42030z52807_anx100z19,
	cout => ix42030z52807_anx100z16);

ix42030z52807_aix100z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix42030z52807_anx100z13 = CARRY(r16_5_a & r11_5_a & !ix42030z52807_anx100z16 # !r16_5_a & (r11_5_a # !ix42030z52807_anx100z16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r16_5_a,
	datab => r11_5_a,
	datad => VCC,
	cin => ix42030z52807_anx100z16,
	cout => ix42030z52807_anx100z13);

ix42030z52807_aix100z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix42030z52807_anx100z10 = CARRY(r11_6_a & r16_6_a & !ix42030z52807_anx100z13 # !r11_6_a & (r16_6_a # !ix42030z52807_anx100z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r11_6_a,
	datab => r16_6_a,
	datad => VCC,
	cin => ix42030z52807_anx100z13,
	cout => ix42030z52807_anx100z10);

ix42030z52807_aix100z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix42030z52807_anx100z7 = CARRY(r16_7_a & r11_7_a & !ix42030z52807_anx100z10 # !r16_7_a & (r11_7_a # !ix42030z52807_anx100z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r16_7_a,
	datab => r11_7_a,
	datad => VCC,
	cin => ix42030z52807_anx100z10,
	cout => ix42030z52807_anx100z7);

ix42030z52807_aix100z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix42030z52807_anx100z4 = CARRY(r16_8_a & (!ix42030z52807_anx100z7 # !r11_8_a) # !r16_8_a & !r11_8_a & !ix42030z52807_anx100z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r16_8_a,
	datab => r11_8_a,
	datad => VCC,
	cin => ix42030z52807_anx100z7,
	cout => ix42030z52807_anx100z4);

ix42030z52807_aix100z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix42030z52807_anx100z1 = r16_9_a & (ix42030z52807_anx100z4 # !r11_9_a) # !r16_9_a & ix42030z52807_anx100z4 & !r11_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r16_9_a,
	datad => r11_9_a,
	cin => ix42030z52807_anx100z4,
	combout => ix42030z52807_anx100z1);

ix42030z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx42030z1 = validBit_5_a & !validBit_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => validBit_5_a,
	datad => validBit_3_a,
	combout => nx42030z1);

reg_x_r11_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r11_4_afeeder_combout,
	sdata => r16_4_a,
	sload => ix42030z52807_anx100z1,
	ena => nx42030z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r11_4_a);

r15_9_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r15_9_afeeder_combout = x_r3_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_r3_9_a,
	combout => r15_9_afeeder_combout);

reg_r15_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r15_9_afeeder_combout,
	sdata => b_d1_9_a,
	sload => ix23013z52805_anx100z1,
	ena => validBit_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_9_a);

x_r11_9_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r11_9_afeeder_combout = r11_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_9_a,
	combout => x_r11_9_afeeder_combout);

reg_x_r11_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r11_9_afeeder_combout,
	sdata => r16_9_a,
	sload => ix42030z52807_anx100z1,
	ena => nx42030z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r11_9_a);

x_r11_8_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r11_8_afeeder_combout = r11_8_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_8_a,
	combout => x_r11_8_afeeder_combout);

reg_r16_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r16_add9_7i11_anx45949z1,
	ena => nx34104z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r16_8_a);

reg_x_r11_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r11_8_afeeder_combout,
	sdata => r16_8_a,
	sload => ix42030z52807_anx100z1,
	ena => nx42030z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r11_8_a);

r15_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r15_7_afeeder_combout = x_r3_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_r3_7_a,
	combout => r15_7_afeeder_combout);

reg_b_d1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_d1_add9_7i10_anx44952z1,
	ena => validBit_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_d1_7_a);

reg_r15_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r15_7_afeeder_combout,
	sdata => b_d1_7_a,
	sload => ix23013z52805_anx100z1,
	ena => validBit_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_7_a);

reg_r11_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r3_add9_7i9_anx43955z1,
	ena => nx54873z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_6_a);

x_r11_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r11_6_afeeder_combout = r11_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_6_a,
	combout => x_r11_6_afeeder_combout);

reg_x_r11_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r11_6_afeeder_combout,
	sdata => r16_6_a,
	sload => ix42030z52807_anx100z1,
	ena => nx42030z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r11_6_a);

r15_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r15_5_afeeder_combout = x_r3_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_r3_5_a,
	combout => r15_5_afeeder_combout);

reg_b_d1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_d1_add9_7i10_anx42958z1,
	ena => validBit_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_d1_5_a);

reg_r15_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r15_5_afeeder_combout,
	sdata => b_d1_5_a,
	sload => ix23013z52805_anx100z1,
	ena => validBit_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_5_a);

reg_x_r3_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => x_r3_add9_7i9_anx40964z1,
	sload => VCC,
	ena => nx56415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r3_3_a);

r15_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r15_3_afeeder_combout = x_r3_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_r3_3_a,
	combout => r15_3_afeeder_combout);

reg_r15_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r15_3_afeeder_combout,
	sdata => b_d1_3_a,
	sload => ix23013z52805_anx100z1,
	ena => validBit_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_3_a);

x_r11_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r11_2_afeeder_combout = r11_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r11_2_a,
	combout => x_r11_2_afeeder_combout);

reg_r16_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r16_add9_7i11_anx39967z1,
	ena => nx34104z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r16_2_a);

reg_x_r11_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r11_2_afeeder_combout,
	sdata => r16_2_a,
	sload => ix42030z52807_anx100z1,
	ena => nx42030z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r11_2_a);

r15_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r15_1_afeeder_combout = x_r3_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_r3_1_a,
	combout => r15_1_afeeder_combout);

reg_b_d1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_d1_add9_7i10_anx38970z1,
	ena => validBit_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_d1_1_a);

reg_r15_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r15_1_afeeder_combout,
	sdata => b_d1_1_a,
	sload => ix23013z52805_anx100z1,
	ena => validBit_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_1_a);

r15_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r15_0_afeeder_combout = x_r3_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_r3_0_a,
	combout => r15_0_afeeder_combout);

reg_b_d1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_d1_add9_7i10_anx37973z1,
	ena => validBit_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_d1_0_a);

reg_r15_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r15_0_afeeder_combout,
	sdata => b_d1_0_a,
	sload => ix23013z52805_anx100z1,
	ena => validBit_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_0_a);

ix17266z52808_aix100z52933 : cycloneii_lcell_comb
-- Equation(s):
-- ix17266z52808_anx100z28 = CARRY(x_r11_0_a & !r15_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_r11_0_a,
	datab => r15_0_a,
	datad => VCC,
	cout => ix17266z52808_anx100z28);

ix17266z52808_aix100z52932 : cycloneii_lcell_comb
-- Equation(s):
-- ix17266z52808_anx100z25 = CARRY(x_r11_1_a & r15_1_a & !ix17266z52808_anx100z28 # !x_r11_1_a & (r15_1_a # !ix17266z52808_anx100z28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r11_1_a,
	datab => r15_1_a,
	datad => VCC,
	cin => ix17266z52808_anx100z28,
	cout => ix17266z52808_anx100z25);

ix17266z52808_aix100z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix17266z52808_anx100z22 = CARRY(r15_2_a & x_r11_2_a & !ix17266z52808_anx100z25 # !r15_2_a & (x_r11_2_a # !ix17266z52808_anx100z25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r15_2_a,
	datab => x_r11_2_a,
	datad => VCC,
	cin => ix17266z52808_anx100z25,
	cout => ix17266z52808_anx100z22);

ix17266z52808_aix100z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix17266z52808_anx100z19 = CARRY(x_r11_3_a & r15_3_a & !ix17266z52808_anx100z22 # !x_r11_3_a & (r15_3_a # !ix17266z52808_anx100z22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r11_3_a,
	datab => r15_3_a,
	datad => VCC,
	cin => ix17266z52808_anx100z22,
	cout => ix17266z52808_anx100z19);

ix17266z52808_aix100z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix17266z52808_anx100z16 = CARRY(r15_4_a & x_r11_4_a & !ix17266z52808_anx100z19 # !r15_4_a & (x_r11_4_a # !ix17266z52808_anx100z19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r15_4_a,
	datab => x_r11_4_a,
	datad => VCC,
	cin => ix17266z52808_anx100z19,
	cout => ix17266z52808_anx100z16);

ix17266z52808_aix100z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix17266z52808_anx100z13 = CARRY(x_r11_5_a & r15_5_a & !ix17266z52808_anx100z16 # !x_r11_5_a & (r15_5_a # !ix17266z52808_anx100z16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r11_5_a,
	datab => r15_5_a,
	datad => VCC,
	cin => ix17266z52808_anx100z16,
	cout => ix17266z52808_anx100z13);

ix17266z52808_aix100z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix17266z52808_anx100z10 = CARRY(r15_6_a & x_r11_6_a & !ix17266z52808_anx100z13 # !r15_6_a & (x_r11_6_a # !ix17266z52808_anx100z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r15_6_a,
	datab => x_r11_6_a,
	datad => VCC,
	cin => ix17266z52808_anx100z13,
	cout => ix17266z52808_anx100z10);

ix17266z52808_aix100z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix17266z52808_anx100z7 = CARRY(x_r11_7_a & r15_7_a & !ix17266z52808_anx100z10 # !x_r11_7_a & (r15_7_a # !ix17266z52808_anx100z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r11_7_a,
	datab => r15_7_a,
	datad => VCC,
	cin => ix17266z52808_anx100z10,
	cout => ix17266z52808_anx100z7);

ix17266z52808_aix100z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix17266z52808_anx100z4 = CARRY(r15_8_a & x_r11_8_a & !ix17266z52808_anx100z7 # !r15_8_a & (x_r11_8_a # !ix17266z52808_anx100z7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r15_8_a,
	datab => x_r11_8_a,
	datad => VCC,
	cin => ix17266z52808_anx100z7,
	cout => ix17266z52808_anx100z4);

ix17266z52808_aix100z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix17266z52808_anx100z1 = r15_9_a & ix17266z52808_anx100z4 & x_r11_9_a # !r15_9_a & (ix17266z52808_anx100z4 # x_r11_9_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r15_9_a,
	datad => x_r11_9_a,
	cin => ix17266z52808_anx100z4,
	combout => ix17266z52808_anx100z1);

ix17266z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx17266z1 = !validBit_3_a & validBit_6_a & !validBit_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => validBit_3_a,
	datab => validBit_6_a,
	datad => validBit_5_a,
	combout => nx17266z1);

reg_r18_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r18_4_afeeder_combout,
	sdata => x_r11_4_a,
	sload => ix17266z52808_anx100z1,
	ena => nx17266z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r18_4_a);

reg_x_r22_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r22_add12_8i1_anx42958z1,
	ena => nx65254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r22_6_a);

reg_x_r22_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r22_add12_8i1_anx41961z1,
	ena => nx65254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r22_5_a);

r18_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r18_1_afeeder_combout = r15_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r15_1_a,
	combout => r18_1_afeeder_combout);

x_r11_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r11_1_afeeder_combout = r11_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_1_a,
	combout => x_r11_1_afeeder_combout);

reg_r16_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r16_add9_7i11_anx38970z1,
	ena => nx34104z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r16_1_a);

reg_x_r11_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r11_1_afeeder_combout,
	sdata => r16_1_a,
	sload => ix42030z52807_anx100z1,
	ena => nx42030z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r11_1_a);

reg_r18_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r18_1_afeeder_combout,
	sdata => x_r11_1_a,
	sload => ix17266z52808_anx100z1,
	ena => nx17266z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r18_1_a);

r18_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r18_0_afeeder_combout = r15_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r15_0_a,
	combout => r18_0_afeeder_combout);

reg_r11_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r3_add9_7i9_anx37973z1,
	ena => nx54873z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_0_a);

x_r11_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- x_r11_0_afeeder_combout = r11_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_0_a,
	combout => x_r11_0_afeeder_combout);

reg_x_r11_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r11_0_afeeder_combout,
	sdata => r16_0_a,
	sload => ix42030z52807_anx100z1,
	ena => nx42030z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r11_0_a);

reg_r18_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r18_0_afeeder_combout,
	sdata => x_r11_0_a,
	sload => ix17266z52808_anx100z1,
	ena => nx17266z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r18_0_a);

reg_x_r22_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r22_add12_8i1_anx38970z1,
	ena => nx65254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r22_2_a);

reg_x_r22_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => x_r12_0_a,
	sload => VCC,
	ena => nx65254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r22_0_a);

r17_sub13_10i1_aix63795z52935 : cycloneii_lcell_comb
-- Equation(s):
-- r17_sub13_10i1_anx63795z11 = CARRY(!x_r22_1_a & !x_r22_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_r22_1_a,
	datab => x_r22_0_a,
	datad => VCC,
	cout => r17_sub13_10i1_anx63795z11);

r17_sub13_10i1_aix63795z52934 : cycloneii_lcell_comb
-- Equation(s):
-- r17_sub13_10i1_anx63795z10 = CARRY(x_r22_2_a # !r17_sub13_10i1_anx63795z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_r22_2_a,
	datad => VCC,
	cin => r17_sub13_10i1_anx63795z11,
	cout => r17_sub13_10i1_anx63795z10);

r17_sub13_10i1_aix63795z52933 : cycloneii_lcell_comb
-- Equation(s):
-- r17_sub13_10i1_anx63795z9 = CARRY(x_r22_3_a & r18_0_a & !r17_sub13_10i1_anx63795z10 # !x_r22_3_a & (r18_0_a # !r17_sub13_10i1_anx63795z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r22_3_a,
	datab => r18_0_a,
	datad => VCC,
	cin => r17_sub13_10i1_anx63795z10,
	cout => r17_sub13_10i1_anx63795z9);

r17_sub13_10i1_aix63795z52932 : cycloneii_lcell_comb
-- Equation(s):
-- r17_sub13_10i1_anx63795z8 = CARRY(x_r22_4_a & (!r17_sub13_10i1_anx63795z9 # !r18_1_a) # !x_r22_4_a & !r18_1_a & !r17_sub13_10i1_anx63795z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r22_4_a,
	datab => r18_1_a,
	datad => VCC,
	cin => r17_sub13_10i1_anx63795z9,
	cout => r17_sub13_10i1_anx63795z8);

r17_sub13_10i1_aix63795z52931 : cycloneii_lcell_comb
-- Equation(s):
-- r17_sub13_10i1_anx63795z7 = CARRY(r18_2_a & (!r17_sub13_10i1_anx63795z8 # !x_r22_5_a) # !r18_2_a & !x_r22_5_a & !r17_sub13_10i1_anx63795z8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r18_2_a,
	datab => x_r22_5_a,
	datad => VCC,
	cin => r17_sub13_10i1_anx63795z8,
	cout => r17_sub13_10i1_anx63795z7);

r17_sub13_10i1_aix63795z52930 : cycloneii_lcell_comb
-- Equation(s):
-- r17_sub13_10i1_anx63795z6 = CARRY(r18_3_a & x_r22_6_a & !r17_sub13_10i1_anx63795z7 # !r18_3_a & (x_r22_6_a # !r17_sub13_10i1_anx63795z7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r18_3_a,
	datab => x_r22_6_a,
	datad => VCC,
	cin => r17_sub13_10i1_anx63795z7,
	cout => r17_sub13_10i1_anx63795z6);

r17_sub13_10i1_aix63795z52929 : cycloneii_lcell_comb
-- Equation(s):
-- r17_sub13_10i1_ad_6_a = (x_r22_7_a $ r18_4_a $ r17_sub13_10i1_anx63795z6) # GND
-- r17_sub13_10i1_anx63795z5 = CARRY(x_r22_7_a & r18_4_a & !r17_sub13_10i1_anx63795z6 # !x_r22_7_a & (r18_4_a # !r17_sub13_10i1_anx63795z6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r22_7_a,
	datab => r18_4_a,
	datad => VCC,
	cin => r17_sub13_10i1_anx63795z6,
	combout => r17_sub13_10i1_ad_6_a,
	cout => r17_sub13_10i1_anx63795z5);

r17_sub13_10i1_aix63795z52928 : cycloneii_lcell_comb
-- Equation(s):
-- r17_sub13_10i1_ad_7_a = r18_5_a & (x_r22_8_a & !r17_sub13_10i1_anx63795z5 # !x_r22_8_a & r17_sub13_10i1_anx63795z5 & VCC) # !r18_5_a & (x_r22_8_a & (r17_sub13_10i1_anx63795z5 # GND) # !x_r22_8_a & !r17_sub13_10i1_anx63795z5)
-- r17_sub13_10i1_anx63795z4 = CARRY(r18_5_a & x_r22_8_a & !r17_sub13_10i1_anx63795z5 # !r18_5_a & (x_r22_8_a # !r17_sub13_10i1_anx63795z5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r18_5_a,
	datab => x_r22_8_a,
	datad => VCC,
	cin => r17_sub13_10i1_anx63795z5,
	combout => r17_sub13_10i1_ad_7_a,
	cout => r17_sub13_10i1_anx63795z4);

reg_r17_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r17_sub13_10i1_ad_7_a,
	ena => validBit_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r17_8_a);

reg_r17_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r17_sub13_10i1_ad_6_a,
	ena => validBit_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r17_7_a);

ix36874z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx36874z2 = r17_8_a & r17_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r17_8_a,
	datad => r17_7_a,
	combout => nx36874z2);

r2_8_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r2_8_afeeder_combout = r2_add8_6i49_anx23445z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_add8_6i49_anx23445z1,
	combout => r2_8_afeeder_combout);

reg_r2_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r2_8_afeeder_combout,
	ena => nx51677z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_8_a);

x_r6_add9_8i2_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- x_r6_add9_8i2_anx23445z1 = x_r6_add9_8i2_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => x_r6_add9_8i2_anx23445z2,
	combout => x_r6_add9_8i2_anx23445z1);

reg_x_r6_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r6_add9_8i2_anx23445z1,
	ena => validBit_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r6_9_a);

reg_r14_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_add10_8i3_anx46946z1,
	ena => nx16422z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_9_a);

reg_x_r12_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r12_add11_8i4_anx46946z1,
	ena => nx58464z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r12_9_a);

x_r22_add12_8i1_aix63795z52927 : cycloneii_lcell_comb
-- Equation(s):
-- x_r22_add12_8i1_anx45949z1 = (x_r12_9_a $ x_r12_8_a $ !x_r22_add12_8i1_anx63795z9) # GND
-- x_r22_add12_8i1_anx63795z7 = CARRY(x_r12_9_a & (x_r12_8_a # !x_r22_add12_8i1_anx63795z9) # !x_r12_9_a & x_r12_8_a & !x_r22_add12_8i1_anx63795z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_r12_9_a,
	datab => x_r12_8_a,
	datad => VCC,
	cin => x_r22_add12_8i1_anx63795z9,
	combout => x_r22_add12_8i1_anx45949z1,
	cout => x_r22_add12_8i1_anx63795z7);

reg_x_r22_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r22_add12_8i1_anx46946z1,
	ena => nx65254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r22_10_a);

reg_x_r22_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_r22_add12_8i1_anx45949z1,
	ena => nx65254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_r22_9_a);

r17_sub13_10i1_aix63795z52927 : cycloneii_lcell_comb
-- Equation(s):
-- r17_sub13_10i1_ad_8_a = (r18_6_a $ x_r22_9_a $ r17_sub13_10i1_anx63795z4) # GND
-- r17_sub13_10i1_anx63795z3 = CARRY(r18_6_a & (!r17_sub13_10i1_anx63795z4 # !x_r22_9_a) # !r18_6_a & !x_r22_9_a & !r17_sub13_10i1_anx63795z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r18_6_a,
	datab => x_r22_9_a,
	datad => VCC,
	cin => r17_sub13_10i1_anx63795z4,
	combout => r17_sub13_10i1_ad_8_a,
	cout => r17_sub13_10i1_anx63795z3);

r17_sub13_10i1_aix63795z52926 : cycloneii_lcell_comb
-- Equation(s):
-- r17_sub13_10i1_ad_9_a = r18_7_a & (x_r22_10_a & !r17_sub13_10i1_anx63795z3 # !x_r22_10_a & r17_sub13_10i1_anx63795z3 & VCC) # !r18_7_a & (x_r22_10_a & (r17_sub13_10i1_anx63795z3 # GND) # !x_r22_10_a & !r17_sub13_10i1_anx63795z3)
-- r17_sub13_10i1_anx63795z2 = CARRY(r18_7_a & x_r22_10_a & !r17_sub13_10i1_anx63795z3 # !r18_7_a & (x_r22_10_a # !r17_sub13_10i1_anx63795z3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r18_7_a,
	datab => x_r22_10_a,
	datad => VCC,
	cin => r17_sub13_10i1_anx63795z3,
	combout => r17_sub13_10i1_ad_9_a,
	cout => r17_sub13_10i1_anx63795z2);

reg_r17_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r17_sub13_10i1_ad_9_a,
	ena => validBit_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r17_10_a);

r15_8_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r15_8_afeeder_combout = x_r3_8_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_r3_8_a,
	combout => r15_8_afeeder_combout);

reg_b_d1_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_d1_add9_7i10_anx45949z1,
	ena => validBit_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_d1_8_a);

reg_r15_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r15_8_afeeder_combout,
	sdata => b_d1_8_a,
	sload => ix23013z52805_anx100z1,
	ena => validBit_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_8_a);

r18_8_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r18_8_afeeder_combout = r15_8_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r15_8_a,
	combout => r18_8_afeeder_combout);

reg_r18_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r18_8_afeeder_combout,
	sdata => x_r11_8_a,
	sload => ix17266z52808_anx100z1,
	ena => nx17266z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r18_8_a);

reg_r17_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r17_sub13_10i1_ad_10_a,
	ena => validBit_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r17_11_a);

ix36874z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx36874z1 = o_valid_dup0 & (r17_12_a # r17_10_a # r17_11_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r17_12_a,
	datab => r17_10_a,
	datac => o_valid_dup0,
	datad => r17_11_a,
	combout => nx36874z1);

reg_r17_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r17_sub13_10i1_ad_8_a,
	ena => validBit_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r17_9_a);

ix36874z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_edge_dup0 = nx36874z1 # o_valid_dup0 & (nx36874z2 # r17_9_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx36874z2,
	datab => nx36874z1,
	datac => o_valid_dup0,
	datad => r17_9_a,
	combout => o_edge_dup0);

ix7380z18833_anx100z1_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- ix7380z18833_anx100z1_a_wirecell_combout = !ix7380z18833_anx100z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ix7380z18833_anx100z1,
	combout => ix7380z18833_anx100z1_a_wirecell_combout);

reg_stage1_wNw_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix7380z18833_anx100z1_a_wirecell_combout,
	ena => nx7380z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => stage1_wNw_0_a);

ix45375z52923 : cycloneii_lcell_comb
-- Equation(s):
-- first_cw_9n1ss1_0_a = !ix23013z52805_anx100z1 & stage1_wNw_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ix23013z52805_anx100z1,
	datad => stage1_wNw_0_a,
	combout => first_cw_9n1ss1_0_a);

reg_first_cw_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => first_cw_9n1ss1_0_a,
	ena => validBit_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => first_cw_0_a);

final_dir_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- final_dir_0_afeeder_combout = first_cw_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => first_cw_0_a,
	combout => final_dir_0_afeeder_combout);

reg_stage1_eSe_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix27953z18832_anx100z1,
	ena => nx27953z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => stage1_eSe_2_a);

ix1457z52923 : cycloneii_lcell_comb
-- Equation(s):
-- second_cw_9n2ss1_0_a = ix42030z52807_anx100z1 # stage1_eSe_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ix42030z52807_anx100z1,
	datad => stage1_eSe_2_a,
	combout => second_cw_9n2ss1_0_a);

reg_second_cw_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => second_cw_9n2ss1_0_a,
	ena => nx42030z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_cw_0_a);

reg_final_dir_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => final_dir_0_afeeder_combout,
	sdata => second_cw_0_a,
	sload => ix17266z52808_anx100z1,
	ena => nx17266z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => final_dir_0_a);

ix33603z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_dir_dup0_0_a = o_edge_dup0 & final_dir_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => o_edge_dup0,
	datad => final_dir_0_a,
	combout => o_dir_dup0_0_a);

reg_first_cw_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix23013z52805_anx100z1,
	ena => validBit_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => first_cw_1_a);

final_dir_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- final_dir_1_afeeder_combout = first_cw_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => first_cw_1_a,
	combout => final_dir_1_afeeder_combout);

reg_second_cw_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix42030z52807_anx100z1,
	ena => nx42030z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_cw_1_a);

reg_final_dir_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => final_dir_1_afeeder_combout,
	sdata => second_cw_1_a,
	sload => ix17266z52808_anx100z1,
	ena => nx17266z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => final_dir_1_a);

ix32606z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_dir_dup0_1_a = o_edge_dup0 & final_dir_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => o_edge_dup0,
	datad => final_dir_1_a,
	combout => o_dir_dup0_1_a);

reg_stage1_wNw_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix7380z18833_anx100z1,
	ena => nx7380z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => stage1_wNw_2_a);

first_cw_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- first_cw_2_afeeder_combout = stage1_wNw_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => stage1_wNw_2_a,
	combout => first_cw_2_afeeder_combout);

reg_stage1_nNe_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix48448z18833_anx100z1,
	ena => validBit_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => stage1_nNe_2_a);

reg_first_cw_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => first_cw_2_afeeder_combout,
	sdata => stage1_nNe_2_a,
	sload => ix23013z52805_anx100z1,
	ena => validBit_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => first_cw_2_a);

final_dir_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- final_dir_2_afeeder_combout = first_cw_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => first_cw_2_a,
	combout => final_dir_2_afeeder_combout);

second_cw_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- second_cw_2_afeeder_combout = stage1_eSe_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => stage1_eSe_2_a,
	combout => second_cw_2_afeeder_combout);

reg_stage1_sSw_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => ix250z18831_anx100z1,
	ena => nx250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => stage1_sSw_2_a);

reg_second_cw_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => second_cw_2_afeeder_combout,
	sdata => stage1_sSw_2_a,
	sload => ix42030z52807_anx100z1,
	ena => nx42030z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_cw_2_a);

reg_final_dir_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => final_dir_2_afeeder_combout,
	sdata => second_cw_2_a,
	sload => ix17266z52808_anx100z1,
	ena => nx17266z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => final_dir_2_a);

ix31609z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_dir_dup0_2_a = o_edge_dup0 & final_dir_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => o_edge_dup0,
	datad => final_dir_2_a,
	combout => o_dir_dup0_2_a);

modgen_counter_o_row_aix58250z52926 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx56256z1 = modgen_counter_o_row_anx58250z5 & !modgen_counter_o_row_anx58250z6 # !modgen_counter_o_row_anx58250z5 & (modgen_counter_o_row_anx58250z6 # GND)
-- modgen_counter_o_row_anx58250z4 = CARRY(!modgen_counter_o_row_anx58250z6 # !modgen_counter_o_row_anx58250z5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx58250z5,
	datad => VCC,
	cin => modgen_counter_o_row_anx58250z6,
	combout => modgen_counter_o_row_anx56256z1,
	cout => modgen_counter_o_row_anx58250z4);

modgen_counter_o_row_aix58250z52925 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx57253z1 = modgen_counter_o_row_anx58250z3 & (modgen_counter_o_row_anx58250z4 $ GND) # !modgen_counter_o_row_anx58250z3 & !modgen_counter_o_row_anx58250z4 & VCC
-- modgen_counter_o_row_anx58250z2 = CARRY(modgen_counter_o_row_anx58250z3 & !modgen_counter_o_row_anx58250z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_row_anx58250z3,
	datad => VCC,
	cin => modgen_counter_o_row_anx58250z4,
	combout => modgen_counter_o_row_anx57253z1,
	cout => modgen_counter_o_row_anx58250z2);

modgen_counter_o_row_areg_q_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_row_anx57253z1,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z3);

modgen_counter_o_row_aix58250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx58250z1 = modgen_counter_o_row_anx1041z1 $ modgen_counter_o_row_anx58250z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx1041z1,
	cin => modgen_counter_o_row_anx58250z2,
	combout => modgen_counter_o_row_anx58250z1);

modgen_counter_o_row_areg_q_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx58250z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx1041z1);

modgen_counter_o_row_areg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx51271z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z15);

ix11673z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx11673z3 = modgen_counter_o_row_anx58250z13 # modgen_counter_o_row_anx1041z1 # modgen_counter_o_row_anx58250z3 # modgen_counter_o_row_anx58250z15

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx58250z13,
	datab => modgen_counter_o_row_anx1041z1,
	datac => modgen_counter_o_row_anx58250z3,
	datad => modgen_counter_o_row_anx58250z15,
	combout => nx11673z3);

ix11673z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx11673z1 = nx11673z2 & !nx20419z5 & !nx11673z3 # !nx11673z2 & (!nx20419z5 & !nx11673z3 # !nx20419z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx11673z2,
	datab => nx20419z5,
	datac => nx11673z3,
	datad => nx20419z4,
	combout => nx11673z1);

reg_out_signal_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx11673z1,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx47893z1);

o_mode_dup0_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_mode_dup0_1_afeeder_combout = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => o_mode_dup0_1_afeeder_combout);

reg_out_signal_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_mode_dup0_1_afeeder_combout,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_mode_dup0_1_a);

nx16335z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx16335z1_afeeder_combout = modgen_counter_o_row_anx51271z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_o_row_anx51271z1,
	combout => nx16335z1_afeeder_combout);

reg_out_o_row_obuf_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx16335z1_afeeder_combout,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx16335z1);

nx17332z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx17332z1_afeeder_combout = modgen_counter_o_row_anx52268z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_o_row_anx52268z1,
	combout => nx17332z1_afeeder_combout);

reg_out_o_row_obuf_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx17332z1_afeeder_combout,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx17332z1);

nx18329z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx18329z1_afeeder_combout = modgen_counter_o_row_anx53265z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_o_row_anx53265z1,
	combout => nx18329z1_afeeder_combout);

reg_out_o_row_obuf_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx18329z1_afeeder_combout,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx18329z1);

reg_out_o_row_obuf_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_row_anx54262z1,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx19326z1);

reg_out_o_row_obuf_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx55259z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx20323z1);

nx21320z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx21320z1_afeeder_combout = modgen_counter_o_row_anx56256z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_o_row_anx56256z1,
	combout => nx21320z1_afeeder_combout);

reg_out_o_row_obuf_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx21320z1_afeeder_combout,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx21320z1);

reg_out_o_row_obuf_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx57253z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx22317z1);

nx23314z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx23314z1_afeeder_combout = modgen_counter_o_row_anx58250z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_o_row_anx58250z1,
	combout => nx23314z1_afeeder_combout);

reg_out_o_row_obuf_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx23314z1_afeeder_combout,
	sclr => i_reset_acombout,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx23314z1);

o_valid_obuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_valid_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_valid);

o_edge_obuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_edge_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_edge);

o_dir_obuf_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_dir_dup0_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(0));

o_dir_obuf_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_dir_dup0_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(1));

o_dir_obuf_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_dir_dup0_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(2));

o_mode_obuf_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_nx47893z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(0));

o_mode_obuf_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_mode_dup0_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(1));

ix16335z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx16335z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(0));

ix17332z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx17332z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(1));

ix18329z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx18329z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(2));

ix19326z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx19326z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(3));

ix20323z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx20323z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(4));

ix21320z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx21320z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(5));

ix22317z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx22317z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(6));

ix23314z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx23314z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(7));

debug_led_red_triBus3_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(0));

debug_led_red_triBus3_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(1));

debug_led_red_triBus3_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(2));

debug_led_red_triBus3_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(3));

debug_led_red_triBus3_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(4));

debug_led_red_triBus3_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(5));

debug_led_red_triBus3_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(6));

debug_led_red_triBus3_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(7));

debug_led_red_triBus3_8_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(8));

debug_led_red_triBus3_9_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(9));

debug_led_red_triBus3_10_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(10));

debug_led_red_triBus3_11_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(11));

debug_led_red_triBus3_12_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(12));

debug_led_red_triBus3_13_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(13));

debug_led_red_triBus3_14_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(14));

debug_led_red_triBus3_15_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(15));

debug_led_red_triBus3_16_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(16));

debug_led_red_triBus3_17_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(17));

debug_led_grn_triBus4_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_grn(0));

debug_led_grn_triBus4_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_grn(1));

debug_led_grn_triBus4_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_grn(2));

debug_led_grn_triBus4_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_grn(3));

debug_led_grn_triBus4_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_grn(4));

debug_led_grn_triBus4_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_grn(5));

debug_num_0_triBus5_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_0(0));

debug_num_0_triBus5_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_0(1));

debug_num_0_triBus5_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_0(2));

debug_num_0_triBus5_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_0(3));

debug_num_1_triBus6_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_1(0));

debug_num_1_triBus6_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_1(1));

debug_num_1_triBus6_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_1(2));

debug_num_1_triBus6_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_1(3));

debug_num_2_triBus7_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_2(0));

debug_num_2_triBus7_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_2(1));

debug_num_2_triBus7_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_2(2));

debug_num_2_triBus7_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_2(3));

debug_num_3_triBus8_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_3(0));

debug_num_3_triBus8_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_3(1));

debug_num_3_triBus8_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_3(2));

debug_num_3_triBus8_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_3(3));

debug_num_4_triBus9_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_4(0));

debug_num_4_triBus9_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_4(1));

debug_num_4_triBus9_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_4(2));

debug_num_4_triBus9_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_4(3));

debug_num_5_triBus10_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_5(0));

debug_num_5_triBus10_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_5(1));

debug_num_5_triBus10_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_5(2));

debug_num_5_triBus10_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_num_5(3));

debug_key_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(1));

debug_key_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(2));

debug_key_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(3));

debug_switch_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(0));

debug_switch_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(1));

debug_switch_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(2));

debug_switch_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(3));

debug_switch_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(4));

debug_switch_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(5));

debug_switch_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(6));

debug_switch_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(7));

debug_switch_a8_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(8));

debug_switch_a9_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(9));

debug_switch_a10_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(10));

debug_switch_a11_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(11));

debug_switch_a12_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(12));

debug_switch_a13_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(13));

debug_switch_a14_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(14));

debug_switch_a15_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(15));

debug_switch_a16_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(16));

debug_switch_a17_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(17));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity kirsch is
  port (
      i_clock  : in STD_LOGIC
    ; i_reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_pixel  : in std_logic_vector (7 downto 0)
    ; o_valid  : out STD_LOGIC
    ; o_edge  : out STD_LOGIC
    ; o_dir  : out std_logic_vector (2 downto 0)
    ; o_mode  : out std_logic_vector (1 downto 0)
    ; o_row  : out std_logic_vector (7 downto 0)
    ; debug_key  : in std_logic_vector (3 downto 1)
    ; debug_switch  : in std_logic_vector (17 downto 0)
    ; debug_led_red  : out std_logic_vector (17 downto 0)
    ; debug_led_grn  : out std_logic_vector (5 downto 0)
    ; debug_num_0  : out std_logic_vector (3 downto 0)
    ; debug_num_1  : out std_logic_vector (3 downto 0)
    ; debug_num_2  : out std_logic_vector (3 downto 0)
    ; debug_num_3  : out std_logic_vector (3 downto 0)
    ; debug_num_4  : out std_logic_vector (3 downto 0)
    ; debug_num_5  : out std_logic_vector (3 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of kirsch is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.kirsch_chip
    port map (
        i_clock => i_clock
      , i_reset => i_reset
      , i_valid => i_valid
      , i_pixel(7) => i_pixel(7)
      , i_pixel(6) => i_pixel(6)
      , i_pixel(5) => i_pixel(5)
      , i_pixel(4) => i_pixel(4)
      , i_pixel(3) => i_pixel(3)
      , i_pixel(2) => i_pixel(2)
      , i_pixel(1) => i_pixel(1)
      , i_pixel(0) => i_pixel(0)
      , o_valid => o_valid
      , o_edge => o_edge
      , o_dir(2) => o_dir(2)
      , o_dir(1) => o_dir(1)
      , o_dir(0) => o_dir(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_row(7) => o_row(7)
      , o_row(6) => o_row(6)
      , o_row(5) => o_row(5)
      , o_row(4) => o_row(4)
      , o_row(3) => o_row(3)
      , o_row(2) => o_row(2)
      , o_row(1) => o_row(1)
      , o_row(0) => o_row(0)
      , debug_key(3) => debug_key(3)
      , debug_key(2) => debug_key(2)
      , debug_key(1) => debug_key(1)
      , debug_switch(17) => debug_switch(17)
      , debug_switch(16) => debug_switch(16)
      , debug_switch(15) => debug_switch(15)
      , debug_switch(14) => debug_switch(14)
      , debug_switch(13) => debug_switch(13)
      , debug_switch(12) => debug_switch(12)
      , debug_switch(11) => debug_switch(11)
      , debug_switch(10) => debug_switch(10)
      , debug_switch(9) => debug_switch(9)
      , debug_switch(8) => debug_switch(8)
      , debug_switch(7) => debug_switch(7)
      , debug_switch(6) => debug_switch(6)
      , debug_switch(5) => debug_switch(5)
      , debug_switch(4) => debug_switch(4)
      , debug_switch(3) => debug_switch(3)
      , debug_switch(2) => debug_switch(2)
      , debug_switch(1) => debug_switch(1)
      , debug_switch(0) => debug_switch(0)
      , debug_led_red(17) => debug_led_red(17)
      , debug_led_red(16) => debug_led_red(16)
      , debug_led_red(15) => debug_led_red(15)
      , debug_led_red(14) => debug_led_red(14)
      , debug_led_red(13) => debug_led_red(13)
      , debug_led_red(12) => debug_led_red(12)
      , debug_led_red(11) => debug_led_red(11)
      , debug_led_red(10) => debug_led_red(10)
      , debug_led_red(9) => debug_led_red(9)
      , debug_led_red(8) => debug_led_red(8)
      , debug_led_red(7) => debug_led_red(7)
      , debug_led_red(6) => debug_led_red(6)
      , debug_led_red(5) => debug_led_red(5)
      , debug_led_red(4) => debug_led_red(4)
      , debug_led_red(3) => debug_led_red(3)
      , debug_led_red(2) => debug_led_red(2)
      , debug_led_red(1) => debug_led_red(1)
      , debug_led_red(0) => debug_led_red(0)
      , debug_led_grn(5) => debug_led_grn(5)
      , debug_led_grn(4) => debug_led_grn(4)
      , debug_led_grn(3) => debug_led_grn(3)
      , debug_led_grn(2) => debug_led_grn(2)
      , debug_led_grn(1) => debug_led_grn(1)
      , debug_led_grn(0) => debug_led_grn(0)
      , debug_num_0(3) => debug_num_0(3)
      , debug_num_0(2) => debug_num_0(2)
      , debug_num_0(1) => debug_num_0(1)
      , debug_num_0(0) => debug_num_0(0)
      , debug_num_1(3) => debug_num_1(3)
      , debug_num_1(2) => debug_num_1(2)
      , debug_num_1(1) => debug_num_1(1)
      , debug_num_1(0) => debug_num_1(0)
      , debug_num_2(3) => debug_num_2(3)
      , debug_num_2(2) => debug_num_2(2)
      , debug_num_2(1) => debug_num_2(1)
      , debug_num_2(0) => debug_num_2(0)
      , debug_num_3(3) => debug_num_3(3)
      , debug_num_3(2) => debug_num_3(2)
      , debug_num_3(1) => debug_num_3(1)
      , debug_num_3(0) => debug_num_3(0)
      , debug_num_4(3) => debug_num_4(3)
      , debug_num_4(2) => debug_num_4(2)
      , debug_num_4(1) => debug_num_4(1)
      , debug_num_4(0) => debug_num_4(0)
      , debug_num_5(3) => debug_num_5(3)
      , debug_num_5(2) => debug_num_5(2)
      , debug_num_5(1) => debug_num_5(1)
      , debug_num_5(0) => debug_num_5(0)
    );
end architecture;

