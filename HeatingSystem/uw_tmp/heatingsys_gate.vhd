
-- 
-- Definition of  heatingsys
-- 
--      Sun Jun  1 21:39:21 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity heatingsys is 
   port (
      i_cur_temp : IN std_logic_vector (7 DOWNTO 0) ;
      i_des_temp : IN std_logic_vector (7 DOWNTO 0) ;
      i_reset : IN std_logic ;
      i_clock : IN std_logic ;
      o_heatmode : OUT std_logic_vector (1 DOWNTO 0)) ;
end heatingsys ;

architecture main of heatingsys is 
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component sub_8u_8u_8u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal o_heatmode_EXMPLR22: std_logic_vector (1 DOWNTO 0) ;
   
   signal PWR, GND, not_o_heatmode_0, not_rtlc1n674, rtlc1n212, 
      not_rtlc1n212, rtlc1_PS14_n275: std_logic ;
   
   signal rtlc1n289: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_rtlc1n824: std_logic ;
   
   signal rtlc1n400: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_rtlc1n869, rtlc1n444, rtlc1n448, rtlc1n451, not_rtlc1n451, 
      rtlc1n572, not_rtlc1n572, not_rtlc1n289_2, not_rtlc1n289_1, 
      not_rtlc1n289_0, rtlc1n577, rtlc1n578, rtlc1n579, rtlc1n580, rtlc1n671, 
      not_rtlcn2, rtlc1n674, rtlc1n763, not_rtlcn3, rtlc1n766, rtlc1n820, 
      rtlc1n821, rtlc1n822, not_rtlc1n400_7, rtlc1n824, rtlc1n869, rtlcn2, 
      rtlcn3, rtlcn32, rtlcn41, not_rtlc1n766, rtlcn46, not_rtlcn52, rtlcn52, 
      not_o_heatmode_1: std_logic ;
   
   signal DANGLING : std_logic_vector (1 downto 0 );

begin
   o_heatmode(1) <= o_heatmode_EXMPLR22(1) ;
   o_heatmode(0) <= o_heatmode_EXMPLR22(0) ;
   PWR <= '1' ;
   GND <= '0' ;
   rtlc1_20_select_0 : select_3_3 port map ( a(2)=>not_o_heatmode_0, a(1)=>
      rtlc1_PS14_n275, a(0)=>o_heatmode_EXMPLR22(1), b(2)=>rtlc1n444, b(1)=>
      rtlc1n448, b(0)=>not_rtlc1n869, d=>rtlc1n451);
   rtlc1n444 <= rtlc1n580 AND not_rtlc1n212 ;
   rtlc1n448 <= not_rtlc1n824 AND rtlc1n766 ;
   not_rtlc1n451 <= NOT rtlc1n451 ;
   not_rtlc1n869 <= NOT rtlc1n869 ;
   rtlc1_44_sub_1 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>i_cur_temp(7), 
      a(6)=>i_cur_temp(6), a(5)=>i_cur_temp(5), a(4)=>i_cur_temp(4), a(3)=>
      i_cur_temp(3), a(2)=>i_cur_temp(2), a(1)=>i_cur_temp(1), a(0)=>
      i_cur_temp(0), b(7)=>i_des_temp(7), b(6)=>i_des_temp(6), b(5)=>
      i_des_temp(5), b(4)=>i_des_temp(4), b(3)=>i_des_temp(3), b(2)=>
      i_des_temp(2), b(1)=>i_des_temp(1), b(0)=>i_des_temp(0), d(7)=>
      rtlc1n400(7), d(6)=>rtlc1n400(6), d(5)=>rtlc1n400(5), d(4)=>
      rtlc1n400(4), d(3)=>rtlc1n400(3), d(2)=>rtlc1n400(2), d(1)=>
      rtlc1n400(1), d(0)=>rtlc1n400(0), cout=>DANGLING(0));
   not_rtlc1n824 <= NOT rtlc1n824 ;
   rtlc1_61_sub_2 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>i_des_temp(7), 
      a(6)=>i_des_temp(6), a(5)=>i_des_temp(5), a(4)=>i_des_temp(4), a(3)=>
      i_des_temp(3), a(2)=>i_des_temp(2), a(1)=>i_des_temp(1), a(0)=>
      i_des_temp(0), b(7)=>i_cur_temp(7), b(6)=>i_cur_temp(6), b(5)=>
      i_cur_temp(5), b(4)=>i_cur_temp(4), b(3)=>i_cur_temp(3), b(2)=>
      i_cur_temp(2), b(1)=>i_cur_temp(1), b(0)=>i_cur_temp(0), d(7)=>
      rtlc1n289(7), d(6)=>rtlc1n289(6), d(5)=>rtlc1n289(5), d(4)=>
      rtlc1n289(4), d(3)=>rtlc1n289(3), d(2)=>rtlc1n289(2), d(1)=>
      rtlc1n289(1), d(0)=>rtlc1n289(0), cout=>DANGLING(1));
   not_rtlc1n674 <= NOT rtlc1n674 ;
   rtlc1n212 <= rtlc1n580 AND not_rtlc1n674 ;
   not_o_heatmode_0 <= NOT o_heatmode_EXMPLR22(0) ;
   rtlc1_133_or_3 : or_5u_5u port map ( a(4)=>rtlc1n289(3), a(3)=>
      rtlc1n289(4), a(2)=>rtlc1n289(5), a(1)=>rtlc1n289(6), a(0)=>
      rtlc1n289(7), d=>rtlc1n572);
   not_rtlc1n572 <= NOT rtlc1n572 ;
   not_rtlc1n289_2 <= NOT rtlc1n289(2) ;
   not_rtlc1n289_1 <= NOT rtlc1n289(1) ;
   not_rtlc1n289_0 <= NOT rtlc1n289(0) ;
   rtlc1n577 <= not_rtlc1n289_1 AND not_rtlc1n289_0 ;
   rtlc1n578 <= not_rtlc1n289_2 OR rtlc1n577 ;
   rtlc1n579 <= not_rtlc1n572 AND rtlc1n578 ;
   rtlc1n580 <= rtlc1n579 OR rtlc1n289(7) ;
   rtlc1n674 <= not_rtlcn2 OR rtlc1n289(7) ;
   rtlc1_154_and_5 : and_3u_3u port map ( a(2)=>rtlc1n289(2), a(1)=>
      rtlc1n289(1), a(0)=>rtlc1n289(0), d=>rtlc1n763);
   rtlc1n766 <= not_rtlcn3 OR rtlc1n289(7) ;
   rtlc1_190_or_6 : or_6u_6u port map ( a(5)=>rtlc1n400(2), a(4)=>
      rtlc1n400(3), a(3)=>rtlc1n400(4), a(2)=>rtlc1n400(5), a(1)=>
      rtlc1n400(6), a(0)=>rtlc1n400(7), d=>rtlc1n820);
   rtlc1n821 <= rtlc1n400(0) AND rtlc1n400(1) ;
   rtlc1n822 <= rtlc1n821 OR rtlc1n820 ;
   not_rtlc1n400_7 <= NOT rtlc1n400(7) ;
   rtlc1n824 <= rtlc1n822 AND not_rtlc1n400_7 ;
   rtlc1n869 <= rtlc1n820 AND not_rtlc1n400_7 ;
   rtlc1n671 <= rtlc1n289(1) AND rtlc1n289(0) ;
   not_rtlcn2 <= NOT rtlcn2 ;
   not_rtlcn3 <= NOT rtlcn3 ;
   not_rtlc1n212 <= NOT rtlc1n212 ;
   not_rtlc1n766 <= NOT rtlc1n766 ;
   rtlcn46 <= rtlc1_PS14_n275 AND not_rtlc1n766 ;
   rtlcn32 <= rtlcn46 OR not_rtlcn52 ;
   rtlc_56_or_7 : or_3u_3u port map ( a(2)=>o_heatmode_EXMPLR22(1), a(1)=>
      not_o_heatmode_0, a(0)=>not_rtlc1n766, d=>rtlcn41);
   not_rtlcn52 <= NOT rtlcn52 ;
   not_o_heatmode_1 <= NOT o_heatmode_EXMPLR22(1) ;
   rtlcn3 <= rtlc1n572 OR rtlc1n763 ;
   rtlcn52 <= rtlc1n212 OR o_heatmode_EXMPLR22(0) ;
   rtlc1_PS14_n275 <= not_o_heatmode_1 AND o_heatmode_EXMPLR22(0) ;
   DFFRSE (rtlcn32,GND,i_reset,not_rtlc1n451,i_clock,o_heatmode_EXMPLR22(1))
    ;
   DFFRSE (rtlcn41,GND,i_reset,not_rtlc1n451,i_clock,o_heatmode_EXMPLR22(0))
    ;
   modgen_or_0 : or_7u_7u port map ( a(6)=>rtlc1n289(2), a(5)=>rtlc1n289(3), 
      a(4)=>rtlc1n289(4), a(3)=>rtlc1n289(5), a(2)=>rtlc1n289(6), a(1)=>
      rtlc1n289(7), a(0)=>rtlc1n671, d=>rtlcn2);
end main ;

