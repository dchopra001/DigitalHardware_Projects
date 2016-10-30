
-- 
-- Definition of  kirsch
-- 
--      Thu Jul 24 07:12:21 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
   signal GND_EXMPLR333, nx1041z1, nx58250z4, nx58250z6, nx58250z8, 
      nx58250z10, nx58250z12, nx58250z14, nx58250z16, nx58250z1, nx57253z1, 
      nx56256z1, nx55259z1, nx54262z1, nx53265z1, nx52268z1, nx51271z1, 
      nx58250z17, nx58250z15, nx58250z13, nx58250z11, nx58250z9, nx58250z7, 
      nx58250z5, nx58250z3, nx58250z2, nx58250z18, nx58250z19: std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z4 ;
   q(5) <= nx58250z6 ;
   q(4) <= nx58250z8 ;
   q(3) <= nx58250z10 ;
   q(2) <= nx58250z12 ;
   q(1) <= nx58250z14 ;
   q(0) <= nx58250z16 ;
   GND_EXMPLR333 <= '0';
   nx58250z2 <= '0';
   nx58250z18 <= '1';
   nx58250z19 <= '1';
   reg_q_7 : stratixii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_6 : stratixii_lcell_ff port map ( regout=>nx58250z4, datain=>
      nx57253z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_5 : stratixii_lcell_ff port map ( regout=>nx58250z6, datain=>
      nx56256z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_4 : stratixii_lcell_ff port map ( regout=>nx58250z8, datain=>
      nx55259z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_3 : stratixii_lcell_ff port map ( regout=>nx58250z10, datain=>
      nx54262z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_2 : stratixii_lcell_ff port map ( regout=>nx58250z12, datain=>
      nx53265z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_1 : stratixii_lcell_ff port map ( regout=>nx58250z14, datain=>
      nx52268z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_0 : stratixii_lcell_ff port map ( regout=>nx58250z16, datain=>
      nx51271z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   ix58250z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx57253z1, cout=>nx58250z3, dataa=>nx58250z2, 
      datad=>nx58250z4, cin=>nx58250z5);
   ix58250z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx56256z1, cout=>nx58250z5, dataa=>nx58250z2, 
      datad=>nx58250z6, cin=>nx58250z7);
   ix58250z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx55259z1, cout=>nx58250z7, dataa=>nx58250z2, 
      datad=>nx58250z8, cin=>nx58250z9);
   ix58250z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx54262z1, cout=>nx58250z9, dataa=>nx58250z2, 
      datad=>nx58250z10, cin=>nx58250z11);
   ix58250z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx53265z1, cout=>nx58250z11, dataa=>nx58250z2, 
      datad=>nx58250z12, cin=>nx58250z13);
   ix58250z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx52268z1, cout=>nx58250z13, dataa=>nx58250z2, 
      datad=>nx58250z14, cin=>nx58250z15);
   ix58250z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx58250z17, datad=>nx58250z18, dataf=>nx58250z19, 
      cin=>GND_EXMPLR333);
   ix58250z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx51271z1, cout=>nx58250z15, datad=>nx58250z16, 
      dataf=>nx58250z2, cin=>nx58250z17);
   ix58250z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx58250z1, datad=>nx1041z1, dataf=>nx58250z2, cin
      =>nx58250z3);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
      cnt_en : IN std_logic) ;
end modgen_counter_8_1 ;

architecture IMPLEMENTATION of modgen_counter_8_1 is 
   signal GND_EXMPLR336, nx57253z3, nx1041z1, nx58250z4, nx58250z6, 
      nx58250z8, nx58250z10, nx58250z12, nx58250z14, nx58250z16, nx58250z1, 
      nx57253z1, nx56256z1, nx55259z1, nx54262z1, nx53265z1, nx52268z1, 
      nx51271z1, nx58250z17, nx58250z15, nx58250z13, nx58250z11, nx58250z9, 
      nx58250z7, nx58250z5, nx58250z3, nx58250z2, nx58250z18, nx58250z19: 
   std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z4 ;
   q(5) <= nx58250z6 ;
   q(4) <= nx58250z8 ;
   q(3) <= nx58250z10 ;
   q(2) <= nx58250z12 ;
   q(1) <= nx58250z14 ;
   q(0) <= nx58250z16 ;
   GND_EXMPLR336 <= '0';
   nx58250z2 <= '0';
   nx58250z18 <= '1';
   nx58250z19 <= '1';
   reg_q_7 : stratixii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_6 : stratixii_lcell_ff port map ( regout=>nx58250z4, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_5 : stratixii_lcell_ff port map ( regout=>nx58250z6, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_4 : stratixii_lcell_ff port map ( regout=>nx58250z8, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_3 : stratixii_lcell_ff port map ( regout=>nx58250z10, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_2 : stratixii_lcell_ff port map ( regout=>nx58250z12, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_1 : stratixii_lcell_ff port map ( regout=>nx58250z14, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_0 : stratixii_lcell_ff port map ( regout=>nx58250z16, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   ix57253z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx57253z3, datae=>sclear, dataf=>cnt_en);
   ix58250z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx57253z1, cout=>nx58250z3, dataa=>nx58250z2, 
      datad=>nx58250z4, cin=>nx58250z5);
   ix58250z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx56256z1, cout=>nx58250z5, dataa=>nx58250z2, 
      datad=>nx58250z6, cin=>nx58250z7);
   ix58250z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx55259z1, cout=>nx58250z7, dataa=>nx58250z2, 
      datad=>nx58250z8, cin=>nx58250z9);
   ix58250z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx54262z1, cout=>nx58250z9, dataa=>nx58250z2, 
      datad=>nx58250z10, cin=>nx58250z11);
   ix58250z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx53265z1, cout=>nx58250z11, dataa=>nx58250z2, 
      datad=>nx58250z12, cin=>nx58250z13);
   ix58250z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>nx52268z1, cout=>nx58250z13, dataa=>nx58250z2, 
      datad=>nx58250z14, cin=>nx58250z15);
   ix58250z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( cout=>nx58250z17, datad=>nx58250z18, dataf=>nx58250z19, 
      cin=>GND_EXMPLR336);
   ix58250z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx51271z1, cout=>nx58250z15, datad=>nx58250z16, 
      dataf=>nx58250z2, cin=>nx58250z17);
   ix58250z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx58250z1, datad=>nx1041z1, dataf=>nx58250z2, cin
      =>nx58250z3);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_8_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8_0 ;

architecture IMPLEMENTATION of add_8_0 is 
   signal nx44952z25, nx44952z22, nx44952z19, nx44952z16, nx44952z13, 
      nx44952z10, nx44952z7, nx44952z4, nx25450z2, nx25450z1: std_logic ;

begin
   nx44952z25 <= '0';
   nx25450z1 <= '0';
   ix98_buf : stratixii_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>cout, datac=>nx25450z1, cin=>nx25450z2);
   ix44952z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(7), cout=>nx25450z2, datad=>a(7), dataf=>b(7), 
      cin=>nx44952z4);
   ix44952z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(6), cout=>nx44952z4, datad=>a(6), dataf=>b(6), 
      cin=>nx44952z7);
   ix44952z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(5), cout=>nx44952z7, datad=>a(5), dataf=>b(5), 
      cin=>nx44952z10);
   ix44952z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(4), cout=>nx44952z10, datad=>a(4), dataf=>b(4), 
      cin=>nx44952z13);
   ix44952z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(3), cout=>nx44952z13, datad=>a(3), dataf=>b(3), 
      cin=>nx44952z16);
   ix44952z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(2), cout=>nx44952z16, datad=>a(2), dataf=>b(2), 
      cin=>nx44952z19);
   ix44952z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(1), cout=>nx44952z19, datad=>a(1), dataf=>b(1), 
      cin=>nx44952z22);
   ix44952z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(0), cout=>nx44952z22, datad=>a(0), dataf=>b(0), 
      cin=>nx44952z25);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_9_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_r5_7 : IN std_logic ;
      p_x_r5_7 : IN std_logic ;
      p_validBit_2 : IN std_logic ;
      p_r5_6 : IN std_logic ;
      p_x_r5_6 : IN std_logic ;
      p_r5_5 : IN std_logic ;
      p_x_r5_5 : IN std_logic ;
      p_r5_4 : IN std_logic ;
      p_x_r5_4 : IN std_logic ;
      p_r5_3 : IN std_logic ;
      p_x_r5_3 : IN std_logic ;
      p_r5_2 : IN std_logic ;
      p_x_r5_2 : IN std_logic ;
      p_r5_1 : IN std_logic ;
      p_x_r5_1 : IN std_logic ;
      p_r5_0 : IN std_logic ;
      p_x_r5_0 : IN std_logic) ;
end add_9_0 ;

architecture IMPLEMENTATION of add_9_0 is 
   signal nx45949z20, nx45949z18, nx45949z16, nx45949z14, nx45949z12, 
      nx45949z10, nx45949z8, nx45949z6, nx45949z4, nx45949z3, nx6441z2, 
      nx6441z1: std_logic ;

begin
   nx45949z20 <= '0';
   nx45949z3 <= '0';
   nx6441z1 <= '0';
   ix45949z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"00000a5f0000ff00") 
       port map ( sumout=>d(6), cout=>nx45949z6, dataa=>p_validBit_2, datac
      =>p_r5_6, datad=>a(6), dataf=>p_x_r5_6, cin=>nx45949z8);
   ix45949z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"00000a5f0000ff00") 
       port map ( sumout=>d(5), cout=>nx45949z8, dataa=>p_validBit_2, datac
      =>p_r5_5, datad=>a(5), dataf=>p_x_r5_5, cin=>nx45949z10);
   ix45949z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"00000a5f0000ff00") 
       port map ( sumout=>d(4), cout=>nx45949z10, dataa=>p_validBit_2, datac
      =>p_r5_4, datad=>a(4), dataf=>p_x_r5_4, cin=>nx45949z12);
   ix45949z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"00000a5f0000ff00") 
       port map ( sumout=>d(3), cout=>nx45949z12, dataa=>p_validBit_2, datac
      =>p_r5_3, datad=>a(3), dataf=>p_x_r5_3, cin=>nx45949z14);
   ix45949z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"00000a5f0000ff00") 
       port map ( sumout=>d(2), cout=>nx45949z14, dataa=>p_validBit_2, datac
      =>p_r5_2, datad=>a(2), dataf=>p_x_r5_2, cin=>nx45949z16);
   ix45949z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"00000a5f0000ff00") 
       port map ( sumout=>d(1), cout=>nx45949z16, dataa=>p_validBit_2, datac
      =>p_r5_1, datad=>a(1), dataf=>p_x_r5_1, cin=>nx45949z18);
   ix45949z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"00000a5f0000ff00") 
       port map ( sumout=>d(0), cout=>nx45949z18, dataa=>p_validBit_2, datac
      =>p_r5_0, datad=>a(0), dataf=>p_x_r5_0, cin=>nx45949z20);
   ix109_buf : stratixii_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>cout, datac=>nx6441z1, cin=>nx6441z2);
   ix45949z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(8), cout=>nx6441z2, datad=>a(8), dataf=>
      nx45949z3, cin=>nx45949z4);
   ix45949z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"00000a5f0000ff00") 
       port map ( sumout=>d(7), cout=>nx45949z4, dataa=>p_validBit_2, datac
      =>p_r5_7, datad=>a(7), dataf=>p_x_r5_7, cin=>nx45949z6);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_9_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_1 ;

architecture IMPLEMENTATION of add_9_1 is 
   signal nx45949z28, nx45949z25, nx45949z22, nx45949z19, nx45949z16, 
      nx45949z13, nx45949z10, nx45949z7, nx45949z4, nx45949z3, nx6441z2, 
      nx6441z1: std_logic ;

begin
   nx45949z28 <= '0';
   nx45949z3 <= '0';
   nx6441z1 <= '0';
   ix45949z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(6), cout=>nx45949z7, datad=>a(6), dataf=>b(6), 
      cin=>nx45949z10);
   ix45949z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(5), cout=>nx45949z10, datad=>a(5), dataf=>b(5), 
      cin=>nx45949z13);
   ix45949z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(4), cout=>nx45949z13, datad=>a(4), dataf=>b(4), 
      cin=>nx45949z16);
   ix45949z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(3), cout=>nx45949z16, datad=>a(3), dataf=>b(3), 
      cin=>nx45949z19);
   ix45949z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(2), cout=>nx45949z19, datad=>a(2), dataf=>b(2), 
      cin=>nx45949z22);
   ix45949z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(1), cout=>nx45949z22, datad=>a(1), dataf=>b(1), 
      cin=>nx45949z25);
   ix45949z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(0), cout=>nx45949z25, datad=>a(0), dataf=>b(0), 
      cin=>nx45949z28);
   ix109_buf : stratixii_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>cout, datac=>nx6441z1, cin=>nx6441z2);
   ix45949z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(8), cout=>nx6441z2, datad=>a(8), dataf=>
      nx45949z3, cin=>nx45949z4);
   ix45949z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(7), cout=>nx45949z4, datad=>a(7), dataf=>b(7), 
      cin=>nx45949z7);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_9_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_2 ;

architecture IMPLEMENTATION of add_9_2 is 
   signal nx45949z28, nx45949z25, nx45949z22, nx45949z19, nx45949z16, 
      nx45949z13, nx45949z10, nx45949z7, nx45949z4, nx45949z2, nx6441z2, 
      nx6441z1: std_logic ;

begin
   nx45949z28 <= '0';
   nx45949z2 <= '0';
   nx6441z1 <= '0';
   ix45949z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(6), cout=>nx45949z7, datad=>a(6), dataf=>b(6), 
      cin=>nx45949z10);
   ix45949z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(5), cout=>nx45949z10, datad=>a(5), dataf=>b(5), 
      cin=>nx45949z13);
   ix45949z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(4), cout=>nx45949z13, datad=>a(4), dataf=>b(4), 
      cin=>nx45949z16);
   ix45949z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(3), cout=>nx45949z16, datad=>a(3), dataf=>b(3), 
      cin=>nx45949z19);
   ix45949z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(2), cout=>nx45949z19, datad=>a(2), dataf=>b(2), 
      cin=>nx45949z22);
   ix45949z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(1), cout=>nx45949z22, datad=>a(1), dataf=>b(1), 
      cin=>nx45949z25);
   ix45949z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(0), cout=>nx45949z25, datad=>a(0), dataf=>b(0), 
      cin=>nx45949z28);
   ix109_buf : stratixii_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>cout, datac=>nx6441z1, cin=>nx6441z2);
   ix45949z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(8), cout=>nx6441z2, datad=>nx45949z2, dataf=>
      b(8), cin=>nx45949z4);
   ix45949z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(7), cout=>nx45949z4, datad=>a(7), dataf=>b(7), 
      cin=>nx45949z7);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_9_3 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_3 ;

architecture IMPLEMENTATION of add_9_3 is 
   signal nx45949z28, nx45949z25, nx45949z22, nx45949z19, nx45949z16, 
      nx45949z13, nx45949z10, nx45949z7, nx45949z4, nx31987z2, nx31987z1: 
   std_logic ;

begin
   nx45949z28 <= '0';
   nx31987z1 <= '0';
   ix45949z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(6), cout=>nx45949z7, datad=>a(6), dataf=>b(6), 
      cin=>nx45949z10);
   ix45949z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(5), cout=>nx45949z10, datad=>a(5), dataf=>b(5), 
      cin=>nx45949z13);
   ix45949z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(4), cout=>nx45949z13, datad=>a(4), dataf=>b(4), 
      cin=>nx45949z16);
   ix45949z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(3), cout=>nx45949z16, datad=>a(3), dataf=>b(3), 
      cin=>nx45949z19);
   ix45949z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(2), cout=>nx45949z19, datad=>a(2), dataf=>b(2), 
      cin=>nx45949z22);
   ix45949z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(1), cout=>nx45949z22, datad=>a(1), dataf=>b(1), 
      cin=>nx45949z25);
   ix45949z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(0), cout=>nx45949z25, datad=>a(0), dataf=>b(0), 
      cin=>nx45949z28);
   ix110_buf : stratixii_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>cout, datac=>nx31987z1, cin=>nx31987z2);
   ix45949z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(8), cout=>nx31987z2, datad=>a(8), dataf=>b(8), 
      cin=>nx45949z4);
   ix45949z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(7), cout=>nx45949z4, datad=>a(7), dataf=>b(7), 
      cin=>nx45949z7);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_10_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_10_0 ;

architecture IMPLEMENTATION of add_10_0 is 
   signal nx46946z31, nx46946z28, nx46946z25, nx46946z22, nx46946z19, 
      nx46946z16, nx46946z13, nx46946z10, nx46946z7, nx46946z4, nx46946z2, 
      nx46471z2, nx46471z1: std_logic ;

begin
   nx46946z31 <= '0';
   nx46946z2 <= '0';
   nx46471z1 <= '0';
   ix46946z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(6), cout=>nx46946z10, datad=>a(6), dataf=>b(6), 
      cin=>nx46946z13);
   ix46946z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(5), cout=>nx46946z13, datad=>a(5), dataf=>b(5), 
      cin=>nx46946z16);
   ix46946z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(4), cout=>nx46946z16, datad=>a(4), dataf=>b(4), 
      cin=>nx46946z19);
   ix46946z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(3), cout=>nx46946z19, datad=>a(3), dataf=>b(3), 
      cin=>nx46946z22);
   ix46946z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(2), cout=>nx46946z22, datad=>a(2), dataf=>b(2), 
      cin=>nx46946z25);
   ix46946z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(1), cout=>nx46946z25, datad=>a(1), dataf=>b(1), 
      cin=>nx46946z28);
   ix46946z37211 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(0), cout=>nx46946z28, datad=>a(0), dataf=>b(0), 
      cin=>nx46946z31);
   ix121_buf : stratixii_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>cout, datac=>nx46471z1, cin=>nx46471z2);
   ix46946z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(9), cout=>nx46471z2, datad=>nx46946z2, dataf=>
      b(9), cin=>nx46946z4);
   ix46946z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(8), cout=>nx46946z4, datad=>a(8), dataf=>b(8), 
      cin=>nx46946z7);
   ix46946z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(7), cout=>nx46946z7, datad=>a(7), dataf=>b(7), 
      cin=>nx46946z10);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_11_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      b : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_11_0 ;

architecture IMPLEMENTATION of add_11_0 is 
   signal nx62798z33, nx62798z30, nx62798z27, nx62798z24, nx62798z21, 
      nx62798z18, nx62798z15, nx62798z12, nx62798z9, nx62798z6, nx62798z4, 
      nx62798z2, nx59393z2, nx59393z1: std_logic ;

begin
   nx62798z33 <= '0';
   nx62798z2 <= '0';
   nx59393z1 <= '0';
   ix62798z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(6), cout=>nx62798z12, datad=>a(6), dataf=>b(6), 
      cin=>nx62798z15);
   ix62798z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(5), cout=>nx62798z15, datad=>a(5), dataf=>b(5), 
      cin=>nx62798z18);
   ix62798z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(4), cout=>nx62798z18, datad=>a(4), dataf=>b(4), 
      cin=>nx62798z21);
   ix62798z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(3), cout=>nx62798z21, datad=>a(3), dataf=>b(3), 
      cin=>nx62798z24);
   ix62798z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(2), cout=>nx62798z24, datad=>a(2), dataf=>b(2), 
      cin=>nx62798z27);
   ix62798z37211 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(1), cout=>nx62798z27, datad=>a(1), dataf=>b(1), 
      cin=>nx62798z30);
   ix62798z37212 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(0), cout=>nx62798z30, datad=>a(0), dataf=>b(0), 
      cin=>nx62798z33);
   ix132_buf : stratixii_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>cout, datac=>nx59393z1, cin=>nx59393z2);
   ix62798z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(10), cout=>nx59393z2, datad=>nx62798z2, dataf=>
      b(10), cin=>nx62798z4);
   ix62798z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(9), cout=>nx62798z4, datad=>nx62798z2, dataf=>
      b(9), cin=>nx62798z6);
   ix62798z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(8), cout=>nx62798z6, datad=>a(8), dataf=>b(8), 
      cin=>nx62798z9);
   ix62798z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>d(7), cout=>nx62798z9, datad=>a(7), dataf=>b(7), 
      cin=>nx62798z12);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity add_12_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_12_0 ;

architecture IMPLEMENTATION of add_12_0 is 
   signal nx63795z26, nx63795z24, nx63795z22, nx63795z20, nx63795z18, 
      nx63795z16, nx63795z14, nx63795z12, nx63795z10, nx63795z8, nx63795z6, 
      nx63795z4, nx63795z3: std_logic ;

begin
   nx63795z26 <= '0';
   nx63795z3 <= '0';
   ix63795z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(7), cout=>nx63795z10, dataa=>a(6), datad=>a(7), 
      cin=>nx63795z12);
   ix63795z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(6), cout=>nx63795z12, dataa=>a(6), dataf=>a(5), 
      cin=>nx63795z14);
   ix63795z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(5), cout=>nx63795z14, dataa=>a(4), datad=>a(5), 
      cin=>nx63795z16);
   ix63795z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(4), cout=>nx63795z16, dataa=>a(4), dataf=>a(3), 
      cin=>nx63795z18);
   ix63795z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(3), cout=>nx63795z18, dataa=>a(2), datad=>a(3), 
      cin=>nx63795z20);
   ix63795z37211 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(2), cout=>nx63795z20, dataa=>a(2), dataf=>a(1), 
      cin=>nx63795z22);
   ix63795z37212 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(1), cout=>nx63795z22, dataa=>a(0), datad=>a(1), 
      cin=>nx63795z24);
   ix63795z37213 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(0), cout=>nx63795z24, dataa=>a(0), dataf=>b(0), 
      cin=>nx63795z26);
   ix63795z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(11), dataa=>a(10), datad=>nx63795z3, cin=>
      nx63795z4);
   ix63795z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(10), cout=>nx63795z4, dataa=>a(10), dataf=>a(9), 
      cin=>nx63795z6);
   ix63795z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"000055550000ff00") 
       port map ( sumout=>d(9), cout=>nx63795z6, dataa=>a(8), datad=>a(9), 
      cin=>nx63795z8);
   ix63795z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff0000aaaa") 
       port map ( sumout=>d(8), cout=>nx63795z8, dataa=>a(8), dataf=>a(7), 
      cin=>nx63795z10);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
   signal nx1524z1, NOT_b_1, nx11426z2, nx11426z3, nx11426z1, nx41160z1, 
      nx41160z2, nx37326z1, nx37326z2, nx15260z1, nx15260z2, nx41091z1, 
      nx41091z2, nx37395z1, nx37395z2, nx61156z1, nx61156z2, nx17330z1, 
      nx17330z2, nx35256z1, nx35256z2, nx43230z1, nx43230z2, nx9356z1, 
      nx9356z2: std_logic ;

begin
   nx1524z1 <= '0';
   NOT_b_1 <= NOT b(1);
   nx11426z1 <= '0';
   ix97_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( cout=>nx41091z1, shareout=>nx41091z2, datac=>b(4), datad=>
      a(4), cin=>nx15260z1, sharein=>nx15260z2);
   ix86_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( cout=>nx15260z1, shareout=>nx15260z2, datac=>b(3), datad=>
      a(3), cin=>nx37326z1, sharein=>nx37326z2);
   ix75_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( cout=>nx37326z1, shareout=>nx37326z2, datac=>b(2), datad=>
      a(2), cin=>nx41160z1, sharein=>nx41160z2);
   ix64_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000f0f00000ff00",
         shared_arith => "on") 
       port map ( cout=>nx41160z1, shareout=>nx41160z2, datac=>nx11426z1, 
      datad=>NOT_b_1, cin=>nx11426z2, sharein=>nx11426z3);
   ix53_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000f00000ff0",
         shared_arith => "on") 
       port map ( cout=>nx11426z2, shareout=>nx11426z3, datac=>p_x_r22_0, 
      datad=>b(0), cin=>nx1524z1, sharein=>nx1524z1);
   ix174_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"000000000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(11), datac=>b(11), datad=>a(11), cin=>nx9356z1, 
      sharein=>nx9356z2);
   ix163_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(10), cout=>nx9356z1, shareout=>nx9356z2, datac=>
      b(10), datad=>a(10), cin=>nx43230z1, sharein=>nx43230z2);
   ix152_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(9), cout=>nx43230z1, shareout=>nx43230z2, datac
      =>b(9), datad=>a(9), cin=>nx35256z1, sharein=>nx35256z2);
   ix141_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(8), cout=>nx35256z1, shareout=>nx35256z2, datac
      =>b(8), datad=>a(8), cin=>nx17330z1, sharein=>nx17330z2);
   ix130_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(7), cout=>nx17330z1, shareout=>nx17330z2, datac
      =>b(7), datad=>a(7), cin=>nx61156z1, sharein=>nx61156z2);
   ix119_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( sumout=>d(6), cout=>nx61156z1, shareout=>nx61156z2, datac
      =>b(6), datad=>a(6), cin=>nx37395z1, sharein=>nx37395z2);
   ix108_dup_0 : stratixii_lcell_comb
      generic map (lut_mask => X"00000f000000f00f",
         shared_arith => "on") 
       port map ( cout=>nx37395z1, shareout=>nx37395z2, datac=>b(5), datad=>
      a(5), cin=>nx41091z1, sharein=>nx41091z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
   signal ena1_EXMPLR394: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR394, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR394 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
   signal ena1_EXMPLR424: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR424, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR424 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

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
   signal ena1_EXMPLR454: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR454, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR454 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library stratixii ;
use stratixii.stratixii_components.all;

entity kirsch is 
   port (
      i_clock : IN std_logic ;
      i_reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_num_0 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (3 DOWNTO 0)) ;
end kirsch ;

architecture main of kirsch is 
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
         cnt_en : IN std_logic) ;
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
         cout : OUT std_logic ;
         p_r5_7 : IN std_logic ;
         p_x_r5_7 : IN std_logic ;
         p_validBit_2 : IN std_logic ;
         p_r5_6 : IN std_logic ;
         p_x_r5_6 : IN std_logic ;
         p_r5_5 : IN std_logic ;
         p_x_r5_5 : IN std_logic ;
         p_r5_4 : IN std_logic ;
         p_x_r5_4 : IN std_logic ;
         p_r5_3 : IN std_logic ;
         p_x_r5_3 : IN std_logic ;
         p_r5_2 : IN std_logic ;
         p_x_r5_2 : IN std_logic ;
         p_r5_1 : IN std_logic ;
         p_x_r5_1 : IN std_logic ;
         p_r5_0 : IN std_logic ;
         p_x_r5_0 : IN std_logic) ;
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
   component add_12_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
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
   signal i_clock_EXMPLR499, i_reset_EXMPLR500, i_valid_EXMPLR501: std_logic
    ;
   
   signal i_pixel_EXMPLR573: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_dup0: std_logic ;
   
   signal o_mode_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_led_red_EXMPLR574: std_logic_vector (17 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR575: std_logic_vector (5 DOWNTO 0) ;
   
   signal debug_num_0_EXMPLR576: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_1_EXMPLR577: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR578: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR579: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR580: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR581: std_logic_vector (3 DOWNTO 0) ;
   
   signal col: std_logic_vector (7 DOWNTO 0) ;
   
   signal state: std_logic_vector (2 DOWNTO 0) ;
   
   signal vBit: std_logic_vector (2 DOWNTO 1) ;
   
   signal second_cw: std_logic_vector (2 DOWNTO 0) ;
   
   signal stage1_wNw_2, stage1_wNw_0: std_logic ;
   
   signal final_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal stage1_nNe_2, stage1_eSe_2, stage1_sSw_2: std_logic ;
   
   signal first_cw: std_logic_vector (2 DOWNTO 0) ;
   
   signal r10: std_logic_vector (7 DOWNTO 0) ;
   
   signal r5: std_logic_vector (7 DOWNTO 0) ;
   
   signal x_r5: std_logic_vector (7 DOWNTO 0) ;
   
   signal r12: std_logic_vector (7 DOWNTO 0) ;
   
   signal a: std_logic_vector (7 DOWNTO 0) ;
   
   signal b: std_logic_vector (7 DOWNTO 0) ;
   
   signal c: std_logic_vector (7 DOWNTO 0) ;
   
   signal d: std_logic_vector (7 DOWNTO 0) ;
   
   signal e: std_logic_vector (7 DOWNTO 0) ;
   
   signal f: std_logic_vector (7 DOWNTO 0) ;
   
   signal g: std_logic_vector (7 DOWNTO 0) ;
   
   signal h: std_logic_vector (7 DOWNTO 0) ;
   
   signal i: std_logic_vector (7 DOWNTO 0) ;
   
   signal r9: std_logic_vector (8 DOWNTO 0) ;
   
   signal r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal r13: std_logic_vector (8 DOWNTO 0) ;
   
   signal validBit: std_logic_vector (7 DOWNTO 0) ;
   
   signal x_r6: std_logic_vector (9 DOWNTO 0) ;
   
   signal r18: std_logic_vector (9 DOWNTO 0) ;
   
   signal b_d1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r15: std_logic_vector (9 DOWNTO 0) ;
   
   signal r11: std_logic_vector (9 DOWNTO 0) ;
   
   signal x_r11: std_logic_vector (9 DOWNTO 0) ;
   
   signal r16: std_logic_vector (9 DOWNTO 0) ;
   
   signal x_r3: std_logic_vector (9 DOWNTO 0) ;
   
   signal r14: std_logic_vector (10 DOWNTO 0) ;
   
   signal x_r12: std_logic_vector (11 DOWNTO 0) ;
   
   signal r17_12, r17_11, r17_10, r17_9, r17_8, r17_7: std_logic ;
   
   signal x_r22: std_logic_vector (12 DOWNTO 0) ;
   
   signal r2_6n3s1: std_logic_vector (8 DOWNTO 0) ;
   
   signal b_d1_7n4s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal x_r3_7n3s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r16_7n1s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal x_r6_8n4s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r14_8n3s1: std_logic_vector (10 DOWNTO 0) ;
   
   signal x_r12_8n2s1: std_logic_vector (11 DOWNTO 0) ;
   
   signal x_r22_8n1s1: std_logic_vector (12 DOWNTO 1) ;
   
   signal r17_10n1s1_12, r17_10n1s1_11, r17_10n1s1_10, r17_10n1s1_9, 
      r17_10n1s1_8, r17_10n1s1_7: std_logic ;
   
   signal tempStorage_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal tempStorage_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal tempStorage_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_clock_int, i_reset_int, i_valid_int: std_logic ;
   
   signal i_pixel_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_EXMPLR558, o_edge_EXMPLR559: std_logic ;
   
   signal o_dir_EXMPLR582: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_mode_EXMPLR583: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR584: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_edge_dup0: std_logic ;
   
   signal o_dir_dup0: std_logic_vector (2 DOWNTO 0) ;
   
   signal we: std_logic_vector (2 DOWNTO 0) ;
   
   signal PWR, nx40914z1, nx17322z1, nx36625z2, nx15418z1, nx33634z2, 
      nx250z2, nx27953z2, nx7380z2, nx56415z1, nx54873z1, nx34104z1, 
      nx16422z1, nx58464z1, nx65254z1, first_cw_9n1ss1_0, second_cw_9n2ss1_0, 
      nx42030z2, nx17266z2, nx27527z1, nx28524z1: std_logic ;
   
   signal r2_6n3s1f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r2_6n3s1f2: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx64789z2, nx28950z2, nx49445z2, nx16269z2, nx33057z2, nx31986z2, 
      \_MGC0390_MGC039\, nx51677z1, nx51677z2, b_0_dup_1325, nx27471z1, 
      nx26474z1, nx25477z1, nx24480z1, nx23483z1, nx22486z1, nx21489z1, 
      nx20492z1, nx29646z1, nx30643z1, nx31640z1, nx32637z1, nx33634z1, 
      nx34631z1, nx35628z1, nx36625z1, nx17322z3, nx29521z1, nx250z1, 
      nx64789z1, nx63792z1, nx62795z1, nx61798z1, nx60801z1, nx59804z1, 
      nx58807z1, nx27953z1, nx28950z1, nx29947z1, nx30944z1, nx31941z1, 
      nx32938z1, nx33935z1, nx34932z1, nx7380z1, nx6383z1, nx5386z1, 
      nx4389z1, nx3392z1, nx2395z1, nx1398z1, nx401z1, nx48448z1, nx49445z1, 
      nx50442z1, nx51439z1, nx52436z1, nx53433z1, nx54430z1, nx55427z1, 
      nx35772z1, nx36769z1, nx37766z1, nx17266z1, nx16269z1, nx15272z1, 
      nx14275z1, nx13278z1, nx12281z1, nx11284z1, nx10287z1, nx9290z1, 
      nx8293z1, nx64999z1, nx42030z1, nx41033z1, nx40036z1, nx39039z1, 
      nx38042z1, nx37045z1, nx36048z1, nx35051z1, nx34054z1, nx33057z1, 
      nx47369z1, nx23013z1, nx24010z1, nx25007z1, nx26004z1, nx27001z1, 
      nx27998z1, nx28995z1, nx29992z1, nx30989z1, nx31986z1, nx11673z1, 
      nx20419z1, nx64789z3, nx64789z4, nx28950z3, nx28950z4, nx6383z3, 
      nx6383z4, nx49445z3, nx49445z4, nx33057z4, nx31986z3, nx31986z4, 
      nx31986z5, nx16269z4, nx11673z3, nx11673z2, nx6383z2, nx16269z3, 
      nx33057z3, nx64789z5, nx28950z5, nx6383z5, nx49445z5, nx33057z5, 
      nx33057z6, nx31986z6, nx36874z1, nx16269z5, nx16269z6, nx20419z3, 
      nx20419z9, nx20419z2, nx20419z10, nx20419z11, nx20419z4, nx20419z6, 
      nx20419z5, nx20419z7, nx20419z8, nx17322z2, validBit_7_repl, 
      validBit_3_repl, validBit_2_repl, validBit_1_repl, validBit_0_repl, 
      state_1_repl, state_0_repl: std_logic ;
   
   signal DANGLING : std_logic_vector (85 downto 0 );

begin
   i_clock_EXMPLR499 <= i_clock ;
   i_reset_EXMPLR500 <= i_reset ;
   i_valid_EXMPLR501 <= i_valid ;
   i_pixel_EXMPLR573(7) <= i_pixel(7) ;
   i_pixel_EXMPLR573(6) <= i_pixel(6) ;
   i_pixel_EXMPLR573(5) <= i_pixel(5) ;
   i_pixel_EXMPLR573(4) <= i_pixel(4) ;
   i_pixel_EXMPLR573(3) <= i_pixel(3) ;
   i_pixel_EXMPLR573(2) <= i_pixel(2) ;
   i_pixel_EXMPLR573(1) <= i_pixel(1) ;
   i_pixel_EXMPLR573(0) <= i_pixel(0) ;
   o_valid <= o_valid_EXMPLR558 ;
   o_edge <= o_edge_EXMPLR559 ;
   o_dir(2) <= o_dir_EXMPLR582(2) ;
   o_dir(1) <= o_dir_EXMPLR582(1) ;
   o_dir(0) <= o_dir_EXMPLR582(0) ;
   o_mode(1) <= o_mode_EXMPLR583(1) ;
   o_mode(0) <= o_mode_EXMPLR583(0) ;
   o_row(7) <= o_row_EXMPLR584(7) ;
   o_row(6) <= o_row_EXMPLR584(6) ;
   o_row(5) <= o_row_EXMPLR584(5) ;
   o_row(4) <= o_row_EXMPLR584(4) ;
   o_row(3) <= o_row_EXMPLR584(3) ;
   o_row(2) <= o_row_EXMPLR584(2) ;
   o_row(1) <= o_row_EXMPLR584(1) ;
   o_row(0) <= o_row_EXMPLR584(0) ;
   debug_led_red(17) <= debug_led_red_EXMPLR574(17) ;
   debug_led_red(16) <= debug_led_red_EXMPLR574(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR574(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR574(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR574(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR574(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR574(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR574(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR574(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR574(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR574(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR574(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR574(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR574(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR574(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR574(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR574(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR574(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR575(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR575(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR575(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR575(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR575(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR575(0) ;
   debug_num_0(3) <= debug_num_0_EXMPLR576(3) ;
   debug_num_0(2) <= debug_num_0_EXMPLR576(2) ;
   debug_num_0(1) <= debug_num_0_EXMPLR576(1) ;
   debug_num_0(0) <= debug_num_0_EXMPLR576(0) ;
   debug_num_1(3) <= debug_num_1_EXMPLR577(3) ;
   debug_num_1(2) <= debug_num_1_EXMPLR577(2) ;
   debug_num_1(1) <= debug_num_1_EXMPLR577(1) ;
   debug_num_1(0) <= debug_num_1_EXMPLR577(0) ;
   debug_num_2(3) <= debug_num_2_EXMPLR578(3) ;
   debug_num_2(2) <= debug_num_2_EXMPLR578(2) ;
   debug_num_2(1) <= debug_num_2_EXMPLR578(1) ;
   debug_num_2(0) <= debug_num_2_EXMPLR578(0) ;
   debug_num_3(3) <= debug_num_3_EXMPLR579(3) ;
   debug_num_3(2) <= debug_num_3_EXMPLR579(2) ;
   debug_num_3(1) <= debug_num_3_EXMPLR579(1) ;
   debug_num_3(0) <= debug_num_3_EXMPLR579(0) ;
   debug_num_4(3) <= debug_num_4_EXMPLR580(3) ;
   debug_num_4(2) <= debug_num_4_EXMPLR580(2) ;
   debug_num_4(1) <= debug_num_4_EXMPLR580(1) ;
   debug_num_4(0) <= debug_num_4_EXMPLR580(0) ;
   debug_num_5(3) <= debug_num_5_EXMPLR581(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR581(2) ;
   debug_num_5(1) <= debug_num_5_EXMPLR581(1) ;
   debug_num_5(0) <= debug_num_5_EXMPLR581(0) ;
   modgen_counter_col : modgen_counter_8_0 port map ( clock=>i_clock_int, 
      q(7)=>col(7), q(6)=>col(6), q(5)=>col(5), q(4)=>col(4), q(3)=>col(3), 
      q(2)=>col(2), q(1)=>col(1), q(0)=>col(0), clk_en=>nx40914z1, aclear=>
      DANGLING(0), sload=>DANGLING(1), data(7)=>DANGLING(2), data(6)=>
      DANGLING(3), data(5)=>DANGLING(4), data(4)=>DANGLING(5), data(3)=>
      DANGLING(6), data(2)=>DANGLING(7), data(1)=>DANGLING(8), data(0)=>
      DANGLING(9), aset=>DANGLING(10), sclear=>i_reset_int, updn=>DANGLING(
      11), cnt_en=>DANGLING(12));
   modgen_counter_o_row : modgen_counter_8_1 port map ( clock=>i_clock_int, 
      q(7)=>o_row_dup0(7), q(6)=>o_row_dup0(6), q(5)=>o_row_dup0(5), q(4)=>
      o_row_dup0(4), q(3)=>o_row_dup0(3), q(2)=>o_row_dup0(2), q(1)=>
      o_row_dup0(1), q(0)=>o_row_dup0(0), clk_en=>DANGLING(13), aclear=>
      DANGLING(14), sload=>DANGLING(15), data(7)=>DANGLING(16), data(6)=>
      DANGLING(17), data(5)=>DANGLING(18), data(4)=>DANGLING(19), data(3)=>
      DANGLING(20), data(2)=>DANGLING(21), data(1)=>DANGLING(22), data(0)=>
      DANGLING(23), aset=>DANGLING(24), sclear=>i_reset_int, updn=>DANGLING(
      25), cnt_en=>nx17322z1);
   r2_add8_6i49 : add_8_0 port map ( cin=>DANGLING(26), a(7)=>r2_6n3s1f1(7), 
      a(6)=>r2_6n3s1f1(6), a(5)=>r2_6n3s1f1(5), a(4)=>r2_6n3s1f1(4), a(3)=>
      r2_6n3s1f1(3), a(2)=>r2_6n3s1f1(2), a(1)=>r2_6n3s1f1(1), a(0)=>
      r2_6n3s1f1(0), b(7)=>r2_6n3s1f2(7), b(6)=>r2_6n3s1f2(6), b(5)=>
      r2_6n3s1f2(5), b(4)=>r2_6n3s1f2(4), b(3)=>r2_6n3s1f2(3), b(2)=>
      r2_6n3s1f2(2), b(1)=>r2_6n3s1f2(1), b(0)=>r2_6n3s1f2(0), d(7)=>
      r2_6n3s1(7), d(6)=>r2_6n3s1(6), d(5)=>r2_6n3s1(5), d(4)=>r2_6n3s1(4), 
      d(3)=>r2_6n3s1(3), d(2)=>r2_6n3s1(2), d(1)=>r2_6n3s1(1), d(0)=>
      r2_6n3s1(0), cout=>r2_6n3s1(8));
   x_r3_add9_7i9 : add_9_0 port map ( cin=>DANGLING(27), a(8)=>r2(8), a(7)=>
      r2(7), a(6)=>r2(6), a(5)=>r2(5), a(4)=>r2(4), a(3)=>r2(3), a(2)=>r2(2), 
      a(1)=>r2(1), a(0)=>r2(0), b(8)=>DANGLING(28), b(7)=>DANGLING(29), b(6)
      =>DANGLING(30), b(5)=>DANGLING(31), b(4)=>DANGLING(32), b(3)=>DANGLING
      (33), b(2)=>DANGLING(34), b(1)=>DANGLING(35), b(0)=>DANGLING(36), d(8)
      =>x_r3_7n3s1(8), d(7)=>x_r3_7n3s1(7), d(6)=>x_r3_7n3s1(6), d(5)=>
      x_r3_7n3s1(5), d(4)=>x_r3_7n3s1(4), d(3)=>x_r3_7n3s1(3), d(2)=>
      x_r3_7n3s1(2), d(1)=>x_r3_7n3s1(1), d(0)=>x_r3_7n3s1(0), cout=>
      x_r3_7n3s1(9), p_r5_7=>r5(7), p_x_r5_7=>x_r5(7), p_validBit_2=>
      validBit(2), p_r5_6=>r5(6), p_x_r5_6=>x_r5(6), p_r5_5=>r5(5), p_x_r5_5
      =>x_r5(5), p_r5_4=>r5(4), p_x_r5_4=>x_r5(4), p_r5_3=>r5(3), p_x_r5_3=>
      x_r5(3), p_r5_2=>r5(2), p_x_r5_2=>x_r5(2), p_r5_1=>r5(1), p_x_r5_1=>
      x_r5(1), p_r5_0=>r5(0), p_x_r5_0=>x_r5(0));
   b_d1_add9_7i10 : add_9_1 port map ( cin=>DANGLING(37), a(8)=>r9(8), a(7)
      =>r9(7), a(6)=>r9(6), a(5)=>r9(5), a(4)=>r9(4), a(3)=>r9(3), a(2)=>
      r9(2), a(1)=>r9(1), a(0)=>r9(0), b(8)=>DANGLING(38), b(7)=>r10(7), 
      b(6)=>r10(6), b(5)=>r10(5), b(4)=>r10(4), b(3)=>r10(3), b(2)=>r10(2), 
      b(1)=>r10(1), b(0)=>r10(0), d(8)=>b_d1_7n4s1(8), d(7)=>b_d1_7n4s1(7), 
      d(6)=>b_d1_7n4s1(6), d(5)=>b_d1_7n4s1(5), d(4)=>b_d1_7n4s1(4), d(3)=>
      b_d1_7n4s1(3), d(2)=>b_d1_7n4s1(2), d(1)=>b_d1_7n4s1(1), d(0)=>
      b_d1_7n4s1(0), cout=>b_d1_7n4s1(9));
   r16_add9_7i11 : add_9_2 port map ( cin=>DANGLING(39), a(8)=>DANGLING(40), 
      a(7)=>r12(7), a(6)=>r12(6), a(5)=>r12(5), a(4)=>r12(4), a(3)=>r12(3), 
      a(2)=>r12(2), a(1)=>r12(1), a(0)=>r12(0), b(8)=>r13(8), b(7)=>r13(7), 
      b(6)=>r13(6), b(5)=>r13(5), b(4)=>r13(4), b(3)=>r13(3), b(2)=>r13(2), 
      b(1)=>r13(1), b(0)=>r13(0), d(8)=>r16_7n1s1(8), d(7)=>r16_7n1s1(7), 
      d(6)=>r16_7n1s1(6), d(5)=>r16_7n1s1(5), d(4)=>r16_7n1s1(4), d(3)=>
      r16_7n1s1(3), d(2)=>r16_7n1s1(2), d(1)=>r16_7n1s1(1), d(0)=>
      r16_7n1s1(0), cout=>r16_7n1s1(9));
   x_r6_add9_8i1 : add_9_3 port map ( cin=>DANGLING(41), a(8)=>r9(8), a(7)=>
      r9(7), a(6)=>r9(6), a(5)=>r9(5), a(4)=>r9(4), a(3)=>r9(3), a(2)=>r9(2), 
      a(1)=>r9(1), a(0)=>r9(0), b(8)=>r2(8), b(7)=>r2(7), b(6)=>r2(6), b(5)
      =>r2(5), b(4)=>r2(4), b(3)=>r2(3), b(2)=>r2(2), b(1)=>r2(1), b(0)=>
      r2(0), d(8)=>x_r6_8n4s1(8), d(7)=>x_r6_8n4s1(7), d(6)=>x_r6_8n4s1(6), 
      d(5)=>x_r6_8n4s1(5), d(4)=>x_r6_8n4s1(4), d(3)=>x_r6_8n4s1(3), d(2)=>
      x_r6_8n4s1(2), d(1)=>x_r6_8n4s1(1), d(0)=>x_r6_8n4s1(0), cout=>
      x_r6_8n4s1(9));
   r14_add10_8i2 : add_10_0 port map ( cin=>DANGLING(42), a(9)=>DANGLING(43), 
      a(8)=>r2(8), a(7)=>r2(7), a(6)=>r2(6), a(5)=>r2(5), a(4)=>r2(4), a(3)
      =>r2(3), a(2)=>r2(2), a(1)=>r2(1), a(0)=>r2(0), b(9)=>x_r6(9), b(8)=>
      x_r6(8), b(7)=>x_r6(7), b(6)=>x_r6(6), b(5)=>x_r6(5), b(4)=>x_r6(4), 
      b(3)=>x_r6(3), b(2)=>x_r6(2), b(1)=>x_r6(1), b(0)=>x_r6(0), d(9)=>
      r14_8n3s1(9), d(8)=>r14_8n3s1(8), d(7)=>r14_8n3s1(7), d(6)=>
      r14_8n3s1(6), d(5)=>r14_8n3s1(5), d(4)=>r14_8n3s1(4), d(3)=>
      r14_8n3s1(3), d(2)=>r14_8n3s1(2), d(1)=>r14_8n3s1(1), d(0)=>
      r14_8n3s1(0), cout=>r14_8n3s1(10));
   x_r12_add11_8i3 : add_11_0 port map ( cin=>DANGLING(44), a(10)=>DANGLING(
      45), a(9)=>DANGLING(46), a(8)=>r13(8), a(7)=>r13(7), a(6)=>r13(6), 
      a(5)=>r13(5), a(4)=>r13(4), a(3)=>r13(3), a(2)=>r13(2), a(1)=>r13(1), 
      a(0)=>r13(0), b(10)=>r14(10), b(9)=>r14(9), b(8)=>r14(8), b(7)=>r14(7), 
      b(6)=>r14(6), b(5)=>r14(5), b(4)=>r14(4), b(3)=>r14(3), b(2)=>r14(2), 
      b(1)=>r14(1), b(0)=>r14(0), d(10)=>x_r12_8n2s1(10), d(9)=>
      x_r12_8n2s1(9), d(8)=>x_r12_8n2s1(8), d(7)=>x_r12_8n2s1(7), d(6)=>
      x_r12_8n2s1(6), d(5)=>x_r12_8n2s1(5), d(4)=>x_r12_8n2s1(4), d(3)=>
      x_r12_8n2s1(3), d(2)=>x_r12_8n2s1(2), d(1)=>x_r12_8n2s1(1), d(0)=>
      x_r12_8n2s1(0), cout=>x_r12_8n2s1(11));
   x_r22_add12_8i4 : add_12_0 port map ( cin=>DANGLING(47), a(11)=>DANGLING(
      48), a(10)=>x_r12(11), a(9)=>x_r12(10), a(8)=>x_r12(9), a(7)=>x_r12(8), 
      a(6)=>x_r12(7), a(5)=>x_r12(6), a(4)=>x_r12(5), a(3)=>x_r12(4), a(2)=>
      x_r12(3), a(1)=>x_r12(2), a(0)=>x_r12(1), b(11)=>DANGLING(49), b(10)=>
      DANGLING(50), b(9)=>DANGLING(51), b(8)=>DANGLING(52), b(7)=>DANGLING(
      53), b(6)=>DANGLING(54), b(5)=>DANGLING(55), b(4)=>DANGLING(56), b(3)
      =>DANGLING(57), b(2)=>DANGLING(58), b(1)=>DANGLING(59), b(0)=>x_r12(0), 
      d(11)=>x_r22_8n1s1(12), d(10)=>x_r22_8n1s1(11), d(9)=>x_r22_8n1s1(10), 
      d(8)=>x_r22_8n1s1(9), d(7)=>x_r22_8n1s1(8), d(6)=>x_r22_8n1s1(7), d(5)
      =>x_r22_8n1s1(6), d(4)=>x_r22_8n1s1(5), d(3)=>x_r22_8n1s1(4), d(2)=>
      x_r22_8n1s1(3), d(1)=>x_r22_8n1s1(2), d(0)=>x_r22_8n1s1(1), cout=>
      DANGLING(60));
   r17_sub13_10i1 : sub_12_0 port map ( cin=>DANGLING(61), a(11)=>r18(9), 
      a(10)=>r18(8), a(9)=>r18(7), a(8)=>r18(6), a(7)=>r18(5), a(6)=>r18(4), 
      a(5)=>r18(3), a(4)=>r18(2), a(3)=>r18(1), a(2)=>r18(0), a(1)=>DANGLING
      (62), a(0)=>DANGLING(63), b(11)=>x_r22(12), b(10)=>x_r22(11), b(9)=>
      x_r22(10), b(8)=>x_r22(9), b(7)=>x_r22(8), b(6)=>x_r22(7), b(5)=>
      x_r22(6), b(4)=>x_r22(5), b(3)=>x_r22(4), b(2)=>x_r22(3), b(1)=>
      x_r22(2), b(0)=>x_r22(1), d(11)=>r17_10n1s1_12, d(10)=>r17_10n1s1_11, 
      d(9)=>r17_10n1s1_10, d(8)=>r17_10n1s1_9, d(7)=>r17_10n1s1_8, d(6)=>
      r17_10n1s1_7, d(5)=>DANGLING(64), d(4)=>DANGLING(65), d(3)=>DANGLING(
      66), d(2)=>DANGLING(67), d(1)=>DANGLING(68), d(0)=>DANGLING(69), cout
      =>DANGLING(70), p_x_r22_0=>x_r22(0));
   Generate_mem_0_u_mem0_mem : ram_dq_8_0 port map ( wr_data1(7)=>
      i_pixel_int(7), wr_data1(6)=>i_pixel_int(6), wr_data1(5)=>
      i_pixel_int(5), wr_data1(4)=>i_pixel_int(4), wr_data1(3)=>
      i_pixel_int(3), wr_data1(2)=>i_pixel_int(2), wr_data1(1)=>
      i_pixel_int(1), wr_data1(0)=>i_pixel_int(0), rd_data1(7)=>
      tempStorage_0(7), rd_data1(6)=>tempStorage_0(6), rd_data1(5)=>
      tempStorage_0(5), rd_data1(4)=>tempStorage_0(4), rd_data1(3)=>
      tempStorage_0(3), rd_data1(2)=>tempStorage_0(2), rd_data1(1)=>
      tempStorage_0(1), rd_data1(0)=>tempStorage_0(0), addr1(7)=>col(7), 
      addr1(6)=>col(6), addr1(5)=>col(5), addr1(4)=>col(4), addr1(3)=>col(3), 
      addr1(2)=>col(2), addr1(1)=>col(1), addr1(0)=>col(0), wr_clk1=>
      i_clock_int, rd_clk1=>DANGLING(71), wr_ena1=>we(0), rd_ena1=>DANGLING(
      72), ena1=>DANGLING(73), rst1=>DANGLING(74), regce1=>DANGLING(75));
   Generate_mem_1_u_mem0_mem : ram_dq_8_1 port map ( wr_data1(7)=>
      i_pixel_int(7), wr_data1(6)=>i_pixel_int(6), wr_data1(5)=>
      i_pixel_int(5), wr_data1(4)=>i_pixel_int(4), wr_data1(3)=>
      i_pixel_int(3), wr_data1(2)=>i_pixel_int(2), wr_data1(1)=>
      i_pixel_int(1), wr_data1(0)=>i_pixel_int(0), rd_data1(7)=>
      tempStorage_1(7), rd_data1(6)=>tempStorage_1(6), rd_data1(5)=>
      tempStorage_1(5), rd_data1(4)=>tempStorage_1(4), rd_data1(3)=>
      tempStorage_1(3), rd_data1(2)=>tempStorage_1(2), rd_data1(1)=>
      tempStorage_1(1), rd_data1(0)=>tempStorage_1(0), addr1(7)=>col(7), 
      addr1(6)=>col(6), addr1(5)=>col(5), addr1(4)=>col(4), addr1(3)=>col(3), 
      addr1(2)=>col(2), addr1(1)=>col(1), addr1(0)=>col(0), wr_clk1=>
      i_clock_int, rd_clk1=>DANGLING(76), wr_ena1=>we(1), rd_ena1=>DANGLING(
      77), ena1=>DANGLING(78), rst1=>DANGLING(79), regce1=>DANGLING(80));
   Generate_mem_2_u_mem0_mem : ram_dq_8_2 port map ( wr_data1(7)=>
      i_pixel_int(7), wr_data1(6)=>i_pixel_int(6), wr_data1(5)=>
      i_pixel_int(5), wr_data1(4)=>i_pixel_int(4), wr_data1(3)=>
      i_pixel_int(3), wr_data1(2)=>i_pixel_int(2), wr_data1(1)=>
      i_pixel_int(1), wr_data1(0)=>i_pixel_int(0), rd_data1(7)=>
      tempStorage_2(7), rd_data1(6)=>tempStorage_2(6), rd_data1(5)=>
      tempStorage_2(5), rd_data1(4)=>tempStorage_2(4), rd_data1(3)=>
      tempStorage_2(3), rd_data1(2)=>tempStorage_2(2), rd_data1(1)=>
      tempStorage_2(1), rd_data1(0)=>tempStorage_2(0), addr1(7)=>col(7), 
      addr1(6)=>col(6), addr1(5)=>col(5), addr1(4)=>col(4), addr1(3)=>col(3), 
      addr1(2)=>col(2), addr1(1)=>col(1), addr1(0)=>col(0), wr_clk1=>
      i_clock_int, rd_clk1=>DANGLING(81), wr_ena1=>we(2), rd_ena1=>DANGLING(
      82), ena1=>DANGLING(83), rst1=>DANGLING(84), regce1=>DANGLING(85));
   PWR <= '1';
   nx15418z1 <= NOT nx6383z2;
   \_MGC0390_MGC039\ <= '0';
   reg_x_r6_9 : stratixii_lcell_ff port map ( regout=>x_r6(9), datain=>
      x_r6_8n4s1(9), clk=>i_clock_int, ena=>validBit_2_repl);
   reg_x_r6_8 : stratixii_lcell_ff port map ( regout=>x_r6(8), datain=>
      x_r6_8n4s1(8), clk=>i_clock_int, ena=>validBit_2_repl);
   reg_x_r6_7 : stratixii_lcell_ff port map ( regout=>x_r6(7), datain=>
      x_r6_8n4s1(7), clk=>i_clock_int, ena=>validBit_2_repl);
   reg_x_r6_6 : stratixii_lcell_ff port map ( regout=>x_r6(6), datain=>
      x_r6_8n4s1(6), clk=>i_clock_int, ena=>validBit_2_repl);
   reg_x_r6_5 : stratixii_lcell_ff port map ( regout=>x_r6(5), datain=>
      x_r6_8n4s1(5), clk=>i_clock_int, ena=>validBit_2_repl);
   reg_x_r6_4 : stratixii_lcell_ff port map ( regout=>x_r6(4), datain=>
      x_r6_8n4s1(4), clk=>i_clock_int, ena=>validBit_2_repl);
   reg_x_r6_3 : stratixii_lcell_ff port map ( regout=>x_r6(3), datain=>
      x_r6_8n4s1(3), clk=>i_clock_int, ena=>validBit_2_repl);
   reg_x_r6_2 : stratixii_lcell_ff port map ( regout=>x_r6(2), datain=>
      x_r6_8n4s1(2), clk=>i_clock_int, ena=>validBit_2_repl);
   reg_x_r6_1 : stratixii_lcell_ff port map ( regout=>x_r6(1), datain=>
      x_r6_8n4s1(1), clk=>i_clock_int, ena=>validBit_2_repl);
   reg_x_r6_0 : stratixii_lcell_ff port map ( regout=>x_r6(0), datain=>
      x_r6_8n4s1(0), clk=>i_clock_int, ena=>validBit_2_repl);
   reg_x_r5_7 : stratixii_lcell_ff port map ( regout=>x_r5(7), datain=>
      nx27953z1, clk=>i_clock_int, ena=>nx27953z2);
   reg_x_r5_6 : stratixii_lcell_ff port map ( regout=>x_r5(6), datain=>
      nx28950z1, clk=>i_clock_int, ena=>nx27953z2);
   reg_x_r5_5 : stratixii_lcell_ff port map ( regout=>x_r5(5), datain=>
      nx29947z1, clk=>i_clock_int, ena=>nx27953z2);
   reg_x_r5_4 : stratixii_lcell_ff port map ( regout=>x_r5(4), datain=>
      nx30944z1, clk=>i_clock_int, ena=>nx27953z2);
   reg_x_r5_3 : stratixii_lcell_ff port map ( regout=>x_r5(3), datain=>
      nx31941z1, clk=>i_clock_int, ena=>nx27953z2);
   reg_x_r5_2 : stratixii_lcell_ff port map ( regout=>x_r5(2), datain=>
      nx32938z1, clk=>i_clock_int, ena=>nx27953z2);
   reg_x_r5_1 : stratixii_lcell_ff port map ( regout=>x_r5(1), datain=>
      nx33935z1, clk=>i_clock_int, ena=>nx27953z2);
   reg_x_r5_0 : stratixii_lcell_ff port map ( regout=>x_r5(0), datain=>
      nx34932z1, clk=>i_clock_int, ena=>nx27953z2);
   reg_x_r3_9 : stratixii_lcell_ff port map ( regout=>x_r3(9), datain=>
      x_r3_7n3s1(9), clk=>i_clock_int, ena=>nx56415z1);
   reg_x_r3_8 : stratixii_lcell_ff port map ( regout=>x_r3(8), datain=>
      x_r3_7n3s1(8), clk=>i_clock_int, ena=>nx56415z1);
   reg_x_r3_7 : stratixii_lcell_ff port map ( regout=>x_r3(7), datain=>
      x_r3_7n3s1(7), clk=>i_clock_int, ena=>nx56415z1);
   reg_x_r3_6 : stratixii_lcell_ff port map ( regout=>x_r3(6), datain=>
      x_r3_7n3s1(6), clk=>i_clock_int, ena=>nx56415z1);
   reg_x_r3_5 : stratixii_lcell_ff port map ( regout=>x_r3(5), datain=>
      x_r3_7n3s1(5), clk=>i_clock_int, ena=>nx56415z1);
   reg_x_r3_4 : stratixii_lcell_ff port map ( regout=>x_r3(4), datain=>
      x_r3_7n3s1(4), clk=>i_clock_int, ena=>nx56415z1);
   reg_x_r3_3 : stratixii_lcell_ff port map ( regout=>x_r3(3), datain=>
      x_r3_7n3s1(3), clk=>i_clock_int, ena=>nx56415z1);
   reg_x_r3_2 : stratixii_lcell_ff port map ( regout=>x_r3(2), datain=>
      x_r3_7n3s1(2), clk=>i_clock_int, ena=>nx56415z1);
   reg_x_r3_1 : stratixii_lcell_ff port map ( regout=>x_r3(1), datain=>
      x_r3_7n3s1(1), clk=>i_clock_int, ena=>nx56415z1);
   reg_x_r3_0 : stratixii_lcell_ff port map ( regout=>x_r3(0), datain=>
      x_r3_7n3s1(0), clk=>i_clock_int, ena=>nx56415z1);
   reg_x_r22_9 : stratixii_lcell_ff port map ( regout=>x_r22(9), datain=>
      x_r22_8n1s1(9), clk=>i_clock_int, ena=>nx65254z1);
   reg_x_r22_8 : stratixii_lcell_ff port map ( regout=>x_r22(8), datain=>
      x_r22_8n1s1(8), clk=>i_clock_int, ena=>nx65254z1);
   reg_x_r22_7 : stratixii_lcell_ff port map ( regout=>x_r22(7), datain=>
      x_r22_8n1s1(7), clk=>i_clock_int, ena=>nx65254z1);
   reg_x_r22_6 : stratixii_lcell_ff port map ( regout=>x_r22(6), datain=>
      x_r22_8n1s1(6), clk=>i_clock_int, ena=>nx65254z1);
   reg_x_r22_5 : stratixii_lcell_ff port map ( regout=>x_r22(5), datain=>
      x_r22_8n1s1(5), clk=>i_clock_int, ena=>nx65254z1);
   reg_x_r22_4 : stratixii_lcell_ff port map ( regout=>x_r22(4), datain=>
      x_r22_8n1s1(4), clk=>i_clock_int, ena=>nx65254z1);
   reg_x_r22_3 : stratixii_lcell_ff port map ( regout=>x_r22(3), datain=>
      x_r22_8n1s1(3), clk=>i_clock_int, ena=>nx65254z1);
   reg_x_r22_2 : stratixii_lcell_ff port map ( regout=>x_r22(2), datain=>
      x_r22_8n1s1(2), clk=>i_clock_int, ena=>nx65254z1);
   reg_x_r22_12 : stratixii_lcell_ff port map ( regout=>x_r22(12), datain=>
      x_r22_8n1s1(12), clk=>i_clock_int, ena=>nx65254z1);
   reg_x_r22_11 : stratixii_lcell_ff port map ( regout=>x_r22(11), datain=>
      x_r22_8n1s1(11), clk=>i_clock_int, ena=>nx65254z1);
   reg_x_r22_10 : stratixii_lcell_ff port map ( regout=>x_r22(10), datain=>
      x_r22_8n1s1(10), clk=>i_clock_int, ena=>nx65254z1);
   reg_x_r22_1 : stratixii_lcell_ff port map ( regout=>x_r22(1), datain=>
      x_r22_8n1s1(1), clk=>i_clock_int, ena=>nx65254z1);
   reg_x_r22_0 : stratixii_lcell_ff port map ( regout=>x_r22(0), datain=>
      x_r12(0), clk=>i_clock_int, ena=>nx65254z1);
   reg_x_r12_9 : stratixii_lcell_ff port map ( regout=>x_r12(9), datain=>
      x_r12_8n2s1(9), clk=>i_clock_int, ena=>nx58464z1);
   reg_x_r12_8 : stratixii_lcell_ff port map ( regout=>x_r12(8), datain=>
      x_r12_8n2s1(8), clk=>i_clock_int, ena=>nx58464z1);
   reg_x_r12_7 : stratixii_lcell_ff port map ( regout=>x_r12(7), datain=>
      x_r12_8n2s1(7), clk=>i_clock_int, ena=>nx58464z1);
   reg_x_r12_6 : stratixii_lcell_ff port map ( regout=>x_r12(6), datain=>
      x_r12_8n2s1(6), clk=>i_clock_int, ena=>nx58464z1);
   reg_x_r12_5 : stratixii_lcell_ff port map ( regout=>x_r12(5), datain=>
      x_r12_8n2s1(5), clk=>i_clock_int, ena=>nx58464z1);
   reg_x_r12_4 : stratixii_lcell_ff port map ( regout=>x_r12(4), datain=>
      x_r12_8n2s1(4), clk=>i_clock_int, ena=>nx58464z1);
   reg_x_r12_3 : stratixii_lcell_ff port map ( regout=>x_r12(3), datain=>
      x_r12_8n2s1(3), clk=>i_clock_int, ena=>nx58464z1);
   reg_x_r12_2 : stratixii_lcell_ff port map ( regout=>x_r12(2), datain=>
      x_r12_8n2s1(2), clk=>i_clock_int, ena=>nx58464z1);
   reg_x_r12_11 : stratixii_lcell_ff port map ( regout=>x_r12(11), datain=>
      x_r12_8n2s1(11), clk=>i_clock_int, ena=>nx58464z1);
   reg_x_r12_10 : stratixii_lcell_ff port map ( regout=>x_r12(10), datain=>
      x_r12_8n2s1(10), clk=>i_clock_int, ena=>nx58464z1);
   reg_x_r12_1 : stratixii_lcell_ff port map ( regout=>x_r12(1), datain=>
      x_r12_8n2s1(1), clk=>i_clock_int, ena=>nx58464z1);
   reg_x_r12_0 : stratixii_lcell_ff port map ( regout=>x_r12(0), datain=>
      x_r12_8n2s1(0), clk=>i_clock_int, ena=>nx58464z1);
   reg_x_r11_9 : stratixii_lcell_ff port map ( regout=>x_r11(9), datain=>
      nx42030z1, clk=>i_clock_int, ena=>nx42030z2);
   reg_x_r11_8 : stratixii_lcell_ff port map ( regout=>x_r11(8), datain=>
      nx41033z1, clk=>i_clock_int, ena=>nx42030z2);
   reg_x_r11_7 : stratixii_lcell_ff port map ( regout=>x_r11(7), datain=>
      nx40036z1, clk=>i_clock_int, ena=>nx42030z2);
   reg_x_r11_6 : stratixii_lcell_ff port map ( regout=>x_r11(6), datain=>
      nx39039z1, clk=>i_clock_int, ena=>nx42030z2);
   reg_x_r11_5 : stratixii_lcell_ff port map ( regout=>x_r11(5), datain=>
      nx38042z1, clk=>i_clock_int, ena=>nx42030z2);
   reg_x_r11_4 : stratixii_lcell_ff port map ( regout=>x_r11(4), datain=>
      nx37045z1, clk=>i_clock_int, ena=>nx42030z2);
   reg_x_r11_3 : stratixii_lcell_ff port map ( regout=>x_r11(3), datain=>
      nx36048z1, clk=>i_clock_int, ena=>nx42030z2);
   reg_x_r11_2 : stratixii_lcell_ff port map ( regout=>x_r11(2), datain=>
      nx35051z1, clk=>i_clock_int, ena=>nx42030z2);
   reg_x_r11_1 : stratixii_lcell_ff port map ( regout=>x_r11(1), datain=>
      nx34054z1, clk=>i_clock_int, ena=>nx42030z2);
   reg_x_r11_0 : stratixii_lcell_ff port map ( regout=>x_r11(0), datain=>
      nx33057z1, clk=>i_clock_int, ena=>nx42030z2);
   reg_validBit_8 : stratixii_lcell_ff port map ( regout=>o_valid_dup0, 
      datain=>validBit(7), clk=>i_clock_int, sclr=>i_reset_int);
   reg_validBit_7_repl : stratixii_lcell_ff port map ( regout=>
      validBit_7_repl, datain=>validBit(6), clk=>i_clock_int, sclr=>
      i_reset_int);
   reg_validBit_7 : stratixii_lcell_ff port map ( regout=>validBit(7), 
      datain=>validBit(6), clk=>i_clock_int, sclr=>i_reset_int);
   reg_validBit_6 : stratixii_lcell_ff port map ( regout=>validBit(6), 
      datain=>validBit(5), clk=>i_clock_int, sclr=>i_reset_int);
   reg_validBit_5 : stratixii_lcell_ff port map ( regout=>validBit(5), 
      datain=>validBit(4), clk=>i_clock_int, sclr=>i_reset_int);
   reg_validBit_4 : stratixii_lcell_ff port map ( regout=>validBit(4), 
      datain=>validBit(3), clk=>i_clock_int, sclr=>i_reset_int);
   reg_validBit_3_repl : stratixii_lcell_ff port map ( regout=>
      validBit_3_repl, datain=>validBit(2), clk=>i_clock_int, sclr=>
      i_reset_int);
   reg_validBit_3 : stratixii_lcell_ff port map ( regout=>validBit(3), 
      datain=>validBit(2), clk=>i_clock_int, sclr=>i_reset_int);
   reg_validBit_2_repl : stratixii_lcell_ff port map ( regout=>
      validBit_2_repl, datain=>validBit(1), clk=>i_clock_int, sclr=>
      i_reset_int);
   reg_validBit_2 : stratixii_lcell_ff port map ( regout=>validBit(2), 
      datain=>validBit(1), clk=>i_clock_int, sclr=>i_reset_int);
   reg_validBit_1_repl : stratixii_lcell_ff port map ( regout=>
      validBit_1_repl, datain=>validBit(0), clk=>i_clock_int, sclr=>
      i_reset_int);
   reg_validBit_1 : stratixii_lcell_ff port map ( regout=>validBit(1), 
      datain=>validBit(0), clk=>i_clock_int, sclr=>i_reset_int);
   reg_validBit_0_repl : stratixii_lcell_ff port map ( regout=>
      validBit_0_repl, datain=>nx20419z1, clk=>i_clock_int);
   reg_validBit_0 : stratixii_lcell_ff port map ( regout=>validBit(0), 
      datain=>nx20419z1, clk=>i_clock_int);
   reg_vBit_2 : stratixii_lcell_ff port map ( regout=>vBit(2), datain=>
      vBit(1), clk=>i_clock_int);
   reg_vBit_1 : stratixii_lcell_ff port map ( regout=>vBit(1), datain=>
      i_valid_int, clk=>i_clock_int);
   reg_state_2 : stratixii_lcell_ff port map ( regout=>state(2), datain=>
      nx27527z1, clk=>i_clock_int, sclr=>i_reset_int);
   reg_state_1_repl : stratixii_lcell_ff port map ( regout=>state_1_repl, 
      datain=>nx28524z1, clk=>i_clock_int, sclr=>i_reset_int);
   reg_state_1 : stratixii_lcell_ff port map ( regout=>state(1), datain=>
      nx28524z1, clk=>i_clock_int, sclr=>i_reset_int);
   reg_state_0_repl : stratixii_lcell_ff port map ( regout=>state_0_repl, 
      datain=>nx29521z1, clk=>i_clock_int);
   reg_state_0 : stratixii_lcell_ff port map ( regout=>state(0), datain=>
      nx29521z1, clk=>i_clock_int);
   reg_stage1_wNw_2 : stratixii_lcell_ff port map ( regout=>stage1_wNw_2, 
      datain=>nx6383z2, clk=>i_clock_int, ena=>nx7380z2);
   reg_stage1_wNw_0 : stratixii_lcell_ff port map ( regout=>stage1_wNw_0, 
      datain=>nx15418z1, clk=>i_clock_int, ena=>nx7380z2);
   reg_stage1_sSw_2 : stratixii_lcell_ff port map ( regout=>stage1_sSw_2, 
      datain=>nx64789z2, clk=>i_clock_int, ena=>nx250z2);
   reg_stage1_nNe_2 : stratixii_lcell_ff port map ( regout=>stage1_nNe_2, 
      datain=>nx49445z2, clk=>i_clock_int, ena=>validBit_0_repl);
   reg_stage1_eSe_2 : stratixii_lcell_ff port map ( regout=>stage1_eSe_2, 
      datain=>nx28950z2, clk=>i_clock_int, ena=>nx27953z2);
   reg_second_cw_2 : stratixii_lcell_ff port map ( regout=>second_cw(2), 
      datain=>nx64999z1, clk=>i_clock_int, ena=>nx42030z2);
   reg_second_cw_1 : stratixii_lcell_ff port map ( regout=>second_cw(1), 
      datain=>nx33057z2, clk=>i_clock_int, ena=>nx42030z2);
   reg_second_cw_0 : stratixii_lcell_ff port map ( regout=>second_cw(0), 
      datain=>second_cw_9n2ss1_0, clk=>i_clock_int, ena=>nx42030z2);
   reg_r9_8 : stratixii_lcell_ff port map ( regout=>r9(8), datain=>
      r2_6n3s1(8), clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r9_7 : stratixii_lcell_ff port map ( regout=>r9(7), datain=>
      r2_6n3s1(7), clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r9_6 : stratixii_lcell_ff port map ( regout=>r9(6), datain=>
      r2_6n3s1(6), clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r9_5 : stratixii_lcell_ff port map ( regout=>r9(5), datain=>
      r2_6n3s1(5), clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r9_4 : stratixii_lcell_ff port map ( regout=>r9(4), datain=>
      r2_6n3s1(4), clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r9_3 : stratixii_lcell_ff port map ( regout=>r9(3), datain=>
      r2_6n3s1(3), clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r9_2 : stratixii_lcell_ff port map ( regout=>r9(2), datain=>
      r2_6n3s1(2), clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r9_1 : stratixii_lcell_ff port map ( regout=>r9(1), datain=>
      r2_6n3s1(1), clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r9_0 : stratixii_lcell_ff port map ( regout=>r9(0), datain=>
      r2_6n3s1(0), clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r5_7 : stratixii_lcell_ff port map ( regout=>r5(7), datain=>nx7380z1, 
      clk=>i_clock_int, ena=>nx7380z2);
   reg_r5_6 : stratixii_lcell_ff port map ( regout=>r5(6), datain=>nx6383z1, 
      clk=>i_clock_int, ena=>nx7380z2);
   reg_r5_5 : stratixii_lcell_ff port map ( regout=>r5(5), datain=>nx5386z1, 
      clk=>i_clock_int, ena=>nx7380z2);
   reg_r5_4 : stratixii_lcell_ff port map ( regout=>r5(4), datain=>nx4389z1, 
      clk=>i_clock_int, ena=>nx7380z2);
   reg_r5_3 : stratixii_lcell_ff port map ( regout=>r5(3), datain=>nx3392z1, 
      clk=>i_clock_int, ena=>nx7380z2);
   reg_r5_2 : stratixii_lcell_ff port map ( regout=>r5(2), datain=>nx2395z1, 
      clk=>i_clock_int, ena=>nx7380z2);
   reg_r5_1 : stratixii_lcell_ff port map ( regout=>r5(1), datain=>nx1398z1, 
      clk=>i_clock_int, ena=>nx7380z2);
   reg_r5_0 : stratixii_lcell_ff port map ( regout=>r5(0), datain=>nx401z1, 
      clk=>i_clock_int, ena=>nx7380z2);
   reg_r2_8 : stratixii_lcell_ff port map ( regout=>r2(8), datain=>
      r2_6n3s1(8), clk=>i_clock_int, ena=>nx33634z2);
   reg_r2_7 : stratixii_lcell_ff port map ( regout=>r2(7), datain=>
      r2_6n3s1(7), clk=>i_clock_int, ena=>nx33634z2);
   reg_r2_6 : stratixii_lcell_ff port map ( regout=>r2(6), datain=>
      r2_6n3s1(6), clk=>i_clock_int, ena=>nx33634z2);
   reg_r2_5 : stratixii_lcell_ff port map ( regout=>r2(5), datain=>
      r2_6n3s1(5), clk=>i_clock_int, ena=>nx33634z2);
   reg_r2_4 : stratixii_lcell_ff port map ( regout=>r2(4), datain=>
      r2_6n3s1(4), clk=>i_clock_int, ena=>nx33634z2);
   reg_r2_3 : stratixii_lcell_ff port map ( regout=>r2(3), datain=>
      r2_6n3s1(3), clk=>i_clock_int, ena=>nx33634z2);
   reg_r2_2 : stratixii_lcell_ff port map ( regout=>r2(2), datain=>
      r2_6n3s1(2), clk=>i_clock_int, ena=>nx33634z2);
   reg_r2_1 : stratixii_lcell_ff port map ( regout=>r2(1), datain=>
      r2_6n3s1(1), clk=>i_clock_int, ena=>nx33634z2);
   reg_r2_0 : stratixii_lcell_ff port map ( regout=>r2(0), datain=>
      r2_6n3s1(0), clk=>i_clock_int, ena=>nx33634z2);
   reg_r18_9 : stratixii_lcell_ff port map ( regout=>r18(9), datain=>
      nx17266z1, clk=>i_clock_int, ena=>nx17266z2);
   reg_r18_8 : stratixii_lcell_ff port map ( regout=>r18(8), datain=>
      nx16269z1, clk=>i_clock_int, ena=>nx17266z2);
   reg_r18_7 : stratixii_lcell_ff port map ( regout=>r18(7), datain=>
      nx15272z1, clk=>i_clock_int, ena=>nx17266z2);
   reg_r18_6 : stratixii_lcell_ff port map ( regout=>r18(6), datain=>
      nx14275z1, clk=>i_clock_int, ena=>nx17266z2);
   reg_r18_5 : stratixii_lcell_ff port map ( regout=>r18(5), datain=>
      nx13278z1, clk=>i_clock_int, ena=>nx17266z2);
   reg_r18_4 : stratixii_lcell_ff port map ( regout=>r18(4), datain=>
      nx12281z1, clk=>i_clock_int, ena=>nx17266z2);
   reg_r18_3 : stratixii_lcell_ff port map ( regout=>r18(3), datain=>
      nx11284z1, clk=>i_clock_int, ena=>nx17266z2);
   reg_r18_2 : stratixii_lcell_ff port map ( regout=>r18(2), datain=>
      nx10287z1, clk=>i_clock_int, ena=>nx17266z2);
   reg_r18_1 : stratixii_lcell_ff port map ( regout=>r18(1), datain=>
      nx9290z1, clk=>i_clock_int, ena=>nx17266z2);
   reg_r18_0 : stratixii_lcell_ff port map ( regout=>r18(0), datain=>
      nx8293z1, clk=>i_clock_int, ena=>nx17266z2);
   reg_r17_9 : stratixii_lcell_ff port map ( regout=>r17_9, datain=>
      r17_10n1s1_9, clk=>i_clock_int, ena=>validBit_7_repl);
   reg_r17_8 : stratixii_lcell_ff port map ( regout=>r17_8, datain=>
      r17_10n1s1_8, clk=>i_clock_int, ena=>validBit_7_repl);
   reg_r17_7 : stratixii_lcell_ff port map ( regout=>r17_7, datain=>
      r17_10n1s1_7, clk=>i_clock_int, ena=>validBit_7_repl);
   reg_r17_12 : stratixii_lcell_ff port map ( regout=>r17_12, datain=>
      r17_10n1s1_12, clk=>i_clock_int, ena=>validBit_7_repl);
   reg_r17_11 : stratixii_lcell_ff port map ( regout=>r17_11, datain=>
      r17_10n1s1_11, clk=>i_clock_int, ena=>validBit_7_repl);
   reg_r17_10 : stratixii_lcell_ff port map ( regout=>r17_10, datain=>
      r17_10n1s1_10, clk=>i_clock_int, ena=>validBit_7_repl);
   reg_r16_9 : stratixii_lcell_ff port map ( regout=>r16(9), datain=>
      r16_7n1s1(9), clk=>i_clock_int, ena=>nx34104z1);
   reg_r16_8 : stratixii_lcell_ff port map ( regout=>r16(8), datain=>
      r16_7n1s1(8), clk=>i_clock_int, ena=>nx34104z1);
   reg_r16_7 : stratixii_lcell_ff port map ( regout=>r16(7), datain=>
      r16_7n1s1(7), clk=>i_clock_int, ena=>nx34104z1);
   reg_r16_6 : stratixii_lcell_ff port map ( regout=>r16(6), datain=>
      r16_7n1s1(6), clk=>i_clock_int, ena=>nx34104z1);
   reg_r16_5 : stratixii_lcell_ff port map ( regout=>r16(5), datain=>
      r16_7n1s1(5), clk=>i_clock_int, ena=>nx34104z1);
   reg_r16_4 : stratixii_lcell_ff port map ( regout=>r16(4), datain=>
      r16_7n1s1(4), clk=>i_clock_int, ena=>nx34104z1);
   reg_r16_3 : stratixii_lcell_ff port map ( regout=>r16(3), datain=>
      r16_7n1s1(3), clk=>i_clock_int, ena=>nx34104z1);
   reg_r16_2 : stratixii_lcell_ff port map ( regout=>r16(2), datain=>
      r16_7n1s1(2), clk=>i_clock_int, ena=>nx34104z1);
   reg_r16_1 : stratixii_lcell_ff port map ( regout=>r16(1), datain=>
      r16_7n1s1(1), clk=>i_clock_int, ena=>nx34104z1);
   reg_r16_0 : stratixii_lcell_ff port map ( regout=>r16(0), datain=>
      r16_7n1s1(0), clk=>i_clock_int, ena=>nx34104z1);
   reg_r15_9 : stratixii_lcell_ff port map ( regout=>r15(9), datain=>
      nx23013z1, clk=>i_clock_int, ena=>validBit_3_repl);
   reg_r15_8 : stratixii_lcell_ff port map ( regout=>r15(8), datain=>
      nx24010z1, clk=>i_clock_int, ena=>validBit_3_repl);
   reg_r15_7 : stratixii_lcell_ff port map ( regout=>r15(7), datain=>
      nx25007z1, clk=>i_clock_int, ena=>validBit_3_repl);
   reg_r15_6 : stratixii_lcell_ff port map ( regout=>r15(6), datain=>
      nx26004z1, clk=>i_clock_int, ena=>validBit_3_repl);
   reg_r15_5 : stratixii_lcell_ff port map ( regout=>r15(5), datain=>
      nx27001z1, clk=>i_clock_int, ena=>validBit_3_repl);
   reg_r15_4 : stratixii_lcell_ff port map ( regout=>r15(4), datain=>
      nx27998z1, clk=>i_clock_int, ena=>validBit_3_repl);
   reg_r15_3 : stratixii_lcell_ff port map ( regout=>r15(3), datain=>
      nx28995z1, clk=>i_clock_int, ena=>validBit_3_repl);
   reg_r15_2 : stratixii_lcell_ff port map ( regout=>r15(2), datain=>
      nx29992z1, clk=>i_clock_int, ena=>validBit_3_repl);
   reg_r15_1 : stratixii_lcell_ff port map ( regout=>r15(1), datain=>
      nx30989z1, clk=>i_clock_int, ena=>validBit_3_repl);
   reg_r15_0 : stratixii_lcell_ff port map ( regout=>r15(0), datain=>
      nx31986z1, clk=>i_clock_int, ena=>validBit_3_repl);
   reg_r14_9 : stratixii_lcell_ff port map ( regout=>r14(9), datain=>
      r14_8n3s1(9), clk=>i_clock_int, ena=>nx16422z1);
   reg_r14_8 : stratixii_lcell_ff port map ( regout=>r14(8), datain=>
      r14_8n3s1(8), clk=>i_clock_int, ena=>nx16422z1);
   reg_r14_7 : stratixii_lcell_ff port map ( regout=>r14(7), datain=>
      r14_8n3s1(7), clk=>i_clock_int, ena=>nx16422z1);
   reg_r14_6 : stratixii_lcell_ff port map ( regout=>r14(6), datain=>
      r14_8n3s1(6), clk=>i_clock_int, ena=>nx16422z1);
   reg_r14_5 : stratixii_lcell_ff port map ( regout=>r14(5), datain=>
      r14_8n3s1(5), clk=>i_clock_int, ena=>nx16422z1);
   reg_r14_4 : stratixii_lcell_ff port map ( regout=>r14(4), datain=>
      r14_8n3s1(4), clk=>i_clock_int, ena=>nx16422z1);
   reg_r14_3 : stratixii_lcell_ff port map ( regout=>r14(3), datain=>
      r14_8n3s1(3), clk=>i_clock_int, ena=>nx16422z1);
   reg_r14_2 : stratixii_lcell_ff port map ( regout=>r14(2), datain=>
      r14_8n3s1(2), clk=>i_clock_int, ena=>nx16422z1);
   reg_r14_10 : stratixii_lcell_ff port map ( regout=>r14(10), datain=>
      r14_8n3s1(10), clk=>i_clock_int, ena=>nx16422z1);
   reg_r14_1 : stratixii_lcell_ff port map ( regout=>r14(1), datain=>
      r14_8n3s1(1), clk=>i_clock_int, ena=>nx16422z1);
   reg_r14_0 : stratixii_lcell_ff port map ( regout=>r14(0), datain=>
      r14_8n3s1(0), clk=>i_clock_int, ena=>nx16422z1);
   reg_r13_8 : stratixii_lcell_ff port map ( regout=>r13(8), datain=>
      r2_6n3s1(8), clk=>i_clock_int, ena=>nx250z2);
   reg_r13_7 : stratixii_lcell_ff port map ( regout=>r13(7), datain=>
      r2_6n3s1(7), clk=>i_clock_int, ena=>nx250z2);
   reg_r13_6 : stratixii_lcell_ff port map ( regout=>r13(6), datain=>
      r2_6n3s1(6), clk=>i_clock_int, ena=>nx250z2);
   reg_r13_5 : stratixii_lcell_ff port map ( regout=>r13(5), datain=>
      r2_6n3s1(5), clk=>i_clock_int, ena=>nx250z2);
   reg_r13_4 : stratixii_lcell_ff port map ( regout=>r13(4), datain=>
      r2_6n3s1(4), clk=>i_clock_int, ena=>nx250z2);
   reg_r13_3 : stratixii_lcell_ff port map ( regout=>r13(3), datain=>
      r2_6n3s1(3), clk=>i_clock_int, ena=>nx250z2);
   reg_r13_2 : stratixii_lcell_ff port map ( regout=>r13(2), datain=>
      r2_6n3s1(2), clk=>i_clock_int, ena=>nx250z2);
   reg_r13_1 : stratixii_lcell_ff port map ( regout=>r13(1), datain=>
      r2_6n3s1(1), clk=>i_clock_int, ena=>nx250z2);
   reg_r13_0 : stratixii_lcell_ff port map ( regout=>r13(0), datain=>
      r2_6n3s1(0), clk=>i_clock_int, ena=>nx250z2);
   reg_r12_7 : stratixii_lcell_ff port map ( regout=>r12(7), datain=>nx250z1, 
      clk=>i_clock_int, ena=>nx250z2);
   reg_r12_6 : stratixii_lcell_ff port map ( regout=>r12(6), datain=>
      nx64789z1, clk=>i_clock_int, ena=>nx250z2);
   reg_r12_5 : stratixii_lcell_ff port map ( regout=>r12(5), datain=>
      nx63792z1, clk=>i_clock_int, ena=>nx250z2);
   reg_r12_4 : stratixii_lcell_ff port map ( regout=>r12(4), datain=>
      nx62795z1, clk=>i_clock_int, ena=>nx250z2);
   reg_r12_3 : stratixii_lcell_ff port map ( regout=>r12(3), datain=>
      nx61798z1, clk=>i_clock_int, ena=>nx250z2);
   reg_r12_2 : stratixii_lcell_ff port map ( regout=>r12(2), datain=>
      nx60801z1, clk=>i_clock_int, ena=>nx250z2);
   reg_r12_1 : stratixii_lcell_ff port map ( regout=>r12(1), datain=>
      nx59804z1, clk=>i_clock_int, ena=>nx250z2);
   reg_r12_0 : stratixii_lcell_ff port map ( regout=>r12(0), datain=>
      nx58807z1, clk=>i_clock_int, ena=>nx250z2);
   reg_r11_9 : stratixii_lcell_ff port map ( regout=>r11(9), datain=>
      x_r3_7n3s1(9), clk=>i_clock_int, ena=>nx54873z1);
   reg_r11_8 : stratixii_lcell_ff port map ( regout=>r11(8), datain=>
      x_r3_7n3s1(8), clk=>i_clock_int, ena=>nx54873z1);
   reg_r11_7 : stratixii_lcell_ff port map ( regout=>r11(7), datain=>
      x_r3_7n3s1(7), clk=>i_clock_int, ena=>nx54873z1);
   reg_r11_6 : stratixii_lcell_ff port map ( regout=>r11(6), datain=>
      x_r3_7n3s1(6), clk=>i_clock_int, ena=>nx54873z1);
   reg_r11_5 : stratixii_lcell_ff port map ( regout=>r11(5), datain=>
      x_r3_7n3s1(5), clk=>i_clock_int, ena=>nx54873z1);
   reg_r11_4 : stratixii_lcell_ff port map ( regout=>r11(4), datain=>
      x_r3_7n3s1(4), clk=>i_clock_int, ena=>nx54873z1);
   reg_r11_3 : stratixii_lcell_ff port map ( regout=>r11(3), datain=>
      x_r3_7n3s1(3), clk=>i_clock_int, ena=>nx54873z1);
   reg_r11_2 : stratixii_lcell_ff port map ( regout=>r11(2), datain=>
      x_r3_7n3s1(2), clk=>i_clock_int, ena=>nx54873z1);
   reg_r11_1 : stratixii_lcell_ff port map ( regout=>r11(1), datain=>
      x_r3_7n3s1(1), clk=>i_clock_int, ena=>nx54873z1);
   reg_r11_0 : stratixii_lcell_ff port map ( regout=>r11(0), datain=>
      x_r3_7n3s1(0), clk=>i_clock_int, ena=>nx54873z1);
   reg_r10_7 : stratixii_lcell_ff port map ( regout=>r10(7), datain=>
      nx48448z1, clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r10_6 : stratixii_lcell_ff port map ( regout=>r10(6), datain=>
      nx49445z1, clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r10_5 : stratixii_lcell_ff port map ( regout=>r10(5), datain=>
      nx50442z1, clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r10_4 : stratixii_lcell_ff port map ( regout=>r10(4), datain=>
      nx51439z1, clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r10_3 : stratixii_lcell_ff port map ( regout=>r10(3), datain=>
      nx52436z1, clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r10_2 : stratixii_lcell_ff port map ( regout=>r10(2), datain=>
      nx53433z1, clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r10_1 : stratixii_lcell_ff port map ( regout=>r10(1), datain=>
      nx54430z1, clk=>i_clock_int, ena=>validBit_0_repl);
   reg_r10_0 : stratixii_lcell_ff port map ( regout=>r10(0), datain=>
      nx55427z1, clk=>i_clock_int, ena=>validBit_0_repl);
   reg_out_signal_1 : stratixii_lcell_ff port map ( regout=>o_mode_dup0(1), 
      datain=>PWR, clk=>i_clock_int, sclr=>i_reset_int);
   reg_out_signal_0 : stratixii_lcell_ff port map ( regout=>o_mode_dup0(0), 
      datain=>nx11673z1, clk=>i_clock_int);
   reg_i_7 : stratixii_lcell_ff port map ( regout=>i(7), datain=>d(7), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_i_6 : stratixii_lcell_ff port map ( regout=>i(6), datain=>d(6), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_i_5 : stratixii_lcell_ff port map ( regout=>i(5), datain=>d(5), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_i_4 : stratixii_lcell_ff port map ( regout=>i(4), datain=>d(4), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_i_3 : stratixii_lcell_ff port map ( regout=>i(3), datain=>d(3), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_i_2 : stratixii_lcell_ff port map ( regout=>i(2), datain=>d(2), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_i_1 : stratixii_lcell_ff port map ( regout=>i(1), datain=>d(1), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_i_0 : stratixii_lcell_ff port map ( regout=>i(0), datain=>d(0), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_h_7 : stratixii_lcell_ff port map ( regout=>h(7), datain=>i(7), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_h_6 : stratixii_lcell_ff port map ( regout=>h(6), datain=>i(6), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_h_5 : stratixii_lcell_ff port map ( regout=>h(5), datain=>i(5), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_h_4 : stratixii_lcell_ff port map ( regout=>h(4), datain=>i(4), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_h_3 : stratixii_lcell_ff port map ( regout=>h(3), datain=>i(3), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_h_2 : stratixii_lcell_ff port map ( regout=>h(2), datain=>i(2), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_h_1 : stratixii_lcell_ff port map ( regout=>h(1), datain=>i(1), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_h_0 : stratixii_lcell_ff port map ( regout=>h(0), datain=>i(0), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_g_7 : stratixii_lcell_ff port map ( regout=>g(7), datain=>f(7), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_g_6 : stratixii_lcell_ff port map ( regout=>g(6), datain=>f(6), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_g_5 : stratixii_lcell_ff port map ( regout=>g(5), datain=>f(5), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_g_4 : stratixii_lcell_ff port map ( regout=>g(4), datain=>f(4), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_g_3 : stratixii_lcell_ff port map ( regout=>g(3), datain=>f(3), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_g_2 : stratixii_lcell_ff port map ( regout=>g(2), datain=>f(2), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_g_1 : stratixii_lcell_ff port map ( regout=>g(1), datain=>f(1), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_g_0 : stratixii_lcell_ff port map ( regout=>g(0), datain=>f(0), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_first_cw_2 : stratixii_lcell_ff port map ( regout=>first_cw(2), 
      datain=>nx47369z1, clk=>i_clock_int, ena=>validBit_3_repl);
   reg_first_cw_1 : stratixii_lcell_ff port map ( regout=>first_cw(1), 
      datain=>nx31986z2, clk=>i_clock_int, ena=>validBit_3_repl);
   reg_first_cw_0 : stratixii_lcell_ff port map ( regout=>first_cw(0), 
      datain=>first_cw_9n1ss1_0, clk=>i_clock_int, ena=>validBit_3_repl);
   reg_final_dir_2 : stratixii_lcell_ff port map ( regout=>final_dir(2), 
      datain=>nx35772z1, clk=>i_clock_int, ena=>nx17266z2);
   reg_final_dir_1 : stratixii_lcell_ff port map ( regout=>final_dir(1), 
      datain=>nx36769z1, clk=>i_clock_int, ena=>nx17266z2);
   reg_final_dir_0 : stratixii_lcell_ff port map ( regout=>final_dir(0), 
      datain=>nx37766z1, clk=>i_clock_int, ena=>nx17266z2);
   reg_f_7 : stratixii_lcell_ff port map ( regout=>f(7), datain=>e(7), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_f_6 : stratixii_lcell_ff port map ( regout=>f(6), datain=>e(6), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_f_5 : stratixii_lcell_ff port map ( regout=>f(5), datain=>e(5), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_f_4 : stratixii_lcell_ff port map ( regout=>f(4), datain=>e(4), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_f_3 : stratixii_lcell_ff port map ( regout=>f(3), datain=>e(3), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_f_2 : stratixii_lcell_ff port map ( regout=>f(2), datain=>e(2), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_f_1 : stratixii_lcell_ff port map ( regout=>f(1), datain=>e(1), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_f_0 : stratixii_lcell_ff port map ( regout=>f(0), datain=>e(0), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_e_7 : stratixii_lcell_ff port map ( regout=>e(7), datain=>
      i_pixel_int(7), clk=>i_clock_int, ena=>nx36625z2);
   reg_e_6 : stratixii_lcell_ff port map ( regout=>e(6), datain=>
      i_pixel_int(6), clk=>i_clock_int, ena=>nx36625z2);
   reg_e_5 : stratixii_lcell_ff port map ( regout=>e(5), datain=>
      i_pixel_int(5), clk=>i_clock_int, ena=>nx36625z2);
   reg_e_4 : stratixii_lcell_ff port map ( regout=>e(4), datain=>
      i_pixel_int(4), clk=>i_clock_int, ena=>nx36625z2);
   reg_e_3 : stratixii_lcell_ff port map ( regout=>e(3), datain=>
      i_pixel_int(3), clk=>i_clock_int, ena=>nx36625z2);
   reg_e_2 : stratixii_lcell_ff port map ( regout=>e(2), datain=>
      i_pixel_int(2), clk=>i_clock_int, ena=>nx36625z2);
   reg_e_1 : stratixii_lcell_ff port map ( regout=>e(1), datain=>
      i_pixel_int(1), clk=>i_clock_int, ena=>nx36625z2);
   reg_e_0 : stratixii_lcell_ff port map ( regout=>e(0), datain=>
      i_pixel_int(0), clk=>i_clock_int, ena=>nx36625z2);
   reg_d_7 : stratixii_lcell_ff port map ( regout=>d(7), datain=>nx36625z1, 
      adatasdata=>tempStorage_2(7), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_0_repl);
   reg_d_6 : stratixii_lcell_ff port map ( regout=>d(6), datain=>nx35628z1, 
      adatasdata=>tempStorage_2(6), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_0_repl);
   reg_d_5 : stratixii_lcell_ff port map ( regout=>d(5), datain=>nx34631z1, 
      adatasdata=>tempStorage_2(5), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_0_repl);
   reg_d_4 : stratixii_lcell_ff port map ( regout=>d(4), datain=>nx33634z1, 
      adatasdata=>tempStorage_2(4), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_0_repl);
   reg_d_3 : stratixii_lcell_ff port map ( regout=>d(3), datain=>nx32637z1, 
      adatasdata=>tempStorage_2(3), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_0_repl);
   reg_d_2 : stratixii_lcell_ff port map ( regout=>d(2), datain=>nx31640z1, 
      adatasdata=>tempStorage_2(2), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_0_repl);
   reg_d_1 : stratixii_lcell_ff port map ( regout=>d(1), datain=>nx30643z1, 
      adatasdata=>tempStorage_2(1), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_0_repl);
   reg_d_0 : stratixii_lcell_ff port map ( regout=>d(0), datain=>nx29646z1, 
      adatasdata=>tempStorage_2(0), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_0_repl);
   reg_c_7 : stratixii_lcell_ff port map ( regout=>c(7), datain=>nx20492z1, 
      adatasdata=>tempStorage_2(7), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_1_repl);
   reg_c_6 : stratixii_lcell_ff port map ( regout=>c(6), datain=>nx21489z1, 
      adatasdata=>tempStorage_2(6), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_1_repl);
   reg_c_5 : stratixii_lcell_ff port map ( regout=>c(5), datain=>nx22486z1, 
      adatasdata=>tempStorage_2(5), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_1_repl);
   reg_c_4 : stratixii_lcell_ff port map ( regout=>c(4), datain=>nx23483z1, 
      adatasdata=>tempStorage_2(4), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_1_repl);
   reg_c_3 : stratixii_lcell_ff port map ( regout=>c(3), datain=>nx24480z1, 
      adatasdata=>tempStorage_2(3), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_1_repl);
   reg_c_2 : stratixii_lcell_ff port map ( regout=>c(2), datain=>nx25477z1, 
      adatasdata=>tempStorage_2(2), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_1_repl);
   reg_c_1 : stratixii_lcell_ff port map ( regout=>c(1), datain=>nx26474z1, 
      adatasdata=>tempStorage_2(1), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_1_repl);
   reg_c_0 : stratixii_lcell_ff port map ( regout=>c(0), datain=>nx27471z1, 
      adatasdata=>tempStorage_2(0), clk=>i_clock_int, ena=>nx36625z2, sload
      =>state_1_repl);
   reg_b_d1_9 : stratixii_lcell_ff port map ( regout=>b_d1(9), datain=>
      b_d1_7n4s1(9), clk=>i_clock_int, ena=>validBit_1_repl);
   reg_b_d1_8 : stratixii_lcell_ff port map ( regout=>b_d1(8), datain=>
      b_d1_7n4s1(8), clk=>i_clock_int, ena=>validBit_1_repl);
   reg_b_d1_7 : stratixii_lcell_ff port map ( regout=>b_d1(7), datain=>
      b_d1_7n4s1(7), clk=>i_clock_int, ena=>validBit_1_repl);
   reg_b_d1_6 : stratixii_lcell_ff port map ( regout=>b_d1(6), datain=>
      b_d1_7n4s1(6), clk=>i_clock_int, ena=>validBit_1_repl);
   reg_b_d1_5 : stratixii_lcell_ff port map ( regout=>b_d1(5), datain=>
      b_d1_7n4s1(5), clk=>i_clock_int, ena=>validBit_1_repl);
   reg_b_d1_4 : stratixii_lcell_ff port map ( regout=>b_d1(4), datain=>
      b_d1_7n4s1(4), clk=>i_clock_int, ena=>validBit_1_repl);
   reg_b_d1_3 : stratixii_lcell_ff port map ( regout=>b_d1(3), datain=>
      b_d1_7n4s1(3), clk=>i_clock_int, ena=>validBit_1_repl);
   reg_b_d1_2 : stratixii_lcell_ff port map ( regout=>b_d1(2), datain=>
      b_d1_7n4s1(2), clk=>i_clock_int, ena=>validBit_1_repl);
   reg_b_d1_1 : stratixii_lcell_ff port map ( regout=>b_d1(1), datain=>
      b_d1_7n4s1(1), clk=>i_clock_int, ena=>validBit_1_repl);
   reg_b_d1_0 : stratixii_lcell_ff port map ( regout=>b_d1(0), datain=>
      b_d1_7n4s1(0), clk=>i_clock_int, ena=>validBit_1_repl);
   reg_b_7 : stratixii_lcell_ff port map ( regout=>b(7), datain=>c(7), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_b_6 : stratixii_lcell_ff port map ( regout=>b(6), datain=>c(6), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_b_5 : stratixii_lcell_ff port map ( regout=>b(5), datain=>c(5), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_b_4 : stratixii_lcell_ff port map ( regout=>b(4), datain=>c(4), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_b_3 : stratixii_lcell_ff port map ( regout=>b(3), datain=>c(3), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_b_2 : stratixii_lcell_ff port map ( regout=>b(2), datain=>c(2), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_b_1 : stratixii_lcell_ff port map ( regout=>b(1), datain=>c(1), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_b_0 : stratixii_lcell_ff port map ( regout=>b(0), datain=>c(0), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_a_7 : stratixii_lcell_ff port map ( regout=>a(7), datain=>b(7), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_a_6 : stratixii_lcell_ff port map ( regout=>a(6), datain=>b(6), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_a_5 : stratixii_lcell_ff port map ( regout=>a(5), datain=>b(5), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_a_4 : stratixii_lcell_ff port map ( regout=>a(4), datain=>b(4), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_a_3 : stratixii_lcell_ff port map ( regout=>a(3), datain=>b(3), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_a_2 : stratixii_lcell_ff port map ( regout=>a(2), datain=>b(2), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_a_1 : stratixii_lcell_ff port map ( regout=>a(1), datain=>b(1), clk=>
      i_clock_int, ena=>nx36625z2);
   reg_a_0 : stratixii_lcell_ff port map ( regout=>a(0), datain=>b(0), clk=>
      i_clock_int, ena=>nx36625z2);
   o_valid_obuf : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_valid_EXMPLR558, datain=>o_valid_dup0);
   o_row_obuf_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR584(7), datain=>o_row_dup0(7));
   o_row_obuf_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR584(6), datain=>o_row_dup0(6));
   o_row_obuf_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR584(5), datain=>o_row_dup0(5));
   o_row_obuf_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR584(4), datain=>o_row_dup0(4));
   o_row_obuf_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR584(3), datain=>o_row_dup0(3));
   o_row_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR584(2), datain=>o_row_dup0(2));
   o_row_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR584(1), datain=>o_row_dup0(1));
   o_row_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR584(0), datain=>o_row_dup0(0));
   o_mode_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR583(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR583(0), datain=>o_mode_dup0(0));
   o_edge_obuf : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_edge_EXMPLR559, datain=>o_edge_dup0);
   o_dir_obuf_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR582(2), datain=>o_dir_dup0(2));
   o_dir_obuf_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR582(1), datain=>o_dir_dup0(1));
   o_dir_obuf_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR582(0), datain=>o_dir_dup0(0));
   ix17322z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000000000000000f") 
       port map ( combout=>nx17322z2, datac=>col(4), datad=>col(5), datae=>
      col(6), dataf=>col(7));
   ix20419z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx20419z8, datae=>o_row_dup0(3), dataf=>
      o_row_dup0(4));
   ix20419z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx20419z7, datae=>o_row_dup0(1), dataf=>
      o_row_dup0(2));
   ix20419z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"f0f0f0f0f0f0f000") 
       port map ( combout=>nx20419z5, datac=>i_valid_int, datad=>
      o_row_dup0(5), datae=>o_row_dup0(6), dataf=>o_row_dup0(7));
   ix20419z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"fc00fc00fc000000") 
       port map ( combout=>nx20419z6, datab=>nx20419z7, datac=>nx20419z8, 
      datad=>i_valid_int, datae=>col(2), dataf=>col(3));
   ix20419z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"ffeeececfeeeecec",
         extended_lut => "on") 
       port map ( combout=>nx20419z4, dataa=>nx20419z5, datab=>nx20419z6, 
      datac=>col(2), datad=>i_valid_int, datae=>col(1), dataf=>nx20419z8, 
      datag=>nx20419z7);
   ix20419z37211 : stratixii_lcell_comb
      generic map (lut_mask => X"fef0f0f0fef00000") 
       port map ( combout=>nx20419z11, dataa=>nx20419z7, datab=>nx20419z8, 
      datac=>nx20419z5, datad=>i_valid_int, datae=>col(5), dataf=>col(6));
   ix20419z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"fc00fc00fc000000") 
       port map ( combout=>nx20419z10, datab=>nx20419z7, datac=>nx20419z8, 
      datad=>i_valid_int, datae=>col(6), dataf=>col(7));
   ix20419z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffccc0c800",
         extended_lut => "on") 
       port map ( combout=>nx20419z2, dataa=>col(7), datab=>i_valid_int, 
      datac=>col(3), datad=>nx20419z3, datae=>col(4), dataf=>nx20419z4, 
      datag=>nx20419z9);
   ix20419z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx20419z9, datac=>o_row_dup0(1), datad=>
      o_row_dup0(2), datae=>o_row_dup0(3), dataf=>o_row_dup0(4));
   ix20419z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffffff00") 
       port map ( combout=>nx20419z3, datad=>o_row_dup0(5), datae=>
      o_row_dup0(6), dataf=>o_row_dup0(7));
   ix16269z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"0000f000ff00fff0") 
       port map ( combout=>nx16269z6, datac=>x_r11(0), datad=>x_r11(1), 
      datae=>r15(0), dataf=>r15(1));
   ix16269z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx16269z5, datab=>nx16269z6, datac=>x_r11(2), 
      datad=>x_r11(3), datae=>r15(2), dataf=>r15(3));
   ix36874z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffffffc0") 
       port map ( combout=>nx36874z1, datab=>r17_7, datac=>r17_8, datad=>
      r17_9, datae=>r17_10, dataf=>r17_11);
   ix31986z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"0fff00ff000f0000") 
       port map ( combout=>nx31986z6, datac=>x_r3(0), datad=>x_r3(1), datae
      =>b_d1(0), dataf=>b_d1(1));
   ix33057z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"0000f000ff00fff0") 
       port map ( combout=>nx33057z6, datac=>r16(0), datad=>r16(1), datae=>
      r11(0), dataf=>r11(1));
   ix33057z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx33057z5, datab=>nx33057z6, datac=>r16(2), datad
      =>r16(3), datae=>r11(2), dataf=>r11(3));
   ix49445z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"0000f000ff00fff0") 
       port map ( combout=>nx49445z5, datac=>d(0), datad=>d(1), datae=>a(0), 
      dataf=>a(1));
   ix6383z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"0fff00ff000f0000") 
       port map ( combout=>nx6383z5, datac=>g(0), datad=>g(1), datae=>b(0), 
      dataf=>b(1));
   ix28950z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"0000f000ff00fff0") 
       port map ( combout=>nx28950z5, datac=>f(0), datad=>f(1), datae=>c(0), 
      dataf=>c(1));
   ix64789z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"0000f000ff00fff0") 
       port map ( combout=>nx64789z5, datac=>h(0), datad=>h(1), datae=>e(0), 
      dataf=>e(1));
   ix33057z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx33057z3, datab=>nx33057z4, datac=>r16(6), datad
      =>r16(7), datae=>r11(6), dataf=>r11(7));
   ix16269z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx16269z3, datab=>nx16269z4, datac=>x_r11(6), 
      datad=>x_r11(7), datae=>r15(6), dataf=>r15(7));
   ix6383z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx6383z2, datab=>nx6383z3, datac=>g(6), datad=>
      g(7), datae=>b(6), dataf=>b(7));
   ix11673z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffffc") 
       port map ( combout=>nx11673z2, datab=>nx17322z3, datac=>col(4), datad
      =>col(5), datae=>col(6), dataf=>col(7));
   ix11673z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffffe") 
       port map ( combout=>nx11673z3, dataa=>o_row_dup0(2), datab=>
      o_row_dup0(3), datac=>o_row_dup0(4), datad=>o_row_dup0(5), datae=>
      o_row_dup0(6), dataf=>o_row_dup0(7));
   ix16269z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx16269z4, datab=>nx16269z5, datac=>x_r11(4), 
      datad=>x_r11(5), datae=>r15(4), dataf=>r15(5));
   ix31986z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx31986z5, datab=>nx31986z6, datac=>x_r3(2), 
      datad=>x_r3(3), datae=>b_d1(2), dataf=>b_d1(3));
   ix31986z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx31986z4, datab=>nx31986z5, datac=>x_r3(4), 
      datad=>x_r3(5), datae=>b_d1(4), dataf=>b_d1(5));
   ix31986z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx31986z3, datab=>nx31986z4, datac=>x_r3(6), 
      datad=>x_r3(7), datae=>b_d1(6), dataf=>b_d1(7));
   ix33057z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx33057z4, datab=>nx33057z5, datac=>r16(4), datad
      =>r16(5), datae=>r11(4), dataf=>r11(5));
   ix49445z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx49445z4, datab=>nx49445z5, datac=>d(2), datad=>
      d(3), datae=>a(2), dataf=>a(3));
   ix49445z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx49445z3, datab=>nx49445z4, datac=>d(4), datad=>
      d(5), datae=>a(4), dataf=>a(5));
   ix6383z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx6383z4, datab=>nx6383z5, datac=>g(2), datad=>
      g(3), datae=>b(2), dataf=>b(3));
   ix6383z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx6383z3, datab=>nx6383z4, datac=>g(4), datad=>
      g(5), datae=>b(4), dataf=>b(5));
   ix28950z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx28950z4, datab=>nx28950z5, datac=>f(2), datad=>
      f(3), datae=>c(2), dataf=>c(3));
   ix28950z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx28950z3, datab=>nx28950z4, datac=>f(4), datad=>
      f(5), datae=>c(4), dataf=>c(5));
   ix64789z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx64789z4, datab=>nx64789z5, datac=>h(2), datad=>
      h(3), datae=>e(2), dataf=>e(3));
   ix64789z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx64789z3, datab=>nx64789z4, datac=>h(4), datad=>
      h(5), datae=>e(4), dataf=>e(5));
   ix20419z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000fffffff0") 
       port map ( combout=>nx20419z1, datac=>nx20419z2, datad=>nx20419z10, 
      datae=>nx20419z11, dataf=>i_reset_int);
   ix11673z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffccffccffccffc0") 
       port map ( combout=>nx11673z1, datab=>nx11673z2, datac=>nx11673z3, 
      datad=>i_reset_int, datae=>o_row_dup0(0), dataf=>o_row_dup0(1));
   ix31986z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx31986z1, datad=>nx31986z2, datae=>x_r3(0), 
      dataf=>b_d1(0));
   ix30989z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx30989z1, datad=>nx31986z2, datae=>x_r3(1), 
      dataf=>b_d1(1));
   ix29992z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx29992z1, datad=>nx31986z2, datae=>x_r3(2), 
      dataf=>b_d1(2));
   ix28995z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx28995z1, datad=>nx31986z2, datae=>x_r3(3), 
      dataf=>b_d1(3));
   ix27998z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx27998z1, datad=>nx31986z2, datae=>x_r3(4), 
      dataf=>b_d1(4));
   ix27001z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx27001z1, datad=>nx31986z2, datae=>x_r3(5), 
      dataf=>b_d1(5));
   ix26004z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx26004z1, datad=>nx31986z2, datae=>x_r3(6), 
      dataf=>b_d1(6));
   ix25007z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx25007z1, datad=>nx31986z2, datae=>x_r3(7), 
      dataf=>b_d1(7));
   ix24010z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx24010z1, datad=>nx31986z2, datae=>x_r3(8), 
      dataf=>b_d1(8));
   ix23013z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx23013z1, datae=>x_r3(9), dataf=>b_d1(9));
   ix47369z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx47369z1, datad=>nx31986z2, datae=>stage1_nNe_2, 
      dataf=>stage1_wNw_2);
   ix33057z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx33057z1, datad=>nx33057z2, datae=>r16(0), dataf
      =>r11(0));
   ix34054z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx34054z1, datad=>nx33057z2, datae=>r16(1), dataf
      =>r11(1));
   ix35051z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx35051z1, datad=>nx33057z2, datae=>r16(2), dataf
      =>r11(2));
   ix36048z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx36048z1, datad=>nx33057z2, datae=>r16(3), dataf
      =>r11(3));
   ix37045z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx37045z1, datad=>nx33057z2, datae=>r16(4), dataf
      =>r11(4));
   ix38042z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx38042z1, datad=>nx33057z2, datae=>r16(5), dataf
      =>r11(5));
   ix39039z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx39039z1, datad=>nx33057z2, datae=>r16(6), dataf
      =>r11(6));
   ix40036z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx40036z1, datad=>nx33057z2, datae=>r16(7), dataf
      =>r11(7));
   ix41033z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx41033z1, datad=>nx33057z2, datae=>r16(8), dataf
      =>r11(8));
   ix42030z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx42030z1, datae=>r16(9), dataf=>r11(9));
   ix64999z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx64999z1, datad=>nx33057z2, datae=>stage1_sSw_2, 
      dataf=>stage1_eSe_2);
   ix8293z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx8293z1, datad=>nx16269z2, datae=>x_r11(0), 
      dataf=>r15(0));
   ix9290z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx9290z1, datad=>nx16269z2, datae=>x_r11(1), 
      dataf=>r15(1));
   ix10287z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx10287z1, datad=>nx16269z2, datae=>x_r11(2), 
      dataf=>r15(2));
   ix11284z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx11284z1, datad=>nx16269z2, datae=>x_r11(3), 
      dataf=>r15(3));
   ix12281z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx12281z1, datad=>nx16269z2, datae=>x_r11(4), 
      dataf=>r15(4));
   ix13278z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx13278z1, datad=>nx16269z2, datae=>x_r11(5), 
      dataf=>r15(5));
   ix14275z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx14275z1, datad=>nx16269z2, datae=>x_r11(6), 
      dataf=>r15(6));
   ix15272z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx15272z1, datad=>nx16269z2, datae=>x_r11(7), 
      dataf=>r15(7));
   ix16269z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx16269z1, datad=>nx16269z2, datae=>x_r11(8), 
      dataf=>r15(8));
   ix17266z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx17266z1, datae=>x_r11(9), dataf=>r15(9));
   ix37766z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx37766z1, datad=>nx16269z2, datae=>first_cw(0), 
      dataf=>second_cw(0));
   ix36769z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx36769z1, datad=>nx16269z2, datae=>first_cw(1), 
      dataf=>second_cw(1));
   ix35772z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx35772z1, datad=>nx16269z2, datae=>first_cw(2), 
      dataf=>second_cw(2));
   ix55427z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx55427z1, datad=>nx49445z2, datae=>d(0), dataf=>
      a(0));
   ix54430z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx54430z1, datad=>nx49445z2, datae=>d(1), dataf=>
      a(1));
   ix53433z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx53433z1, datad=>nx49445z2, datae=>d(2), dataf=>
      a(2));
   ix52436z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx52436z1, datad=>nx49445z2, datae=>d(3), dataf=>
      a(3));
   ix51439z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx51439z1, datad=>nx49445z2, datae=>d(4), dataf=>
      a(4));
   ix50442z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx50442z1, datad=>nx49445z2, datae=>d(5), dataf=>
      a(5));
   ix49445z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx49445z1, datad=>nx49445z2, datae=>d(6), dataf=>
      a(6));
   ix48448z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx48448z1, datae=>d(7), dataf=>a(7));
   ix401z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx401z1, datad=>nx6383z2, datae=>g(0), dataf=>
      b(0));
   ix1398z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx1398z1, datad=>nx6383z2, datae=>g(1), dataf=>
      b(1));
   ix2395z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx2395z1, datad=>nx6383z2, datae=>g(2), dataf=>
      b(2));
   ix3392z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx3392z1, datad=>nx6383z2, datae=>g(3), dataf=>
      b(3));
   ix4389z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx4389z1, datad=>nx6383z2, datae=>g(4), dataf=>
      b(4));
   ix5386z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx5386z1, datad=>nx6383z2, datae=>g(5), dataf=>
      b(5));
   ix6383z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000ff0000") 
       port map ( combout=>nx6383z1, datad=>nx6383z2, datae=>g(6), dataf=>
      b(6));
   ix7380z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx7380z1, datae=>g(7), dataf=>b(7));
   ix34932z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx34932z1, datad=>nx28950z2, datae=>f(0), dataf=>
      c(0));
   ix33935z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx33935z1, datad=>nx28950z2, datae=>f(1), dataf=>
      c(1));
   ix32938z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx32938z1, datad=>nx28950z2, datae=>f(2), dataf=>
      c(2));
   ix31941z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx31941z1, datad=>nx28950z2, datae=>f(3), dataf=>
      c(3));
   ix30944z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx30944z1, datad=>nx28950z2, datae=>f(4), dataf=>
      c(4));
   ix29947z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx29947z1, datad=>nx28950z2, datae=>f(5), dataf=>
      c(5));
   ix28950z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx28950z1, datad=>nx28950z2, datae=>f(6), dataf=>
      c(6));
   ix27953z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx27953z1, datae=>f(7), dataf=>c(7));
   ix58807z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx58807z1, datad=>nx64789z2, datae=>h(0), dataf=>
      e(0));
   ix59804z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx59804z1, datad=>nx64789z2, datae=>h(1), dataf=>
      e(1));
   ix60801z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx60801z1, datad=>nx64789z2, datae=>h(2), dataf=>
      e(2));
   ix61798z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx61798z1, datad=>nx64789z2, datae=>h(3), dataf=>
      e(3));
   ix62795z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx62795z1, datad=>nx64789z2, datae=>h(4), dataf=>
      e(4));
   ix63792z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx63792z1, datad=>nx64789z2, datae=>h(5), dataf=>
      e(5));
   ix64789z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx64789z1, datad=>nx64789z2, datae=>h(6), dataf=>
      e(6));
   ix250z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx250z1, datae=>h(7), dataf=>e(7));
   ix29521z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffff0f0fff0f0") 
       port map ( combout=>nx29521z1, datac=>i_reset_int, datad=>nx17322z1, 
      datae=>state(0), dataf=>state(2));
   ix17322z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx17322z3, datac=>col(0), datad=>col(1), datae=>
      col(2), dataf=>col(3));
   ix36625z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx36625z1, datad=>tempStorage_1(7), datae=>
      tempStorage_0(7), dataf=>state(2));
   ix35628z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx35628z1, datad=>tempStorage_1(6), datae=>
      tempStorage_0(6), dataf=>state(2));
   ix34631z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx34631z1, datad=>tempStorage_1(5), datae=>
      tempStorage_0(5), dataf=>state(2));
   ix33634z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx33634z1, datad=>tempStorage_1(4), datae=>
      tempStorage_0(4), dataf=>state(2));
   ix32637z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx32637z1, datad=>tempStorage_1(3), datae=>
      tempStorage_0(3), dataf=>state(2));
   ix31640z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx31640z1, datad=>tempStorage_1(2), datae=>
      tempStorage_0(2), dataf=>state(2));
   ix30643z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx30643z1, datad=>tempStorage_1(1), datae=>
      tempStorage_0(1), dataf=>state(2));
   ix29646z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx29646z1, datad=>tempStorage_1(0), datae=>
      tempStorage_0(0), dataf=>state(2));
   ix20492z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx20492z1, datad=>tempStorage_1(7), datae=>
      tempStorage_0(7), dataf=>state(0));
   ix21489z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx21489z1, datad=>tempStorage_1(6), datae=>
      tempStorage_0(6), dataf=>state(0));
   ix22486z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx22486z1, datad=>tempStorage_1(5), datae=>
      tempStorage_0(5), dataf=>state(0));
   ix23483z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx23483z1, datad=>tempStorage_1(4), datae=>
      tempStorage_0(4), dataf=>state(0));
   ix24480z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx24480z1, datad=>tempStorage_1(3), datae=>
      tempStorage_0(3), dataf=>state(0));
   ix25477z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx25477z1, datad=>tempStorage_1(2), datae=>
      tempStorage_0(2), dataf=>state(0));
   ix26474z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx26474z1, datad=>tempStorage_1(1), datae=>
      tempStorage_0(1), dataf=>state(0));
   ix27471z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ffff0000") 
       port map ( combout=>nx27471z1, datad=>tempStorage_1(0), datae=>
      tempStorage_0(0), dataf=>state(0));
   ix51677z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ff00ff00ffff") 
       port map ( combout=>b_0_dup_1325, datad=>validBit(0), datae=>
      validBit(1), dataf=>validBit(2));
   ix51677z37212 : stratixii_lcell_comb
      generic map (lut_mask => X"00ff000000ff00ff") 
       port map ( combout=>nx51677z2, datad=>validBit(0), datae=>validBit(1), 
      dataf=>validBit(2));
   ix51677z37203 : stratixii_lcell_comb
      generic map (lut_mask => X"ff00ffffff00ff00") 
       port map ( combout=>nx51677z1, datad=>validBit(0), datae=>validBit(1), 
      dataf=>validBit(2));
   ix31986z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"cfff0cff00cf000c") 
       port map ( combout=>nx31986z2, datab=>nx31986z3, datac=>x_r3(8), 
      datad=>x_r3(9), datae=>b_d1(8), dataf=>b_d1(9));
   ix33057z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx33057z2, datab=>nx33057z3, datac=>r16(8), datad
      =>r16(9), datae=>r11(8), dataf=>r11(9));
   ix16269z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx16269z2, datab=>nx16269z3, datac=>x_r11(8), 
      datad=>x_r11(9), datae=>r15(8), dataf=>r15(9));
   ix49445z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx49445z2, datab=>nx49445z3, datac=>d(6), datad=>
      d(7), datae=>a(6), dataf=>a(7));
   ix28950z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx28950z2, datab=>nx28950z3, datac=>f(6), datad=>
      f(7), datae=>c(6), dataf=>c(7));
   ix64789z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"c000fc00ffc0fffc") 
       port map ( combout=>nx64789z2, datab=>nx64789z3, datac=>h(6), datad=>
      h(7), datae=>e(6), dataf=>e(7));
   ix51677z37219 : stratixii_lcell_comb
      generic map (lut_mask => X"f7e6d5c4b3a29180") 
       port map ( combout=>r2_6n3s1f2(0), dataa=>b_0_dup_1325, datab=>
      nx51677z2, datac=>g(0), datad=>e(0), datae=>c(0), dataf=>a(0));
   ix51677z37218 : stratixii_lcell_comb
      generic map (lut_mask => X"f7e6d5c4b3a29180") 
       port map ( combout=>r2_6n3s1f2(1), dataa=>b_0_dup_1325, datab=>
      nx51677z2, datac=>g(1), datad=>e(1), datae=>c(1), dataf=>a(1));
   ix51677z37217 : stratixii_lcell_comb
      generic map (lut_mask => X"f7e6d5c4b3a29180") 
       port map ( combout=>r2_6n3s1f2(2), dataa=>b_0_dup_1325, datab=>
      nx51677z2, datac=>g(2), datad=>e(2), datae=>c(2), dataf=>a(2));
   ix51677z37216 : stratixii_lcell_comb
      generic map (lut_mask => X"f7e6d5c4b3a29180") 
       port map ( combout=>r2_6n3s1f2(3), dataa=>b_0_dup_1325, datab=>
      nx51677z2, datac=>g(3), datad=>e(3), datae=>c(3), dataf=>a(3));
   ix51677z37215 : stratixii_lcell_comb
      generic map (lut_mask => X"f7e6d5c4b3a29180") 
       port map ( combout=>r2_6n3s1f2(4), dataa=>b_0_dup_1325, datab=>
      nx51677z2, datac=>g(4), datad=>e(4), datae=>c(4), dataf=>a(4));
   ix51677z37214 : stratixii_lcell_comb
      generic map (lut_mask => X"f7e6d5c4b3a29180") 
       port map ( combout=>r2_6n3s1f2(5), dataa=>b_0_dup_1325, datab=>
      nx51677z2, datac=>g(5), datad=>e(5), datae=>c(5), dataf=>a(5));
   ix51677z37213 : stratixii_lcell_comb
      generic map (lut_mask => X"f7e6d5c4b3a29180") 
       port map ( combout=>r2_6n3s1f2(6), dataa=>b_0_dup_1325, datab=>
      nx51677z2, datac=>g(6), datad=>e(6), datae=>c(6), dataf=>a(6));
   ix51677z37211 : stratixii_lcell_comb
      generic map (lut_mask => X"f7e6d5c4b3a29180") 
       port map ( combout=>r2_6n3s1f2(7), dataa=>b_0_dup_1325, datab=>
      nx51677z2, datac=>g(7), datad=>e(7), datae=>c(7), dataf=>a(7));
   ix51677z37210 : stratixii_lcell_comb
      generic map (lut_mask => X"fedcba9876543210") 
       port map ( combout=>r2_6n3s1f1(0), dataa=>b_0_dup_1325, datab=>
      nx51677z1, datac=>h(0), datad=>f(0), datae=>d(0), dataf=>b(0));
   ix51677z37209 : stratixii_lcell_comb
      generic map (lut_mask => X"fedcba9876543210") 
       port map ( combout=>r2_6n3s1f1(1), dataa=>b_0_dup_1325, datab=>
      nx51677z1, datac=>h(1), datad=>f(1), datae=>d(1), dataf=>b(1));
   ix51677z37208 : stratixii_lcell_comb
      generic map (lut_mask => X"fedcba9876543210") 
       port map ( combout=>r2_6n3s1f1(2), dataa=>b_0_dup_1325, datab=>
      nx51677z1, datac=>h(2), datad=>f(2), datae=>d(2), dataf=>b(2));
   ix51677z37207 : stratixii_lcell_comb
      generic map (lut_mask => X"fedcba9876543210") 
       port map ( combout=>r2_6n3s1f1(3), dataa=>b_0_dup_1325, datab=>
      nx51677z1, datac=>h(3), datad=>f(3), datae=>d(3), dataf=>b(3));
   ix51677z37206 : stratixii_lcell_comb
      generic map (lut_mask => X"fedcba9876543210") 
       port map ( combout=>r2_6n3s1f1(4), dataa=>b_0_dup_1325, datab=>
      nx51677z1, datac=>h(4), datad=>f(4), datae=>d(4), dataf=>b(4));
   ix51677z37205 : stratixii_lcell_comb
      generic map (lut_mask => X"fedcba9876543210") 
       port map ( combout=>r2_6n3s1f1(5), dataa=>b_0_dup_1325, datab=>
      nx51677z1, datac=>h(5), datad=>f(5), datae=>d(5), dataf=>b(5));
   ix51677z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"fedcba9876543210") 
       port map ( combout=>r2_6n3s1f1(6), dataa=>b_0_dup_1325, datab=>
      nx51677z1, datac=>h(6), datad=>f(6), datae=>d(6), dataf=>b(6));
   ix51677z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"fedcba9876543210") 
       port map ( combout=>r2_6n3s1f1(7), dataa=>b_0_dup_1325, datab=>
      nx51677z1, datac=>h(7), datad=>f(7), datae=>d(7), dataf=>b(7));
   ix28524z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx28524z1, datad=>nx17322z1, datae=>state(0), 
      dataf=>state(1));
   ix27527z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff00ffff000000") 
       port map ( combout=>nx27527z1, datad=>nx17322z1, datae=>state(1), 
      dataf=>state(2));
   ix17266z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff00000000") 
       port map ( combout=>nx17266z2, datad=>validBit(3), datae=>validBit(5), 
      dataf=>validBit(6));
   ix42030z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx42030z2, datae=>validBit(3), dataf=>validBit(5)
   );
   ix1457z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>second_cw_9n2ss1_0, datae=>nx33057z2, dataf=>
      stage1_eSe_2);
   ix45375z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>first_cw_9n1ss1_0, datae=>nx31986z2, dataf=>
      stage1_wNw_0);
   ix65254z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000f00000000") 
       port map ( combout=>nx65254z1, datac=>validBit(2), datad=>validBit(3), 
      datae=>validBit(4), dataf=>validBit(5));
   ix58464z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff00000000") 
       port map ( combout=>nx58464z1, datad=>validBit(2), datae=>validBit(3), 
      dataf=>validBit(4));
   ix16422z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx16422z1, datae=>validBit(2), dataf=>validBit(3)
   );
   ix34104z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000f00000000") 
       port map ( combout=>nx34104z1, datac=>validBit(1), datad=>validBit(2), 
      datae=>validBit(3), dataf=>validBit(4));
   ix54873z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff00000000") 
       port map ( combout=>nx54873z1, datad=>validBit(1), datae=>validBit(2), 
      dataf=>validBit(3));
   ix56415z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx56415z1, datae=>validBit(1), dataf=>validBit(2)
   );
   ix7380z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"0000ffff00000000") 
       port map ( combout=>nx7380z2, datae=>validBit(0), dataf=>validBit(1)
   );
   ix27953z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"000000ff00000000") 
       port map ( combout=>nx27953z2, datad=>validBit(0), datae=>validBit(1), 
      dataf=>validBit(2));
   ix250z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"0000000f00000000") 
       port map ( combout=>nx250z2, datac=>validBit(0), datad=>validBit(1), 
      datae=>validBit(2), dataf=>validBit(3));
   ix33634z37204 : stratixii_lcell_comb
      generic map (lut_mask => X"00ff00ff00ff0000") 
       port map ( combout=>nx33634z2, datad=>validBit(0), datae=>validBit(1), 
      dataf=>validBit(2));
   ix36625z37202 : stratixii_lcell_comb
      generic map (lut_mask => X"00000000ffff0000") 
       port map ( combout=>nx36625z2, datae=>i_valid_int, dataf=>i_reset_int
   );
   ix17322z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"000000f000000000") 
       port map ( combout=>nx17322z1, datac=>nx17322z2, datad=>i_valid_int, 
      datae=>nx17322z3, dataf=>vBit(2));
   ix40914z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffffffffff0000") 
       port map ( combout=>nx40914z1, datae=>i_reset_int, dataf=>vBit(1));
   ix7740z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff000000000000") 
       port map ( combout=>we(0), datae=>i_valid_int, dataf=>state(0));
   ix62017z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff000000000000") 
       port map ( combout=>we(1), datae=>i_valid_int, dataf=>state(1));
   ix64834z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffff000000000000") 
       port map ( combout=>we(2), datae=>i_valid_int, dataf=>state(2));
   ix33603z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"fff0000000000000") 
       port map ( combout=>o_dir_dup0(0), datac=>nx36874z1, datad=>r17_12, 
      datae=>final_dir(0), dataf=>o_valid_dup0);
   ix32606z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"fff0000000000000") 
       port map ( combout=>o_dir_dup0(1), datac=>nx36874z1, datad=>r17_12, 
      datae=>final_dir(1), dataf=>o_valid_dup0);
   ix36874z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"ffffff0000000000") 
       port map ( combout=>o_edge_dup0, datad=>nx36874z1, datae=>r17_12, 
      dataf=>o_valid_dup0);
   ix31609z37201 : stratixii_lcell_comb
      generic map (lut_mask => X"f0f0f00000000000") 
       port map ( combout=>o_dir_dup0(2), datac=>o_valid_dup0, datad=>r17_12, 
      datae=>nx36874z1, dataf=>final_dir(2));
   i_valid_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR501);
   i_reset_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_reset_int, padio=>i_reset_EXMPLR500);
   i_pixel_ibuf_7 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(7), padio=>i_pixel_EXMPLR573(7));
   i_pixel_ibuf_6 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(6), padio=>i_pixel_EXMPLR573(6));
   i_pixel_ibuf_5 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(5), padio=>i_pixel_EXMPLR573(5));
   i_pixel_ibuf_4 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(4), padio=>i_pixel_EXMPLR573(4));
   i_pixel_ibuf_3 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(3), padio=>i_pixel_EXMPLR573(3));
   i_pixel_ibuf_2 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(2), padio=>i_pixel_EXMPLR573(2));
   i_pixel_ibuf_1 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(1), padio=>i_pixel_EXMPLR573(1));
   i_pixel_ibuf_0 : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(0), padio=>i_pixel_EXMPLR573(0));
   i_clock_ibuf : stratixii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR499);
   debug_num_5_triBus10_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR581(3), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_5_triBus10_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR581(2), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_5_triBus10_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR581(1), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_5_triBus10_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR581(0), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_4_triBus9_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR580(3), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_4_triBus9_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR580(2), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_4_triBus9_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR580(1), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_4_triBus9_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR580(0), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_3_triBus8_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR579(3), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_3_triBus8_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR579(2), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_3_triBus8_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR579(1), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_3_triBus8_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR579(0), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_2_triBus7_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR578(3), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_2_triBus7_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR578(2), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_2_triBus7_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR578(1), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_2_triBus7_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR578(0), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_1_triBus6_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR577(3), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_1_triBus6_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR577(2), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_1_triBus6_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR577(1), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_1_triBus6_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR577(0), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_0_triBus5_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR576(3), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_0_triBus5_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR576(2), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_0_triBus5_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR576(1), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_num_0_triBus5_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR576(0), datain=>\_MGC0390_MGC039\, 
      oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_9 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(9), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_8 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(8), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_7 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(7), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_6 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(6), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(5), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(4), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(3), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(2), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_17 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(17), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_16 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(16), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_15 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(15), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_14 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(14), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_13 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(13), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_12 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(12), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_11 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(11), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_10 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(10), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(1), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_red_triBus3_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR574(0), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_grn_triBus4_5 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR575(5), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_grn_triBus4_4 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR575(4), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_grn_triBus4_3 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR575(3), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_grn_triBus4_2 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR575(2), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_grn_triBus4_1 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR575(1), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
   debug_led_grn_triBus4_0 : stratixii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR575(0), datain=>
      \_MGC0390_MGC039\, oe=>\_MGC0390_MGC039\);
end main ;

