
-- 
-- Definition of  top_kirsch
-- 
--      07/23/14 13:18:15
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_11_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_11_0 ;

architecture IMPLEMENTATION of modgen_counter_11_0 is 
   signal nx3957z1, nx17096z3, nx17096z5, nx17096z7, nx17096z9, nx17096z11, 
      nx17096z13, nx17096z15, nx17096z17, nx17096z19, nx17096z21, nx51271z1, 
      nx17096z20, nx52268z1, nx17096z18, nx53265z1, nx17096z16, nx54262z1, 
      nx17096z14, nx55259z1, nx17096z12, nx56256z1, nx17096z10, nx57253z1, 
      nx17096z8, nx58250z1, nx17096z6, nx59247z1, nx17096z4, nx60244z1, 
      nx17096z2, nx17096z1, nx_modgen_counter_11_0_vcc_net: std_logic ;

begin
   q(10) <= nx3957z1 ;
   q(9) <= nx17096z3 ;
   q(8) <= nx17096z5 ;
   q(7) <= nx17096z7 ;
   q(6) <= nx17096z9 ;
   q(5) <= nx17096z11 ;
   q(4) <= nx17096z13 ;
   q(3) <= nx17096z15 ;
   q(2) <= nx17096z17 ;
   q(1) <= nx17096z19 ;
   q(0) <= nx17096z21 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx17096z3, datain=>
      nx60244z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx17096z5, datain=>
      nx59247z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx17096z7, datain=>
      nx58250z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx17096z9, datain=>
      nx57253z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx17096z11, datain=>
      nx56256z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx17096z13, datain=>
      nx55259z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx17096z15, datain=>
      nx54262z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx17096z17, datain=>
      nx53265z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx3957z1, datain=>
      nx17096z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx17096z19, datain=>
      nx52268z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx17096z21, datain=>
      nx51271z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   ix17096z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx17096z16, dataa=>nx17096z17, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z18);
   nx_modgen_counter_11_0_vcc_net <= '1';
   ix17096z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, dataa=>nx3957z1, datad=>
      nx_modgen_counter_11_0_vcc_net, cin=>nx17096z2);
   ix17096z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx17096z2, dataa=>nx17096z3, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z4);
   ix17096z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx17096z4, dataa=>nx17096z5, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z6);
   ix17096z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx17096z6, dataa=>nx17096z7, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z8);
   ix17096z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx17096z18, dataa=>nx17096z19, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z20);
   ix17096z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx17096z8, dataa=>nx17096z9, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z10);
   ix17096z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx17096z10, dataa=>nx17096z11, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z12);
   ix17096z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx17096z12, dataa=>nx17096z13, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z14);
   ix17096z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx17096z14, dataa=>nx17096z15, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z16);
   ix17096z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx17096z20, dataa=>nx17096z21, 
      datad=>nx_modgen_counter_11_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_12_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (11 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (11 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_12_0 ;

architecture IMPLEMENTATION of modgen_counter_12_0 is 
   signal nx2960z1, nx18093z3, nx18093z5, nx18093z7, nx18093z9, nx18093z11, 
      nx18093z13, nx18093z15, nx18093z17, nx18093z19, nx18093z21, nx18093z23, 
      nx51271z1, nx18093z22, nx52268z1, nx18093z20, nx53265z1, nx18093z18, 
      nx54262z1, nx18093z16, nx55259z1, nx18093z14, nx56256z1, nx18093z12, 
      nx57253z1, nx18093z10, nx58250z1, nx18093z8, nx59247z1, nx18093z6, 
      nx60244z1, nx18093z4, nx17096z1, nx18093z2, nx18093z1, 
      nx_modgen_counter_12_0_vcc_net: std_logic ;

begin
   q(11) <= nx2960z1 ;
   q(10) <= nx18093z3 ;
   q(9) <= nx18093z5 ;
   q(8) <= nx18093z7 ;
   q(7) <= nx18093z9 ;
   q(6) <= nx18093z11 ;
   q(5) <= nx18093z13 ;
   q(4) <= nx18093z15 ;
   q(3) <= nx18093z17 ;
   q(2) <= nx18093z19 ;
   q(1) <= nx18093z21 ;
   q(0) <= nx18093z23 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx18093z5, datain=>
      nx60244z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx18093z7, datain=>
      nx59247z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx18093z9, datain=>
      nx58250z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx18093z11, datain=>
      nx57253z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx18093z13, datain=>
      nx56256z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx18093z15, datain=>
      nx55259z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx18093z17, datain=>
      nx54262z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx18093z19, datain=>
      nx53265z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx2960z1, datain=>
      nx18093z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx18093z3, datain=>
      nx17096z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx18093z21, datain=>
      nx52268z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx18093z23, datain=>
      nx51271z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   ix18093z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx18093z18, dataa=>nx18093z19, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z20);
   nx_modgen_counter_12_0_vcc_net <= '1';
   ix18093z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, dataa=>nx2960z1, datad=>
      nx_modgen_counter_12_0_vcc_net, cin=>nx18093z2);
   ix18093z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx18093z2, dataa=>nx18093z3, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z4);
   ix18093z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx18093z4, dataa=>nx18093z5, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z6);
   ix18093z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx18093z6, dataa=>nx18093z7, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z8);
   ix18093z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx18093z8, dataa=>nx18093z9, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z10);
   ix18093z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx18093z20, dataa=>nx18093z21, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z22);
   ix18093z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx18093z10, dataa=>nx18093z11, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z12);
   ix18093z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx18093z12, dataa=>nx18093z13, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z14);
   ix18093z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx18093z14, dataa=>nx18093z15, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z16);
   ix18093z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx18093z16, dataa=>nx18093z17, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z18);
   ix18093z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx18093z22, dataa=>nx18093z23, 
      datad=>nx_modgen_counter_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity UARTS is 
   port (
      CLK : IN std_logic ;
      RST : IN std_logic ;
      Din : IN std_logic_vector (7 DOWNTO 0) ;
      LD : IN std_logic ;
      Rx : IN std_logic ;
      Baud : IN std_logic ;
      Dout : OUT std_logic_vector (7 DOWNTO 0) ;
      Tx : OUT std_logic ;
      TxBusy : OUT std_logic ;
      RxErr : OUT std_logic ;
      RxRDY : OUT std_logic ;
      p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
      p_NOT_rtlcn2 : OUT std_logic ;
      p_rxflex : IN std_logic ;
      p_nrst_int_dup_8 : IN std_logic) ;
end UARTS ;

architecture RTL_unfold_1358 of UARTS is 
   component modgen_counter_11_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component modgen_counter_12_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (11 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (11 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   signal RxErr_EXMPLR528, RxRDY_EXMPLR529: std_logic ;
   
   signal Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal TxDivisor_5: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal RxFSM_6, RxFSM_5, RxFSM_3, RxFSM_2, RxFSM_1, RxFSM_0, nx65151z1, 
      nx50920z2, nx35603z1, not_rtlc17_X_0_n360, nx54636z1, nx15541z1, 
      nx13547z1, nx14544z1, nx11553z1, nx34394z1, nx34394z3, nx32400z1, 
      nx13547z2, nx30017z1, PWR, nx4608z1, nx51917z2, nx50920z3, nx51917z3, 
      nx9370z2, nx51917z1, nx50920z1, nx49923z1, nx48926z1, nx8373z1, 
      nx9370z1, nx10367z1, nx11364z1, nx5605z1, nx15376z1, nx34394z4, 
      nx34394z5, nx34394z6, nx34394z9, nx34394z7, nx34394z10, nx34394z8, 
      nx32400z2, nx32400z3, nx32400z4, nx32400z6, nx32400z5, nx32400z7, 
      nx15541z2, nx4608z2, nx4608z3, nx51917z4, nx8373z2, nx15541z3, 
      nx32400z8, nx32400z9, not_Rx_r, NOT_Rx, nx34606z1, 
      NOT_Tx_Reg_14n6ss1_8, nx33609z1, NOT_Tx_Reg_14n6ss1_7, nx32612z1, 
      NOT_Tx_Reg_14n6ss1_6, nx31615z1, NOT_Tx_Reg_14n6ss1_5, nx30618z1, 
      NOT_Tx_Reg_14n6ss1_4, nx29621z1, NOT_Tx_Reg_14n6ss1_3, nx28624z1, 
      NOT_Tx_Reg_14n6ss1_2, nx61140z1, NOT_Tx_Reg_14n6ss1_1, nx34394z2, 
      nx16538z1: std_logic ;
   
   signal DANGLING : std_logic_vector (32 downto 0 );

begin
   RxErr <= RxErr_EXMPLR528 ;
   RxRDY <= RxRDY_EXMPLR529 ;
   modgen_counter_RxDiv : modgen_counter_11_0 port map ( clock=>CLK, q(10)=>
      RxDiv(10), q(9)=>RxDiv(9), q(8)=>RxDiv(8), q(7)=>RxDiv(7), q(6)=>
      RxDiv(6), q(5)=>RxDiv(5), q(4)=>RxDiv(4), q(3)=>RxDiv(3), q(2)=>
      RxDiv(2), q(1)=>RxDiv(1), q(0)=>RxDiv(0), clk_en=>DANGLING(0), aclear
      =>RST, sload=>DANGLING(1), data(10)=>DANGLING(2), data(9)=>DANGLING(3), 
      data(8)=>DANGLING(4), data(7)=>DANGLING(5), data(6)=>DANGLING(6), 
      data(5)=>DANGLING(7), data(4)=>DANGLING(8), data(3)=>DANGLING(9), 
      data(2)=>DANGLING(10), data(1)=>DANGLING(11), data(0)=>DANGLING(12), 
      aset=>DANGLING(13), sclear=>nx65151z1, updn=>DANGLING(14), cnt_en=>
      DANGLING(15));
   modgen_counter_TxDiv : modgen_counter_12_0 port map ( clock=>CLK, q(11)=>
      TxDiv(11), q(10)=>TxDiv(10), q(9)=>TxDiv(9), q(8)=>TxDiv(8), q(7)=>
      TxDiv(7), q(6)=>TxDiv(6), q(5)=>TxDiv(5), q(4)=>TxDiv(4), q(3)=>
      TxDiv(3), q(2)=>TxDiv(2), q(1)=>TxDiv(1), q(0)=>TxDiv(0), clk_en=>
      DANGLING(16), aclear=>RST, sload=>DANGLING(17), data(11)=>DANGLING(18), 
      data(10)=>DANGLING(19), data(9)=>DANGLING(20), data(8)=>DANGLING(21), 
      data(7)=>DANGLING(22), data(6)=>DANGLING(23), data(5)=>DANGLING(24), 
      data(4)=>DANGLING(25), data(3)=>DANGLING(26), data(2)=>DANGLING(27), 
      data(1)=>DANGLING(28), data(0)=>DANGLING(29), aset=>DANGLING(30), 
      sclear=>nx32400z1, updn=>DANGLING(31), cnt_en=>DANGLING(32));
   PWR <= '1';
   Rx_r <= NOT not_Rx_r;
   RxFSM_0 <= NOT nx34394z2;
   reg_Tx_Reg_8 : cycloneii_lcell_ff port map ( regout=>nx34606z1, datain=>
      NOT_Tx_Reg_14n6ss1_8, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_7 : cycloneii_lcell_ff port map ( regout=>nx33609z1, datain=>
      NOT_Tx_Reg_14n6ss1_7, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_6 : cycloneii_lcell_ff port map ( regout=>nx32612z1, datain=>
      NOT_Tx_Reg_14n6ss1_6, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_5 : cycloneii_lcell_ff port map ( regout=>nx31615z1, datain=>
      NOT_Tx_Reg_14n6ss1_5, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_4 : cycloneii_lcell_ff port map ( regout=>nx30618z1, datain=>
      NOT_Tx_Reg_14n6ss1_4, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_3 : cycloneii_lcell_ff port map ( regout=>nx29621z1, datain=>
      NOT_Tx_Reg_14n6ss1_3, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_2 : cycloneii_lcell_ff port map ( regout=>nx28624z1, datain=>
      NOT_Tx_Reg_14n6ss1_2, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_1 : cycloneii_lcell_ff port map ( regout=>nx61140z1, datain=>
      NOT_Tx_Reg_14n6ss1_1, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_TxFSM_1 : cycloneii_lcell_ff port map ( regout=>TxFSM(1), datain=>
      nx5605z1, clk=>CLK, aclr=>RST);
   reg_TxFSM_0 : cycloneii_lcell_ff port map ( regout=>TxFSM(0), datain=>
      nx4608z1, clk=>CLK, aclr=>RST);
   reg_TxDivisor_5 : cycloneii_lcell_ff port map ( regout=>TxDivisor_5, 
      datain=>PWR, clk=>CLK, aclr=>RST);
   reg_TopTx : cycloneii_lcell_ff port map ( regout=>TopTx, datain=>
      nx32400z1, clk=>CLK, aclr=>RST);
   reg_TopRx : cycloneii_lcell_ff port map ( regout=>TopRx, datain=>
      nx34394z1, clk=>CLK, aclr=>RST);
   reg_Rx_r : cycloneii_lcell_ff port map ( regout=>not_Rx_r, datain=>NOT_Rx, 
      clk=>CLK, aclr=>RST);
   reg_Rx_Reg_7 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(7), datain=>
      Rx_r, clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_6 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(6), datain=>
      Rx_Reg(7), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_5 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(5), datain=>
      Rx_Reg(6), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_4 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(4), datain=>
      Rx_Reg(5), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_3 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(3), datain=>
      Rx_Reg(4), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_2 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(2), datain=>
      Rx_Reg(3), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_1 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(1), datain=>
      Rx_Reg(2), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_0 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(0), datain=>
      Rx_Reg(1), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_RxRDYi : cycloneii_lcell_ff port map ( regout=>RxRDY_EXMPLR529, 
      datain=>nx30017z1, clk=>CLK, aclr=>RST);
   reg_RxFSM_6 : cycloneii_lcell_ff port map ( regout=>RxFSM_6, datain=>
      RxFSM_1, sdata=>RxFSM_5, clk=>CLK, ena=>nx15541z1, aclr=>RST, sload=>
      not_Rx_r);
   reg_RxFSM_5 : cycloneii_lcell_ff port map ( regout=>RxFSM_5, datain=>
      nx11553z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_3 : cycloneii_lcell_ff port map ( regout=>RxFSM_3, datain=>
      nx13547z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_2 : cycloneii_lcell_ff port map ( regout=>RxFSM_2, datain=>
      nx14544z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_1 : cycloneii_lcell_ff port map ( regout=>RxFSM_1, datain=>
      RxFSM_0, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_0 : cycloneii_lcell_ff port map ( regout=>nx34394z2, datain=>
      nx16538z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxErr : cycloneii_lcell_ff port map ( regout=>RxErr_EXMPLR528, datain
      =>nx15376z1, clk=>CLK, aclr=>RST);
   reg_Dout_7 : cycloneii_lcell_ff port map ( regout=>Dout(7), datain=>
      Rx_Reg(7), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_6 : cycloneii_lcell_ff port map ( regout=>Dout(6), datain=>
      Rx_Reg(6), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_5 : cycloneii_lcell_ff port map ( regout=>Dout(5), datain=>
      Rx_Reg(5), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_4 : cycloneii_lcell_ff port map ( regout=>Dout(4), datain=>
      Rx_Reg(4), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_3 : cycloneii_lcell_ff port map ( regout=>Dout(3), datain=>
      Rx_Reg(3), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_2 : cycloneii_lcell_ff port map ( regout=>Dout(2), datain=>
      Rx_Reg(2), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_1 : cycloneii_lcell_ff port map ( regout=>Dout(1), datain=>
      Rx_Reg(1), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_0 : cycloneii_lcell_ff port map ( regout=>Dout(0), datain=>
      Rx_Reg(0), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(3), datain=>nx51917z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(2), datain=>nx50920z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(1), datain=>nx49923z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(0), datain=>nx48926z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(3), datain=>nx8373z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(2), datain=>nx9370z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(1), datain=>nx10367z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(0), datain=>nx11364z1, clk=>CLK, aclr=>RST);
   ix50920z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx50920z2, dataa=>TopTx, datab=>TxFSM(1));
   ix61140z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>p_Tx_Reg_14n6ss1_0, dataa=>nx61140z1, datab=>
      TxFSM(1), datac=>TxFSM(0));
   ix28624z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_1, dataa=>Din(0), datab=>
      nx28624z1, datac=>TxFSM(1));
   ix29621z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_2, dataa=>Din(1), datab=>
      nx29621z1, datac=>TxFSM(1));
   ix30618z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_3, dataa=>Din(2), datab=>
      nx30618z1, datac=>TxFSM(1));
   ix31615z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_4, dataa=>Din(3), datab=>
      nx31615z1, datac=>TxFSM(1));
   ix32612z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_5, dataa=>Din(5), datab=>
      nx32612z1, datac=>TxFSM(1));
   ix33609z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_6, dataa=>Din(5), datab=>
      nx33609z1, datac=>TxFSM(1));
   ix34606z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_7, dataa=>Din(7), datab=>
      nx34606z1, datac=>TxFSM(1));
   ix35603z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_8, dataa=>Din(7), datab=>
      TxFSM(1));
   ix65151z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"dddd") 
       port map ( combout=>nx65151z1, dataa=>nx34394z2, datab=>nx34394z3);
   ix32400z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx32400z9, dataa=>TxDiv(10), datab=>TxDiv(9));
   ix32400z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx32400z8, dataa=>TxDivisor_5, datab=>TxDiv(11), 
      datac=>TxDiv(0), datad=>nx32400z9);
   ix8373z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"6aaa") 
       port map ( combout=>nx8373z2, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>RxBitCnt(1), datad=>RxBitCnt(0));
   ix51917z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f1") 
       port map ( combout=>nx51917z4, dataa=>TxBitCnt(3), datab=>TxBitCnt(2), 
      datac=>nx50920z2, datad=>nx50920z3);
   ix4608z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"feff") 
       port map ( combout=>nx4608z3, dataa=>TxBitCnt(3), datab=>TxBitCnt(2), 
      datac=>TxBitCnt(1), datad=>TxBitCnt(0));
   ix4608z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3335") 
       port map ( combout=>nx4608z2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix15541z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ac00") 
       port map ( combout=>nx15541z2, dataa=>Rx, datab=>TopRx, datac=>
      RxFSM_6, datad=>nx34394z2);
   ix32400z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx32400z7, dataa=>TxDiv(4), datab=>TxDiv(3), 
      datac=>TxDiv(2), datad=>TxDiv(1));
   ix32400z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx32400z5, dataa=>TxDiv(4), datab=>TxDiv(3), 
      datac=>TxDiv(2), datad=>TxDiv(1));
   ix32400z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx32400z6, dataa=>TxDiv(8), datab=>TxDiv(7), 
      datac=>TxDiv(6), datad=>TxDiv(5));
   ix15541z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"b3b3") 
       port map ( combout=>nx15541z3, dataa=>p_rxflex, datab=>RxFSM_6, datac
      =>p_nrst_int_dup_8);
   ix32400z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx32400z4, dataa=>TxDiv(8), datab=>TxDiv(7), 
      datac=>TxDiv(6), datad=>TxDiv(5));
   ix32400z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx32400z3, dataa=>TxDivisor_5, datab=>TxDiv(11), 
      datac=>TxDiv(10), datad=>TxDiv(9));
   ix32400z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx32400z2, dataa=>TxDiv(0), datab=>nx32400z3, 
      datac=>nx32400z4, datad=>nx32400z5);
   ix34394z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z8, dataa=>RxDiv(3), datab=>RxDiv(2), 
      datac=>RxDiv(1), datad=>RxDiv(0));
   ix34394z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx34394z10, dataa=>RxDiv(3), datab=>RxDiv(2), 
      datac=>RxDiv(1), datad=>RxDiv(0));
   ix34394z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z7, dataa=>RxDiv(7), datab=>RxDiv(6), 
      datac=>RxDiv(5), datad=>RxDiv(4));
   ix34394z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx34394z9, dataa=>RxDiv(7), datab=>RxDiv(6), 
      datac=>RxDiv(5), datad=>RxDiv(4));
   ix34394z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z6, dataa=>TxDivisor_5, datab=>RxDiv(10), 
      datac=>RxDiv(9), datad=>RxDiv(8));
   ix34394z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx34394z5, dataa=>nx34394z6, datab=>nx34394z7, 
      datac=>nx34394z8);
   ix34394z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx34394z4, dataa=>TxDivisor_5, datab=>RxDiv(10), 
      datac=>RxDiv(9), datad=>RxDiv(8));
   ix15376z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f2") 
       port map ( combout=>nx15376z1, dataa=>RxErr_EXMPLR528, datab=>
      RxRDY_EXMPLR529, datac=>RxFSM_6);
   ix11364z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6c40") 
       port map ( combout=>nx11364z1, dataa=>TopRx, datab=>RxBitCnt(0), 
      datac=>RxFSM_3, datad=>nx34394z2);
   ix10367z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"60aa") 
       port map ( combout=>nx10367z1, dataa=>RxBitCnt(1), datab=>RxBitCnt(0), 
      datac=>nx34394z2, datad=>not_rtlc17_X_0_n360);
   ix9370z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a8a") 
       port map ( combout=>nx9370z1, dataa=>RxBitCnt(2), datab=>nx34394z2, 
      datac=>not_rtlc17_X_0_n360, datad=>nx9370z2);
   ix8373z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ca0a") 
       port map ( combout=>nx8373z1, dataa=>RxBitCnt(3), datab=>nx34394z2, 
      datac=>not_rtlc17_X_0_n360, datad=>nx8373z2);
   ix48926z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ce6c") 
       port map ( combout=>nx48926z1, dataa=>TopTx, datab=>TxBitCnt(0), 
      datac=>TxFSM(1), datad=>TxFSM(0));
   ix49923z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"09aa") 
       port map ( combout=>nx49923z1, dataa=>TxBitCnt(1), datab=>TxBitCnt(0), 
      datac=>nx50920z2, datad=>nx51917z2);
   ix50920z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2a1a") 
       port map ( combout=>nx50920z1, dataa=>TxBitCnt(2), datab=>nx50920z2, 
      datac=>nx51917z2, datad=>nx50920z3);
   ix51917z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eea2") 
       port map ( combout=>nx51917z1, dataa=>TxBitCnt(3), datab=>nx51917z2, 
      datac=>nx51917z3, datad=>nx51917z4);
   ix61812z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0cca") 
       port map ( combout=>p_NOT_rtlcn2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix9370z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx9370z2, dataa=>RxBitCnt(1), datab=>RxBitCnt(0)
   );
   ix51917z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx51917z3, dataa=>TxBitCnt(2), datab=>TxBitCnt(1), 
      datac=>TxBitCnt(0));
   ix50920z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx50920z3, dataa=>TxBitCnt(1), datab=>TxBitCnt(0)
   );
   ix51917z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2828") 
       port map ( combout=>nx51917z2, dataa=>TopTx, datab=>TxFSM(1), datac=>
      TxFSM(0));
   ix4608z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c1c3") 
       port map ( combout=>nx4608z1, dataa=>TxFSM(1), datab=>TxFSM(0), datac
      =>nx4608z2, datad=>nx4608z3);
   ix30017z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx30017z1, dataa=>TopRx, datab=>not_Rx_r, datac=>
      RxFSM_5);
   ix13547z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx13547z2, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>RxBitCnt(1), datad=>RxBitCnt(0));
   ix32400z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaaa") 
       port map ( combout=>nx32400z1, dataa=>nx32400z2, datab=>nx32400z6, 
      datac=>nx32400z7, datad=>nx32400z8);
   ix34394z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eccc") 
       port map ( combout=>nx34394z3, dataa=>nx34394z4, datab=>nx34394z5, 
      datac=>nx34394z9, datad=>nx34394z10);
   ix34394z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx34394z1, dataa=>nx34394z2, datab=>nx34394z3);
   ix11553z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx11553z1, dataa=>RxFSM_2, datab=>nx13547z2);
   ix16538z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2323") 
       port map ( combout=>nx16538z1, dataa=>not_Rx_r, datab=>RxFSM_6, datac
      =>RxFSM_5);
   ix14544z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ecec") 
       port map ( combout=>nx14544z1, dataa=>not_Rx_r, datab=>RxFSM_3, datac
      =>RxFSM_1);
   ix13547z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx13547z1, dataa=>RxFSM_2, datab=>nx13547z2);
   ix15541z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f0") 
       port map ( combout=>nx15541z1, dataa=>not_Rx_r, datab=>nx34394z2, 
      datac=>nx15541z2, datad=>nx15541z3);
   ix54636z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx54636z1, dataa=>TopRx, datab=>RxFSM_3);
   ix8373z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8b8b") 
       port map ( combout=>not_rtlc17_X_0_n360, dataa=>TopRx, datab=>RxFSM_3, 
      datac=>nx34394z2);
   ix35603z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ca") 
       port map ( combout=>nx35603z1, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix5605z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6c6c") 
       port map ( combout=>nx5605z1, dataa=>TxFSM(0), datab=>TxFSM(1), datac
      =>TopTx);
   ix57064z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>NOT_Rx, dataa=>p_rxflex, datab=>p_nrst_int_dup_8
   );
end RTL_unfold_1358 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_16_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (15 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (15 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_16_0 ;

architecture IMPLEMENTATION of modgen_counter_16_0 is 
   signal nx64508z1, nx22081z3, nx22081z5, nx22081z7, nx22081z9, nx22081z11, 
      nx22081z13, nx22081z15, nx22081z17, nx22081z19, nx22081z21, nx22081z23, 
      nx22081z25, nx22081z27, nx22081z29, nx22081z31, nx51271z1, nx22081z30, 
      nx52268z1, nx22081z28, nx53265z1, nx22081z26, nx54262z1, nx22081z24, 
      nx55259z1, nx22081z22, nx56256z1, nx22081z20, nx57253z1, nx22081z18, 
      nx58250z1, nx22081z16, nx59247z1, nx22081z14, nx60244z1, nx22081z12, 
      nx17096z1, nx22081z10, nx18093z1, nx22081z8, nx19090z1, nx22081z6, 
      nx20087z1, nx22081z4, nx21084z1, nx22081z2, nx22081z1, 
      nx_modgen_counter_16_0_vcc_net: std_logic ;

begin
   q(15) <= nx64508z1 ;
   q(14) <= nx22081z3 ;
   q(13) <= nx22081z5 ;
   q(12) <= nx22081z7 ;
   q(11) <= nx22081z9 ;
   q(10) <= nx22081z11 ;
   q(9) <= nx22081z13 ;
   q(8) <= nx22081z15 ;
   q(7) <= nx22081z17 ;
   q(6) <= nx22081z19 ;
   q(5) <= nx22081z21 ;
   q(4) <= nx22081z23 ;
   q(3) <= nx22081z25 ;
   q(2) <= nx22081z27 ;
   q(1) <= nx22081z29 ;
   q(0) <= nx22081z31 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx22081z13, datain=>
      nx60244z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx22081z15, datain=>
      nx59247z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx22081z17, datain=>
      nx58250z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx22081z19, datain=>
      nx57253z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx22081z21, datain=>
      nx56256z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx22081z23, datain=>
      nx55259z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx22081z25, datain=>
      nx54262z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx22081z27, datain=>
      nx53265z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_15 : cycloneii_lcell_ff port map ( regout=>nx64508z1, datain=>
      nx22081z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_14 : cycloneii_lcell_ff port map ( regout=>nx22081z3, datain=>
      nx21084z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_13 : cycloneii_lcell_ff port map ( regout=>nx22081z5, datain=>
      nx20087z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>nx22081z7, datain=>
      nx19090z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx22081z9, datain=>
      nx18093z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx22081z11, datain=>
      nx17096z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx22081z29, datain=>
      nx52268z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx22081z31, datain=>
      nx51271z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   ix22081z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx21084z1, cout=>nx22081z2, dataa=>nx22081z3, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z4);
   nx_modgen_counter_16_0_vcc_net <= '1';
   ix22081z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx20087z1, cout=>nx22081z4, dataa=>nx22081z5, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z6);
   ix22081z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19090z1, cout=>nx22081z6, dataa=>nx22081z7, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z8);
   ix22081z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, cout=>nx22081z8, dataa=>nx22081z9, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z10);
   ix22081z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx22081z10, dataa=>nx22081z11, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z12);
   ix22081z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx22081z26, dataa=>nx22081z27, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z28);
   ix22081z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx22081z12, dataa=>nx22081z13, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z14);
   ix22081z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx22081z28, dataa=>nx22081z29, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z30);
   ix22081z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx22081z14, dataa=>nx22081z15, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z16);
   ix22081z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx22081z16, dataa=>nx22081z17, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z18);
   ix22081z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx22081z18, dataa=>nx22081z19, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z20);
   ix22081z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx22081z20, dataa=>nx22081z21, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z22);
   ix22081z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx22081z22, dataa=>nx22081z23, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z24);
   ix22081z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx22081z24, dataa=>nx22081z25, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z26);
   ix22081z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx22081z1, dataa=>nx64508z1, datad=>
      nx_modgen_counter_16_0_vcc_net, cin=>nx22081z2);
   ix22081z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx22081z30, dataa=>nx22081z31, 
      datad=>nx_modgen_counter_16_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity uw_uart is 
   port (
      clk : IN std_logic ;
      rst : IN std_logic ;
      kirschout : IN std_logic ;
      kirschdir : IN std_logic_vector (2 DOWNTO 0) ;
      o_valid : IN std_logic ;
      i_mode : IN std_logic_vector (1 DOWNTO 0) ;
      datain : OUT std_logic_vector (7 DOWNTO 0) ;
      o_pixavail : OUT std_logic ;
      rxflex : IN std_logic ;
      txflex : OUT std_logic ;
      p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
      p_NOT_rtlcn2 : OUT std_logic ;
      p_nrst_int : IN std_logic ;
      px538 : IN std_logic) ;
end uw_uart ;

architecture main of uw_uart is 
   component UARTS
      port (
         CLK : IN std_logic ;
         RST : IN std_logic ;
         Din : IN std_logic_vector (7 DOWNTO 0) ;
         LD : IN std_logic ;
         Rx : IN std_logic ;
         Baud : IN std_logic ;
         Dout : OUT std_logic_vector (7 DOWNTO 0) ;
         Tx : OUT std_logic ;
         TxBusy : OUT std_logic ;
         RxErr : OUT std_logic ;
         RxRDY : OUT std_logic ;
         p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
         p_NOT_rtlcn2 : OUT std_logic ;
         p_rxflex : IN std_logic ;
         p_nrst_int_dup_8 : IN std_logic) ;
   end component ;
   component modgen_counter_16_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (15 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (15 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   signal o_pixavail_EXMPLR541: std_logic_vector (7 DOWNTO 7) ;
   
   signal sdin: std_logic_vector (7 DOWNTO 0) ;
   
   signal rxerr, rxrdy, sdout_7, sdout_5, sdout_3, sdout_2, sdout_1, sdout_0
   : std_logic ;
   
   signal rdata: std_logic_vector (7 DOWNTO 0) ;
   
   signal state, dsend, mdata_7, mdata_5, mdata_3, mdata_2, mdata_1, mdata_0, 
      ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, rawrx, mdata_7n5ss1_6, mdata_7n5ss1_4, nx40736z2, 
      nx46385z2, nx33354z2, nx40736z3, nx38868z1, nx46385z1, nx39480z1, 
      not_o_valid, nx33354z1, nx58116z1, nx38742z1, nx18433z1, nx39480z2, 
      nx39480z6, nx39480z3, nx39480z4, nx40736z4, nx39480z5, nx39480z7, 
      nx36748z1, nx35751z1, nx34754z1, nx33757z1: std_logic ;
   
   signal DANGLING : std_logic_vector (25 downto 0 );

begin
   o_pixavail <= o_pixavail_EXMPLR541(7) ;
   i_uarts : UARTS port map ( CLK=>clk, RST=>rst, Din(7)=>sdout_7, Din(6)=>
      DANGLING(0), Din(5)=>sdout_5, Din(4)=>DANGLING(1), Din(3)=>sdout_3, 
      Din(2)=>sdout_2, Din(1)=>sdout_1, Din(0)=>sdout_0, LD=>ld_sdout, Rx=>
      rawrx, Baud=>DANGLING(2), Dout(7)=>sdin(7), Dout(6)=>sdin(6), Dout(5)
      =>sdin(5), Dout(4)=>sdin(4), Dout(3)=>sdin(3), Dout(2)=>sdin(2), 
      Dout(1)=>sdin(1), Dout(0)=>sdin(0), Tx=>DANGLING(3), TxBusy=>DANGLING(
      4), RxErr=>rxerr, RxRDY=>rxrdy, p_Tx_Reg_14n6ss1_0=>p_Tx_Reg_14n6ss1_0, 
      p_NOT_rtlcn2=>p_NOT_rtlcn2, p_rxflex=>rxflex, p_nrst_int_dup_8=>
      p_nrst_int);
   modgen_counter_waitcount : modgen_counter_16_0 port map ( clock=>clk, 
      q(15)=>waitcount(15), q(14)=>waitcount(14), q(13)=>waitcount(13), 
      q(12)=>waitcount(12), q(11)=>waitcount(11), q(10)=>waitcount(10), q(9)
      =>waitcount(9), q(8)=>waitcount(8), q(7)=>waitcount(7), q(6)=>
      waitcount(6), q(5)=>waitcount(5), q(4)=>waitcount(4), q(3)=>
      waitcount(3), q(2)=>waitcount(2), q(1)=>waitcount(1), q(0)=>
      waitcount(0), clk_en=>nx33354z1, aclear=>DANGLING(5), sload=>DANGLING(
      6), data(15)=>DANGLING(7), data(14)=>DANGLING(8), data(13)=>DANGLING(9
      ), data(12)=>DANGLING(10), data(11)=>DANGLING(11), data(10)=>DANGLING(
      12), data(9)=>DANGLING(13), data(8)=>DANGLING(14), data(7)=>DANGLING(
      15), data(6)=>DANGLING(16), data(5)=>DANGLING(17), data(4)=>DANGLING(
      18), data(3)=>DANGLING(19), data(2)=>DANGLING(20), data(1)=>DANGLING(
      21), data(0)=>DANGLING(22), aset=>DANGLING(23), sclear=>nx33354z2, 
      updn=>DANGLING(24), cnt_en=>DANGLING(25));
   not_o_valid <= NOT o_valid;
   reg_state : cycloneii_lcell_ff port map ( regout=>state, datain=>
      nx38868z1, clk=>clk, aclr=>rst);
   reg_sdout_7 : cycloneii_lcell_ff port map ( regout=>sdout_7, datain=>
      mdata_7, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_5 : cycloneii_lcell_ff port map ( regout=>sdout_5, datain=>
      mdata_5, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_3 : cycloneii_lcell_ff port map ( regout=>sdout_3, datain=>
      mdata_3, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_2 : cycloneii_lcell_ff port map ( regout=>sdout_2, datain=>
      mdata_2, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_1 : cycloneii_lcell_ff port map ( regout=>sdout_1, datain=>
      mdata_1, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_0 : cycloneii_lcell_ff port map ( regout=>sdout_0, datain=>
      mdata_0, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_rdata_7 : cycloneii_lcell_ff port map ( regout=>rdata(7), datain=>
      sdin(7), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_6 : cycloneii_lcell_ff port map ( regout=>rdata(6), datain=>
      sdin(6), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_5 : cycloneii_lcell_ff port map ( regout=>rdata(5), datain=>
      sdin(5), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_4 : cycloneii_lcell_ff port map ( regout=>rdata(4), datain=>
      sdin(4), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_3 : cycloneii_lcell_ff port map ( regout=>rdata(3), datain=>
      sdin(3), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_2 : cycloneii_lcell_ff port map ( regout=>rdata(2), datain=>
      sdin(2), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_1 : cycloneii_lcell_ff port map ( regout=>rdata(1), datain=>
      sdin(1), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_0 : cycloneii_lcell_ff port map ( regout=>rdata(0), datain=>
      sdin(0), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_mdata_7 : cycloneii_lcell_ff port map ( regout=>mdata_7, datain=>
      mdata_7n5ss1_6, clk=>clk, ena=>nx40736z3);
   reg_mdata_5 : cycloneii_lcell_ff port map ( regout=>mdata_5, datain=>
      mdata_7n5ss1_4, clk=>clk, ena=>nx40736z3);
   nx36748z1 <= '1';
   reg_mdata_3 : cycloneii_lcell_ff port map ( regout=>mdata_3, datain=>
      kirschdir(2), sdata=>nx36748z1, clk=>clk, ena=>nx40736z3, sclr=>
      nx38742z1, sload=>not_o_valid);
   nx35751z1 <= '1';
   reg_mdata_2 : cycloneii_lcell_ff port map ( regout=>mdata_2, datain=>
      kirschdir(1), sdata=>nx35751z1, clk=>clk, ena=>nx40736z3, sclr=>
      nx38742z1, sload=>not_o_valid);
   nx34754z1 <= '1';
   reg_mdata_1 : cycloneii_lcell_ff port map ( regout=>mdata_1, datain=>
      kirschdir(0), sdata=>nx34754z1, clk=>clk, ena=>nx40736z3, sclr=>
      nx38742z1, sload=>not_o_valid);
   nx33757z1 <= '1';
   reg_mdata_0 : cycloneii_lcell_ff port map ( regout=>mdata_0, datain=>
      kirschout, sdata=>nx33757z1, clk=>clk, ena=>nx40736z3, sclr=>nx38742z1, 
      sload=>not_o_valid);
   reg_ld_sdout : cycloneii_lcell_ff port map ( regout=>ld_sdout, datain=>
      nx18433z1, clk=>clk, aclr=>rst);
   reg_dsend : cycloneii_lcell_ff port map ( regout=>dsend, datain=>
      nx46385z1, clk=>clk, sclr=>rst);
   reg_charavail : cycloneii_lcell_ff port map ( regout=>
      o_pixavail_EXMPLR541(7), datain=>nx58116z1, clk=>clk, aclr=>rst);
   reg_ack : cycloneii_lcell_ff port map ( regout=>ack, datain=>nx39480z1, 
      clk=>clk, sclr=>rst);
   ix33354z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"efef") 
       port map ( combout=>nx33354z1, dataa=>ack, datab=>
      o_pixavail_EXMPLR541(7), datac=>p_nrst_int);
   ix39480z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx39480z7, dataa=>waitcount(11), datab=>
      waitcount(10));
   ix39480z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"1000") 
       port map ( combout=>nx39480z5, dataa=>waitcount(9), datab=>
      waitcount(8), datac=>nx39480z6, datad=>nx39480z7);
   ix40736z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe04") 
       port map ( combout=>nx40736z4, dataa=>o_pixavail_EXMPLR541(7), datab
      =>rxerr, datac=>ack, datad=>nx39480z2);
   ix39480z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx39480z4, dataa=>waitcount(3), datab=>
      waitcount(2), datac=>waitcount(1), datad=>waitcount(0));
   ix39480z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0040") 
       port map ( combout=>nx39480z3, dataa=>waitcount(7), datab=>
      waitcount(6), datac=>waitcount(5), datad=>waitcount(4));
   ix39480z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx39480z6, dataa=>waitcount(15), datab=>
      waitcount(14), datac=>waitcount(13), datad=>waitcount(12));
   ix39480z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaaa") 
       port map ( combout=>nx39480z2, dataa=>o_valid, datab=>nx39480z3, 
      datac=>nx39480z4, datad=>nx39480z5);
   ix18433z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5454") 
       port map ( combout=>nx18433z1, dataa=>state, datab=>dsend, datac=>
      ld_sdout);
   ix38742z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"111f") 
       port map ( combout=>nx38742z1, dataa=>i_mode(1), datab=>px538, datac
      =>o_pixavail_EXMPLR541(7), datad=>ack);
   ix40736z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ab00") 
       port map ( combout=>nx40736z3, dataa=>nx40736z4, datab=>px538, datac
      =>i_mode(1), datad=>p_nrst_int);
   ix58116z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx58116z1, dataa=>o_pixavail_EXMPLR541(7), datab
      =>rxrdy);
   ix39480z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e0e") 
       port map ( combout=>nx39480z1, dataa=>o_pixavail_EXMPLR541(7), datab
      =>ack, datac=>nx39480z2);
   ix46385z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fef2") 
       port map ( combout=>nx46385z1, dataa=>rxerr, datab=>nx40736z2, datac
      =>nx46385z2, datad=>nx39480z2);
   ix38868z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx38868z1, dataa=>state, datab=>dsend);
   ix46385z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx46385z2, dataa=>i_mode(1), datab=>px538);
   ix40736z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx40736z2, dataa=>o_pixavail_EXMPLR541(7), datab
      =>ack);
   ix38742z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"dddd") 
       port map ( combout=>mdata_7n5ss1_4, dataa=>o_valid, datab=>nx38742z1
   );
   ix40736z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"54fc") 
       port map ( combout=>mdata_7n5ss1_6, dataa=>o_valid, datab=>i_mode(1), 
      datac=>px538, datad=>nx40736z2);
   ix40426z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(0), dataa=>o_pixavail_EXMPLR541(7), datab
      =>rdata(0));
   ix41423z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(1), dataa=>o_pixavail_EXMPLR541(7), datab
      =>rdata(1));
   ix42420z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(2), dataa=>o_pixavail_EXMPLR541(7), datab
      =>rdata(2));
   ix43417z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(3), dataa=>o_pixavail_EXMPLR541(7), datab
      =>rdata(3));
   ix44414z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(4), dataa=>o_pixavail_EXMPLR541(7), datab
      =>rdata(4));
   ix45411z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(5), dataa=>o_pixavail_EXMPLR541(7), datab
      =>rdata(5));
   ix46408z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(6), dataa=>o_pixavail_EXMPLR541(7), datab
      =>rdata(6));
   ix33354z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx33354z2, dataa=>nx39480z2, datab=>p_nrst_int);
   ix47405z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(7), dataa=>o_pixavail_EXMPLR541(7), datab
      =>rdata(7));
   ix15671z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>rawrx, dataa=>rxflex, datab=>p_nrst_int);
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity gt_8_0 is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_8_0 ;

architecture IMPLEMENTATION of gt_8_0 is 
   signal nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
      nx_gt_8_0_vcc_net: std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d400",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_8_0_vcc_net, cin=>nx100z4);
   nx_gt_8_0_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_8_0_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_8_0_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_8_0_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_8_0_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_8_0_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_8_0_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z22, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_8_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity gt_8_1 is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_8_1 ;

architecture IMPLEMENTATION of gt_8_1 is 
   signal nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
      nx_gt_8_1_vcc_net: std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d400",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_8_1_vcc_net, cin=>nx100z4);
   nx_gt_8_1_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_8_1_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_8_1_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_8_1_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_8_1_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_8_1_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_8_1_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z22, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_8_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity gt_8_2 is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_8_2 ;

architecture IMPLEMENTATION of gt_8_2 is 
   signal nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
      nx_gt_8_2_vcc_net: std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d400",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_8_2_vcc_net, cin=>nx100z4);
   nx_gt_8_2_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_8_2_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_8_2_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_8_2_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_8_2_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_8_2_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_8_2_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z22, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_8_2_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity gt_8_3 is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_8_3 ;

architecture IMPLEMENTATION of gt_8_3 is 
   signal nx100z22, nx100z19, nx100z16, nx100z13, nx100z10, nx100z7, nx100z4, 
      nx_gt_8_3_vcc_net: std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d400",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_8_3_vcc_net, cin=>nx100z4);
   nx_gt_8_3_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_8_3_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_8_3_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_8_3_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_8_3_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_8_3_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_8_3_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z22, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_8_3_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity gt_10_0 is 
   port (
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_10_0 ;

architecture IMPLEMENTATION of gt_10_0 is 
   signal nx100z28, nx100z25, nx100z22, nx100z19, nx100z16, nx100z13, 
      nx100z10, nx100z7, nx100z4, nx_gt_10_0_vcc_net: std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d400",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(9), datab=>a(9), datad=>
      nx_gt_10_0_vcc_net, cin=>nx100z4);
   nx_gt_10_0_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(8), datab=>a(8), datad=>
      nx_gt_10_0_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_10_0_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_10_0_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_10_0_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_10_0_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_10_0_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z22, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_10_0_vcc_net, cin=>nx100z25);
   ix100z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z25, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_10_0_vcc_net, cin=>nx100z28);
   ix100z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z28, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_10_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity gt_10_1 is 
   port (
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_10_1 ;

architecture IMPLEMENTATION of gt_10_1 is 
   signal nx100z28, nx100z25, nx100z22, nx100z19, nx100z16, nx100z13, 
      nx100z10, nx100z7, nx100z4, nx_gt_10_1_vcc_net: std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d400",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(9), datab=>a(9), datad=>
      nx_gt_10_1_vcc_net, cin=>nx100z4);
   nx_gt_10_1_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(8), datab=>a(8), datad=>
      nx_gt_10_1_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_10_1_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_10_1_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_10_1_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_10_1_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_10_1_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z22, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_10_1_vcc_net, cin=>nx100z25);
   ix100z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z25, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_10_1_vcc_net, cin=>nx100z28);
   ix100z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z28, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_10_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity gt_10_2 is 
   port (
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_10_2 ;

architecture IMPLEMENTATION of gt_10_2 is 
   signal nx100z28, nx100z25, nx100z22, nx100z19, nx100z16, nx100z13, 
      nx100z10, nx100z7, nx100z4, nx_gt_10_2_vcc_net: std_logic ;

begin
   ix100z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d400",
         sum_lutc_input => "cin") 
       port map ( combout=>d, dataa=>b(9), datab=>a(9), datad=>
      nx_gt_10_2_vcc_net, cin=>nx100z4);
   nx_gt_10_2_vcc_net <= '1';
   ix100z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z4, dataa=>b(8), datab=>a(8), datad=>
      nx_gt_10_2_vcc_net, cin=>nx100z7);
   ix100z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z7, dataa=>b(7), datab=>a(7), datad=>
      nx_gt_10_2_vcc_net, cin=>nx100z10);
   ix100z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z10, dataa=>b(6), datab=>a(6), datad=>
      nx_gt_10_2_vcc_net, cin=>nx100z13);
   ix100z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z13, dataa=>b(5), datab=>a(5), datad=>
      nx_gt_10_2_vcc_net, cin=>nx100z16);
   ix100z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z16, dataa=>b(4), datab=>a(4), datad=>
      nx_gt_10_2_vcc_net, cin=>nx100z19);
   ix100z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z19, dataa=>b(3), datab=>a(3), datad=>
      nx_gt_10_2_vcc_net, cin=>nx100z22);
   ix100z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z22, dataa=>b(2), datab=>a(2), datad=>
      nx_gt_10_2_vcc_net, cin=>nx100z25);
   ix100z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx100z25, dataa=>b(1), datab=>a(1), datad=>
      nx_gt_10_2_vcc_net, cin=>nx100z28);
   ix100z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx100z28, dataa=>a(0), datab=>b(0), datad=>
      nx_gt_10_2_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_12_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_12_0 ;

architecture IMPLEMENTATION of add_12_0 is 
   signal nx63795z23, nx63795z21, nx63795z19, nx63795z17, nx63795z15, 
      nx63795z13, nx63795z11, nx63795z9, nx63795z7, nx63795z5, nx63795z3, 
      nx_add_12_0_vcc_net: std_logic ;

begin
   ix63795z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), dataa=>a(10), datad=>nx_add_12_0_vcc_net, 
      cin=>nx63795z3);
   nx_add_12_0_vcc_net <= '1';
   ix63795z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx63795z3, dataa=>a(9), datab=>a(10), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z5);
   ix63795z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx63795z5, dataa=>a(8), datab=>a(9), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z7);
   ix63795z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx63795z7, dataa=>a(7), datab=>a(8), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z9);
   ix63795z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx63795z9, dataa=>a(6), datab=>a(7), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z11);
   ix63795z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx63795z11, dataa=>a(5), datab=>a(6), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z13);
   ix63795z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx63795z13, dataa=>a(4), datab=>a(5), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z15);
   ix63795z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx63795z15, dataa=>a(3), datab=>a(4), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z17);
   ix63795z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx63795z17, dataa=>a(2), datab=>a(3), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z19);
   ix63795z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx63795z19, dataa=>a(1), datab=>a(2), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z21);
   ix63795z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx63795z21, dataa=>a(0), datab=>a(1), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z23);
   ix63795z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx63795z23, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_8_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_8_0 ;

architecture IMPLEMENTATION of modgen_counter_8_0 is 
   signal nx1041z1, nx58250z3, nx58250z5, nx58250z7, nx58250z9, nx58250z11, 
      nx58250z13, nx58250z15, nx51271z1, nx58250z14, nx52268z1, nx58250z12, 
      nx53265z1, nx58250z10, nx54262z1, nx58250z8, nx55259z1, nx58250z6, 
      nx56256z1, nx58250z4, nx57253z1, nx58250z2, nx58250z1, 
      nx_modgen_counter_8_0_vcc_net: std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z3 ;
   q(5) <= nx58250z5 ;
   q(4) <= nx58250z7 ;
   q(3) <= nx58250z9 ;
   q(2) <= nx58250z11 ;
   q(1) <= nx58250z13 ;
   q(0) <= nx58250z15 ;
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx58250z3, datain=>
      nx57253z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx58250z5, datain=>
      nx56256z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx58250z7, datain=>
      nx55259z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx58250z9, datain=>
      nx54262z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx58250z11, datain=>
      nx53265z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx58250z13, datain=>
      nx52268z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx58250z15, datain=>
      nx51271z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   ix58250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx58250z10, dataa=>nx58250z11, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z12);
   nx_modgen_counter_8_0_vcc_net <= '1';
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, dataa=>nx1041z1, datad=>
      nx_modgen_counter_8_0_vcc_net, cin=>nx58250z2);
   ix58250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx58250z2, dataa=>nx58250z3, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z4);
   ix58250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx58250z4, dataa=>nx58250z5, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z6);
   ix58250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx58250z12, dataa=>nx58250z13, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z14);
   ix58250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx58250z6, dataa=>nx58250z7, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z8);
   ix58250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx58250z8, dataa=>nx58250z9, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z10);
   ix58250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx58250z14, dataa=>nx58250z15, 
      datad=>nx_modgen_counter_8_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_8_1 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic ;
      p_nrst_int_dup_455 : IN std_logic ;
      px272 : IN std_logic) ;
end modgen_counter_8_1 ;

architecture IMPLEMENTATION of modgen_counter_8_1 is 
   signal nx1041z1, nx58250z3, nx58250z5, nx58250z7, nx58250z9, nx58250z11, 
      nx58250z13, nx58250z15, nx51271z1, nx58250z14, nx52268z1, nx58250z12, 
      nx53265z1, nx58250z10, nx54262z1, nx58250z8, nx55259z1, nx58250z6, 
      nx56256z1, nx58250z4, nx57253z1, nx58250z2, nx58250z1, 
      nx_modgen_counter_8_1_vcc_net: std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z3 ;
   q(5) <= nx58250z5 ;
   q(4) <= nx58250z7 ;
   q(3) <= nx58250z9 ;
   q(2) <= nx58250z11 ;
   q(1) <= nx58250z13 ;
   q(0) <= nx58250z15 ;
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>px272, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx58250z3, datain=>
      nx57253z1, clk=>clock, ena=>px272, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx58250z5, datain=>
      nx56256z1, clk=>clock, ena=>px272, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx58250z7, datain=>
      nx55259z1, clk=>clock, ena=>px272, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx58250z9, datain=>
      nx54262z1, clk=>clock, ena=>px272, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx58250z11, datain=>
      nx53265z1, clk=>clock, ena=>px272, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx58250z13, datain=>
      nx52268z1, clk=>clock, ena=>px272, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx58250z15, datain=>
      nx51271z1, clk=>clock, ena=>px272, sclr=>sclear);
   ix58250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx58250z10, dataa=>nx58250z11, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z12);
   nx_modgen_counter_8_1_vcc_net <= '1';
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, dataa=>nx1041z1, datad=>
      nx_modgen_counter_8_1_vcc_net, cin=>nx58250z2);
   ix58250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx58250z2, dataa=>nx58250z3, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z4);
   ix58250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx58250z12, dataa=>nx58250z13, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z14);
   ix58250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx58250z4, dataa=>nx58250z5, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z6);
   ix58250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx58250z6, dataa=>nx58250z7, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z8);
   ix58250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx58250z8, dataa=>nx58250z9, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z10);
   ix58250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx58250z14, dataa=>nx58250z15, 
      datad=>nx_modgen_counter_8_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_8_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8_0 ;

architecture IMPLEMENTATION of add_8_0 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx_add_8_0_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx23445z2, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z4);
   nx_add_8_0_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z13);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z19);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_8_0_vcc_net, cin=>nx23445z2);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_8_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_0 ;

architecture IMPLEMENTATION of add_9_0 is 
   signal nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, 
      nx45949z9, nx45949z6, nx45949z3, nx23445z2, nx_add_9_0_vcc_net: 
   std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx23445z2, dataa=>a(8), datad=>
      nx_add_9_0_vcc_net, cin=>nx45949z3);
   nx_add_9_0_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z6);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z6, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z9);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z9, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z12);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z12, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z15);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z15, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z18);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z18, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z21);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_9_0_vcc_net, cin=>nx23445z2);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z21, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z24);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx45949z24, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_1 ;

architecture IMPLEMENTATION of add_9_1 is 
   signal nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, 
      nx45949z9, nx45949z6, nx45949z3, nx23445z2, nx_add_9_1_vcc_net: 
   std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx23445z2, dataa=>a(8), datad=>
      nx_add_9_1_vcc_net, cin=>nx45949z3);
   nx_add_9_1_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z6);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z6, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z9);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z9, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z12);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z12, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z15);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z15, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z18);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z18, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z21);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_9_1_vcc_net, cin=>nx23445z2);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z21, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z24);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx45949z24, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_2 ;

architecture IMPLEMENTATION of add_9_2 is 
   signal nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, 
      nx45949z9, nx45949z6, nx45949z3, nx23445z2, nx_add_9_2_vcc_net: 
   std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx23445z2, dataa=>b(8), datad=>
      nx_add_9_2_vcc_net, cin=>nx45949z3);
   nx_add_9_2_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z6);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z6, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z9);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z9, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z12);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z12, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z15);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z15, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z18);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z18, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z21);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_9_2_vcc_net, cin=>nx23445z2);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z21, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_2_vcc_net, cin=>nx45949z24);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx45949z24, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_2_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_3 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_3 ;

architecture IMPLEMENTATION of add_9_3 is 
   signal nx45949z25, nx45949z22, nx45949z19, nx45949z16, nx45949z13, 
      nx45949z10, nx45949z7, nx45949z4, nx23445z2, nx_add_9_3_vcc_net: 
   std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx23445z2, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_9_3_vcc_net, cin=>nx45949z4);
   nx_add_9_3_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z4, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_9_3_vcc_net, cin=>nx45949z7);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z7, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_3_vcc_net, cin=>nx45949z10);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z10, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_3_vcc_net, cin=>nx45949z13);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z13, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_3_vcc_net, cin=>nx45949z16);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z16, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_3_vcc_net, cin=>nx45949z19);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z19, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_3_vcc_net, cin=>nx45949z22);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_9_3_vcc_net, cin=>nx23445z2);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z22, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_3_vcc_net, cin=>nx45949z25);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx45949z25, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_3_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_10_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_10_0 ;

architecture IMPLEMENTATION of add_10_0 is 
   signal nx46946z27, nx46946z24, nx46946z21, nx46946z18, nx46946z15, 
      nx46946z12, nx46946z9, nx46946z6, nx46946z3, nx23445z2, 
      nx_add_10_0_vcc_net: std_logic ;

begin
   ix46946z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx23445z2, dataa=>b(9), datad=>
      nx_add_10_0_vcc_net, cin=>nx46946z3);
   nx_add_10_0_vcc_net <= '1';
   ix46946z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx46946z3, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_10_0_vcc_net, cin=>nx46946z6);
   ix46946z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx46946z6, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_10_0_vcc_net, cin=>nx46946z9);
   ix46946z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx46946z9, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_10_0_vcc_net, cin=>nx46946z12);
   ix46946z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx46946z12, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_10_0_vcc_net, cin=>nx46946z15);
   ix46946z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx46946z15, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_10_0_vcc_net, cin=>nx46946z18);
   ix46946z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx46946z18, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_10_0_vcc_net, cin=>nx46946z21);
   ix46946z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx46946z21, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_10_0_vcc_net, cin=>nx46946z24);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_10_0_vcc_net, cin=>nx23445z2
   );
   ix46946z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx46946z24, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_10_0_vcc_net, cin=>nx46946z27);
   ix46946z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx46946z27, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_10_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_11_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      b : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_11_0 ;

architecture IMPLEMENTATION of add_11_0 is 
   signal nx62798z29, nx62798z26, nx62798z23, nx62798z20, nx62798z17, 
      nx62798z14, nx62798z11, nx62798z8, nx62798z5, nx62798z3, nx23445z2, 
      nx_add_11_0_vcc_net: std_logic ;

begin
   ix62798z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx23445z2, dataa=>b(10), datad=>
      nx_add_11_0_vcc_net, cin=>nx62798z3);
   nx_add_11_0_vcc_net <= '1';
   ix62798z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx62798z3, dataa=>b(9), datad=>
      nx_add_11_0_vcc_net, cin=>nx62798z5);
   ix62798z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx62798z5, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z8);
   ix62798z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx62798z8, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z11);
   ix62798z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx62798z11, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z14);
   ix62798z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx62798z14, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z17);
   ix62798z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx62798z17, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z20);
   ix62798z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx62798z20, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z23);
   ix62798z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx62798z23, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z26);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_11_0_vcc_net, cin=>nx23445z2
   );
   ix62798z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx62798z26, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z29);
   ix62798z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx62798z29, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_11_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_12_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_x_r22_0 : IN std_logic) ;
end sub_12_0 ;

architecture IMPLEMENTATION of sub_12_0 is 
   signal nx63795z11, nx63795z10, nx63795z9, nx63795z8, nx63795z7, nx63795z6, 
      nx63795z5, nx63795z4, nx63795z3, nx63795z2, nx63795z1, 
      nx_sub_12_0_vcc_net: std_logic ;

begin
   ix63795z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6900",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), dataa=>b(11), datab=>a(11), datad=>
      nx_sub_12_0_vcc_net, cin=>nx63795z1);
   nx_sub_12_0_vcc_net <= '1';
   ix63795z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx63795z1, dataa=>b(10), datab=>
      a(10), datad=>nx_sub_12_0_vcc_net, cin=>nx63795z2);
   ix63795z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx63795z2, dataa=>b(9), datab=>a(9), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z3);
   ix63795z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx63795z3, dataa=>b(8), datab=>a(8), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z4);
   ix63795z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx63795z4, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z5);
   ix63795z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx63795z5, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z6);
   ix63795z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx63795z6, dataa=>b(5), datab=>a(5), datad=>
      nx_sub_12_0_vcc_net, cin=>nx63795z7);
   ix63795z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx63795z7, dataa=>b(4), datab=>a(4), datad=>
      nx_sub_12_0_vcc_net, cin=>nx63795z8);
   ix63795z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx63795z8, dataa=>b(3), datab=>a(3), datad=>
      nx_sub_12_0_vcc_net, cin=>nx63795z9);
   ix63795z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx63795z9, dataa=>b(2), datab=>a(2), datad=>
      nx_sub_12_0_vcc_net, cin=>nx63795z10);
   ix63795z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"0050",
         sum_lutc_input => "cin") 
       port map ( cout=>nx63795z10, dataa=>b(1), datad=>nx_sub_12_0_vcc_net, 
      cin=>nx63795z11);
   ix63795z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0011") 
       port map ( cout=>nx63795z11, dataa=>p_x_r22_0, datab=>b(0), datad=>
      nx_sub_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_0 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_dq_8_0 ;

architecture IMPLEMENTATION of ram_dq_8_0 is 
   signal ena1_EXMPLR610: std_logic ;

begin
   ix64056z29481 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR610, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR610 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_1 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_dq_8_1 ;

architecture IMPLEMENTATION of ram_dq_8_1 is 
   signal ena1_EXMPLR640: std_logic ;

begin
   ix64056z29482 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR640, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR640 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_2 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_dq_8_2 ;

architecture IMPLEMENTATION of ram_dq_8_2 is 
   signal ena1_EXMPLR670: std_logic ;

begin
   ix64056z29483 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR670, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR670 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity kirsch_notri is 
   port (
      p_o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      p_o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      p_i_reset : IN std_logic ;
      p_o_edge : OUT std_logic ;
      p_o_valid : OUT std_logic ;
      p_o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      p_i_valid : IN std_logic ;
      p_i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      p_i_clock : IN std_logic ;
      p_nrst_int : IN std_logic ;
      px538 : OUT std_logic) ;
end kirsch_notri ;

architecture main_unfold_1777 of kirsch_notri is 
   component gt_8_0
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_8_1
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_8_2
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_8_3
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_10_0
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_10_1
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_10_2
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component add_12_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component modgen_counter_8_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component modgen_counter_8_1
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic ;
         p_nrst_int_dup_455 : IN std_logic ;
         px272 : IN std_logic) ;
   end component ;
   component add_8_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9_3
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_10_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_11_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_12_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_x_r22_0 : IN std_logic) ;
   end component ;
   component ram_dq_8_0
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   component ram_dq_8_1
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   component ram_dq_8_2
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   signal r17_10n1s1_7, r17_10n1s1_8, r17_9, r17_10n1s1_9, r17_10, 
      r17_10n1s1_10, r17_11, r17_10n1s1_11, r17_12, r17_10n1s1_12: std_logic
    ;
   
   signal first_cw: std_logic_vector (2 DOWNTO 0) ;
   
   signal second_cw: std_logic_vector (2 DOWNTO 0) ;
   
   signal r18: std_logic_vector (9 DOWNTO 0) ;
   
   signal x_r22: std_logic_vector (12 DOWNTO 0) ;
   
   signal stage1_nNe_2, stage1_wNw_2, stage1_sSw_2, validBit_7: std_logic ;
   
   signal i: std_logic_vector (7 DOWNTO 0) ;
   
   signal vBit: std_logic_vector (2 DOWNTO 1) ;
   
   signal x_r12_8n2s1: std_logic_vector (11 DOWNTO 0) ;
   
   signal r14: std_logic_vector (10 DOWNTO 0) ;
   
   signal r14_8n3s1: std_logic_vector (10 DOWNTO 0) ;
   
   signal x_r6: std_logic_vector (9 DOWNTO 0) ;
   
   signal x_r6_8n4s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r16_7n1s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r13: std_logic_vector (8 DOWNTO 0) ;
   
   signal r12: std_logic_vector (7 DOWNTO 0) ;
   
   signal b_d1_7n4s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r10: std_logic_vector (7 DOWNTO 0) ;
   
   signal r9: std_logic_vector (8 DOWNTO 0) ;
   
   signal x_r3_7n3s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal r2_6n3s1: std_logic_vector (8 DOWNTO 0) ;
   
   signal final_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal stage1_eSe_2, stage1_wNw_0: std_logic ;
   
   signal x_r22_8n1s1: std_logic_vector (12 DOWNTO 1) ;
   
   signal x_r12: std_logic_vector (11 DOWNTO 0) ;
   
   signal validBit_6, validBit_5, validBit_4, validBit_3: std_logic ;
   
   signal r5: std_logic_vector (7 DOWNTO 0) ;
   
   signal x_r5: std_logic_vector (7 DOWNTO 0) ;
   
   signal r17_7, r17_8, p_o_valid_EXMPLR677, nx47369z1: std_logic ;
   
   signal x_r3: std_logic_vector (9 DOWNTO 0) ;
   
   signal b_d1: std_logic_vector (9 DOWNTO 0) ;
   
   signal nx64999z2: std_logic ;
   
   signal r11: std_logic_vector (9 DOWNTO 0) ;
   
   signal r16: std_logic_vector (9 DOWNTO 0) ;
   
   signal nx35772z2: std_logic ;
   
   signal r15: std_logic_vector (9 DOWNTO 0) ;
   
   signal x_r11: std_logic_vector (9 DOWNTO 0) ;
   
   signal r2_6n3s1f2: std_logic_vector (7 DOWNTO 0) ;
   
   signal r2_6n3s1f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal validBit_1, validBit_2, nx11593z1: std_logic ;
   
   signal a: std_logic_vector (7 DOWNTO 0) ;
   
   signal d: std_logic_vector (7 DOWNTO 0) ;
   
   signal validBit_0, nx13424z1: std_logic ;
   
   signal g: std_logic_vector (7 DOWNTO 0) ;
   
   signal b: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx27953z2: std_logic ;
   
   signal c: std_logic_vector (7 DOWNTO 0) ;
   
   signal f: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx7951z1: std_logic ;
   
   signal e: std_logic_vector (7 DOWNTO 0) ;
   
   signal h: std_logic_vector (7 DOWNTO 0) ;
   
   signal p_o_row_7_EXMPLR678, p_o_row_6_EXMPLR679, p_o_row_5_EXMPLR680, 
      p_o_row_4_EXMPLR681, p_o_row_3_EXMPLR682, p_o_row_2_EXMPLR683, 
      p_o_row_1_EXMPLR684, p_o_row_0_EXMPLR685: std_logic ;
   
   signal state: std_logic_vector (2 DOWNTO 0) ;
   
   signal tempStorage_2_0, tempStorage_2_1, tempStorage_2_2, tempStorage_2_3, 
      tempStorage_2_4, tempStorage_2_5, tempStorage_2_6, tempStorage_2_7, 
      tempStorage_1_0, tempStorage_1_1, tempStorage_1_2, tempStorage_1_3, 
      tempStorage_1_4, tempStorage_1_5, tempStorage_1_6, tempStorage_1_7, 
      tempStorage_0_0, tempStorage_0_1, tempStorage_0_2, tempStorage_0_3, 
      tempStorage_0_4, tempStorage_0_5, tempStorage_0_6, tempStorage_0_7: 
   std_logic ;
   
   signal col: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx51677z2, nx51677z4, nx51677z5, nx51677z6, nx51677z7, nx51677z8, 
      nx51677z9, nx51677z10, nx51677z12, nx51677z14, nx51677z15, nx51677z16, 
      nx51677z17, nx51677z18, nx51677z19, nx51677z20, nx17322z1, 
      second_cw_9n2ss1_0, first_cw_9n1ss1_0, nx64999z1, nx35772z1, nx16422z1, 
      nx58464z1, nx65254z1, nx56415z1, nx54873z1, nx34104z1, nx7951z2, 
      nx20492z3: std_logic ;
   
   signal x_r3_7n3s1f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx40914z1, p_o_edge_EXMPLR699, nx13424z2, nx27953z1, nx15418z1, 
      nx20419z1: std_logic ;
   
   signal we: std_logic_vector (2 DOWNTO 0) ;
   
   signal PWR, nx51677z13, nx51677z11, nx27471z1, nx26474z1, nx25477z1, 
      nx24480z1, nx23483z1, nx22486z1, nx21489z1, nx20492z1, nx29646z1, 
      nx30643z1, nx31640z1, nx32637z1, nx33634z1, nx34631z1, nx35628z1, 
      nx36625z1, nx17322z4, nx51677z1, nx51677z3, nx11673z2, nx6165z1, 
      nx11673z4, nx20419z2, nx6165z2, nx11673z3, nx17322z2, nx17322z3, 
      nx11673z5, nx64269z1, nx11673z1, nx20492z2, NOT_state_2: std_logic ;
   
   signal DANGLING : std_logic_vector (77 downto 0 );

begin
   p_o_edge <= p_o_edge_EXMPLR699 ;
   p_o_valid <= p_o_valid_EXMPLR677 ;
   p_o_row(7) <= p_o_row_7_EXMPLR678 ;
   p_o_row(6) <= p_o_row_6_EXMPLR679 ;
   p_o_row(5) <= p_o_row_5_EXMPLR680 ;
   p_o_row(4) <= p_o_row_4_EXMPLR681 ;
   p_o_row(3) <= p_o_row_3_EXMPLR682 ;
   p_o_row(2) <= p_o_row_2_EXMPLR683 ;
   p_o_row(1) <= p_o_row_1_EXMPLR684 ;
   p_o_row(0) <= p_o_row_0_EXMPLR685 ;
   px538 <= nx64269z1 ;
   ix7951z18830 : gt_8_0 port map ( a(7)=>h(7), a(6)=>h(6), a(5)=>h(5), a(4)
      =>h(4), a(3)=>h(3), a(2)=>h(2), a(1)=>h(1), a(0)=>h(0), b(7)=>e(7), 
      b(6)=>e(6), b(5)=>e(5), b(4)=>e(4), b(3)=>e(3), b(2)=>e(2), b(1)=>e(1), 
      b(0)=>e(0), d=>nx7951z1);
   ix27953z18832 : gt_8_1 port map ( a(7)=>f(7), a(6)=>f(6), a(5)=>f(5), 
      a(4)=>f(4), a(3)=>f(3), a(2)=>f(2), a(1)=>f(1), a(0)=>f(0), b(7)=>c(7), 
      b(6)=>c(6), b(5)=>c(5), b(4)=>c(4), b(3)=>c(3), b(2)=>c(2), b(1)=>c(1), 
      b(0)=>c(0), d=>nx27953z2);
   ix13424z18832 : gt_8_2 port map ( a(7)=>b(7), a(6)=>b(6), a(5)=>b(5), 
      a(4)=>b(4), a(3)=>b(3), a(2)=>b(2), a(1)=>b(1), a(0)=>b(0), b(7)=>g(7), 
      b(6)=>g(6), b(5)=>g(5), b(4)=>g(4), b(3)=>g(3), b(2)=>g(2), b(1)=>g(1), 
      b(0)=>g(0), d=>nx13424z1);
   ix11593z18833 : gt_8_3 port map ( a(7)=>d(7), a(6)=>d(6), a(5)=>d(5), 
      a(4)=>d(4), a(3)=>d(3), a(2)=>d(2), a(1)=>d(1), a(0)=>d(0), b(7)=>a(7), 
      b(6)=>a(6), b(5)=>a(5), b(4)=>a(4), b(3)=>a(3), b(2)=>a(2), b(1)=>a(1), 
      b(0)=>a(0), d=>nx11593z1);
   ix35772z52808 : gt_10_0 port map ( a(9)=>x_r11(9), a(8)=>x_r11(8), a(7)=>
      x_r11(7), a(6)=>x_r11(6), a(5)=>x_r11(5), a(4)=>x_r11(4), a(3)=>
      x_r11(3), a(2)=>x_r11(2), a(1)=>x_r11(1), a(0)=>x_r11(0), b(9)=>r15(9), 
      b(8)=>r15(8), b(7)=>r15(7), b(6)=>r15(6), b(5)=>r15(5), b(4)=>r15(4), 
      b(3)=>r15(3), b(2)=>r15(2), b(1)=>r15(1), b(0)=>r15(0), d=>nx35772z2);
   ix64999z52807 : gt_10_1 port map ( a(9)=>r16(9), a(8)=>r16(8), a(7)=>
      r16(7), a(6)=>r16(6), a(5)=>r16(5), a(4)=>r16(4), a(3)=>r16(3), a(2)=>
      r16(2), a(1)=>r16(1), a(0)=>r16(0), b(9)=>r11(9), b(8)=>r11(8), b(7)=>
      r11(7), b(6)=>r11(6), b(5)=>r11(5), b(4)=>r11(4), b(3)=>r11(3), b(2)=>
      r11(2), b(1)=>r11(1), b(0)=>r11(0), d=>nx64999z2);
   ix47369z52805 : gt_10_2 port map ( a(9)=>b_d1(9), a(8)=>b_d1(8), a(7)=>
      b_d1(7), a(6)=>b_d1(6), a(5)=>b_d1(5), a(4)=>b_d1(4), a(3)=>b_d1(3), 
      a(2)=>b_d1(2), a(1)=>b_d1(1), a(0)=>b_d1(0), b(9)=>x_r3(9), b(8)=>
      x_r3(8), b(7)=>x_r3(7), b(6)=>x_r3(6), b(5)=>x_r3(5), b(4)=>x_r3(4), 
      b(3)=>x_r3(3), b(2)=>x_r3(2), b(1)=>x_r3(1), b(0)=>x_r3(0), d=>
      nx47369z1);
   x_r22_add12_8i1 : add_12_0 port map ( cin=>DANGLING(0), a(11)=>DANGLING(1
      ), a(10)=>x_r12(11), a(9)=>x_r12(10), a(8)=>x_r12(9), a(7)=>x_r12(8), 
      a(6)=>x_r12(7), a(5)=>x_r12(6), a(4)=>x_r12(5), a(3)=>x_r12(4), a(2)=>
      x_r12(3), a(1)=>x_r12(2), a(0)=>x_r12(1), b(11)=>DANGLING(2), b(10)=>
      DANGLING(3), b(9)=>DANGLING(4), b(8)=>DANGLING(5), b(7)=>DANGLING(6), 
      b(6)=>DANGLING(7), b(5)=>DANGLING(8), b(4)=>DANGLING(9), b(3)=>
      DANGLING(10), b(2)=>DANGLING(11), b(1)=>DANGLING(12), b(0)=>x_r12(0), 
      d(11)=>x_r22_8n1s1(12), d(10)=>x_r22_8n1s1(11), d(9)=>x_r22_8n1s1(10), 
      d(8)=>x_r22_8n1s1(9), d(7)=>x_r22_8n1s1(8), d(6)=>x_r22_8n1s1(7), d(5)
      =>x_r22_8n1s1(6), d(4)=>x_r22_8n1s1(5), d(3)=>x_r22_8n1s1(4), d(2)=>
      x_r22_8n1s1(3), d(1)=>x_r22_8n1s1(2), d(0)=>x_r22_8n1s1(1), cout=>
      DANGLING(13));
   modgen_counter_col : modgen_counter_8_0 port map ( clock=>p_i_clock, q(7)
      =>col(7), q(6)=>col(6), q(5)=>col(5), q(4)=>col(4), q(3)=>col(3), q(2)
      =>col(2), q(1)=>col(1), q(0)=>col(0), clk_en=>nx40914z1, aclear=>
      DANGLING(14), sload=>DANGLING(15), data(7)=>DANGLING(16), data(6)=>
      DANGLING(17), data(5)=>DANGLING(18), data(4)=>DANGLING(19), data(3)=>
      DANGLING(20), data(2)=>DANGLING(21), data(1)=>DANGLING(22), data(0)=>
      DANGLING(23), aset=>DANGLING(24), sclear=>p_i_reset, updn=>DANGLING(25
      ), cnt_en=>DANGLING(26));
   modgen_counter_o_row : modgen_counter_8_1 port map ( clock=>p_i_clock, 
      q(7)=>p_o_row_7_EXMPLR678, q(6)=>p_o_row_6_EXMPLR679, q(5)=>
      p_o_row_5_EXMPLR680, q(4)=>p_o_row_4_EXMPLR681, q(3)=>
      p_o_row_3_EXMPLR682, q(2)=>p_o_row_2_EXMPLR683, q(1)=>
      p_o_row_1_EXMPLR684, q(0)=>p_o_row_0_EXMPLR685, clk_en=>DANGLING(27), 
      aclear=>DANGLING(28), sload=>DANGLING(29), data(7)=>DANGLING(30), 
      data(6)=>DANGLING(31), data(5)=>DANGLING(32), data(4)=>DANGLING(33), 
      data(3)=>DANGLING(34), data(2)=>DANGLING(35), data(1)=>DANGLING(36), 
      data(0)=>DANGLING(37), aset=>DANGLING(38), sclear=>p_i_reset, updn=>
      DANGLING(39), cnt_en=>nx17322z1, p_nrst_int_dup_455=>p_nrst_int, px272
      =>nx17322z4);
   r2_add8_6i49 : add_8_0 port map ( cin=>DANGLING(40), a(7)=>r2_6n3s1f1(7), 
      a(6)=>r2_6n3s1f1(6), a(5)=>r2_6n3s1f1(5), a(4)=>r2_6n3s1f1(4), a(3)=>
      r2_6n3s1f1(3), a(2)=>r2_6n3s1f1(2), a(1)=>r2_6n3s1f1(1), a(0)=>
      r2_6n3s1f1(0), b(7)=>r2_6n3s1f2(7), b(6)=>r2_6n3s1f2(6), b(5)=>
      r2_6n3s1f2(5), b(4)=>r2_6n3s1f2(4), b(3)=>r2_6n3s1f2(3), b(2)=>
      r2_6n3s1f2(2), b(1)=>r2_6n3s1f2(1), b(0)=>r2_6n3s1f2(0), d(7)=>
      r2_6n3s1(0), d(6)=>r2_6n3s1(1), d(5)=>r2_6n3s1(2), d(4)=>r2_6n3s1(3), 
      d(3)=>r2_6n3s1(4), d(2)=>r2_6n3s1(5), d(1)=>r2_6n3s1(6), d(0)=>
      r2_6n3s1(7), cout=>r2_6n3s1(8));
   x_r3_add9_7i9 : add_9_0 port map ( cin=>DANGLING(41), a(8)=>r2(8), a(7)=>
      r2(7), a(6)=>r2(6), a(5)=>r2(5), a(4)=>r2(4), a(3)=>r2(3), a(2)=>r2(2), 
      a(1)=>r2(1), a(0)=>r2(0), b(8)=>DANGLING(42), b(7)=>x_r3_7n3s1f1(7), 
      b(6)=>x_r3_7n3s1f1(6), b(5)=>x_r3_7n3s1f1(5), b(4)=>x_r3_7n3s1f1(4), 
      b(3)=>x_r3_7n3s1f1(3), b(2)=>x_r3_7n3s1f1(2), b(1)=>x_r3_7n3s1f1(1), 
      b(0)=>x_r3_7n3s1f1(0), d(8)=>x_r3_7n3s1(0), d(7)=>x_r3_7n3s1(1), d(6)
      =>x_r3_7n3s1(2), d(5)=>x_r3_7n3s1(3), d(4)=>x_r3_7n3s1(4), d(3)=>
      x_r3_7n3s1(5), d(2)=>x_r3_7n3s1(6), d(1)=>x_r3_7n3s1(7), d(0)=>
      x_r3_7n3s1(8), cout=>x_r3_7n3s1(9));
   b_d1_add9_7i10 : add_9_1 port map ( cin=>DANGLING(43), a(8)=>r9(8), a(7)
      =>r9(7), a(6)=>r9(6), a(5)=>r9(5), a(4)=>r9(4), a(3)=>r9(3), a(2)=>
      r9(2), a(1)=>r9(1), a(0)=>r9(0), b(8)=>DANGLING(44), b(7)=>r10(7), 
      b(6)=>r10(6), b(5)=>r10(5), b(4)=>r10(4), b(3)=>r10(3), b(2)=>r10(2), 
      b(1)=>r10(1), b(0)=>r10(0), d(8)=>b_d1_7n4s1(0), d(7)=>b_d1_7n4s1(1), 
      d(6)=>b_d1_7n4s1(2), d(5)=>b_d1_7n4s1(3), d(4)=>b_d1_7n4s1(4), d(3)=>
      b_d1_7n4s1(5), d(2)=>b_d1_7n4s1(6), d(1)=>b_d1_7n4s1(7), d(0)=>
      b_d1_7n4s1(8), cout=>b_d1_7n4s1(9));
   r16_add9_7i11 : add_9_2 port map ( cin=>DANGLING(45), a(8)=>DANGLING(46), 
      a(7)=>r12(7), a(6)=>r12(6), a(5)=>r12(5), a(4)=>r12(4), a(3)=>r12(3), 
      a(2)=>r12(2), a(1)=>r12(1), a(0)=>r12(0), b(8)=>r13(8), b(7)=>r13(7), 
      b(6)=>r13(6), b(5)=>r13(5), b(4)=>r13(4), b(3)=>r13(3), b(2)=>r13(2), 
      b(1)=>r13(1), b(0)=>r13(0), d(8)=>r16_7n1s1(0), d(7)=>r16_7n1s1(1), 
      d(6)=>r16_7n1s1(2), d(5)=>r16_7n1s1(3), d(4)=>r16_7n1s1(4), d(3)=>
      r16_7n1s1(5), d(2)=>r16_7n1s1(6), d(1)=>r16_7n1s1(7), d(0)=>
      r16_7n1s1(8), cout=>r16_7n1s1(9));
   x_r6_add9_8i2 : add_9_3 port map ( cin=>DANGLING(47), a(8)=>r9(8), a(7)=>
      r9(7), a(6)=>r9(6), a(5)=>r9(5), a(4)=>r9(4), a(3)=>r9(3), a(2)=>r9(2), 
      a(1)=>r9(1), a(0)=>r9(0), b(8)=>r2(8), b(7)=>r2(7), b(6)=>r2(6), b(5)
      =>r2(5), b(4)=>r2(4), b(3)=>r2(3), b(2)=>r2(2), b(1)=>r2(1), b(0)=>
      r2(0), d(8)=>x_r6_8n4s1(0), d(7)=>x_r6_8n4s1(1), d(6)=>x_r6_8n4s1(2), 
      d(5)=>x_r6_8n4s1(3), d(4)=>x_r6_8n4s1(4), d(3)=>x_r6_8n4s1(5), d(2)=>
      x_r6_8n4s1(6), d(1)=>x_r6_8n4s1(7), d(0)=>x_r6_8n4s1(8), cout=>
      x_r6_8n4s1(9));
   r14_add10_8i3 : add_10_0 port map ( cin=>DANGLING(48), a(9)=>DANGLING(49), 
      a(8)=>r2(8), a(7)=>r2(7), a(6)=>r2(6), a(5)=>r2(5), a(4)=>r2(4), a(3)
      =>r2(3), a(2)=>r2(2), a(1)=>r2(1), a(0)=>r2(0), b(9)=>x_r6(9), b(8)=>
      x_r6(8), b(7)=>x_r6(7), b(6)=>x_r6(6), b(5)=>x_r6(5), b(4)=>x_r6(4), 
      b(3)=>x_r6(3), b(2)=>x_r6(2), b(1)=>x_r6(1), b(0)=>x_r6(0), d(9)=>
      r14_8n3s1(0), d(8)=>r14_8n3s1(1), d(7)=>r14_8n3s1(2), d(6)=>
      r14_8n3s1(3), d(5)=>r14_8n3s1(4), d(4)=>r14_8n3s1(5), d(3)=>
      r14_8n3s1(6), d(2)=>r14_8n3s1(7), d(1)=>r14_8n3s1(8), d(0)=>
      r14_8n3s1(9), cout=>r14_8n3s1(10));
   x_r12_add11_8i4 : add_11_0 port map ( cin=>DANGLING(50), a(10)=>DANGLING(
      51), a(9)=>DANGLING(52), a(8)=>r13(8), a(7)=>r13(7), a(6)=>r13(6), 
      a(5)=>r13(5), a(4)=>r13(4), a(3)=>r13(3), a(2)=>r13(2), a(1)=>r13(1), 
      a(0)=>r13(0), b(10)=>r14(10), b(9)=>r14(9), b(8)=>r14(8), b(7)=>r14(7), 
      b(6)=>r14(6), b(5)=>r14(5), b(4)=>r14(4), b(3)=>r14(3), b(2)=>r14(2), 
      b(1)=>r14(1), b(0)=>r14(0), d(10)=>x_r12_8n2s1(0), d(9)=>
      x_r12_8n2s1(1), d(8)=>x_r12_8n2s1(2), d(7)=>x_r12_8n2s1(3), d(6)=>
      x_r12_8n2s1(4), d(5)=>x_r12_8n2s1(5), d(4)=>x_r12_8n2s1(6), d(3)=>
      x_r12_8n2s1(7), d(2)=>x_r12_8n2s1(8), d(1)=>x_r12_8n2s1(9), d(0)=>
      x_r12_8n2s1(10), cout=>x_r12_8n2s1(11));
   r17_sub13_10i1 : sub_12_0 port map ( cin=>DANGLING(53), a(11)=>r18(9), 
      a(10)=>r18(8), a(9)=>r18(7), a(8)=>r18(6), a(7)=>r18(5), a(6)=>r18(4), 
      a(5)=>r18(3), a(4)=>r18(2), a(3)=>r18(1), a(2)=>r18(0), a(1)=>DANGLING
      (54), a(0)=>DANGLING(55), b(11)=>x_r22(12), b(10)=>x_r22(11), b(9)=>
      x_r22(10), b(8)=>x_r22(9), b(7)=>x_r22(8), b(6)=>x_r22(7), b(5)=>
      x_r22(6), b(4)=>x_r22(5), b(3)=>x_r22(4), b(2)=>x_r22(3), b(1)=>
      x_r22(2), b(0)=>x_r22(1), d(11)=>r17_10n1s1_12, d(10)=>r17_10n1s1_11, 
      d(9)=>r17_10n1s1_10, d(8)=>r17_10n1s1_9, d(7)=>r17_10n1s1_8, d(6)=>
      r17_10n1s1_7, d(5)=>DANGLING(56), d(4)=>DANGLING(57), d(3)=>DANGLING(
      58), d(2)=>DANGLING(59), d(1)=>DANGLING(60), d(0)=>DANGLING(61), cout
      =>DANGLING(62), p_x_r22_0=>x_r22(0));
   Generate_mem_0_u_mem0_mem : ram_dq_8_0 port map ( wr_data1(7)=>
      p_i_pixel(7), wr_data1(6)=>p_i_pixel(6), wr_data1(5)=>p_i_pixel(5), 
      wr_data1(4)=>p_i_pixel(4), wr_data1(3)=>p_i_pixel(3), wr_data1(2)=>
      p_i_pixel(2), wr_data1(1)=>p_i_pixel(1), wr_data1(0)=>p_i_pixel(0), 
      rd_data1(7)=>tempStorage_0_7, rd_data1(6)=>tempStorage_0_6, 
      rd_data1(5)=>tempStorage_0_5, rd_data1(4)=>tempStorage_0_4, 
      rd_data1(3)=>tempStorage_0_3, rd_data1(2)=>tempStorage_0_2, 
      rd_data1(1)=>tempStorage_0_1, rd_data1(0)=>tempStorage_0_0, addr1(7)=>
      col(7), addr1(6)=>col(6), addr1(5)=>col(5), addr1(4)=>col(4), addr1(3)
      =>col(3), addr1(2)=>col(2), addr1(1)=>col(1), addr1(0)=>col(0), 
      wr_clk1=>p_i_clock, rd_clk1=>DANGLING(63), wr_ena1=>we(0), rd_ena1=>
      DANGLING(64), ena1=>DANGLING(65), rst1=>DANGLING(66), regce1=>DANGLING
      (67));
   Generate_mem_1_u_mem0_mem : ram_dq_8_1 port map ( wr_data1(7)=>
      p_i_pixel(7), wr_data1(6)=>p_i_pixel(6), wr_data1(5)=>p_i_pixel(5), 
      wr_data1(4)=>p_i_pixel(4), wr_data1(3)=>p_i_pixel(3), wr_data1(2)=>
      p_i_pixel(2), wr_data1(1)=>p_i_pixel(1), wr_data1(0)=>p_i_pixel(0), 
      rd_data1(7)=>tempStorage_1_7, rd_data1(6)=>tempStorage_1_6, 
      rd_data1(5)=>tempStorage_1_5, rd_data1(4)=>tempStorage_1_4, 
      rd_data1(3)=>tempStorage_1_3, rd_data1(2)=>tempStorage_1_2, 
      rd_data1(1)=>tempStorage_1_1, rd_data1(0)=>tempStorage_1_0, addr1(7)=>
      col(7), addr1(6)=>col(6), addr1(5)=>col(5), addr1(4)=>col(4), addr1(3)
      =>col(3), addr1(2)=>col(2), addr1(1)=>col(1), addr1(0)=>col(0), 
      wr_clk1=>p_i_clock, rd_clk1=>DANGLING(68), wr_ena1=>we(1), rd_ena1=>
      DANGLING(69), ena1=>DANGLING(70), rst1=>DANGLING(71), regce1=>DANGLING
      (72));
   Generate_mem_2_u_mem0_mem : ram_dq_8_2 port map ( wr_data1(7)=>
      p_i_pixel(7), wr_data1(6)=>p_i_pixel(6), wr_data1(5)=>p_i_pixel(5), 
      wr_data1(4)=>p_i_pixel(4), wr_data1(3)=>p_i_pixel(3), wr_data1(2)=>
      p_i_pixel(2), wr_data1(1)=>p_i_pixel(1), wr_data1(0)=>p_i_pixel(0), 
      rd_data1(7)=>tempStorage_2_7, rd_data1(6)=>tempStorage_2_6, 
      rd_data1(5)=>tempStorage_2_5, rd_data1(4)=>tempStorage_2_4, 
      rd_data1(3)=>tempStorage_2_3, rd_data1(2)=>tempStorage_2_2, 
      rd_data1(1)=>tempStorage_2_1, rd_data1(0)=>tempStorage_2_0, addr1(7)=>
      col(7), addr1(6)=>col(6), addr1(5)=>col(5), addr1(4)=>col(4), addr1(3)
      =>col(3), addr1(2)=>col(2), addr1(1)=>col(1), addr1(0)=>col(0), 
      wr_clk1=>p_i_clock, rd_clk1=>DANGLING(73), wr_ena1=>we(2), rd_ena1=>
      DANGLING(74), ena1=>DANGLING(75), rst1=>DANGLING(76), regce1=>DANGLING
      (77));
   nx15418z1 <= NOT nx13424z1;
   PWR <= '1';
   p_o_mode(0) <= NOT nx64269z1;
   state(1) <= NOT nx20492z2;
   NOT_state_2 <= NOT state(2);
   reg_x_r6_9 : cycloneii_lcell_ff port map ( regout=>x_r6(9), datain=>
      x_r6_8n4s1(9), clk=>p_i_clock, ena=>validBit_2);
   reg_x_r6_8 : cycloneii_lcell_ff port map ( regout=>x_r6(8), datain=>
      x_r6_8n4s1(0), clk=>p_i_clock, ena=>validBit_2);
   reg_x_r6_7 : cycloneii_lcell_ff port map ( regout=>x_r6(7), datain=>
      x_r6_8n4s1(1), clk=>p_i_clock, ena=>validBit_2);
   reg_x_r6_6 : cycloneii_lcell_ff port map ( regout=>x_r6(6), datain=>
      x_r6_8n4s1(2), clk=>p_i_clock, ena=>validBit_2);
   reg_x_r6_5 : cycloneii_lcell_ff port map ( regout=>x_r6(5), datain=>
      x_r6_8n4s1(3), clk=>p_i_clock, ena=>validBit_2);
   reg_x_r6_4 : cycloneii_lcell_ff port map ( regout=>x_r6(4), datain=>
      x_r6_8n4s1(4), clk=>p_i_clock, ena=>validBit_2);
   reg_x_r6_3 : cycloneii_lcell_ff port map ( regout=>x_r6(3), datain=>
      x_r6_8n4s1(5), clk=>p_i_clock, ena=>validBit_2);
   reg_x_r6_2 : cycloneii_lcell_ff port map ( regout=>x_r6(2), datain=>
      x_r6_8n4s1(6), clk=>p_i_clock, ena=>validBit_2);
   reg_x_r6_1 : cycloneii_lcell_ff port map ( regout=>x_r6(1), datain=>
      x_r6_8n4s1(7), clk=>p_i_clock, ena=>validBit_2);
   reg_x_r6_0 : cycloneii_lcell_ff port map ( regout=>x_r6(0), datain=>
      x_r6_8n4s1(8), clk=>p_i_clock, ena=>validBit_2);
   reg_x_r5_7 : cycloneii_lcell_ff port map ( regout=>x_r5(7), datain=>c(7), 
      sdata=>f(7), clk=>p_i_clock, ena=>nx27953z1, sload=>nx27953z2);
   reg_x_r5_6 : cycloneii_lcell_ff port map ( regout=>x_r5(6), datain=>c(6), 
      sdata=>f(6), clk=>p_i_clock, ena=>nx27953z1, sload=>nx27953z2);
   reg_x_r5_5 : cycloneii_lcell_ff port map ( regout=>x_r5(5), datain=>c(5), 
      sdata=>f(5), clk=>p_i_clock, ena=>nx27953z1, sload=>nx27953z2);
   reg_x_r5_4 : cycloneii_lcell_ff port map ( regout=>x_r5(4), datain=>c(4), 
      sdata=>f(4), clk=>p_i_clock, ena=>nx27953z1, sload=>nx27953z2);
   reg_x_r5_3 : cycloneii_lcell_ff port map ( regout=>x_r5(3), datain=>c(3), 
      sdata=>f(3), clk=>p_i_clock, ena=>nx27953z1, sload=>nx27953z2);
   reg_x_r5_2 : cycloneii_lcell_ff port map ( regout=>x_r5(2), datain=>c(2), 
      sdata=>f(2), clk=>p_i_clock, ena=>nx27953z1, sload=>nx27953z2);
   reg_x_r5_1 : cycloneii_lcell_ff port map ( regout=>x_r5(1), datain=>c(1), 
      sdata=>f(1), clk=>p_i_clock, ena=>nx27953z1, sload=>nx27953z2);
   reg_x_r5_0 : cycloneii_lcell_ff port map ( regout=>x_r5(0), datain=>c(0), 
      sdata=>f(0), clk=>p_i_clock, ena=>nx27953z1, sload=>nx27953z2);
   reg_x_r3_9 : cycloneii_lcell_ff port map ( regout=>x_r3(9), datain=>
      x_r3_7n3s1(9), clk=>p_i_clock, ena=>nx56415z1);
   reg_x_r3_8 : cycloneii_lcell_ff port map ( regout=>x_r3(8), datain=>
      x_r3_7n3s1(0), clk=>p_i_clock, ena=>nx56415z1);
   reg_x_r3_7 : cycloneii_lcell_ff port map ( regout=>x_r3(7), datain=>
      x_r3_7n3s1(1), clk=>p_i_clock, ena=>nx56415z1);
   reg_x_r3_6 : cycloneii_lcell_ff port map ( regout=>x_r3(6), datain=>
      x_r3_7n3s1(2), clk=>p_i_clock, ena=>nx56415z1);
   reg_x_r3_5 : cycloneii_lcell_ff port map ( regout=>x_r3(5), datain=>
      x_r3_7n3s1(3), clk=>p_i_clock, ena=>nx56415z1);
   reg_x_r3_4 : cycloneii_lcell_ff port map ( regout=>x_r3(4), datain=>
      x_r3_7n3s1(4), clk=>p_i_clock, ena=>nx56415z1);
   reg_x_r3_3 : cycloneii_lcell_ff port map ( regout=>x_r3(3), datain=>
      x_r3_7n3s1(5), clk=>p_i_clock, ena=>nx56415z1);
   reg_x_r3_2 : cycloneii_lcell_ff port map ( regout=>x_r3(2), datain=>
      x_r3_7n3s1(6), clk=>p_i_clock, ena=>nx56415z1);
   reg_x_r3_1 : cycloneii_lcell_ff port map ( regout=>x_r3(1), datain=>
      x_r3_7n3s1(7), clk=>p_i_clock, ena=>nx56415z1);
   reg_x_r3_0 : cycloneii_lcell_ff port map ( regout=>x_r3(0), datain=>
      x_r3_7n3s1(8), clk=>p_i_clock, ena=>nx56415z1);
   reg_x_r22_9 : cycloneii_lcell_ff port map ( regout=>x_r22(9), datain=>
      x_r22_8n1s1(9), clk=>p_i_clock, ena=>nx65254z1);
   reg_x_r22_8 : cycloneii_lcell_ff port map ( regout=>x_r22(8), datain=>
      x_r22_8n1s1(8), clk=>p_i_clock, ena=>nx65254z1);
   reg_x_r22_7 : cycloneii_lcell_ff port map ( regout=>x_r22(7), datain=>
      x_r22_8n1s1(7), clk=>p_i_clock, ena=>nx65254z1);
   reg_x_r22_6 : cycloneii_lcell_ff port map ( regout=>x_r22(6), datain=>
      x_r22_8n1s1(6), clk=>p_i_clock, ena=>nx65254z1);
   reg_x_r22_5 : cycloneii_lcell_ff port map ( regout=>x_r22(5), datain=>
      x_r22_8n1s1(5), clk=>p_i_clock, ena=>nx65254z1);
   reg_x_r22_4 : cycloneii_lcell_ff port map ( regout=>x_r22(4), datain=>
      x_r22_8n1s1(4), clk=>p_i_clock, ena=>nx65254z1);
   reg_x_r22_3 : cycloneii_lcell_ff port map ( regout=>x_r22(3), datain=>
      x_r22_8n1s1(3), clk=>p_i_clock, ena=>nx65254z1);
   reg_x_r22_2 : cycloneii_lcell_ff port map ( regout=>x_r22(2), datain=>
      x_r22_8n1s1(2), clk=>p_i_clock, ena=>nx65254z1);
   reg_x_r22_12 : cycloneii_lcell_ff port map ( regout=>x_r22(12), datain=>
      x_r22_8n1s1(12), clk=>p_i_clock, ena=>nx65254z1);
   reg_x_r22_11 : cycloneii_lcell_ff port map ( regout=>x_r22(11), datain=>
      x_r22_8n1s1(11), clk=>p_i_clock, ena=>nx65254z1);
   reg_x_r22_10 : cycloneii_lcell_ff port map ( regout=>x_r22(10), datain=>
      x_r22_8n1s1(10), clk=>p_i_clock, ena=>nx65254z1);
   reg_x_r22_1 : cycloneii_lcell_ff port map ( regout=>x_r22(1), datain=>
      x_r22_8n1s1(1), clk=>p_i_clock, ena=>nx65254z1);
   reg_x_r22_0 : cycloneii_lcell_ff port map ( regout=>x_r22(0), datain=>
      x_r12(0), clk=>p_i_clock, ena=>nx65254z1);
   reg_x_r12_9 : cycloneii_lcell_ff port map ( regout=>x_r12(9), datain=>
      x_r12_8n2s1(1), clk=>p_i_clock, ena=>nx58464z1);
   reg_x_r12_8 : cycloneii_lcell_ff port map ( regout=>x_r12(8), datain=>
      x_r12_8n2s1(2), clk=>p_i_clock, ena=>nx58464z1);
   reg_x_r12_7 : cycloneii_lcell_ff port map ( regout=>x_r12(7), datain=>
      x_r12_8n2s1(3), clk=>p_i_clock, ena=>nx58464z1);
   reg_x_r12_6 : cycloneii_lcell_ff port map ( regout=>x_r12(6), datain=>
      x_r12_8n2s1(4), clk=>p_i_clock, ena=>nx58464z1);
   reg_x_r12_5 : cycloneii_lcell_ff port map ( regout=>x_r12(5), datain=>
      x_r12_8n2s1(5), clk=>p_i_clock, ena=>nx58464z1);
   reg_x_r12_4 : cycloneii_lcell_ff port map ( regout=>x_r12(4), datain=>
      x_r12_8n2s1(6), clk=>p_i_clock, ena=>nx58464z1);
   reg_x_r12_3 : cycloneii_lcell_ff port map ( regout=>x_r12(3), datain=>
      x_r12_8n2s1(7), clk=>p_i_clock, ena=>nx58464z1);
   reg_x_r12_2 : cycloneii_lcell_ff port map ( regout=>x_r12(2), datain=>
      x_r12_8n2s1(8), clk=>p_i_clock, ena=>nx58464z1);
   reg_x_r12_11 : cycloneii_lcell_ff port map ( regout=>x_r12(11), datain=>
      x_r12_8n2s1(11), clk=>p_i_clock, ena=>nx58464z1);
   reg_x_r12_10 : cycloneii_lcell_ff port map ( regout=>x_r12(10), datain=>
      x_r12_8n2s1(0), clk=>p_i_clock, ena=>nx58464z1);
   reg_x_r12_1 : cycloneii_lcell_ff port map ( regout=>x_r12(1), datain=>
      x_r12_8n2s1(9), clk=>p_i_clock, ena=>nx58464z1);
   reg_x_r12_0 : cycloneii_lcell_ff port map ( regout=>x_r12(0), datain=>
      x_r12_8n2s1(10), clk=>p_i_clock, ena=>nx58464z1);
   reg_x_r11_9 : cycloneii_lcell_ff port map ( regout=>x_r11(9), datain=>
      r11(9), sdata=>r16(9), clk=>p_i_clock, ena=>nx64999z1, sload=>
      nx64999z2);
   reg_x_r11_8 : cycloneii_lcell_ff port map ( regout=>x_r11(8), datain=>
      r11(8), sdata=>r16(8), clk=>p_i_clock, ena=>nx64999z1, sload=>
      nx64999z2);
   reg_x_r11_7 : cycloneii_lcell_ff port map ( regout=>x_r11(7), datain=>
      r11(7), sdata=>r16(7), clk=>p_i_clock, ena=>nx64999z1, sload=>
      nx64999z2);
   reg_x_r11_6 : cycloneii_lcell_ff port map ( regout=>x_r11(6), datain=>
      r11(6), sdata=>r16(6), clk=>p_i_clock, ena=>nx64999z1, sload=>
      nx64999z2);
   reg_x_r11_5 : cycloneii_lcell_ff port map ( regout=>x_r11(5), datain=>
      r11(5), sdata=>r16(5), clk=>p_i_clock, ena=>nx64999z1, sload=>
      nx64999z2);
   reg_x_r11_4 : cycloneii_lcell_ff port map ( regout=>x_r11(4), datain=>
      r11(4), sdata=>r16(4), clk=>p_i_clock, ena=>nx64999z1, sload=>
      nx64999z2);
   reg_x_r11_3 : cycloneii_lcell_ff port map ( regout=>x_r11(3), datain=>
      r11(3), sdata=>r16(3), clk=>p_i_clock, ena=>nx64999z1, sload=>
      nx64999z2);
   reg_x_r11_2 : cycloneii_lcell_ff port map ( regout=>x_r11(2), datain=>
      r11(2), sdata=>r16(2), clk=>p_i_clock, ena=>nx64999z1, sload=>
      nx64999z2);
   reg_x_r11_1 : cycloneii_lcell_ff port map ( regout=>x_r11(1), datain=>
      r11(1), sdata=>r16(1), clk=>p_i_clock, ena=>nx64999z1, sload=>
      nx64999z2);
   reg_x_r11_0 : cycloneii_lcell_ff port map ( regout=>x_r11(0), datain=>
      r11(0), sdata=>r16(0), clk=>p_i_clock, ena=>nx64999z1, sload=>
      nx64999z2);
   reg_validBit_8 : cycloneii_lcell_ff port map ( regout=>
      p_o_valid_EXMPLR677, datain=>validBit_7, clk=>p_i_clock, sclr=>
      p_i_reset);
   reg_validBit_7 : cycloneii_lcell_ff port map ( regout=>validBit_7, datain
      =>validBit_6, clk=>p_i_clock, sclr=>p_i_reset);
   reg_validBit_6 : cycloneii_lcell_ff port map ( regout=>validBit_6, datain
      =>validBit_5, clk=>p_i_clock, sclr=>p_i_reset);
   reg_validBit_5 : cycloneii_lcell_ff port map ( regout=>validBit_5, datain
      =>validBit_4, clk=>p_i_clock, sclr=>p_i_reset);
   reg_validBit_4 : cycloneii_lcell_ff port map ( regout=>validBit_4, datain
      =>validBit_3, clk=>p_i_clock, sclr=>p_i_reset);
   reg_validBit_3 : cycloneii_lcell_ff port map ( regout=>validBit_3, datain
      =>validBit_2, clk=>p_i_clock, sclr=>p_i_reset);
   reg_validBit_2 : cycloneii_lcell_ff port map ( regout=>validBit_2, datain
      =>validBit_1, clk=>p_i_clock, sclr=>p_i_reset);
   reg_validBit_1 : cycloneii_lcell_ff port map ( regout=>validBit_1, datain
      =>validBit_0, clk=>p_i_clock, sclr=>p_i_reset);
   reg_validBit_0 : cycloneii_lcell_ff port map ( regout=>validBit_0, datain
      =>nx20419z1, clk=>p_i_clock, sclr=>p_i_reset);
   reg_vBit_2 : cycloneii_lcell_ff port map ( regout=>vBit(2), datain=>
      vBit(1), clk=>p_i_clock);
   reg_vBit_1 : cycloneii_lcell_ff port map ( regout=>vBit(1), datain=>
      p_i_valid, clk=>p_i_clock);
   reg_state_2 : cycloneii_lcell_ff port map ( regout=>state(2), datain=>
      state(0), clk=>p_i_clock, ena=>nx17322z4, sclr=>p_i_reset);
   reg_state_1 : cycloneii_lcell_ff port map ( regout=>state(0), datain=>
      state(1), clk=>p_i_clock, ena=>nx17322z4, sclr=>p_i_reset);
   reg_state_0 : cycloneii_lcell_ff port map ( regout=>nx20492z2, datain=>
      NOT_state_2, clk=>p_i_clock, ena=>nx17322z4, sclr=>p_i_reset);
   reg_stage1_wNw_2 : cycloneii_lcell_ff port map ( regout=>stage1_wNw_2, 
      datain=>nx13424z1, clk=>p_i_clock, ena=>nx13424z2);
   reg_stage1_wNw_0 : cycloneii_lcell_ff port map ( regout=>stage1_wNw_0, 
      datain=>nx15418z1, clk=>p_i_clock, ena=>nx13424z2);
   reg_stage1_sSw_2 : cycloneii_lcell_ff port map ( regout=>stage1_sSw_2, 
      datain=>nx7951z1, clk=>p_i_clock, ena=>nx7951z2);
   reg_stage1_nNe_2 : cycloneii_lcell_ff port map ( regout=>stage1_nNe_2, 
      datain=>nx11593z1, clk=>p_i_clock, ena=>validBit_0);
   reg_stage1_eSe_2 : cycloneii_lcell_ff port map ( regout=>stage1_eSe_2, 
      datain=>nx27953z2, clk=>p_i_clock, ena=>nx27953z1);
   reg_second_cw_2 : cycloneii_lcell_ff port map ( regout=>second_cw(2), 
      datain=>stage1_eSe_2, sdata=>stage1_sSw_2, clk=>p_i_clock, ena=>
      nx64999z1, sload=>nx64999z2);
   reg_second_cw_1 : cycloneii_lcell_ff port map ( regout=>second_cw(1), 
      datain=>nx64999z2, clk=>p_i_clock, ena=>nx64999z1);
   reg_second_cw_0 : cycloneii_lcell_ff port map ( regout=>second_cw(0), 
      datain=>second_cw_9n2ss1_0, clk=>p_i_clock, ena=>nx64999z1);
   reg_r9_8 : cycloneii_lcell_ff port map ( regout=>r9(8), datain=>
      r2_6n3s1(8), clk=>p_i_clock, ena=>validBit_0);
   reg_r9_7 : cycloneii_lcell_ff port map ( regout=>r9(7), datain=>
      r2_6n3s1(0), clk=>p_i_clock, ena=>validBit_0);
   reg_r9_6 : cycloneii_lcell_ff port map ( regout=>r9(6), datain=>
      r2_6n3s1(1), clk=>p_i_clock, ena=>validBit_0);
   reg_r9_5 : cycloneii_lcell_ff port map ( regout=>r9(5), datain=>
      r2_6n3s1(2), clk=>p_i_clock, ena=>validBit_0);
   reg_r9_4 : cycloneii_lcell_ff port map ( regout=>r9(4), datain=>
      r2_6n3s1(3), clk=>p_i_clock, ena=>validBit_0);
   reg_r9_3 : cycloneii_lcell_ff port map ( regout=>r9(3), datain=>
      r2_6n3s1(4), clk=>p_i_clock, ena=>validBit_0);
   reg_r9_2 : cycloneii_lcell_ff port map ( regout=>r9(2), datain=>
      r2_6n3s1(5), clk=>p_i_clock, ena=>validBit_0);
   reg_r9_1 : cycloneii_lcell_ff port map ( regout=>r9(1), datain=>
      r2_6n3s1(6), clk=>p_i_clock, ena=>validBit_0);
   reg_r9_0 : cycloneii_lcell_ff port map ( regout=>r9(0), datain=>
      r2_6n3s1(7), clk=>p_i_clock, ena=>validBit_0);
   reg_r5_7 : cycloneii_lcell_ff port map ( regout=>r5(7), datain=>g(7), 
      sdata=>b(7), clk=>p_i_clock, ena=>nx13424z2, sload=>nx13424z1);
   reg_r5_6 : cycloneii_lcell_ff port map ( regout=>r5(6), datain=>g(6), 
      sdata=>b(6), clk=>p_i_clock, ena=>nx13424z2, sload=>nx13424z1);
   reg_r5_5 : cycloneii_lcell_ff port map ( regout=>r5(5), datain=>g(5), 
      sdata=>b(5), clk=>p_i_clock, ena=>nx13424z2, sload=>nx13424z1);
   reg_r5_4 : cycloneii_lcell_ff port map ( regout=>r5(4), datain=>g(4), 
      sdata=>b(4), clk=>p_i_clock, ena=>nx13424z2, sload=>nx13424z1);
   reg_r5_3 : cycloneii_lcell_ff port map ( regout=>r5(3), datain=>g(3), 
      sdata=>b(3), clk=>p_i_clock, ena=>nx13424z2, sload=>nx13424z1);
   reg_r5_2 : cycloneii_lcell_ff port map ( regout=>r5(2), datain=>g(2), 
      sdata=>b(2), clk=>p_i_clock, ena=>nx13424z2, sload=>nx13424z1);
   reg_r5_1 : cycloneii_lcell_ff port map ( regout=>r5(1), datain=>g(1), 
      sdata=>b(1), clk=>p_i_clock, ena=>nx13424z2, sload=>nx13424z1);
   reg_r5_0 : cycloneii_lcell_ff port map ( regout=>r5(0), datain=>g(0), 
      sdata=>b(0), clk=>p_i_clock, ena=>nx13424z2, sload=>nx13424z1);
   reg_r2_8 : cycloneii_lcell_ff port map ( regout=>r2(8), datain=>
      r2_6n3s1(8), clk=>p_i_clock, ena=>nx51677z3);
   reg_r2_7 : cycloneii_lcell_ff port map ( regout=>r2(7), datain=>
      r2_6n3s1(0), clk=>p_i_clock, ena=>nx51677z3);
   reg_r2_6 : cycloneii_lcell_ff port map ( regout=>r2(6), datain=>
      r2_6n3s1(1), clk=>p_i_clock, ena=>nx51677z3);
   reg_r2_5 : cycloneii_lcell_ff port map ( regout=>r2(5), datain=>
      r2_6n3s1(2), clk=>p_i_clock, ena=>nx51677z3);
   reg_r2_4 : cycloneii_lcell_ff port map ( regout=>r2(4), datain=>
      r2_6n3s1(3), clk=>p_i_clock, ena=>nx51677z3);
   reg_r2_3 : cycloneii_lcell_ff port map ( regout=>r2(3), datain=>
      r2_6n3s1(4), clk=>p_i_clock, ena=>nx51677z3);
   reg_r2_2 : cycloneii_lcell_ff port map ( regout=>r2(2), datain=>
      r2_6n3s1(5), clk=>p_i_clock, ena=>nx51677z3);
   reg_r2_1 : cycloneii_lcell_ff port map ( regout=>r2(1), datain=>
      r2_6n3s1(6), clk=>p_i_clock, ena=>nx51677z3);
   reg_r2_0 : cycloneii_lcell_ff port map ( regout=>r2(0), datain=>
      r2_6n3s1(7), clk=>p_i_clock, ena=>nx51677z3);
   reg_r18_9 : cycloneii_lcell_ff port map ( regout=>r18(9), datain=>r15(9), 
      sdata=>x_r11(9), clk=>p_i_clock, ena=>nx35772z1, sload=>nx35772z2);
   reg_r18_8 : cycloneii_lcell_ff port map ( regout=>r18(8), datain=>r15(8), 
      sdata=>x_r11(8), clk=>p_i_clock, ena=>nx35772z1, sload=>nx35772z2);
   reg_r18_7 : cycloneii_lcell_ff port map ( regout=>r18(7), datain=>r15(7), 
      sdata=>x_r11(7), clk=>p_i_clock, ena=>nx35772z1, sload=>nx35772z2);
   reg_r18_6 : cycloneii_lcell_ff port map ( regout=>r18(6), datain=>r15(6), 
      sdata=>x_r11(6), clk=>p_i_clock, ena=>nx35772z1, sload=>nx35772z2);
   reg_r18_5 : cycloneii_lcell_ff port map ( regout=>r18(5), datain=>r15(5), 
      sdata=>x_r11(5), clk=>p_i_clock, ena=>nx35772z1, sload=>nx35772z2);
   reg_r18_4 : cycloneii_lcell_ff port map ( regout=>r18(4), datain=>r15(4), 
      sdata=>x_r11(4), clk=>p_i_clock, ena=>nx35772z1, sload=>nx35772z2);
   reg_r18_3 : cycloneii_lcell_ff port map ( regout=>r18(3), datain=>r15(3), 
      sdata=>x_r11(3), clk=>p_i_clock, ena=>nx35772z1, sload=>nx35772z2);
   reg_r18_2 : cycloneii_lcell_ff port map ( regout=>r18(2), datain=>r15(2), 
      sdata=>x_r11(2), clk=>p_i_clock, ena=>nx35772z1, sload=>nx35772z2);
   reg_r18_1 : cycloneii_lcell_ff port map ( regout=>r18(1), datain=>r15(1), 
      sdata=>x_r11(1), clk=>p_i_clock, ena=>nx35772z1, sload=>nx35772z2);
   reg_r18_0 : cycloneii_lcell_ff port map ( regout=>r18(0), datain=>r15(0), 
      sdata=>x_r11(0), clk=>p_i_clock, ena=>nx35772z1, sload=>nx35772z2);
   reg_r17_9 : cycloneii_lcell_ff port map ( regout=>r17_9, datain=>
      r17_10n1s1_9, clk=>p_i_clock, ena=>validBit_7);
   reg_r17_8 : cycloneii_lcell_ff port map ( regout=>r17_8, datain=>
      r17_10n1s1_8, clk=>p_i_clock, ena=>validBit_7);
   reg_r17_7 : cycloneii_lcell_ff port map ( regout=>r17_7, datain=>
      r17_10n1s1_7, clk=>p_i_clock, ena=>validBit_7);
   reg_r17_12 : cycloneii_lcell_ff port map ( regout=>r17_12, datain=>
      r17_10n1s1_12, clk=>p_i_clock, ena=>validBit_7);
   reg_r17_11 : cycloneii_lcell_ff port map ( regout=>r17_11, datain=>
      r17_10n1s1_11, clk=>p_i_clock, ena=>validBit_7);
   reg_r17_10 : cycloneii_lcell_ff port map ( regout=>r17_10, datain=>
      r17_10n1s1_10, clk=>p_i_clock, ena=>validBit_7);
   reg_r16_9 : cycloneii_lcell_ff port map ( regout=>r16(9), datain=>
      r16_7n1s1(9), clk=>p_i_clock, ena=>nx34104z1);
   reg_r16_8 : cycloneii_lcell_ff port map ( regout=>r16(8), datain=>
      r16_7n1s1(0), clk=>p_i_clock, ena=>nx34104z1);
   reg_r16_7 : cycloneii_lcell_ff port map ( regout=>r16(7), datain=>
      r16_7n1s1(1), clk=>p_i_clock, ena=>nx34104z1);
   reg_r16_6 : cycloneii_lcell_ff port map ( regout=>r16(6), datain=>
      r16_7n1s1(2), clk=>p_i_clock, ena=>nx34104z1);
   reg_r16_5 : cycloneii_lcell_ff port map ( regout=>r16(5), datain=>
      r16_7n1s1(3), clk=>p_i_clock, ena=>nx34104z1);
   reg_r16_4 : cycloneii_lcell_ff port map ( regout=>r16(4), datain=>
      r16_7n1s1(4), clk=>p_i_clock, ena=>nx34104z1);
   reg_r16_3 : cycloneii_lcell_ff port map ( regout=>r16(3), datain=>
      r16_7n1s1(5), clk=>p_i_clock, ena=>nx34104z1);
   reg_r16_2 : cycloneii_lcell_ff port map ( regout=>r16(2), datain=>
      r16_7n1s1(6), clk=>p_i_clock, ena=>nx34104z1);
   reg_r16_1 : cycloneii_lcell_ff port map ( regout=>r16(1), datain=>
      r16_7n1s1(7), clk=>p_i_clock, ena=>nx34104z1);
   reg_r16_0 : cycloneii_lcell_ff port map ( regout=>r16(0), datain=>
      r16_7n1s1(8), clk=>p_i_clock, ena=>nx34104z1);
   reg_r15_9 : cycloneii_lcell_ff port map ( regout=>r15(9), datain=>x_r3(9), 
      sdata=>b_d1(9), clk=>p_i_clock, ena=>validBit_3, sload=>nx47369z1);
   reg_r15_8 : cycloneii_lcell_ff port map ( regout=>r15(8), datain=>x_r3(8), 
      sdata=>b_d1(8), clk=>p_i_clock, ena=>validBit_3, sload=>nx47369z1);
   reg_r15_7 : cycloneii_lcell_ff port map ( regout=>r15(7), datain=>x_r3(7), 
      sdata=>b_d1(7), clk=>p_i_clock, ena=>validBit_3, sload=>nx47369z1);
   reg_r15_6 : cycloneii_lcell_ff port map ( regout=>r15(6), datain=>x_r3(6), 
      sdata=>b_d1(6), clk=>p_i_clock, ena=>validBit_3, sload=>nx47369z1);
   reg_r15_5 : cycloneii_lcell_ff port map ( regout=>r15(5), datain=>x_r3(5), 
      sdata=>b_d1(5), clk=>p_i_clock, ena=>validBit_3, sload=>nx47369z1);
   reg_r15_4 : cycloneii_lcell_ff port map ( regout=>r15(4), datain=>x_r3(4), 
      sdata=>b_d1(4), clk=>p_i_clock, ena=>validBit_3, sload=>nx47369z1);
   reg_r15_3 : cycloneii_lcell_ff port map ( regout=>r15(3), datain=>x_r3(3), 
      sdata=>b_d1(3), clk=>p_i_clock, ena=>validBit_3, sload=>nx47369z1);
   reg_r15_2 : cycloneii_lcell_ff port map ( regout=>r15(2), datain=>x_r3(2), 
      sdata=>b_d1(2), clk=>p_i_clock, ena=>validBit_3, sload=>nx47369z1);
   reg_r15_1 : cycloneii_lcell_ff port map ( regout=>r15(1), datain=>x_r3(1), 
      sdata=>b_d1(1), clk=>p_i_clock, ena=>validBit_3, sload=>nx47369z1);
   reg_r15_0 : cycloneii_lcell_ff port map ( regout=>r15(0), datain=>x_r3(0), 
      sdata=>b_d1(0), clk=>p_i_clock, ena=>validBit_3, sload=>nx47369z1);
   reg_r14_9 : cycloneii_lcell_ff port map ( regout=>r14(9), datain=>
      r14_8n3s1(0), clk=>p_i_clock, ena=>nx16422z1);
   reg_r14_8 : cycloneii_lcell_ff port map ( regout=>r14(8), datain=>
      r14_8n3s1(1), clk=>p_i_clock, ena=>nx16422z1);
   reg_r14_7 : cycloneii_lcell_ff port map ( regout=>r14(7), datain=>
      r14_8n3s1(2), clk=>p_i_clock, ena=>nx16422z1);
   reg_r14_6 : cycloneii_lcell_ff port map ( regout=>r14(6), datain=>
      r14_8n3s1(3), clk=>p_i_clock, ena=>nx16422z1);
   reg_r14_5 : cycloneii_lcell_ff port map ( regout=>r14(5), datain=>
      r14_8n3s1(4), clk=>p_i_clock, ena=>nx16422z1);
   reg_r14_4 : cycloneii_lcell_ff port map ( regout=>r14(4), datain=>
      r14_8n3s1(5), clk=>p_i_clock, ena=>nx16422z1);
   reg_r14_3 : cycloneii_lcell_ff port map ( regout=>r14(3), datain=>
      r14_8n3s1(6), clk=>p_i_clock, ena=>nx16422z1);
   reg_r14_2 : cycloneii_lcell_ff port map ( regout=>r14(2), datain=>
      r14_8n3s1(7), clk=>p_i_clock, ena=>nx16422z1);
   reg_r14_10 : cycloneii_lcell_ff port map ( regout=>r14(10), datain=>
      r14_8n3s1(10), clk=>p_i_clock, ena=>nx16422z1);
   reg_r14_1 : cycloneii_lcell_ff port map ( regout=>r14(1), datain=>
      r14_8n3s1(8), clk=>p_i_clock, ena=>nx16422z1);
   reg_r14_0 : cycloneii_lcell_ff port map ( regout=>r14(0), datain=>
      r14_8n3s1(9), clk=>p_i_clock, ena=>nx16422z1);
   reg_r13_8 : cycloneii_lcell_ff port map ( regout=>r13(8), datain=>
      r2_6n3s1(8), clk=>p_i_clock, ena=>nx7951z2);
   reg_r13_7 : cycloneii_lcell_ff port map ( regout=>r13(7), datain=>
      r2_6n3s1(0), clk=>p_i_clock, ena=>nx7951z2);
   reg_r13_6 : cycloneii_lcell_ff port map ( regout=>r13(6), datain=>
      r2_6n3s1(1), clk=>p_i_clock, ena=>nx7951z2);
   reg_r13_5 : cycloneii_lcell_ff port map ( regout=>r13(5), datain=>
      r2_6n3s1(2), clk=>p_i_clock, ena=>nx7951z2);
   reg_r13_4 : cycloneii_lcell_ff port map ( regout=>r13(4), datain=>
      r2_6n3s1(3), clk=>p_i_clock, ena=>nx7951z2);
   reg_r13_3 : cycloneii_lcell_ff port map ( regout=>r13(3), datain=>
      r2_6n3s1(4), clk=>p_i_clock, ena=>nx7951z2);
   reg_r13_2 : cycloneii_lcell_ff port map ( regout=>r13(2), datain=>
      r2_6n3s1(5), clk=>p_i_clock, ena=>nx7951z2);
   reg_r13_1 : cycloneii_lcell_ff port map ( regout=>r13(1), datain=>
      r2_6n3s1(6), clk=>p_i_clock, ena=>nx7951z2);
   reg_r13_0 : cycloneii_lcell_ff port map ( regout=>r13(0), datain=>
      r2_6n3s1(7), clk=>p_i_clock, ena=>nx7951z2);
   reg_r12_7 : cycloneii_lcell_ff port map ( regout=>r12(7), datain=>e(7), 
      sdata=>h(7), clk=>p_i_clock, ena=>nx7951z2, sload=>nx7951z1);
   reg_r12_6 : cycloneii_lcell_ff port map ( regout=>r12(6), datain=>e(6), 
      sdata=>h(6), clk=>p_i_clock, ena=>nx7951z2, sload=>nx7951z1);
   reg_r12_5 : cycloneii_lcell_ff port map ( regout=>r12(5), datain=>e(5), 
      sdata=>h(5), clk=>p_i_clock, ena=>nx7951z2, sload=>nx7951z1);
   reg_r12_4 : cycloneii_lcell_ff port map ( regout=>r12(4), datain=>e(4), 
      sdata=>h(4), clk=>p_i_clock, ena=>nx7951z2, sload=>nx7951z1);
   reg_r12_3 : cycloneii_lcell_ff port map ( regout=>r12(3), datain=>e(3), 
      sdata=>h(3), clk=>p_i_clock, ena=>nx7951z2, sload=>nx7951z1);
   reg_r12_2 : cycloneii_lcell_ff port map ( regout=>r12(2), datain=>e(2), 
      sdata=>h(2), clk=>p_i_clock, ena=>nx7951z2, sload=>nx7951z1);
   reg_r12_1 : cycloneii_lcell_ff port map ( regout=>r12(1), datain=>e(1), 
      sdata=>h(1), clk=>p_i_clock, ena=>nx7951z2, sload=>nx7951z1);
   reg_r12_0 : cycloneii_lcell_ff port map ( regout=>r12(0), datain=>e(0), 
      sdata=>h(0), clk=>p_i_clock, ena=>nx7951z2, sload=>nx7951z1);
   reg_r11_9 : cycloneii_lcell_ff port map ( regout=>r11(9), datain=>
      x_r3_7n3s1(9), clk=>p_i_clock, ena=>nx54873z1);
   reg_r11_8 : cycloneii_lcell_ff port map ( regout=>r11(8), datain=>
      x_r3_7n3s1(0), clk=>p_i_clock, ena=>nx54873z1);
   reg_r11_7 : cycloneii_lcell_ff port map ( regout=>r11(7), datain=>
      x_r3_7n3s1(1), clk=>p_i_clock, ena=>nx54873z1);
   reg_r11_6 : cycloneii_lcell_ff port map ( regout=>r11(6), datain=>
      x_r3_7n3s1(2), clk=>p_i_clock, ena=>nx54873z1);
   reg_r11_5 : cycloneii_lcell_ff port map ( regout=>r11(5), datain=>
      x_r3_7n3s1(3), clk=>p_i_clock, ena=>nx54873z1);
   reg_r11_4 : cycloneii_lcell_ff port map ( regout=>r11(4), datain=>
      x_r3_7n3s1(4), clk=>p_i_clock, ena=>nx54873z1);
   reg_r11_3 : cycloneii_lcell_ff port map ( regout=>r11(3), datain=>
      x_r3_7n3s1(5), clk=>p_i_clock, ena=>nx54873z1);
   reg_r11_2 : cycloneii_lcell_ff port map ( regout=>r11(2), datain=>
      x_r3_7n3s1(6), clk=>p_i_clock, ena=>nx54873z1);
   reg_r11_1 : cycloneii_lcell_ff port map ( regout=>r11(1), datain=>
      x_r3_7n3s1(7), clk=>p_i_clock, ena=>nx54873z1);
   reg_r11_0 : cycloneii_lcell_ff port map ( regout=>r11(0), datain=>
      x_r3_7n3s1(8), clk=>p_i_clock, ena=>nx54873z1);
   reg_r10_7 : cycloneii_lcell_ff port map ( regout=>r10(7), datain=>a(7), 
      sdata=>d(7), clk=>p_i_clock, ena=>validBit_0, sload=>nx11593z1);
   reg_r10_6 : cycloneii_lcell_ff port map ( regout=>r10(6), datain=>a(6), 
      sdata=>d(6), clk=>p_i_clock, ena=>validBit_0, sload=>nx11593z1);
   reg_r10_5 : cycloneii_lcell_ff port map ( regout=>r10(5), datain=>a(5), 
      sdata=>d(5), clk=>p_i_clock, ena=>validBit_0, sload=>nx11593z1);
   reg_r10_4 : cycloneii_lcell_ff port map ( regout=>r10(4), datain=>a(4), 
      sdata=>d(4), clk=>p_i_clock, ena=>validBit_0, sload=>nx11593z1);
   reg_r10_3 : cycloneii_lcell_ff port map ( regout=>r10(3), datain=>a(3), 
      sdata=>d(3), clk=>p_i_clock, ena=>validBit_0, sload=>nx11593z1);
   reg_r10_2 : cycloneii_lcell_ff port map ( regout=>r10(2), datain=>a(2), 
      sdata=>d(2), clk=>p_i_clock, ena=>validBit_0, sload=>nx11593z1);
   reg_r10_1 : cycloneii_lcell_ff port map ( regout=>r10(1), datain=>a(1), 
      sdata=>d(1), clk=>p_i_clock, ena=>validBit_0, sload=>nx11593z1);
   reg_r10_0 : cycloneii_lcell_ff port map ( regout=>r10(0), datain=>a(0), 
      sdata=>d(0), clk=>p_i_clock, ena=>validBit_0, sload=>nx11593z1);
   reg_out_signal_1 : cycloneii_lcell_ff port map ( regout=>p_o_mode(1), 
      datain=>PWR, clk=>p_i_clock, sclr=>p_i_reset);
   reg_out_signal_0 : cycloneii_lcell_ff port map ( regout=>nx64269z1, 
      datain=>nx11673z1, clk=>p_i_clock, sclr=>p_i_reset);
   reg_i_7 : cycloneii_lcell_ff port map ( regout=>i(7), datain=>d(7), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_i_6 : cycloneii_lcell_ff port map ( regout=>i(6), datain=>d(6), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_i_5 : cycloneii_lcell_ff port map ( regout=>i(5), datain=>d(5), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_i_4 : cycloneii_lcell_ff port map ( regout=>i(4), datain=>d(4), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_i_3 : cycloneii_lcell_ff port map ( regout=>i(3), datain=>d(3), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_i_2 : cycloneii_lcell_ff port map ( regout=>i(2), datain=>d(2), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_i_1 : cycloneii_lcell_ff port map ( regout=>i(1), datain=>d(1), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_i_0 : cycloneii_lcell_ff port map ( regout=>i(0), datain=>d(0), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_h_7 : cycloneii_lcell_ff port map ( regout=>h(7), datain=>i(7), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_h_6 : cycloneii_lcell_ff port map ( regout=>h(6), datain=>i(6), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_h_5 : cycloneii_lcell_ff port map ( regout=>h(5), datain=>i(5), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_h_4 : cycloneii_lcell_ff port map ( regout=>h(4), datain=>i(4), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_h_3 : cycloneii_lcell_ff port map ( regout=>h(3), datain=>i(3), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_h_2 : cycloneii_lcell_ff port map ( regout=>h(2), datain=>i(2), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_h_1 : cycloneii_lcell_ff port map ( regout=>h(1), datain=>i(1), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_h_0 : cycloneii_lcell_ff port map ( regout=>h(0), datain=>i(0), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_g_7 : cycloneii_lcell_ff port map ( regout=>g(7), datain=>f(7), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_g_6 : cycloneii_lcell_ff port map ( regout=>g(6), datain=>f(6), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_g_5 : cycloneii_lcell_ff port map ( regout=>g(5), datain=>f(5), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_g_4 : cycloneii_lcell_ff port map ( regout=>g(4), datain=>f(4), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_g_3 : cycloneii_lcell_ff port map ( regout=>g(3), datain=>f(3), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_g_2 : cycloneii_lcell_ff port map ( regout=>g(2), datain=>f(2), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_g_1 : cycloneii_lcell_ff port map ( regout=>g(1), datain=>f(1), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_g_0 : cycloneii_lcell_ff port map ( regout=>g(0), datain=>f(0), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_first_cw_2 : cycloneii_lcell_ff port map ( regout=>first_cw(2), 
      datain=>stage1_wNw_2, sdata=>stage1_nNe_2, clk=>p_i_clock, ena=>
      validBit_3, sload=>nx47369z1);
   reg_first_cw_1 : cycloneii_lcell_ff port map ( regout=>first_cw(1), 
      datain=>nx47369z1, clk=>p_i_clock, ena=>validBit_3);
   reg_first_cw_0 : cycloneii_lcell_ff port map ( regout=>first_cw(0), 
      datain=>first_cw_9n1ss1_0, clk=>p_i_clock, ena=>validBit_3);
   reg_final_dir_2 : cycloneii_lcell_ff port map ( regout=>final_dir(2), 
      datain=>first_cw(2), sdata=>second_cw(2), clk=>p_i_clock, ena=>
      nx35772z1, sload=>nx35772z2);
   reg_final_dir_1 : cycloneii_lcell_ff port map ( regout=>final_dir(1), 
      datain=>first_cw(1), sdata=>second_cw(1), clk=>p_i_clock, ena=>
      nx35772z1, sload=>nx35772z2);
   reg_final_dir_0 : cycloneii_lcell_ff port map ( regout=>final_dir(0), 
      datain=>first_cw(0), sdata=>second_cw(0), clk=>p_i_clock, ena=>
      nx35772z1, sload=>nx35772z2);
   reg_f_7 : cycloneii_lcell_ff port map ( regout=>f(7), datain=>e(7), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_f_6 : cycloneii_lcell_ff port map ( regout=>f(6), datain=>e(6), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_f_5 : cycloneii_lcell_ff port map ( regout=>f(5), datain=>e(5), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_f_4 : cycloneii_lcell_ff port map ( regout=>f(4), datain=>e(4), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_f_3 : cycloneii_lcell_ff port map ( regout=>f(3), datain=>e(3), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_f_2 : cycloneii_lcell_ff port map ( regout=>f(2), datain=>e(2), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_f_1 : cycloneii_lcell_ff port map ( regout=>f(1), datain=>e(1), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_f_0 : cycloneii_lcell_ff port map ( regout=>f(0), datain=>e(0), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_e_7 : cycloneii_lcell_ff port map ( regout=>e(7), datain=>
      p_i_pixel(7), clk=>p_i_clock, ena=>nx20492z3);
   reg_e_6 : cycloneii_lcell_ff port map ( regout=>e(6), datain=>
      p_i_pixel(6), clk=>p_i_clock, ena=>nx20492z3);
   reg_e_5 : cycloneii_lcell_ff port map ( regout=>e(5), datain=>
      p_i_pixel(5), clk=>p_i_clock, ena=>nx20492z3);
   reg_e_4 : cycloneii_lcell_ff port map ( regout=>e(4), datain=>
      p_i_pixel(4), clk=>p_i_clock, ena=>nx20492z3);
   reg_e_3 : cycloneii_lcell_ff port map ( regout=>e(3), datain=>
      p_i_pixel(3), clk=>p_i_clock, ena=>nx20492z3);
   reg_e_2 : cycloneii_lcell_ff port map ( regout=>e(2), datain=>
      p_i_pixel(2), clk=>p_i_clock, ena=>nx20492z3);
   reg_e_1 : cycloneii_lcell_ff port map ( regout=>e(1), datain=>
      p_i_pixel(1), clk=>p_i_clock, ena=>nx20492z3);
   reg_e_0 : cycloneii_lcell_ff port map ( regout=>e(0), datain=>
      p_i_pixel(0), clk=>p_i_clock, ena=>nx20492z3);
   reg_d_7 : cycloneii_lcell_ff port map ( regout=>d(7), datain=>nx36625z1, 
      sdata=>tempStorage_2_7, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(1));
   reg_d_6 : cycloneii_lcell_ff port map ( regout=>d(6), datain=>nx35628z1, 
      sdata=>tempStorage_2_6, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(1));
   reg_d_5 : cycloneii_lcell_ff port map ( regout=>d(5), datain=>nx34631z1, 
      sdata=>tempStorage_2_5, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(1));
   reg_d_4 : cycloneii_lcell_ff port map ( regout=>d(4), datain=>nx33634z1, 
      sdata=>tempStorage_2_4, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(1));
   reg_d_3 : cycloneii_lcell_ff port map ( regout=>d(3), datain=>nx32637z1, 
      sdata=>tempStorage_2_3, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(1));
   reg_d_2 : cycloneii_lcell_ff port map ( regout=>d(2), datain=>nx31640z1, 
      sdata=>tempStorage_2_2, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(1));
   reg_d_1 : cycloneii_lcell_ff port map ( regout=>d(1), datain=>nx30643z1, 
      sdata=>tempStorage_2_1, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(1));
   reg_d_0 : cycloneii_lcell_ff port map ( regout=>d(0), datain=>nx29646z1, 
      sdata=>tempStorage_2_0, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(1));
   reg_c_7 : cycloneii_lcell_ff port map ( regout=>c(7), datain=>nx20492z1, 
      sdata=>tempStorage_2_7, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(0));
   reg_c_6 : cycloneii_lcell_ff port map ( regout=>c(6), datain=>nx21489z1, 
      sdata=>tempStorage_2_6, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(0));
   reg_c_5 : cycloneii_lcell_ff port map ( regout=>c(5), datain=>nx22486z1, 
      sdata=>tempStorage_2_5, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(0));
   reg_c_4 : cycloneii_lcell_ff port map ( regout=>c(4), datain=>nx23483z1, 
      sdata=>tempStorage_2_4, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(0));
   reg_c_3 : cycloneii_lcell_ff port map ( regout=>c(3), datain=>nx24480z1, 
      sdata=>tempStorage_2_3, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(0));
   reg_c_2 : cycloneii_lcell_ff port map ( regout=>c(2), datain=>nx25477z1, 
      sdata=>tempStorage_2_2, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(0));
   reg_c_1 : cycloneii_lcell_ff port map ( regout=>c(1), datain=>nx26474z1, 
      sdata=>tempStorage_2_1, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(0));
   reg_c_0 : cycloneii_lcell_ff port map ( regout=>c(0), datain=>nx27471z1, 
      sdata=>tempStorage_2_0, clk=>p_i_clock, ena=>nx20492z3, sload=>
      state(0));
   reg_b_d1_9 : cycloneii_lcell_ff port map ( regout=>b_d1(9), datain=>
      b_d1_7n4s1(9), clk=>p_i_clock, ena=>validBit_1);
   reg_b_d1_8 : cycloneii_lcell_ff port map ( regout=>b_d1(8), datain=>
      b_d1_7n4s1(0), clk=>p_i_clock, ena=>validBit_1);
   reg_b_d1_7 : cycloneii_lcell_ff port map ( regout=>b_d1(7), datain=>
      b_d1_7n4s1(1), clk=>p_i_clock, ena=>validBit_1);
   reg_b_d1_6 : cycloneii_lcell_ff port map ( regout=>b_d1(6), datain=>
      b_d1_7n4s1(2), clk=>p_i_clock, ena=>validBit_1);
   reg_b_d1_5 : cycloneii_lcell_ff port map ( regout=>b_d1(5), datain=>
      b_d1_7n4s1(3), clk=>p_i_clock, ena=>validBit_1);
   reg_b_d1_4 : cycloneii_lcell_ff port map ( regout=>b_d1(4), datain=>
      b_d1_7n4s1(4), clk=>p_i_clock, ena=>validBit_1);
   reg_b_d1_3 : cycloneii_lcell_ff port map ( regout=>b_d1(3), datain=>
      b_d1_7n4s1(5), clk=>p_i_clock, ena=>validBit_1);
   reg_b_d1_2 : cycloneii_lcell_ff port map ( regout=>b_d1(2), datain=>
      b_d1_7n4s1(6), clk=>p_i_clock, ena=>validBit_1);
   reg_b_d1_1 : cycloneii_lcell_ff port map ( regout=>b_d1(1), datain=>
      b_d1_7n4s1(7), clk=>p_i_clock, ena=>validBit_1);
   reg_b_d1_0 : cycloneii_lcell_ff port map ( regout=>b_d1(0), datain=>
      b_d1_7n4s1(8), clk=>p_i_clock, ena=>validBit_1);
   reg_b_7 : cycloneii_lcell_ff port map ( regout=>b(7), datain=>c(7), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_b_6 : cycloneii_lcell_ff port map ( regout=>b(6), datain=>c(6), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_b_5 : cycloneii_lcell_ff port map ( regout=>b(5), datain=>c(5), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_b_4 : cycloneii_lcell_ff port map ( regout=>b(4), datain=>c(4), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_b_3 : cycloneii_lcell_ff port map ( regout=>b(3), datain=>c(3), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_b_2 : cycloneii_lcell_ff port map ( regout=>b(2), datain=>c(2), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_b_1 : cycloneii_lcell_ff port map ( regout=>b(1), datain=>c(1), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_b_0 : cycloneii_lcell_ff port map ( regout=>b(0), datain=>c(0), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_a_7 : cycloneii_lcell_ff port map ( regout=>a(7), datain=>b(7), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_a_6 : cycloneii_lcell_ff port map ( regout=>a(6), datain=>b(6), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_a_5 : cycloneii_lcell_ff port map ( regout=>a(5), datain=>b(5), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_a_4 : cycloneii_lcell_ff port map ( regout=>a(4), datain=>b(4), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_a_3 : cycloneii_lcell_ff port map ( regout=>a(3), datain=>b(3), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_a_2 : cycloneii_lcell_ff port map ( regout=>a(2), datain=>b(2), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_a_1 : cycloneii_lcell_ff port map ( regout=>a(1), datain=>b(1), clk=>
      p_i_clock, ena=>nx20492z3);
   reg_a_0 : cycloneii_lcell_ff port map ( regout=>a(0), datain=>b(0), clk=>
      p_i_clock, ena=>nx20492z3);
   ix51677z52957 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f2(0), dataa=>g(0), datab=>a(0), datac=>
      nx51677z11, datad=>nx51677z20);
   ix51677z52958 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z20, dataa=>c(0), datab=>nx51677z11, datac
      =>nx51677z13, datad=>e(0));
   ix51677z52955 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f2(1), dataa=>g(1), datab=>a(1), datac=>
      nx51677z11, datad=>nx51677z19);
   ix51677z52956 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z19, dataa=>c(1), datab=>nx51677z11, datac
      =>nx51677z13, datad=>e(1));
   ix51677z52953 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f2(2), dataa=>g(2), datab=>a(2), datac=>
      nx51677z11, datad=>nx51677z18);
   ix51677z52954 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z18, dataa=>c(2), datab=>nx51677z11, datac
      =>nx51677z13, datad=>e(2));
   ix51677z52951 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f2(3), dataa=>g(3), datab=>a(3), datac=>
      nx51677z11, datad=>nx51677z17);
   ix51677z52952 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z17, dataa=>c(3), datab=>nx51677z11, datac
      =>nx51677z13, datad=>e(3));
   ix51677z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f2(4), dataa=>g(4), datab=>a(4), datac=>
      nx51677z11, datad=>nx51677z16);
   ix51677z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z16, dataa=>c(4), datab=>nx51677z11, datac
      =>nx51677z13, datad=>e(4));
   ix51677z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f2(5), dataa=>g(5), datab=>a(5), datac=>
      nx51677z11, datad=>nx51677z15);
   ix51677z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z15, dataa=>c(5), datab=>nx51677z11, datac
      =>nx51677z13, datad=>e(5));
   ix51677z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f2(6), dataa=>g(6), datab=>a(6), datac=>
      nx51677z11, datad=>nx51677z14);
   ix51677z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z14, dataa=>c(6), datab=>nx51677z11, datac
      =>nx51677z13, datad=>e(6));
   ix51677z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f2(7), dataa=>g(7), datab=>a(7), datac=>
      nx51677z11, datad=>nx51677z12);
   ix51677z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z12, dataa=>c(7), datab=>nx51677z11, datac
      =>nx51677z13, datad=>e(7));
   ix51677z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f1(0), dataa=>d(0), datab=>b(0), datac=>
      nx51677z1, datad=>nx51677z10);
   ix51677z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z10, dataa=>h(0), datab=>nx51677z1, datac
      =>nx51677z3, datad=>f(0));
   ix51677z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f1(1), dataa=>d(1), datab=>b(1), datac=>
      nx51677z1, datad=>nx51677z9);
   ix51677z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z9, dataa=>h(1), datab=>nx51677z1, datac=>
      nx51677z3, datad=>f(1));
   ix51677z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f1(2), dataa=>d(2), datab=>b(2), datac=>
      nx51677z1, datad=>nx51677z8);
   ix51677z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z8, dataa=>h(2), datab=>nx51677z1, datac=>
      nx51677z3, datad=>f(2));
   ix51677z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f1(3), dataa=>d(3), datab=>b(3), datac=>
      nx51677z1, datad=>nx51677z7);
   ix51677z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z7, dataa=>h(3), datab=>nx51677z1, datac=>
      nx51677z3, datad=>f(3));
   ix51677z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f1(4), dataa=>d(4), datab=>b(4), datac=>
      nx51677z1, datad=>nx51677z6);
   ix51677z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z6, dataa=>h(4), datab=>nx51677z1, datac=>
      nx51677z3, datad=>f(4));
   ix51677z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f1(5), dataa=>d(5), datab=>b(5), datac=>
      nx51677z1, datad=>nx51677z5);
   ix51677z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z5, dataa=>h(5), datab=>nx51677z1, datac=>
      nx51677z3, datad=>f(5));
   ix51677z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f1(6), dataa=>d(6), datab=>b(6), datac=>
      nx51677z1, datad=>nx51677z4);
   ix51677z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z4, dataa=>h(6), datab=>nx51677z1, datac=>
      nx51677z3, datad=>f(6));
   ix51677z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"afc0") 
       port map ( combout=>r2_6n3s1f1(7), dataa=>d(7), datab=>b(7), datac=>
      nx51677z1, datad=>nx51677z2);
   ix51677z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx51677z2, dataa=>h(7), datab=>nx51677z1, datac=>
      nx51677z3, datad=>f(7));
   ix17322z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx17322z4, dataa=>nx17322z1, datab=>p_nrst_int);
   ix20492z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx20492z3, dataa=>p_i_valid, datab=>p_nrst_int);
   ix40914z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx40914z1, dataa=>vBit(1), datab=>p_nrst_int);
   ix51677z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"0b0b") 
       port map ( combout=>nx51677z11, dataa=>validBit_1, datab=>validBit_2, 
      datac=>validBit_0);
   ix11673z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx11673z5, dataa=>p_o_row_7_EXMPLR678, datab=>
      p_o_row_6_EXMPLR679, datac=>p_o_row_1_EXMPLR684, datad=>
      p_o_row_0_EXMPLR685);
   ix17322z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx17322z3, dataa=>col(1), datab=>col(2), datac=>
      col(3), datad=>col(4));
   ix17322z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx17322z2, dataa=>col(0), datab=>col(5), datac=>
      col(6), datad=>col(7));
   ix11673z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx11673z3, dataa=>col(1), datab=>col(2), datac=>
      col(5), datad=>col(6));
   ix6165z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx6165z2, dataa=>r17_7, datab=>r17_8);
   ix20419z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx20419z2, dataa=>p_o_row_7_EXMPLR678, datab=>
      p_o_row_6_EXMPLR679, datac=>p_o_row_1_EXMPLR684, datad=>nx11673z4);
   ix11673z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx11673z4, dataa=>p_o_row_5_EXMPLR680, datab=>
      p_o_row_4_EXMPLR681, datac=>p_o_row_3_EXMPLR682, datad=>
      p_o_row_2_EXMPLR683);
   ix6165z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe00") 
       port map ( combout=>nx6165z1, dataa=>r17_9, datab=>r17_10, datac=>
      r17_11, datad=>p_o_valid_EXMPLR677);
   ix11673z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx11673z2, dataa=>col(3), datab=>col(4), datac=>
      col(7), datad=>nx11673z3);
   ix51677z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e0e") 
       port map ( combout=>nx51677z3, dataa=>validBit_1, datab=>validBit_2, 
      datac=>validBit_0);
   ix51677z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f4f4") 
       port map ( combout=>nx51677z1, dataa=>validBit_1, datab=>validBit_2, 
      datac=>validBit_0);
   ix36625z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx36625z1, dataa=>state(2), datab=>
      tempStorage_1_7, datac=>tempStorage_0_7);
   ix35628z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx35628z1, dataa=>state(2), datab=>
      tempStorage_1_6, datac=>tempStorage_0_6);
   ix34631z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx34631z1, dataa=>state(2), datab=>
      tempStorage_1_5, datac=>tempStorage_0_5);
   ix33634z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx33634z1, dataa=>state(2), datab=>
      tempStorage_1_4, datac=>tempStorage_0_4);
   ix32637z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx32637z1, dataa=>state(2), datab=>
      tempStorage_1_3, datac=>tempStorage_0_3);
   ix31640z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx31640z1, dataa=>state(2), datab=>
      tempStorage_1_2, datac=>tempStorage_0_2);
   ix30643z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx30643z1, dataa=>state(2), datab=>
      tempStorage_1_1, datac=>tempStorage_0_1);
   ix29646z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx29646z1, dataa=>state(2), datab=>
      tempStorage_1_0, datac=>tempStorage_0_0);
   ix20492z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx20492z1, dataa=>nx20492z2, datab=>
      tempStorage_1_7, datac=>tempStorage_0_7);
   ix21489z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx21489z1, dataa=>nx20492z2, datab=>
      tempStorage_1_6, datac=>tempStorage_0_6);
   ix22486z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx22486z1, dataa=>nx20492z2, datab=>
      tempStorage_1_5, datac=>tempStorage_0_5);
   ix23483z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx23483z1, dataa=>nx20492z2, datab=>
      tempStorage_1_4, datac=>tempStorage_0_4);
   ix24480z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx24480z1, dataa=>nx20492z2, datab=>
      tempStorage_1_3, datac=>tempStorage_0_3);
   ix25477z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx25477z1, dataa=>nx20492z2, datab=>
      tempStorage_1_2, datac=>tempStorage_0_2);
   ix26474z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx26474z1, dataa=>nx20492z2, datab=>
      tempStorage_1_1, datac=>tempStorage_0_1);
   ix27471z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx27471z1, dataa=>nx20492z2, datab=>
      tempStorage_1_0, datac=>tempStorage_0_0);
   ix7740z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>we(0), dataa=>p_i_valid, datab=>nx20492z2);
   ix62017z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>we(1), dataa=>p_i_valid, datab=>state(0));
   ix64834z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>we(2), dataa=>p_i_valid, datab=>state(2));
   ix11673z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"111f") 
       port map ( combout=>nx11673z1, dataa=>col(0), datab=>nx11673z2, datac
      =>nx11673z4, datad=>nx11673z5);
   ix20419z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx20419z1, dataa=>p_i_valid, datab=>nx11673z2, 
      datac=>nx20419z2);
   ix27953z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0404") 
       port map ( combout=>nx27953z1, dataa=>validBit_1, datab=>validBit_2, 
      datac=>validBit_0);
   ix13424z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx13424z2, dataa=>validBit_1, datab=>validBit_0);
   ix6165z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fcf8") 
       port map ( combout=>p_o_edge_EXMPLR699, dataa=>r17_12, datab=>
      p_o_valid_EXMPLR677, datac=>nx6165z1, datad=>nx6165z2);
   ix8431z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>x_r3_7n3s1f1(7), dataa=>r5(7), datab=>x_r5(7), 
      datac=>validBit_2);
   ix8431z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>x_r3_7n3s1f1(6), dataa=>r5(6), datab=>x_r5(6), 
      datac=>validBit_2);
   ix8431z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>x_r3_7n3s1f1(5), dataa=>r5(5), datab=>x_r5(5), 
      datac=>validBit_2);
   ix8431z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>x_r3_7n3s1f1(4), dataa=>r5(4), datab=>x_r5(4), 
      datac=>validBit_2);
   ix8431z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>x_r3_7n3s1f1(3), dataa=>r5(3), datab=>x_r5(3), 
      datac=>validBit_2);
   ix8431z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>x_r3_7n3s1f1(2), dataa=>r5(2), datab=>x_r5(2), 
      datac=>validBit_2);
   ix8431z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>x_r3_7n3s1f1(1), dataa=>r5(1), datab=>x_r5(1), 
      datac=>validBit_2);
   ix8431z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>x_r3_7n3s1f1(0), dataa=>r5(0), datab=>x_r5(0), 
      datac=>validBit_2);
   ix7951z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx7951z2, dataa=>validBit_3, datab=>validBit_1, 
      datac=>validBit_2, datad=>validBit_0);
   ix34104z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx34104z1, dataa=>validBit_4, datab=>validBit_3, 
      datac=>validBit_1, datad=>validBit_2);
   ix54873z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx54873z1, dataa=>validBit_3, datab=>validBit_1, 
      datac=>validBit_2);
   ix56415z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx56415z1, dataa=>validBit_1, datab=>validBit_2);
   ix65254z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx65254z1, dataa=>validBit_5, datab=>validBit_4, 
      datac=>validBit_3, datad=>validBit_2);
   ix58464z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx58464z1, dataa=>validBit_4, datab=>validBit_3, 
      datac=>validBit_2);
   ix16422z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx16422z1, dataa=>validBit_3, datab=>validBit_2);
   ix35772z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx35772z1, dataa=>validBit_6, datab=>validBit_5, 
      datac=>validBit_3);
   ix64999z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx64999z1, dataa=>validBit_5, datab=>validBit_3);
   ix45375z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>first_cw_9n1ss1_0, dataa=>stage1_wNw_0, datab=>
      nx47369z1);
   ix1457z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>second_cw_9n2ss1_0, dataa=>stage1_eSe_2, datab=>
      nx64999z2);
   ix8159z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>p_o_dir(0), dataa=>final_dir(0), datab=>
      p_o_edge_EXMPLR699);
   ix7162z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>p_o_dir(1), dataa=>final_dir(1), datab=>
      p_o_edge_EXMPLR699);
   ix6165z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>p_o_dir(2), dataa=>final_dir(2), datab=>
      p_o_edge_EXMPLR699);
   ix17322z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2000") 
       port map ( combout=>nx17322z1, dataa=>vBit(2), datab=>p_i_valid, 
      datac=>nx17322z2, datad=>nx17322z3);
   ix51677z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"f1f1") 
       port map ( combout=>nx51677z13, dataa=>validBit_1, datab=>validBit_2, 
      datac=>validBit_0);
end main_unfold_1777 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity top_kirsch is 
   port (
      nrst : IN std_logic ;
      clk : IN std_logic ;
      rxflex : IN std_logic ;
      txflex : OUT std_logic ;
      o_sevenseg : OUT std_logic_vector (15 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_nrst : OUT std_logic ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (16 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_sevenseg_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_3 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_4 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_5 : OUT std_logic_vector (7 DOWNTO 0)) ;
end top_kirsch ;

architecture main of top_kirsch is 
   component uw_uart
      port (
         clk : IN std_logic ;
         rst : IN std_logic ;
         kirschout : IN std_logic ;
         kirschdir : IN std_logic_vector (2 DOWNTO 0) ;
         o_valid : IN std_logic ;
         i_mode : IN std_logic_vector (1 DOWNTO 0) ;
         datain : OUT std_logic_vector (7 DOWNTO 0) ;
         o_pixavail : OUT std_logic ;
         rxflex : IN std_logic ;
         txflex : OUT std_logic ;
         p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
         p_NOT_rtlcn2 : OUT std_logic ;
         p_nrst_int : IN std_logic ;
         px538 : IN std_logic) ;
   end component ;
   component kirsch_notri
      port (
         p_o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
         p_o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
         p_i_reset : IN std_logic ;
         p_o_edge : OUT std_logic ;
         p_o_valid : OUT std_logic ;
         p_o_row : OUT std_logic_vector (7 DOWNTO 0) ;
         p_i_valid : IN std_logic ;
         p_i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
         p_i_clock : IN std_logic ;
         p_nrst_int : IN std_logic ;
         px538 : OUT std_logic) ;
   end component ;
   signal nrst_EXMPLR716, clk_EXMPLR717, rxflex_EXMPLR718: std_logic ;
   
   signal o_mode_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal debug_led_red_EXMPLR810: std_logic_vector (16 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR811: std_logic_vector (5 DOWNTO 0) ;
   
   signal pixavail: std_logic ;
   
   signal pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid, kirschout: std_logic ;
   
   signal dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal rowcount: std_logic_vector (7 DOWNTO 0) ;
   
   signal nrst_int, clk_int, rxflex_int, txflex_EXMPLR742, 
      o_sevenseg_15_EXMPLR743: std_logic ;
   
   signal o_sevenseg_EXMPLR812: std_logic_vector (14 DOWNTO 0) ;
   
   signal o_mode_EXMPLR813: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_nrst_EXMPLR761, debug_sevenseg_0_7_EXMPLR762: std_logic ;
   
   signal debug_sevenseg_0_EXMPLR814: std_logic_vector (6 DOWNTO 0) ;
   
   signal debug_sevenseg_1_7_EXMPLR770: std_logic ;
   
   signal debug_sevenseg_1_EXMPLR815: std_logic_vector (6 DOWNTO 0) ;
   
   signal debug_sevenseg_2_7_EXMPLR778: std_logic ;
   
   signal debug_sevenseg_2_EXMPLR816: std_logic_vector (6 DOWNTO 0) ;
   
   signal debug_sevenseg_3_7_EXMPLR786: std_logic ;
   
   signal debug_sevenseg_3_EXMPLR817: std_logic_vector (6 DOWNTO 0) ;
   
   signal debug_sevenseg_4_7_EXMPLR794: std_logic ;
   
   signal debug_sevenseg_4_EXMPLR818: std_logic_vector (6 DOWNTO 0) ;
   
   signal debug_sevenseg_5_7_EXMPLR802: std_logic ;
   
   signal debug_sevenseg_5_EXMPLR819: std_logic_vector (6 DOWNTO 0) ;
   
   signal o_nrst_dup0, debug_num_0_0, o_sevenseg_dup0_7, nx59584z1, 
      nx60581z1, nx61578z1, nx63572z1, nx25683z1, nx26680z1, nx27677z1, 
      nx29671z1, nx57590z1, nx58587z1, nx62575z1, nx30z1, nx1027z1, 
      nx28674z1, Tx_Reg_14n6ss1_0_dup_4, NOT_rtlcn2_dup_5, nx41851z1, 
      nx42848z1, nx43845z1, nx44842z1, nx45839z1, nx46836z1, nx47833z1, 
      nx49827z1, nx50824z1, nx62540z1, nx63537z1, nx64534z1, nx65531z1, 
      nx992z1, nx21351z1, nx21351z2, nx35935z1: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   nrst_EXMPLR716 <= nrst ;
   clk_EXMPLR717 <= clk ;
   rxflex_EXMPLR718 <= rxflex ;
   txflex <= txflex_EXMPLR742 ;
   o_sevenseg(15) <= o_sevenseg_15_EXMPLR743 ;
   o_sevenseg(14) <= o_sevenseg_EXMPLR812(14) ;
   o_sevenseg(13) <= o_sevenseg_EXMPLR812(13) ;
   o_sevenseg(12) <= o_sevenseg_EXMPLR812(12) ;
   o_sevenseg(11) <= o_sevenseg_EXMPLR812(11) ;
   o_sevenseg(10) <= o_sevenseg_EXMPLR812(10) ;
   o_sevenseg(9) <= o_sevenseg_EXMPLR812(9) ;
   o_sevenseg(8) <= o_sevenseg_EXMPLR812(8) ;
   o_sevenseg(7) <= o_sevenseg_EXMPLR812(7) ;
   o_sevenseg(6) <= o_sevenseg_EXMPLR812(6) ;
   o_sevenseg(5) <= o_sevenseg_EXMPLR812(5) ;
   o_sevenseg(4) <= o_sevenseg_EXMPLR812(4) ;
   o_sevenseg(3) <= o_sevenseg_EXMPLR812(3) ;
   o_sevenseg(2) <= o_sevenseg_EXMPLR812(2) ;
   o_sevenseg(1) <= o_sevenseg_EXMPLR812(1) ;
   o_sevenseg(0) <= o_sevenseg_EXMPLR812(0) ;
   o_mode(1) <= o_mode_EXMPLR813(1) ;
   o_mode(0) <= o_mode_EXMPLR813(0) ;
   o_nrst <= o_nrst_EXMPLR761 ;
   debug_led_red(16) <= debug_led_red_EXMPLR810(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR810(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR810(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR810(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR810(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR810(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR810(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR810(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR810(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR810(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR810(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR810(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR810(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR810(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR810(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR810(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR810(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR811(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR811(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR811(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR811(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR811(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR811(0) ;
   debug_sevenseg_0(7) <= debug_sevenseg_0_7_EXMPLR762 ;
   debug_sevenseg_0(6) <= debug_sevenseg_0_EXMPLR814(6) ;
   debug_sevenseg_0(5) <= debug_sevenseg_0_EXMPLR814(5) ;
   debug_sevenseg_0(4) <= debug_sevenseg_0_EXMPLR814(4) ;
   debug_sevenseg_0(3) <= debug_sevenseg_0_EXMPLR814(3) ;
   debug_sevenseg_0(2) <= debug_sevenseg_0_EXMPLR814(2) ;
   debug_sevenseg_0(1) <= debug_sevenseg_0_EXMPLR814(1) ;
   debug_sevenseg_0(0) <= debug_sevenseg_0_EXMPLR814(0) ;
   debug_sevenseg_1(7) <= debug_sevenseg_1_7_EXMPLR770 ;
   debug_sevenseg_1(6) <= debug_sevenseg_1_EXMPLR815(6) ;
   debug_sevenseg_1(5) <= debug_sevenseg_1_EXMPLR815(5) ;
   debug_sevenseg_1(4) <= debug_sevenseg_1_EXMPLR815(4) ;
   debug_sevenseg_1(3) <= debug_sevenseg_1_EXMPLR815(3) ;
   debug_sevenseg_1(2) <= debug_sevenseg_1_EXMPLR815(2) ;
   debug_sevenseg_1(1) <= debug_sevenseg_1_EXMPLR815(1) ;
   debug_sevenseg_1(0) <= debug_sevenseg_1_EXMPLR815(0) ;
   debug_sevenseg_2(7) <= debug_sevenseg_2_7_EXMPLR778 ;
   debug_sevenseg_2(6) <= debug_sevenseg_2_EXMPLR816(6) ;
   debug_sevenseg_2(5) <= debug_sevenseg_2_EXMPLR816(5) ;
   debug_sevenseg_2(4) <= debug_sevenseg_2_EXMPLR816(4) ;
   debug_sevenseg_2(3) <= debug_sevenseg_2_EXMPLR816(3) ;
   debug_sevenseg_2(2) <= debug_sevenseg_2_EXMPLR816(2) ;
   debug_sevenseg_2(1) <= debug_sevenseg_2_EXMPLR816(1) ;
   debug_sevenseg_2(0) <= debug_sevenseg_2_EXMPLR816(0) ;
   debug_sevenseg_3(7) <= debug_sevenseg_3_7_EXMPLR786 ;
   debug_sevenseg_3(6) <= debug_sevenseg_3_EXMPLR817(6) ;
   debug_sevenseg_3(5) <= debug_sevenseg_3_EXMPLR817(5) ;
   debug_sevenseg_3(4) <= debug_sevenseg_3_EXMPLR817(4) ;
   debug_sevenseg_3(3) <= debug_sevenseg_3_EXMPLR817(3) ;
   debug_sevenseg_3(2) <= debug_sevenseg_3_EXMPLR817(2) ;
   debug_sevenseg_3(1) <= debug_sevenseg_3_EXMPLR817(1) ;
   debug_sevenseg_3(0) <= debug_sevenseg_3_EXMPLR817(0) ;
   debug_sevenseg_4(7) <= debug_sevenseg_4_7_EXMPLR794 ;
   debug_sevenseg_4(6) <= debug_sevenseg_4_EXMPLR818(6) ;
   debug_sevenseg_4(5) <= debug_sevenseg_4_EXMPLR818(5) ;
   debug_sevenseg_4(4) <= debug_sevenseg_4_EXMPLR818(4) ;
   debug_sevenseg_4(3) <= debug_sevenseg_4_EXMPLR818(3) ;
   debug_sevenseg_4(2) <= debug_sevenseg_4_EXMPLR818(2) ;
   debug_sevenseg_4(1) <= debug_sevenseg_4_EXMPLR818(1) ;
   debug_sevenseg_4(0) <= debug_sevenseg_4_EXMPLR818(0) ;
   debug_sevenseg_5(7) <= debug_sevenseg_5_7_EXMPLR802 ;
   debug_sevenseg_5(6) <= debug_sevenseg_5_EXMPLR819(6) ;
   debug_sevenseg_5(5) <= debug_sevenseg_5_EXMPLR819(5) ;
   debug_sevenseg_5(4) <= debug_sevenseg_5_EXMPLR819(4) ;
   debug_sevenseg_5(3) <= debug_sevenseg_5_EXMPLR819(3) ;
   debug_sevenseg_5(2) <= debug_sevenseg_5_EXMPLR819(2) ;
   debug_sevenseg_5(1) <= debug_sevenseg_5_EXMPLR819(1) ;
   debug_sevenseg_5(0) <= debug_sevenseg_5_EXMPLR819(0) ;
   u_uw_uart : uw_uart port map ( clk=>clk_int, rst=>o_nrst_dup0, kirschout
      =>kirschout, kirschdir(2)=>dir(2), kirschdir(1)=>dir(1), kirschdir(0)
      =>dir(0), o_valid=>o_valid, i_mode(1)=>o_mode_dup0(1), i_mode(0)=>
      o_mode_dup0(0), datain(7)=>pixel(7), datain(6)=>pixel(6), datain(5)=>
      pixel(5), datain(4)=>pixel(4), datain(3)=>pixel(3), datain(2)=>
      pixel(2), datain(1)=>pixel(1), datain(0)=>pixel(0), o_pixavail=>
      pixavail, rxflex=>rxflex_int, txflex=>DANGLING(0), p_Tx_Reg_14n6ss1_0
      =>Tx_Reg_14n6ss1_0_dup_4, p_NOT_rtlcn2=>NOT_rtlcn2_dup_5, p_nrst_int=>
      nrst_int, px538=>nx35935z1);
   u_kirsch : kirsch_notri port map ( p_o_mode(1)=>o_mode_dup0(1), 
      p_o_mode(0)=>o_mode_dup0(0), p_o_dir(2)=>dir(2), p_o_dir(1)=>dir(1), 
      p_o_dir(0)=>dir(0), p_i_reset=>o_nrst_dup0, p_o_edge=>kirschout, 
      p_o_valid=>o_valid, p_o_row(7)=>rowcount(7), p_o_row(6)=>rowcount(6), 
      p_o_row(5)=>rowcount(5), p_o_row(4)=>rowcount(4), p_o_row(3)=>
      rowcount(3), p_o_row(2)=>rowcount(2), p_o_row(1)=>rowcount(1), 
      p_o_row(0)=>rowcount(0), p_i_valid=>pixavail, p_i_pixel(7)=>pixel(7), 
      p_i_pixel(6)=>pixel(6), p_i_pixel(5)=>pixel(5), p_i_pixel(4)=>pixel(4), 
      p_i_pixel(3)=>pixel(3), p_i_pixel(2)=>pixel(2), p_i_pixel(1)=>pixel(1), 
      p_i_pixel(0)=>pixel(0), p_i_clock=>clk_int, p_nrst_int=>nrst_int, 
      px538=>nx35935z1);
   o_nrst_dup0 <= NOT nrst_int;
   debug_num_0_0 <= '0';
   o_sevenseg_dup0_7 <= '1';
   nx21351z1 <= NOT nx21351z2;
   u_kirsch_debug_led_red_triBus3_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(9), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(8), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(7), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(6), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(5), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(4), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(3), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(2), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_16 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(16), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(15), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(14), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(13), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(12), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(11), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(10), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(1), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR810(0), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_grn_triBus4_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR811(5), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_grn_triBus4_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR811(4), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_grn_triBus4_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR811(3), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_grn_triBus4_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR811(2), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_grn_triBus4_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR811(1), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_grn_triBus4_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR811(0), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   rxflex_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>rxflex_int, padio=>rxflex_EXMPLR718);
   reg_out_txflex_obuf : cycloneii_lcell_ff port map ( regout=>nx21351z2, 
      datain=>Tx_Reg_14n6ss1_0_dup_4, clk=>clk_int, ena=>NOT_rtlcn2_dup_5, 
      aclr=>o_nrst_dup0);
   reg_out_o_sevenseg_obuf_9 : cycloneii_lcell_ff port map ( regout=>
      nx50824z1, datain=>nx1027z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_8 : cycloneii_lcell_ff port map ( regout=>
      nx49827z1, datain=>nx30z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_6 : cycloneii_lcell_ff port map ( regout=>
      nx47833z1, datain=>nx63572z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_5 : cycloneii_lcell_ff port map ( regout=>
      nx46836z1, datain=>nx62575z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_4 : cycloneii_lcell_ff port map ( regout=>
      nx45839z1, datain=>nx61578z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_3 : cycloneii_lcell_ff port map ( regout=>
      nx44842z1, datain=>nx60581z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_2 : cycloneii_lcell_ff port map ( regout=>
      nx43845z1, datain=>nx59584z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_14 : cycloneii_lcell_ff port map ( regout=>
      nx992z1, datain=>nx29671z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_13 : cycloneii_lcell_ff port map ( regout=>
      nx65531z1, datain=>nx28674z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_12 : cycloneii_lcell_ff port map ( regout=>
      nx64534z1, datain=>nx27677z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_11 : cycloneii_lcell_ff port map ( regout=>
      nx63537z1, datain=>nx26680z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_10 : cycloneii_lcell_ff port map ( regout=>
      nx62540z1, datain=>nx25683z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_1 : cycloneii_lcell_ff port map ( regout=>
      nx42848z1, datain=>nx58587z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_0 : cycloneii_lcell_ff port map ( regout=>
      nx41851z1, datain=>nx57590z1, clk=>clk_int);
   o_sevenseg_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(7), datain=>o_sevenseg_dup0_7
   );
   o_sevenseg_obuf_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_15_EXMPLR743, datain=>o_sevenseg_dup0_7
   );
   o_nrst_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_nrst_EXMPLR761, datain=>o_nrst_dup0);
   o_mode_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR813(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR813(0), datain=>o_mode_dup0(0));
   nrst_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>nrst_int, padio=>nrst_EXMPLR716);
   ix21351z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>txflex_EXMPLR742, datain=>nx21351z1);
   ix992z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(14), datain=>nx992z1);
   ix65531z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(13), datain=>nx65531z1);
   ix64534z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(12), datain=>nx64534z1);
   ix63537z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(11), datain=>nx63537z1);
   ix62540z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(10), datain=>nx62540z1);
   ix50824z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(9), datain=>nx50824z1);
   ix49827z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(8), datain=>nx49827z1);
   ix47833z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(6), datain=>nx47833z1);
   ix46836z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(5), datain=>nx46836z1);
   ix45839z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(4), datain=>nx45839z1);
   ix44842z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(3), datain=>nx44842z1);
   ix43845z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(2), datain=>nx43845z1);
   ix42848z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(1), datain=>nx42848z1);
   ix41851z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR812(0), datain=>nx41851z1);
   debug_sevenseg_5_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_7_EXMPLR802, datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_5_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR819(6), datain=>
      debug_num_0_0);
   debug_sevenseg_5_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR819(5), datain=>
      debug_num_0_0);
   debug_sevenseg_5_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR819(4), datain=>
      debug_num_0_0);
   debug_sevenseg_5_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR819(3), datain=>
      debug_num_0_0);
   debug_sevenseg_5_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR819(2), datain=>
      debug_num_0_0);
   debug_sevenseg_5_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR819(1), datain=>
      debug_num_0_0);
   debug_sevenseg_5_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR819(0), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_4_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_7_EXMPLR794, datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_4_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR818(6), datain=>
      debug_num_0_0);
   debug_sevenseg_4_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR818(5), datain=>
      debug_num_0_0);
   debug_sevenseg_4_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR818(4), datain=>
      debug_num_0_0);
   debug_sevenseg_4_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR818(3), datain=>
      debug_num_0_0);
   debug_sevenseg_4_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR818(2), datain=>
      debug_num_0_0);
   debug_sevenseg_4_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR818(1), datain=>
      debug_num_0_0);
   debug_sevenseg_4_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR818(0), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_3_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_7_EXMPLR786, datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_3_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR817(6), datain=>
      debug_num_0_0);
   debug_sevenseg_3_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR817(5), datain=>
      debug_num_0_0);
   debug_sevenseg_3_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR817(4), datain=>
      debug_num_0_0);
   debug_sevenseg_3_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR817(3), datain=>
      debug_num_0_0);
   debug_sevenseg_3_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR817(2), datain=>
      debug_num_0_0);
   debug_sevenseg_3_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR817(1), datain=>
      debug_num_0_0);
   debug_sevenseg_3_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR817(0), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_2_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_7_EXMPLR778, datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_2_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR816(6), datain=>
      debug_num_0_0);
   debug_sevenseg_2_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR816(5), datain=>
      debug_num_0_0);
   debug_sevenseg_2_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR816(4), datain=>
      debug_num_0_0);
   debug_sevenseg_2_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR816(3), datain=>
      debug_num_0_0);
   debug_sevenseg_2_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR816(2), datain=>
      debug_num_0_0);
   debug_sevenseg_2_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR816(1), datain=>
      debug_num_0_0);
   debug_sevenseg_2_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR816(0), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_1_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_7_EXMPLR770, datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_1_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR815(6), datain=>
      debug_num_0_0);
   debug_sevenseg_1_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR815(5), datain=>
      debug_num_0_0);
   debug_sevenseg_1_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR815(4), datain=>
      debug_num_0_0);
   debug_sevenseg_1_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR815(3), datain=>
      debug_num_0_0);
   debug_sevenseg_1_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR815(2), datain=>
      debug_num_0_0);
   debug_sevenseg_1_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR815(1), datain=>
      debug_num_0_0);
   debug_sevenseg_1_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR815(0), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_0_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_7_EXMPLR762, datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_0_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR814(6), datain=>
      debug_num_0_0);
   debug_sevenseg_0_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR814(5), datain=>
      debug_num_0_0);
   debug_sevenseg_0_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR814(4), datain=>
      debug_num_0_0);
   debug_sevenseg_0_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR814(3), datain=>
      debug_num_0_0);
   debug_sevenseg_0_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR814(2), datain=>
      debug_num_0_0);
   debug_sevenseg_0_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR814(1), datain=>
      debug_num_0_0);
   debug_sevenseg_0_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR814(0), datain=>
      o_sevenseg_dup0_7);
   clk_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clk_int, padio=>clk_EXMPLR717);
   ix28674z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>nx28674z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix1027z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>nx1027z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix30z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>nx30z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix62575z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>nx62575z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix58587z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>nx58587z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix57590z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>nx57590z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix29671z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>nx29671z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix27677z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>nx27677z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix26680z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>nx26680z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix25683z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>nx25683z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix63572z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>nx63572z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix61578z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>nx61578z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix60581z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>nx60581z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix59584z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>nx59584z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
end main ;

