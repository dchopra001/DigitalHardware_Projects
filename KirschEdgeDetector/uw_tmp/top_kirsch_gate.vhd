
-- 
-- Definition of  top_kirsch
-- 
--      07/23/14 13:18:06
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_11 is 
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
end counter_up_sclear_aclear_clock_0_11 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_11 is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx26, nx27, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, 
      nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, 
      nx48, nx49, nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, nx58, PWR, 
      NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(10) <= nx27 ;
   q(9) <= nx29 ;
   q(8) <= nx31 ;
   q(7) <= nx33 ;
   q(6) <= nx35 ;
   q(5) <= nx37 ;
   q(4) <= nx39 ;
   q(3) <= nx41 ;
   q(2) <= nx43 ;
   q(1) <= nx45 ;
   q(0) <= nx47 ;
   GND <= '0' ;
   DFFPC (nx26,GND,aclear,clock,nx27) ;
   DFFPC (nx28,GND,aclear,clock,nx29) ;
   DFFPC (nx30,GND,aclear,clock,nx31) ;
   DFFPC (nx32,GND,aclear,clock,nx33) ;
   DFFPC (nx34,GND,aclear,clock,nx35) ;
   DFFPC (nx36,GND,aclear,clock,nx37) ;
   DFFPC (nx38,GND,aclear,clock,nx39) ;
   DFFPC (nx40,GND,aclear,clock,nx41) ;
   DFFPC (nx42,GND,aclear,clock,nx43) ;
   DFFPC (nx44,GND,aclear,clock,nx45) ;
   DFFPC (nx46,GND,aclear,clock,nx47) ;
   inc : inc_11u_11u_0_0 port map ( cin=>PWR, a(10)=>nx27, a(9)=>nx29, a(8)
      =>nx31, a(7)=>nx33, a(6)=>nx35, a(5)=>nx37, a(4)=>nx39, a(3)=>nx41, 
      a(2)=>nx43, a(1)=>nx45, a(0)=>nx47, d(10)=>nx48, d(9)=>nx49, d(8)=>
      nx50, d(7)=>nx51, d(6)=>nx52, d(5)=>nx53, d(4)=>nx54, d(3)=>nx55, d(2)
      =>nx56, d(1)=>nx57, d(0)=>nx58, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx26 <= nx48 AND NOT_SCLEAR ;
   nx28 <= nx49 AND NOT_SCLEAR ;
   nx30 <= nx50 AND NOT_SCLEAR ;
   nx32 <= nx51 AND NOT_SCLEAR ;
   nx34 <= nx52 AND NOT_SCLEAR ;
   nx36 <= nx53 AND NOT_SCLEAR ;
   nx38 <= nx54 AND NOT_SCLEAR ;
   nx40 <= nx55 AND NOT_SCLEAR ;
   nx42 <= nx56 AND NOT_SCLEAR ;
   nx44 <= nx57 AND NOT_SCLEAR ;
   nx46 <= nx58 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_12 is 
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
end counter_up_sclear_aclear_clock_0_12 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_12 is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx36, nx37, 
      nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, nx48, nx49, 
      nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, nx58, nx59, nx60, nx61, 
      nx62, nx63, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(11) <= nx29 ;
   q(10) <= nx31 ;
   q(9) <= nx33 ;
   q(8) <= nx35 ;
   q(7) <= nx37 ;
   q(6) <= nx39 ;
   q(5) <= nx41 ;
   q(4) <= nx43 ;
   q(3) <= nx45 ;
   q(2) <= nx47 ;
   q(1) <= nx49 ;
   q(0) <= nx51 ;
   GND <= '0' ;
   DFFPC (nx28,GND,aclear,clock,nx29) ;
   DFFPC (nx30,GND,aclear,clock,nx31) ;
   DFFPC (nx32,GND,aclear,clock,nx33) ;
   DFFPC (nx34,GND,aclear,clock,nx35) ;
   DFFPC (nx36,GND,aclear,clock,nx37) ;
   DFFPC (nx38,GND,aclear,clock,nx39) ;
   DFFPC (nx40,GND,aclear,clock,nx41) ;
   DFFPC (nx42,GND,aclear,clock,nx43) ;
   DFFPC (nx44,GND,aclear,clock,nx45) ;
   DFFPC (nx46,GND,aclear,clock,nx47) ;
   DFFPC (nx48,GND,aclear,clock,nx49) ;
   DFFPC (nx50,GND,aclear,clock,nx51) ;
   inc : inc_12u_12u_0_0 port map ( cin=>PWR, a(11)=>nx29, a(10)=>nx31, a(9)
      =>nx33, a(8)=>nx35, a(7)=>nx37, a(6)=>nx39, a(5)=>nx41, a(4)=>nx43, 
      a(3)=>nx45, a(2)=>nx47, a(1)=>nx49, a(0)=>nx51, d(11)=>nx52, d(10)=>
      nx53, d(9)=>nx54, d(8)=>nx55, d(7)=>nx56, d(6)=>nx57, d(5)=>nx58, d(4)
      =>nx59, d(3)=>nx60, d(2)=>nx61, d(1)=>nx62, d(0)=>nx63, cout=>DANGLING
      (0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx28 <= nx52 AND NOT_SCLEAR ;
   nx30 <= nx53 AND NOT_SCLEAR ;
   nx32 <= nx54 AND NOT_SCLEAR ;
   nx34 <= nx55 AND NOT_SCLEAR ;
   nx36 <= nx56 AND NOT_SCLEAR ;
   nx38 <= nx57 AND NOT_SCLEAR ;
   nx40 <= nx58 AND NOT_SCLEAR ;
   nx42 <= nx59 AND NOT_SCLEAR ;
   nx44 <= nx60 AND NOT_SCLEAR ;
   nx46 <= nx61 AND NOT_SCLEAR ;
   nx48 <= nx62 AND NOT_SCLEAR ;
   nx50 <= nx63 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4 ;

architecture INTERFACE of counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
    is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component dec_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx13, nx16, nx19, nx20, nx21, nx22, nx23, nx24, nx25, nx26, 
      nx27, nx28, nx29, nx30: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx20 ;
   q(2) <= nx22 ;
   q(1) <= nx24 ;
   q(0) <= nx26 ;
   GND <= '0' ;
   nx13 <= cnt_en OR sload ;
   nx16 <= nx13 AND clk_en ;
   DFFPCE (nx19,GND,aclear,nx16,clock,nx20) ;
   DFFPCE (nx21,GND,aclear,nx16,clock,nx22) ;
   DFFPCE (nx23,GND,aclear,nx16,clock,nx24) ;
   DFFPCE (nx25,GND,aclear,nx16,clock,nx26) ;
   dec : dec_4u_4u_0_0 port map ( cin=>GND, a(3)=>nx20, a(2)=>nx22, a(1)=>
      nx24, a(0)=>nx26, d(3)=>nx27, d(2)=>nx28, d(1)=>nx29, d(0)=>nx30, cout
      =>DANGLING(0));
   nx19 <= data(3) when sload = '1' else nx27 ;
   nx21 <= data(2) when sload = '1' else nx28 ;
   nx23 <= data(1) when sload = '1' else nx29 ;
   nx25 <= data(0) when sload = '1' else nx30 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_clk_en_0_4 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_clk_en_0_4 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_clk_en_0_4 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx13, nx14, nx15, nx16, nx17, nx18, nx19, nx20, nx21, nx22, 
      nx23, nx24, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx14 ;
   q(2) <= nx16 ;
   q(1) <= nx18 ;
   q(0) <= nx20 ;
   GND <= '0' ;
   DFFPCE (nx13,GND,aclear,clk_en,clock,nx14) ;
   DFFPCE (nx15,GND,aclear,clk_en,clock,nx16) ;
   DFFPCE (nx17,GND,aclear,clk_en,clock,nx18) ;
   DFFPCE (nx19,GND,aclear,clk_en,clock,nx20) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx14, a(2)=>nx16, a(1)=>
      nx18, a(0)=>nx20, d(3)=>nx21, d(2)=>nx22, d(1)=>nx23, d(0)=>nx24, cout
      =>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx13 <= nx21 AND NOT_SCLEAR ;
   nx15 <= nx22 AND NOT_SCLEAR ;
   nx17 <= nx23 AND NOT_SCLEAR ;
   nx19 <= nx24 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
      RxRDY : OUT std_logic) ;
end UARTS ;

architecture RTL_unfold_1358 of UARTS is 
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_11
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
   component counter_up_sclear_aclear_clock_0_12
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
   component counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_clk_en_0_4
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component eq_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component eq_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   signal RxRDY_EXMPLR98: std_logic ;
   
   signal Tx_Reg: std_logic_vector (8 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal TxDivisor_5: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal RxFSM_6, RxFSM_5, RxFSM_3, RxFSM_2, RxFSM_1, RxFSM_0, PWR, 
      rtlc8n73: std_logic ;
   
   signal Tx_Reg_14n6ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal not_LD, not_rtlcs3, rtlc14n164, rtlc14n168, rtlc14n219, 
      not_TxFSM_1, not_rtlcn0, not_TopTx, rtlc14n224, rtlc14_X_0_n225, 
      rtlc14n235, not_rtlc14_X_0_n225, rtlc14n290, not_rtlcn2, 
      not_rtlc14n168, not_rtlcn4, not_Rx, rtlc17n303, rtlc17n308, not_TopRx, 
      rtlc17n359, rtlc17_X_0_n360, not_rtlc17_X_0_n360, rtlc17n405, 
      not_rtlc17n405, rtlc17n442, not_rtlc17n308, rtlc17n459, rtlc17n460, 
      not_rtlcn6, rtlc17n474, not_rtlc17n474, rtlcn0, rtlcn2, rtlcn4, rtlcn6, 
      not_TxFSM_0, rtlcn31, rtlcn37, rtlcn42, rtlcn47, rtlcn51, rtlcn57, 
      rtlcn75, rtlcn76, not_rtlcn118, not_RxFSM_0, rtlcn96, not_rtlcs5, 
      not_Rx_r, rtlcn99, rtlcn100, rtlcn101, rtlcn102, not_rtlc14n290, 
      rtlcn118, rtlcn119, not_rtlcn75, not_rtlcn76, rtlcn122, rtlcs0, rtlcs1, 
      rtlcs3, rtlcs4, rtlcs5, not_RxBitCnt_2, not_RxBitCnt_1, not_RxBitCnt_0, 
      not_RxDiv_9, not_RxDiv_5, not_RxDiv_1, not_RxFSM_5, not_TxDiv_10, 
      not_TxDiv_6, not_TxDiv_2, not_TxBitCnt_3, not_TxBitCnt_2, 
      not_TxBitCnt_1, rtlcs6, rtlcs7, rtlcn142: std_logic ;
   
   signal DANGLING : std_logic_vector (26 downto 0 );

begin
   TxBusy <= GND ;
   RxRDY <= RxRDY_EXMPLR98 ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc8n73 <= RxFSM_0 OR rtlcs0 ;
   rtlc14n290 <= rtlcs4 OR rtlc14n219 ;
   rtlc14n164 <= not_TopTx OR not_rtlcs3 ;
   not_TopTx <= NOT TopTx ;
   rtlc14n224 <= not_TopTx AND TxFSM(1) ;
   rtlc14n219 <= TxFSM(1) AND TxFSM(0) ;
   rtlc14_109_or_0 : or_3u_3u port map ( a(2)=>rtlc14n219, a(1)=>not_rtlcn0, 
      a(0)=>rtlc14n224, d=>rtlc14_X_0_n225);
   not_rtlc14_X_0_n225 <= NOT rtlc14_X_0_n225 ;
   not_TxFSM_1 <= NOT TxFSM(1) ;
   rtlc14n235 <= TopTx AND not_TxFSM_1 ;
   not_rtlcs3 <= NOT rtlcs3 ;
   rtlc17n405 <= RxFSM_5 OR RxFSM_6 ;
   not_rtlc17n405 <= NOT rtlc17n405 ;
   rtlc17n474 <= RxFSM_0 OR RxFSM_3 ;
   not_rtlc17n474 <= NOT rtlc17n474 ;
   rtlc17n303 <= not_TopRx OR not_Rx_r ;
   rtlc17n359 <= not_TopRx AND RxFSM_3 ;
   not_rtlc17_X_0_n360 <= NOT rtlc17_X_0_n360 ;
   not_Rx <= NOT Rx ;
   rtlc17_X_0_n360 <= not_rtlc17n474 OR rtlc17n359 ;
   not_rtlcn0 <= NOT rtlcn0 ;
   rtlc_48_select_1 : select_3_3 port map ( a(2)=>RxFSM_0, a(1)=>
      not_rtlcn118, a(0)=>RxFSM_6, b(2)=>Rx_r, b(1)=>not_TopRx, b(0)=>not_Rx, 
      d=>rtlcn6);
   Tx_Reg_mux_14i1 : mux_3u_3u port map ( a(2)=>Tx_Reg(1), a(1)=>GND, a(0)=>
      PWR, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>TxFSM(0), d=>Tx_Reg_14n6ss1(0));
   rtlc_92_mux_3 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      PWR, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlc14n168);
   rtlc_93_mux_4 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlcn2);
   rtlc_94_mux_5 : mux_4u_4u port map ( a(3)=>not_TopTx, a(2)=>rtlc14n164, 
      a(1)=>not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), 
      b(0)=>TxFSM(0), d=>rtlcn4);
   not_LD <= NOT LD ;
   not_TopRx <= NOT TopRx ;
   not_RxFSM_0 <= NOT RxFSM_0 ;
   rtlcn96 <= RxFSM_5 AND not_TopRx ;
   rtlcn76 <= not_rtlc17n405 OR rtlcn96 ;
   rtlcn75 <= RxFSM_5 AND TopRx ;
   not_TxFSM_0 <= NOT TxFSM(0) ;
   not_rtlcs5 <= NOT rtlcs5 ;
   rtlcn31 <= not_rtlcs5 AND RxFSM_2 ;
   not_Rx_r <= NOT Rx_r ;
   rtlcn99 <= not_Rx_r AND RxFSM_1 ;
   rtlcn37 <= RxFSM_3 OR rtlcn99 ;
   rtlcn100 <= RxFSM_5 AND Rx_r ;
   rtlcn42 <= RxFSM_6 OR rtlcn100 ;
   rtlcn47 <= rtlcs5 AND RxFSM_2 ;
   rtlcn51 <= not_RxFSM_0 AND rtlcs0 ;
   rtlcn101 <= RxFSM_5 AND not_Rx_r ;
   rtlcn102 <= Rx_r AND RxFSM_1 ;
   rtlcn57 <= rtlcn101 OR rtlcn102 ;
   not_rtlc14n290 <= NOT rtlc14n290 ;
   not_rtlcn118 <= NOT rtlcn118 ;
   Tx_Reg_14n6ss1(1) <= Tx_Reg(2) when TxFSM(1) = '1' else Din(0) ;
   Tx_Reg_14n6ss1(2) <= Tx_Reg(3) when TxFSM(1) = '1' else Din(1) ;
   Tx_Reg_14n6ss1(3) <= Tx_Reg(4) when TxFSM(1) = '1' else Din(2) ;
   Tx_Reg_14n6ss1(4) <= Tx_Reg(5) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(5) <= Tx_Reg(6) when TxFSM(1) = '1' else Din(5) ;
   Tx_Reg_14n6ss1(6) <= Tx_Reg(7) when TxFSM(1) = '1' else Din(5) ;
   Tx_Reg_14n6ss1(7) <= Tx_Reg(8) when TxFSM(1) = '1' else Din(7) ;
   not_rtlcn4 <= NOT rtlcn4 ;
   not_rtlc14n168 <= NOT rtlc14n168 ;
   not_rtlcn2 <= NOT rtlcn2 ;
   not_rtlcn6 <= NOT rtlcn6 ;
   rtlc17n460 <= RxRDY_EXMPLR98 OR RxFSM_6 ;
   not_rtlcn75 <= NOT rtlcn75 ;
   rtlcn119 <= Rx_r OR not_rtlcn75 ;
   not_rtlcn76 <= NOT rtlcn76 ;
   rtlcn122 <= not_rtlcn76 AND rtlcn119 ;
   rtlc17n459 <= RxRDY_EXMPLR98 OR rtlcn122 ;
   not_rtlc17n308 <= NOT rtlc17n308 ;
   rtlcn118 <= RxFSM_0 OR RxFSM_6 ;
   not_RxBitCnt_2 <= NOT RxBitCnt(2) ;
   not_RxBitCnt_1 <= NOT RxBitCnt(1) ;
   not_RxBitCnt_0 <= NOT RxBitCnt(0) ;
   rtlc_331_and_7 : and_4u_4u port map ( a(3)=>RxBitCnt(3), a(2)=>
      not_RxBitCnt_2, a(1)=>not_RxBitCnt_1, a(0)=>not_RxBitCnt_0, d=>rtlcs5
   );
   not_RxDiv_9 <= NOT RxDiv(9) ;
   not_RxDiv_5 <= NOT RxDiv(5) ;
   not_RxDiv_1 <= NOT RxDiv(1) ;
   rtlc_341_and_8 : and_4u_4u port map ( a(3)=>not_RxDiv_9, a(2)=>
      not_RxDiv_5, a(1)=>not_RxDiv_1, a(0)=>rtlcs6, d=>rtlcs0);
   not_RxFSM_5 <= NOT RxFSM_5 ;
   rtlc17n308 <= rtlc17n303 OR not_RxFSM_5 ;
   not_TxDiv_10 <= NOT TxDiv(10) ;
   not_TxDiv_6 <= NOT TxDiv(6) ;
   not_TxDiv_2 <= NOT TxDiv(2) ;
   rtlc_352_and_9 : and_4u_4u port map ( a(3)=>not_TxDiv_10, a(2)=>
      not_TxDiv_6, a(1)=>not_TxDiv_2, a(0)=>rtlcs7, d=>rtlcs1);
   rtlcn0 <= TxFSM(1) OR TxFSM(0) ;
   not_TxBitCnt_3 <= NOT TxBitCnt(3) ;
   not_TxBitCnt_2 <= NOT TxBitCnt(2) ;
   not_TxBitCnt_1 <= NOT TxBitCnt(1) ;
   rtlc_358_and_10 : and_4u_4u port map ( a(3)=>not_TxBitCnt_3, a(2)=>
      not_TxBitCnt_2, a(1)=>not_TxBitCnt_1, a(0)=>TxBitCnt(0), d=>rtlcs3);
   Tx_Reg_14n6ss1(8) <= Din(7) OR TxFSM(1) ;
   rtlcs4 <= not_TxFSM_1 AND not_TxFSM_0 ;
   rtlc17n442 <= TopRx AND RxFSM_3 ;
   modgen_counter_RxDiv : counter_up_sclear_aclear_clock_0_11 port map ( 
      clock=>CLK, q(10)=>RxDiv(10), q(9)=>RxDiv(9), q(8)=>RxDiv(8), q(7)=>
      RxDiv(7), q(6)=>RxDiv(6), q(5)=>RxDiv(5), q(4)=>RxDiv(4), q(3)=>
      RxDiv(3), q(2)=>RxDiv(2), q(1)=>RxDiv(1), q(0)=>RxDiv(0), clk_en=>PWR, 
      aclear=>RST, sload=>GND, data(10)=>DANGLING(0), data(9)=>DANGLING(1), 
      data(8)=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>DANGLING(4), 
      data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>DANGLING(7), 
      data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>DANGLING(10), 
      aset=>GND, sclear=>rtlc8n73, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxDiv : counter_up_sclear_aclear_clock_0_12 port map ( 
      clock=>CLK, q(11)=>TxDiv(11), q(10)=>TxDiv(10), q(9)=>TxDiv(9), q(8)=>
      TxDiv(8), q(7)=>TxDiv(7), q(6)=>TxDiv(6), q(5)=>TxDiv(5), q(4)=>
      TxDiv(4), q(3)=>TxDiv(3), q(2)=>TxDiv(2), q(1)=>TxDiv(1), q(0)=>
      TxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, data(11)=>DANGLING(11), 
      data(10)=>DANGLING(12), data(9)=>DANGLING(13), data(8)=>DANGLING(14), 
      data(7)=>DANGLING(15), data(6)=>DANGLING(16), data(5)=>DANGLING(17), 
      data(4)=>DANGLING(18), data(3)=>DANGLING(19), data(2)=>DANGLING(20), 
      data(1)=>DANGLING(21), data(0)=>DANGLING(22), aset=>GND, sclear=>
      rtlcs1, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxBitCnt : counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
       port map ( clock=>CLK, q(3)=>TxBitCnt(3), q(2)=>TxBitCnt(2), q(1)=>
      TxBitCnt(1), q(0)=>TxBitCnt(0), clk_en=>not_rtlc14_X_0_n225, aclear=>
      RST, sload=>rtlc14n235, data(3)=>PWR, data(2)=>GND, data(1)=>GND, 
      data(0)=>PWR, aset=>GND, sclear=>GND, updn=>GND, cnt_en=>TxFSM(1));
   modgen_counter_RxBitCnt : counter_up_sclear_aclear_clock_clk_en_0_4
       port map ( clock=>CLK, q(3)=>RxBitCnt(3), q(2)=>RxBitCnt(2), q(1)=>
      RxBitCnt(1), q(0)=>RxBitCnt(0), clk_en=>not_rtlc17_X_0_n360, aclear=>
      RST, sload=>GND, data(3)=>DANGLING(23), data(2)=>DANGLING(24), data(1)
      =>DANGLING(25), data(0)=>DANGLING(26), aset=>GND, sclear=>RxFSM_0, 
      updn=>PWR, cnt_en=>PWR);
   rtlceq_s14_eq_11 : eq_8u_8u port map ( a(7)=>RxDiv(10), a(6)=>RxDiv(8), 
      a(5)=>RxDiv(7), a(4)=>RxDiv(6), a(3)=>RxDiv(4), a(2)=>RxDiv(3), a(1)=>
      RxDiv(2), a(0)=>RxDiv(0), b(7)=>GND, b(6)=>GND, b(5)=>TxDivisor_5, 
      b(4)=>TxDivisor_5, b(3)=>TxDivisor_5, b(2)=>TxDivisor_5, b(1)=>GND, 
      b(0)=>GND, d=>rtlcs6);
   rtlceq_s16_eq_12 : eq_9u_9u port map ( a(8)=>TxDiv(11), a(7)=>TxDiv(9), 
      a(6)=>TxDiv(8), a(5)=>TxDiv(7), a(4)=>TxDiv(5), a(3)=>TxDiv(4), a(2)=>
      TxDiv(3), a(1)=>TxDiv(1), a(0)=>TxDiv(0), b(8)=>GND, b(7)=>GND, b(6)=>
      TxDivisor_5, b(5)=>TxDivisor_5, b(4)=>TxDivisor_5, b(3)=>TxDivisor_5, 
      b(2)=>GND, b(1)=>GND, b(0)=>TxDivisor_5, d=>rtlcs7);
   DFFPC (Rx,RST,GND,CLK,Rx_r) ;
   DFFPC (PWR,GND,RST,CLK,TxDivisor_5) ;
   DFFPC (rtlcn51,GND,RST,CLK,TopRx) ;
   DFFPC (rtlcs1,GND,RST,CLK,TopTx) ;
   DFFPCE (not_rtlc14n290,GND,RST,not_rtlcn4,CLK,TxFSM(1)) ;
   DFFPCE (not_TxFSM_0,GND,RST,not_rtlcn4,CLK,TxFSM(0)) ;
   DFFPCE (Tx_Reg_14n6ss1(8),RST,GND,not_rtlc14n168,CLK,Tx_Reg(8)) ;
   DFFPCE (Tx_Reg_14n6ss1(7),RST,GND,not_rtlc14n168,CLK,Tx_Reg(7)) ;
   DFFPCE (Tx_Reg_14n6ss1(6),RST,GND,not_rtlc14n168,CLK,Tx_Reg(6)) ;
   DFFPCE (Tx_Reg_14n6ss1(5),RST,GND,not_rtlc14n168,CLK,Tx_Reg(5)) ;
   DFFPCE (Tx_Reg_14n6ss1(4),RST,GND,not_rtlc14n168,CLK,Tx_Reg(4)) ;
   DFFPCE (Tx_Reg_14n6ss1(3),RST,GND,not_rtlc14n168,CLK,Tx_Reg(3)) ;
   DFFPCE (Tx_Reg_14n6ss1(2),RST,GND,not_rtlc14n168,CLK,Tx_Reg(2)) ;
   DFFPCE (Tx_Reg_14n6ss1(1),RST,GND,not_rtlc14n168,CLK,Tx_Reg(1)) ;
   DFFPCE (Tx_Reg_14n6ss1(0),RST,GND,not_rtlcn2,CLK,Tx) ;
   DFFPCE (rtlcn57,GND,RST,not_rtlcn6,CLK,RxFSM_6) ;
   DFFPCE (rtlcn47,GND,RST,not_rtlcn6,CLK,RxFSM_5) ;
   DFFPCE (rtlcn31,GND,RST,not_rtlcn6,CLK,RxFSM_3) ;
   DFFPCE (rtlcn37,GND,RST,not_rtlcn6,CLK,RxFSM_2) ;
   DFFPCE (RxFSM_0,GND,RST,not_rtlcn6,CLK,RxFSM_1) ;
   DFFPCE (rtlcn42,RST,GND,not_rtlcn6,CLK,RxFSM_0) ;
   DFFPCE (RxFSM_6,GND,RST,rtlc17n460,CLK,RxErr) ;
   DFFPCE (Rx_Reg(7),GND,RST,not_rtlc17n308,CLK,Dout(7)) ;
   DFFPCE (Rx_Reg(6),GND,RST,not_rtlc17n308,CLK,Dout(6)) ;
   DFFPCE (Rx_Reg(5),GND,RST,not_rtlc17n308,CLK,Dout(5)) ;
   DFFPCE (Rx_Reg(4),GND,RST,not_rtlc17n308,CLK,Dout(4)) ;
   DFFPCE (Rx_Reg(3),GND,RST,not_rtlc17n308,CLK,Dout(3)) ;
   DFFPCE (Rx_Reg(2),GND,RST,not_rtlc17n308,CLK,Dout(2)) ;
   DFFPCE (Rx_Reg(1),GND,RST,not_rtlc17n308,CLK,Dout(1)) ;
   DFFPCE (Rx_Reg(0),GND,RST,not_rtlc17n308,CLK,Dout(0)) ;
   DFFPCE (Rx_r,GND,RST,rtlc17n442,CLK,Rx_Reg(7)) ;
   DFFPCE (Rx_Reg(7),GND,RST,rtlc17n442,CLK,Rx_Reg(6)) ;
   DFFPCE (Rx_Reg(6),GND,RST,rtlc17n442,CLK,Rx_Reg(5)) ;
   DFFPCE (Rx_Reg(5),GND,RST,rtlc17n442,CLK,Rx_Reg(4)) ;
   DFFPCE (Rx_Reg(4),GND,RST,rtlc17n442,CLK,Rx_Reg(3)) ;
   DFFPCE (Rx_Reg(3),GND,RST,rtlc17n442,CLK,Rx_Reg(2)) ;
   DFFPCE (Rx_Reg(2),GND,RST,rtlc17n442,CLK,Rx_Reg(1)) ;
   DFFPCE (Rx_Reg(1),GND,RST,rtlc17n442,CLK,Rx_Reg(0)) ;
   DFFPC (rtlcn142,GND,RST,CLK,RxRDY_EXMPLR98) ;
   modgen_and_0 : and_4u_4u port map ( a(3)=>Rx_r, a(2)=>RxFSM_5, a(1)=>
      TopRx, a(0)=>rtlc17n459, d=>rtlcn142);
end RTL_unfold_1358 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_16 is 
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
end counter_up_sclear_clock_clk_en_0_16 ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_16 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, nx48, nx49, nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, 
      nx58, nx59, nx60, nx61, nx62, nx63, nx64, nx65, nx66, nx67, nx68, nx69, 
      nx70, nx71, nx72, nx73, nx74, nx75, nx76, nx77, nx78, nx79, nx80, nx81, 
      nx82, nx83, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(15) <= nx37 ;
   q(14) <= nx39 ;
   q(13) <= nx41 ;
   q(12) <= nx43 ;
   q(11) <= nx45 ;
   q(10) <= nx47 ;
   q(9) <= nx49 ;
   q(8) <= nx51 ;
   q(7) <= nx53 ;
   q(6) <= nx55 ;
   q(5) <= nx57 ;
   q(4) <= nx59 ;
   q(3) <= nx61 ;
   q(2) <= nx63 ;
   q(1) <= nx65 ;
   q(0) <= nx67 ;
   GND <= '0' ;
   DFFPCE (nx36,GND,GND,clk_en,clock,nx37) ;
   DFFPCE (nx38,GND,GND,clk_en,clock,nx39) ;
   DFFPCE (nx40,GND,GND,clk_en,clock,nx41) ;
   DFFPCE (nx42,GND,GND,clk_en,clock,nx43) ;
   DFFPCE (nx44,GND,GND,clk_en,clock,nx45) ;
   DFFPCE (nx46,GND,GND,clk_en,clock,nx47) ;
   DFFPCE (nx48,GND,GND,clk_en,clock,nx49) ;
   DFFPCE (nx50,GND,GND,clk_en,clock,nx51) ;
   DFFPCE (nx52,GND,GND,clk_en,clock,nx53) ;
   DFFPCE (nx54,GND,GND,clk_en,clock,nx55) ;
   DFFPCE (nx56,GND,GND,clk_en,clock,nx57) ;
   DFFPCE (nx58,GND,GND,clk_en,clock,nx59) ;
   DFFPCE (nx60,GND,GND,clk_en,clock,nx61) ;
   DFFPCE (nx62,GND,GND,clk_en,clock,nx63) ;
   DFFPCE (nx64,GND,GND,clk_en,clock,nx65) ;
   DFFPCE (nx66,GND,GND,clk_en,clock,nx67) ;
   inc : inc_16u_16u_0_0 port map ( cin=>PWR, a(15)=>nx37, a(14)=>nx39, 
      a(13)=>nx41, a(12)=>nx43, a(11)=>nx45, a(10)=>nx47, a(9)=>nx49, a(8)=>
      nx51, a(7)=>nx53, a(6)=>nx55, a(5)=>nx57, a(4)=>nx59, a(3)=>nx61, a(2)
      =>nx63, a(1)=>nx65, a(0)=>nx67, d(15)=>nx68, d(14)=>nx69, d(13)=>nx70, 
      d(12)=>nx71, d(11)=>nx72, d(10)=>nx73, d(9)=>nx74, d(8)=>nx75, d(7)=>
      nx76, d(6)=>nx77, d(5)=>nx78, d(4)=>nx79, d(3)=>nx80, d(2)=>nx81, d(1)
      =>nx82, d(0)=>nx83, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx36 <= nx68 AND NOT_SCLEAR ;
   nx38 <= nx69 AND NOT_SCLEAR ;
   nx40 <= nx70 AND NOT_SCLEAR ;
   nx42 <= nx71 AND NOT_SCLEAR ;
   nx44 <= nx72 AND NOT_SCLEAR ;
   nx46 <= nx73 AND NOT_SCLEAR ;
   nx48 <= nx74 AND NOT_SCLEAR ;
   nx50 <= nx75 AND NOT_SCLEAR ;
   nx52 <= nx76 AND NOT_SCLEAR ;
   nx54 <= nx77 AND NOT_SCLEAR ;
   nx56 <= nx78 AND NOT_SCLEAR ;
   nx58 <= nx79 AND NOT_SCLEAR ;
   nx60 <= nx80 AND NOT_SCLEAR ;
   nx62 <= nx81 AND NOT_SCLEAR ;
   nx64 <= nx82 AND NOT_SCLEAR ;
   nx66 <= nx83 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
      txflex : OUT std_logic) ;
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
         RxRDY : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_clock_clk_en_0_16
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
   component and_16u_16u
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
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
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal o_pixavail_EXMPLR152: std_logic ;
   
   signal sdin: std_logic_vector (7 DOWNTO 0) ;
   
   signal rxerr, rxrdy, rawrx, sdout_7, GND, sdout_5, sdout_3, sdout_2, 
      sdout_1, sdout_0: std_logic ;
   
   signal rdata: std_logic_vector (7 DOWNTO 0) ;
   
   signal state, dsend, mdata_7, mdata_5, mdata_3, mdata_2, mdata_1, mdata_0, 
      ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, PWR, not_o_pixavail: std_logic ;
   
   signal mdata_7n2ss1: std_logic_vector (3 DOWNTO 0) ;
   
   signal mdata_7n5ss1_6, mdata_7n5ss1_4, mdata_7n5ss1_3, mdata_7n5ss1_2, 
      mdata_7n5ss1_1, mdata_7n5ss1_0, rtlc7n92, rtlc7n116, not_rxerr, 
      not_rtlcn53, rtlc7n146, rtlc7n149, rtlc7_X_0_n182, rtlc7n222, 
      not_dsend, rtlc10n48, not_rtlc10n48, rtlc10n75, rtlcn0, rtlcn1, rtlcn9, 
      not_rtlcn56, rtlcn43, rtlcn53, rtlcn56, rtlcn57, not_rtlc7n149, 
      not_state, rtlcn61, not_rtlc7n92, not_rtlcn69, not_o_valid, rtlcn69, 
      rtlcn70, not_rtlc7n146, not_rst, not_i_mode_1, rtlcn75, 
      not_waitcount_15, not_waitcount_14, not_waitcount_13, not_waitcount_12, 
      not_waitcount_11, not_waitcount_10, not_waitcount_9, not_waitcount_8, 
      not_waitcount_7, not_waitcount_4, not_waitcount_3, not_waitcount_1, 
      not_waitcount_0, rtlcn95: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   o_pixavail <= o_pixavail_EXMPLR152 ;
   GND <= '0' ;
   PWR <= '1' ;
   i_uarts : UARTS port map ( CLK=>clk, RST=>rst, Din(7)=>sdout_7, Din(6)=>
      GND, Din(5)=>sdout_5, Din(4)=>GND, Din(3)=>sdout_3, Din(2)=>sdout_2, 
      Din(1)=>sdout_1, Din(0)=>sdout_0, LD=>ld_sdout, Rx=>rawrx, Baud=>PWR, 
      Dout(7)=>sdin(7), Dout(6)=>sdin(6), Dout(5)=>sdin(5), Dout(4)=>sdin(4), 
      Dout(3)=>sdin(3), Dout(2)=>sdin(2), Dout(1)=>sdin(1), Dout(0)=>sdin(0), 
      Tx=>txflex, TxBusy=>DANGLING(0), RxErr=>rxerr, RxRDY=>rxrdy);
   rtlc7_72_or_13 : or_3u_3u port map ( a(2)=>rst, a(1)=>o_valid, a(0)=>
      rtlc7n116, d=>rtlc7_X_0_n182);
   not_rxerr <= NOT rxerr ;
   rtlc7n92 <= o_pixavail_EXMPLR152 OR ack ;
   not_rtlcn53 <= NOT rtlcn53 ;
   not_o_pixavail <= NOT o_pixavail_EXMPLR152 ;
   not_rtlc7n149 <= NOT rtlc7n149 ;
   rtlcn1 <= not_rtlc7n149 AND rtlc7n92 ;
   rtlcn53 <= rtlc7n116 OR o_valid ;
   not_state <= NOT state ;
   rtlcn9 <= not_state AND dsend ;
   rtlcn61 <= rtlc7n92 AND not_rtlcn53 ;
   not_rtlc7n92 <= NOT rtlc7n92 ;
   rtlcn57 <= rtlcn61 OR not_rtlcn69 ;
   rtlcn56 <= not_rtlc7n149 AND rtlcn57 ;
   not_rtlcn56 <= NOT rtlcn56 ;
   not_o_valid <= NOT o_valid ;
   rtlcn43 <= not_rtlc7n92 OR not_o_valid ;
   not_rtlcn69 <= NOT rtlcn69 ;
   rtlc7n146 <= not_rtlcn53 when rtlc7n92 = '1' else not_rxerr ;
   rtlcn0 <= rxrdy OR o_pixavail_EXMPLR152 ;
   not_rtlc7n146 <= NOT rtlc7n146 ;
   rtlcn70 <= not_rtlc7n146 OR rtlc7n149 ;
   not_rst <= NOT rst ;
   rtlc7n222 <= not_rst AND rtlcn70 ;
   rtlc10n75 <= dsend OR state ;
   not_dsend <= NOT dsend ;
   not_rtlc10n48 <= NOT rtlc10n48 ;
   mdata_7n2ss1(0) <= kirschout OR not_o_valid ;
   not_i_mode_1 <= NOT i_mode(1) ;
   mdata_7n5ss1_0 <= mdata_7n2ss1(0) AND rtlcn1 ;
   rtlcn69 <= rtlc7n92 OR rxerr ;
   rtlc10n48 <= not_dsend OR state ;
   mdata_7n2ss1(1) <= kirschdir(0) OR not_o_valid ;
   mdata_7n5ss1_1 <= mdata_7n2ss1(1) AND rtlcn1 ;
   mdata_7n2ss1(2) <= kirschdir(1) OR not_o_valid ;
   mdata_7n5ss1_2 <= mdata_7n2ss1(2) AND rtlcn1 ;
   mdata_7n2ss1(3) <= kirschdir(2) OR not_o_valid ;
   mdata_7n5ss1_3 <= mdata_7n2ss1(3) AND rtlcn1 ;
   mdata_7n5ss1_4 <= rtlcn43 OR rtlc7n149 ;
   mdata_7n5ss1_6 <= rtlcn43 AND not_rtlc7n149 ;
   rawrx <= rxflex AND not_rst ;
   datain(0) <= rdata(0) AND o_pixavail_EXMPLR152 ;
   datain(1) <= rdata(1) AND o_pixavail_EXMPLR152 ;
   datain(2) <= rdata(2) AND o_pixavail_EXMPLR152 ;
   datain(3) <= rdata(3) AND o_pixavail_EXMPLR152 ;
   datain(4) <= rdata(4) AND o_pixavail_EXMPLR152 ;
   datain(5) <= rdata(5) AND o_pixavail_EXMPLR152 ;
   datain(6) <= rdata(6) AND o_pixavail_EXMPLR152 ;
   datain(7) <= rdata(7) AND o_pixavail_EXMPLR152 ;
   rtlc7n149 <= not_i_mode_1 AND i_mode(0) ;
   rtlcn75 <= rst OR rtlc7n92 ;
   modgen_counter_waitcount : counter_up_sclear_clock_clk_en_0_16
       port map ( clock=>clk, q(15)=>waitcount(15), q(14)=>waitcount(14), 
      q(13)=>waitcount(13), q(12)=>waitcount(12), q(11)=>waitcount(11), 
      q(10)=>waitcount(10), q(9)=>waitcount(9), q(8)=>waitcount(8), q(7)=>
      waitcount(7), q(6)=>waitcount(6), q(5)=>waitcount(5), q(4)=>
      waitcount(4), q(3)=>waitcount(3), q(2)=>waitcount(2), q(1)=>
      waitcount(1), q(0)=>waitcount(0), clk_en=>rtlcn75, aclear=>GND, sload
      =>GND, data(15)=>DANGLING(1), data(14)=>DANGLING(2), data(13)=>
      DANGLING(3), data(12)=>DANGLING(4), data(11)=>DANGLING(5), data(10)=>
      DANGLING(6), data(9)=>DANGLING(7), data(8)=>DANGLING(8), data(7)=>
      DANGLING(9), data(6)=>DANGLING(10), data(5)=>DANGLING(11), data(4)=>
      DANGLING(12), data(3)=>DANGLING(13), data(2)=>DANGLING(14), data(1)=>
      DANGLING(15), data(0)=>DANGLING(16), aset=>GND, sclear=>rtlc7_X_0_n182, 
      updn=>PWR, cnt_en=>PWR);
   not_waitcount_15 <= NOT waitcount(15) ;
   not_waitcount_14 <= NOT waitcount(14) ;
   not_waitcount_13 <= NOT waitcount(13) ;
   not_waitcount_12 <= NOT waitcount(12) ;
   not_waitcount_11 <= NOT waitcount(11) ;
   not_waitcount_10 <= NOT waitcount(10) ;
   not_waitcount_9 <= NOT waitcount(9) ;
   not_waitcount_8 <= NOT waitcount(8) ;
   not_waitcount_7 <= NOT waitcount(7) ;
   not_waitcount_4 <= NOT waitcount(4) ;
   not_waitcount_3 <= NOT waitcount(3) ;
   not_waitcount_1 <= NOT waitcount(1) ;
   not_waitcount_0 <= NOT waitcount(0) ;
   rtlc_288_and_14 : and_16u_16u port map ( a(15)=>not_waitcount_15, a(14)=>
      not_waitcount_14, a(13)=>not_waitcount_13, a(12)=>not_waitcount_12, 
      a(11)=>not_waitcount_11, a(10)=>not_waitcount_10, a(9)=>
      not_waitcount_9, a(8)=>not_waitcount_8, a(7)=>not_waitcount_7, a(6)=>
      waitcount(6), a(5)=>waitcount(5), a(4)=>not_waitcount_4, a(3)=>
      not_waitcount_3, a(2)=>waitcount(2), a(1)=>not_waitcount_1, a(0)=>
      not_waitcount_0, d=>rtlc7n116);
   rtlcn95 <= not_o_pixavail AND rtlcn0 ;
   DFFPCE (mdata_7n5ss1_6,GND,GND,rtlc7n222,clk,mdata_7) ;
   DFFPCE (mdata_7n5ss1_4,GND,GND,rtlc7n222,clk,mdata_5) ;
   DFFPCE (mdata_7n5ss1_3,GND,GND,rtlc7n222,clk,mdata_3) ;
   DFFPCE (mdata_7n5ss1_2,GND,GND,rtlc7n222,clk,mdata_2) ;
   DFFPCE (mdata_7n5ss1_1,GND,GND,rtlc7n222,clk,mdata_1) ;
   DFFPCE (mdata_7n5ss1_0,GND,GND,rtlc7n222,clk,mdata_0) ;
   DFFRSE (not_rtlcn56,GND,rst,PWR,clk,dsend) ;
   DFFPCE (sdin(7),GND,rst,rxrdy,clk,rdata(7)) ;
   DFFPCE (sdin(6),GND,rst,rxrdy,clk,rdata(6)) ;
   DFFPCE (sdin(5),GND,rst,rxrdy,clk,rdata(5)) ;
   DFFPCE (sdin(4),GND,rst,rxrdy,clk,rdata(4)) ;
   DFFPCE (sdin(3),GND,rst,rxrdy,clk,rdata(3)) ;
   DFFPCE (sdin(2),GND,rst,rxrdy,clk,rdata(2)) ;
   DFFPCE (sdin(1),GND,rst,rxrdy,clk,rdata(1)) ;
   DFFPCE (sdin(0),GND,rst,rxrdy,clk,rdata(0)) ;
   DFFPCE (not_state,GND,rst,rtlc10n75,clk,ld_sdout) ;
   DFFPCE (mdata_7,GND,rst,not_rtlc10n48,clk,sdout_7) ;
   DFFPCE (mdata_5,GND,rst,not_rtlc10n48,clk,sdout_5) ;
   DFFPCE (mdata_3,GND,rst,not_rtlc10n48,clk,sdout_3) ;
   DFFPCE (mdata_2,GND,rst,not_rtlc10n48,clk,sdout_2) ;
   DFFPCE (mdata_1,GND,rst,not_rtlc10n48,clk,sdout_1) ;
   DFFPCE (mdata_0,GND,rst,not_rtlc10n48,clk,sdout_0) ;
   DFFPC (rtlcn9,GND,rst,clk,state) ;
   DFFRSE (rtlcn61,GND,rst,PWR,clk,ack) ;
   DFFPC (rtlcn95,GND,rst,clk,o_pixavail_EXMPLR152) ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_0_mem_8_8_main is 
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
end ram_new_0_mem_8_8_main ;

architecture INTERFACE_unfold_2 of ram_new_0_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F
      generic (ram_type : integer := 2;
         dual_addresses : string := "TRUE") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx31, nx33, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx35, 
      nx37: std_logic ;

begin
   nx31 <= '0' ;
   nx33 <= '1' ;
   DFFPC (addr1(7),nx31,nx31,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx31,nx31,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx31,nx31,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx31,nx31,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx31,nx31,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx31,nx31,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx31,nx31,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx31,nx31,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx35, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx35 <= wr_ena1 AND ena1 ;
   nx37 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_2 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity mem_8_8 is 
   port (
      address : IN std_logic_vector (7 DOWNTO 0) ;
      clock : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      wren : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0)) ;
end mem_8_8 ;

architecture main_unfold_1 of mem_8_8 is 
   component ram_new_0_mem_8_8_main
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
   for mem : ram_new_0_mem_8_8_main use entity work.ram_new_0_mem_8_8_main(
   INTERFACE_unfold_2);
   signal GND, nx25: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_mem_8_8_main port map ( wr_data1(7)=>data(7), wr_data1(6)
      =>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), wr_data1(3)=>
      data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), wr_data1(0)=>
      data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), rd_data1(5)=>q(5), 
      rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>q(2), rd_data1(1)=>
      q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), addr1(6)=>address(6), 
      addr1(5)=>address(5), addr1(4)=>address(4), addr1(3)=>address(3), 
      addr1(2)=>address(2), addr1(1)=>address(1), addr1(0)=>address(0), 
      wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, rd_ena1=>nx25, ena1=>
      nx25, rst1=>GND, regce1=>nx25);
   nx25 <= '1' ;
end main_unfold_1 ;


architecture INTERFACE of ram_new_0_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F
      generic (ram_type : integer := 2;
         dual_addresses : string := "TRUE") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx31, nx33, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx35, 
      nx37: std_logic ;

begin
   nx31 <= '0' ;
   nx33 <= '1' ;
   DFFPC (addr1(7),nx31,nx31,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx31,nx31,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx31,nx31,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx31,nx31,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx31,nx31,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx31,nx31,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx31,nx31,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx31,nx31,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx35, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx35 <= wr_ena1 AND ena1 ;
   nx37 <= rd_ena1 AND ena1 ;
end INTERFACE ;


architecture main_unfold_2 of mem_8_8 is 
   component ram_new_0_mem_8_8_main
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
   for mem : ram_new_0_mem_8_8_main use entity work.ram_new_0_mem_8_8_main(
   INTERFACE);
   signal GND, nx25: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_mem_8_8_main port map ( wr_data1(7)=>data(7), wr_data1(6)
      =>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), wr_data1(3)=>
      data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), wr_data1(0)=>
      data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), rd_data1(5)=>q(5), 
      rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>q(2), rd_data1(1)=>
      q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), addr1(6)=>address(6), 
      addr1(5)=>address(5), addr1(4)=>address(4), addr1(3)=>address(3), 
      addr1(2)=>address(2), addr1(1)=>address(1), addr1(0)=>address(0), 
      wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, rd_ena1=>nx25, ena1=>
      nx25, rst1=>GND, regce1=>nx25);
   nx25 <= '1' ;
end main_unfold_2 ;


architecture INTERFACE_unfold_1 of ram_new_0_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F
      generic (ram_type : integer := 2;
         dual_addresses : string := "TRUE") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx31, nx33, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx35, 
      nx37: std_logic ;

begin
   nx31 <= '0' ;
   nx33 <= '1' ;
   DFFPC (addr1(7),nx31,nx31,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx31,nx31,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx31,nx31,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx31,nx31,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx31,nx31,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx31,nx31,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx31,nx31,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx31,nx31,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx35, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx35 <= wr_ena1 AND ena1 ;
   nx37 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_1 ;


architecture main of mem_8_8 is 
   component ram_new_0_mem_8_8_main
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
   for mem : ram_new_0_mem_8_8_main use entity work.ram_new_0_mem_8_8_main(
   INTERFACE_unfold_1);
   signal GND, nx25: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_mem_8_8_main port map ( wr_data1(7)=>data(7), wr_data1(6)
      =>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), wr_data1(3)=>
      data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), wr_data1(0)=>
      data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), rd_data1(5)=>q(5), 
      rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>q(2), rd_data1(1)=>
      q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), addr1(6)=>address(6), 
      addr1(5)=>address(5), addr1(4)=>address(4), addr1(3)=>address(3), 
      addr1(2)=>address(2), addr1(1)=>address(1), addr1(0)=>address(0), 
      wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, rd_ena1=>nx25, ena1=>
      nx25, rst1=>GND, regce1=>nx25);
   nx25 <= '1' ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_8 is 
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
end counter_up_sclear_clock_clk_en_0_8 ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_8 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx20, nx21, nx22, nx23, nx24, nx25, nx26, nx27, nx28, nx29, 
      nx30, nx31, nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, 
      nx42, nx43, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(7) <= nx21 ;
   q(6) <= nx23 ;
   q(5) <= nx25 ;
   q(4) <= nx27 ;
   q(3) <= nx29 ;
   q(2) <= nx31 ;
   q(1) <= nx33 ;
   q(0) <= nx35 ;
   GND <= '0' ;
   DFFPCE (nx20,GND,GND,clk_en,clock,nx21) ;
   DFFPCE (nx22,GND,GND,clk_en,clock,nx23) ;
   DFFPCE (nx24,GND,GND,clk_en,clock,nx25) ;
   DFFPCE (nx26,GND,GND,clk_en,clock,nx27) ;
   DFFPCE (nx28,GND,GND,clk_en,clock,nx29) ;
   DFFPCE (nx30,GND,GND,clk_en,clock,nx31) ;
   DFFPCE (nx32,GND,GND,clk_en,clock,nx33) ;
   DFFPCE (nx34,GND,GND,clk_en,clock,nx35) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx21, a(6)=>nx23, a(5)=>
      nx25, a(4)=>nx27, a(3)=>nx29, a(2)=>nx31, a(1)=>nx33, a(0)=>nx35, d(7)
      =>nx36, d(6)=>nx37, d(5)=>nx38, d(4)=>nx39, d(3)=>nx40, d(2)=>nx41, 
      d(1)=>nx42, d(0)=>nx43, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx20 <= nx36 AND NOT_SCLEAR ;
   nx22 <= nx37 AND NOT_SCLEAR ;
   nx24 <= nx38 AND NOT_SCLEAR ;
   nx26 <= nx39 AND NOT_SCLEAR ;
   nx28 <= nx40 AND NOT_SCLEAR ;
   nx30 <= nx41 AND NOT_SCLEAR ;
   nx32 <= nx42 AND NOT_SCLEAR ;
   nx34 <= nx43 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_8 is 
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
end counter_up_cnt_en_sclear_clock_0_8 ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx20, nx23, nx24, nx25, nx26, nx27, nx28, nx29, nx30, nx31, 
      nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, 
      nx44, nx45, nx46, PWR, NOT_nx19: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(7) <= nx24 ;
   q(6) <= nx26 ;
   q(5) <= nx28 ;
   q(4) <= nx30 ;
   q(3) <= nx32 ;
   q(2) <= nx34 ;
   q(1) <= nx36 ;
   q(0) <= nx38 ;
   GND <= '0' ;
   nx20 <= cnt_en OR sclear ;
   DFFPCE (nx23,GND,GND,nx20,clock,nx24) ;
   DFFPCE (nx25,GND,GND,nx20,clock,nx26) ;
   DFFPCE (nx27,GND,GND,nx20,clock,nx28) ;
   DFFPCE (nx29,GND,GND,nx20,clock,nx30) ;
   DFFPCE (nx31,GND,GND,nx20,clock,nx32) ;
   DFFPCE (nx33,GND,GND,nx20,clock,nx34) ;
   DFFPCE (nx35,GND,GND,nx20,clock,nx36) ;
   DFFPCE (nx37,GND,GND,nx20,clock,nx38) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx24, a(6)=>nx26, a(5)=>
      nx28, a(4)=>nx30, a(3)=>nx32, a(2)=>nx34, a(1)=>nx36, a(0)=>nx38, d(7)
      =>nx39, d(6)=>nx40, d(5)=>nx41, d(4)=>nx42, d(3)=>nx43, d(2)=>nx44, 
      d(1)=>nx45, d(0)=>nx46, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_nx19 <= NOT sclear ;
   nx23 <= nx39 AND NOT_nx19 ;
   nx25 <= nx40 AND NOT_nx19 ;
   nx27 <= nx41 AND NOT_nx19 ;
   nx29 <= nx42 AND NOT_nx19 ;
   nx31 <= nx43 AND NOT_nx19 ;
   nx33 <= nx44 AND NOT_nx19 ;
   nx35 <= nx45 AND NOT_nx19 ;
   nx37 <= nx46 AND NOT_nx19 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
      p_i_clock : IN std_logic) ;
end kirsch_notri ;

architecture main_unfold_1777 of kirsch_notri is 
   component mem_8_8
      port (
         address : IN std_logic_vector (7 DOWNTO 0) ;
         clock : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         wren : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component mux_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_4_4
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_10u_10u
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component add_12u_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component counter_up_sclear_clock_clk_en_0_8
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
   component counter_up_cnt_en_sclear_clock_0_8
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
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_10u_10u_10u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_11u_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
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
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component sub_12u_12u_12u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_10u_10u
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   for Generate_mem_0_u_mem0 : mem_8_8 use entity work.mem_8_8(main_unfold_1
   );
   for Generate_mem_1_u_mem0 : mem_8_8 use entity work.mem_8_8(main_unfold_2
   );
   for Generate_mem_2_u_mem0 : mem_8_8 use entity work.mem_8_8(main);
   signal NOT_x_r22_0, r17_10n1s1_7, r17_10n1s1_8, r17_9, r17_10n1s1_9, 
      r17_10, r17_10n1s1_10, r17_11, r17_10n1s1_11, r17_12, r17_10n1s1_12: 
   std_logic ;
   
   signal r15_9n1ss1: std_logic_vector (9 DOWNTO 0) ;
   
   signal first_cw: std_logic_vector (2 DOWNTO 0) ;
   
   signal first_cw_9n1ss1_2: std_logic ;
   
   signal x_r11_9n2ss1: std_logic_vector (9 DOWNTO 0) ;
   
   signal second_cw: std_logic_vector (2 DOWNTO 0) ;
   
   signal second_cw_9n2ss1_2: std_logic ;
   
   signal r18: std_logic_vector (9 DOWNTO 0) ;
   
   signal r18_9n3ss1: std_logic_vector (9 DOWNTO 0) ;
   
   signal final_dir_9n3ss1: std_logic_vector (2 DOWNTO 0) ;
   
   signal x_r22: std_logic_vector (12 DOWNTO 0) ;
   
   signal r10_6n1ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal stage1_nNe_2: std_logic ;
   
   signal r5_6n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal stage1_wNw_2: std_logic ;
   
   signal x_r5_6n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r12_6n4ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal stage1_sSw_2: std_logic ;
   
   signal validBit_2: std_logic_vector (7 DOWNTO 3) ;
   
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
   
   signal rtlc4n202: std_logic ;
   
   signal final_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal second_cw_9n2ss1_0, stage1_eSe_2, first_cw_9n1ss1_0, stage1_wNw_0
   : std_logic ;
   
   signal x_r22_8n1s1: std_logic_vector (12 DOWNTO 1) ;
   
   signal x_r12: std_logic_vector (11 DOWNTO 0) ;
   
   signal rtlcn179, not_col_0, not_col_1, not_col_2, not_col_3, not_col_4, 
      not_col_5, not_col_6, not_col_7, rtlc9n158, rtlc9n171, not_validBit_5, 
      rtlc8n222, rtlc8n234, rtlc8n247, not_validBit_4, not_validBit_2, 
      rtlc7n204, rtlc7n214, rtlc7n224, not_validBit_3, rtlc6n356, rtlc6n398, 
      not_rtlcn161, rtlcn161, not_i_valid, rtlc4n274, not_i_reset: std_logic
    ;
   
   signal x_r3_7n3s1f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r5: std_logic_vector (7 DOWNTO 0) ;
   
   signal x_r5: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc3n52, rtlc11n129, r17_7, r17_8, o_edge, rtlcn0, o_valid, 
      rtlc9n128, not_rtlc9n128: std_logic ;
   
   signal x_r3: std_logic_vector (9 DOWNTO 0) ;
   
   signal b_d1: std_logic_vector (9 DOWNTO 0) ;
   
   signal not_rtlc9n130: std_logic ;
   
   signal r11: std_logic_vector (9 DOWNTO 0) ;
   
   signal r16: std_logic_vector (9 DOWNTO 0) ;
   
   signal nx83: std_logic ;
   
   signal r15: std_logic_vector (9 DOWNTO 0) ;
   
   signal x_r11: std_logic_vector (9 DOWNTO 0) ;
   
   signal r2_6n3s1f2: std_logic_vector (7 DOWNTO 0) ;
   
   signal r2_6n3s1f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_rtlcn179, rtlc6n521: std_logic ;
   
   signal validBit_1: std_logic_vector (1 DOWNTO 1) ;
   
   signal rtlc6n519, validBit_2_rename0, not_validBit_1, not_rtlc6n321: 
   std_logic ;
   
   signal a: std_logic_vector (7 DOWNTO 0) ;
   
   signal d: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_validBit_0, validBit_0, rtlc6n323, not_rtlc6n323: std_logic ;
   
   signal g: std_logic_vector (7 DOWNTO 0) ;
   
   signal b: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_rtlc6n325: std_logic ;
   
   signal c: std_logic_vector (7 DOWNTO 0) ;
   
   signal f: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_rtlc6n327: std_logic ;
   
   signal e: std_logic_vector (7 DOWNTO 0) ;
   
   signal h: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc5n66, rtlc5n65, rtlc5n259, rtlc5n171: std_logic ;
   
   signal o_row: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc2n58, rtlc2n251, rtlc2n163: std_logic ;
   
   signal mem1: std_logic_vector (7 DOWNTO 0) ;
   
   signal state: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem0: std_logic_vector (7 DOWNTO 0) ;
   
   signal tempStorage_2_7_rename2: std_logic_vector (2 DOWNTO 1) ;
   
   signal tempStorage_2_1_rename3: std_logic_vector (2 DOWNTO 2) ;
   
   signal tempStorage_2_2_rename4: std_logic_vector (2 DOWNTO 2) ;
   
   signal tempStorage_2_3_rename5: std_logic_vector (2 DOWNTO 2) ;
   
   signal tempStorage_2_4_rename6: std_logic_vector (2 DOWNTO 2) ;
   
   signal tempStorage_2_5_rename7: std_logic_vector (2 DOWNTO 2) ;
   
   signal tempStorage_2_6_rename8: std_logic_vector (2 DOWNTO 2) ;
   
   signal we: std_logic_vector (2 DOWNTO 0) ;
   
   signal tempStorage_1_7_rename9: std_logic_vector (1 DOWNTO 0) ;
   
   signal tempStorage_1_1_rename10: std_logic_vector (1 DOWNTO 1) ;
   
   signal tempStorage_1_2_rename11: std_logic_vector (1 DOWNTO 1) ;
   
   signal tempStorage_1_3_rename12: std_logic_vector (1 DOWNTO 1) ;
   
   signal tempStorage_1_4_rename13: std_logic_vector (1 DOWNTO 1) ;
   
   signal tempStorage_1_5_rename14: std_logic_vector (1 DOWNTO 1) ;
   
   signal tempStorage_1_6_rename15: std_logic_vector (1 DOWNTO 1) ;
   
   signal tempStorage_0_7_rename16: std_logic_vector (1 DOWNTO 0) ;
   
   signal tempStorage_0_1_rename17: std_logic_vector (0 DOWNTO 0) ;
   
   signal tempStorage_0_2_rename18: std_logic_vector (0 DOWNTO 0) ;
   
   signal tempStorage_0_3_rename19: std_logic_vector (0 DOWNTO 0) ;
   
   signal tempStorage_0_4_rename20: std_logic_vector (0 DOWNTO 0) ;
   
   signal tempStorage_0_5_rename21: std_logic_vector (0 DOWNTO 0) ;
   
   signal tempStorage_0_6_rename22: std_logic_vector (0 DOWNTO 0) ;
   
   signal col: std_logic_vector (7 DOWNTO 0) ;
   
   signal PWR, GND: std_logic ;
   
   signal DANGLING : std_logic_vector (23 downto 0 );

begin
   p_o_edge <= o_edge ;
   p_o_valid <= o_valid ;
   p_o_row(7) <= o_row(7) ;
   p_o_row(6) <= o_row(6) ;
   p_o_row(5) <= o_row(5) ;
   p_o_row(4) <= o_row(4) ;
   p_o_row(3) <= o_row(3) ;
   p_o_row(2) <= o_row(2) ;
   p_o_row(1) <= o_row(1) ;
   p_o_row(0) <= o_row(0) ;
   GND <= '0' ;
   PWR <= '1' ;
   Generate_mem_0_u_mem0 : mem_8_8 port map ( address(7)=>col(7), address(6)
      =>col(6), address(5)=>col(5), address(4)=>col(4), address(3)=>col(3), 
      address(2)=>col(2), address(1)=>col(1), address(0)=>col(0), clock=>
      p_i_clock, data(7)=>p_i_pixel(7), data(6)=>p_i_pixel(6), data(5)=>
      p_i_pixel(5), data(4)=>p_i_pixel(4), data(3)=>p_i_pixel(3), data(2)=>
      p_i_pixel(2), data(1)=>p_i_pixel(1), data(0)=>p_i_pixel(0), wren=>
      we(0), q(7)=>tempStorage_0_7_rename16(0), q(6)=>
      tempStorage_0_6_rename22(0), q(5)=>tempStorage_0_5_rename21(0), q(4)=>
      tempStorage_0_4_rename20(0), q(3)=>tempStorage_0_3_rename19(0), q(2)=>
      tempStorage_0_2_rename18(0), q(1)=>tempStorage_0_1_rename17(0), q(0)=>
      tempStorage_0_7_rename16(1));
   Generate_mem_1_u_mem0 : mem_8_8 port map ( address(7)=>col(7), address(6)
      =>col(6), address(5)=>col(5), address(4)=>col(4), address(3)=>col(3), 
      address(2)=>col(2), address(1)=>col(1), address(0)=>col(0), clock=>
      p_i_clock, data(7)=>p_i_pixel(7), data(6)=>p_i_pixel(6), data(5)=>
      p_i_pixel(5), data(4)=>p_i_pixel(4), data(3)=>p_i_pixel(3), data(2)=>
      p_i_pixel(2), data(1)=>p_i_pixel(1), data(0)=>p_i_pixel(0), wren=>
      we(1), q(7)=>tempStorage_1_7_rename9(0), q(6)=>
      tempStorage_1_6_rename15(1), q(5)=>tempStorage_1_5_rename14(1), q(4)=>
      tempStorage_1_4_rename13(1), q(3)=>tempStorage_1_3_rename12(1), q(2)=>
      tempStorage_1_2_rename11(1), q(1)=>tempStorage_1_1_rename10(1), q(0)=>
      tempStorage_1_7_rename9(1));
   Generate_mem_2_u_mem0 : mem_8_8 port map ( address(7)=>col(7), address(6)
      =>col(6), address(5)=>col(5), address(4)=>col(4), address(3)=>col(3), 
      address(2)=>col(2), address(1)=>col(1), address(0)=>col(0), clock=>
      p_i_clock, data(7)=>p_i_pixel(7), data(6)=>p_i_pixel(6), data(5)=>
      p_i_pixel(5), data(4)=>p_i_pixel(4), data(3)=>p_i_pixel(3), data(2)=>
      p_i_pixel(2), data(1)=>p_i_pixel(1), data(0)=>p_i_pixel(0), wren=>
      we(2), q(7)=>tempStorage_2_7_rename2(1), q(6)=>
      tempStorage_2_6_rename8(2), q(5)=>tempStorage_2_5_rename7(2), q(4)=>
      tempStorage_2_4_rename6(2), q(3)=>tempStorage_2_3_rename5(2), q(2)=>
      tempStorage_2_2_rename4(2), q(1)=>tempStorage_2_1_rename3(2), q(0)=>
      tempStorage_2_7_rename2(2));
   mem0_mux_0Bus14_0 : mux_3u_3u port map ( a(2)=>tempStorage_2_7_rename2(2), 
      a(1)=>tempStorage_1_7_rename9(1), a(0)=>tempStorage_0_7_rename16(1), 
      b(2)=>GND, b(1)=>state(0), b(0)=>state(1), d=>mem0(0));
   mem0_mux_0Bus14_1 : mux_3u_3u port map ( a(2)=>tempStorage_2_1_rename3(2), 
      a(1)=>tempStorage_1_1_rename10(1), a(0)=>tempStorage_0_1_rename17(0), 
      b(2)=>GND, b(1)=>state(0), b(0)=>state(1), d=>mem0(1));
   mem0_mux_0Bus14_2 : mux_3u_3u port map ( a(2)=>tempStorage_2_2_rename4(2), 
      a(1)=>tempStorage_1_2_rename11(1), a(0)=>tempStorage_0_2_rename18(0), 
      b(2)=>GND, b(1)=>state(0), b(0)=>state(1), d=>mem0(2));
   mem0_mux_0Bus14_3 : mux_3u_3u port map ( a(2)=>tempStorage_2_3_rename5(2), 
      a(1)=>tempStorage_1_3_rename12(1), a(0)=>tempStorage_0_3_rename19(0), 
      b(2)=>GND, b(1)=>state(0), b(0)=>state(1), d=>mem0(3));
   mem0_mux_0Bus14_4 : mux_3u_3u port map ( a(2)=>tempStorage_2_4_rename6(2), 
      a(1)=>tempStorage_1_4_rename13(1), a(0)=>tempStorage_0_4_rename20(0), 
      b(2)=>GND, b(1)=>state(0), b(0)=>state(1), d=>mem0(4));
   mem0_mux_0Bus14_5 : mux_3u_3u port map ( a(2)=>tempStorage_2_5_rename7(2), 
      a(1)=>tempStorage_1_5_rename14(1), a(0)=>tempStorage_0_5_rename21(0), 
      b(2)=>GND, b(1)=>state(0), b(0)=>state(1), d=>mem0(5));
   mem0_mux_0Bus14_6 : mux_3u_3u port map ( a(2)=>tempStorage_2_6_rename8(2), 
      a(1)=>tempStorage_1_6_rename15(1), a(0)=>tempStorage_0_6_rename22(0), 
      b(2)=>GND, b(1)=>state(0), b(0)=>state(1), d=>mem0(6));
   mem0_mux_0Bus14_7 : mux_3u_3u port map ( a(2)=>tempStorage_2_7_rename2(1), 
      a(1)=>tempStorage_1_7_rename9(0), a(0)=>tempStorage_0_7_rename16(0), 
      b(2)=>GND, b(1)=>state(0), b(0)=>state(1), d=>mem0(7));
   mem1_mux_8Bus15_0 : mux_3u_3u port map ( a(2)=>tempStorage_2_7_rename2(2), 
      a(1)=>tempStorage_1_7_rename9(1), a(0)=>tempStorage_0_7_rename16(1), 
      b(2)=>GND, b(1)=>state(1), b(0)=>state(2), d=>mem1(0));
   mem1_mux_8Bus15_1 : mux_3u_3u port map ( a(2)=>tempStorage_2_1_rename3(2), 
      a(1)=>tempStorage_1_1_rename10(1), a(0)=>tempStorage_0_1_rename17(0), 
      b(2)=>GND, b(1)=>state(1), b(0)=>state(2), d=>mem1(1));
   mem1_mux_8Bus15_2 : mux_3u_3u port map ( a(2)=>tempStorage_2_2_rename4(2), 
      a(1)=>tempStorage_1_2_rename11(1), a(0)=>tempStorage_0_2_rename18(0), 
      b(2)=>GND, b(1)=>state(1), b(0)=>state(2), d=>mem1(2));
   mem1_mux_8Bus15_3 : mux_3u_3u port map ( a(2)=>tempStorage_2_3_rename5(2), 
      a(1)=>tempStorage_1_3_rename12(1), a(0)=>tempStorage_0_3_rename19(0), 
      b(2)=>GND, b(1)=>state(1), b(0)=>state(2), d=>mem1(3));
   mem1_mux_8Bus15_4 : mux_3u_3u port map ( a(2)=>tempStorage_2_4_rename6(2), 
      a(1)=>tempStorage_1_4_rename13(1), a(0)=>tempStorage_0_4_rename20(0), 
      b(2)=>GND, b(1)=>state(1), b(0)=>state(2), d=>mem1(4));
   mem1_mux_8Bus15_5 : mux_3u_3u port map ( a(2)=>tempStorage_2_5_rename7(2), 
      a(1)=>tempStorage_1_5_rename14(1), a(0)=>tempStorage_0_5_rename21(0), 
      b(2)=>GND, b(1)=>state(1), b(0)=>state(2), d=>mem1(5));
   mem1_mux_8Bus15_6 : mux_3u_3u port map ( a(2)=>tempStorage_2_6_rename8(2), 
      a(1)=>tempStorage_1_6_rename15(1), a(0)=>tempStorage_0_6_rename22(0), 
      b(2)=>GND, b(1)=>state(1), b(0)=>state(2), d=>mem1(6));
   mem1_mux_8Bus15_7 : mux_3u_3u port map ( a(2)=>tempStorage_2_7_rename2(1), 
      a(1)=>tempStorage_1_7_rename9(0), a(0)=>tempStorage_0_7_rename16(0), 
      b(2)=>GND, b(1)=>state(1), b(0)=>state(2), d=>mem1(7));
   we(0) <= state(1) AND p_i_valid ;
   we(1) <= state(0) AND p_i_valid ;
   we(2) <= state(2) AND p_i_valid ;
   rtlc2n58 <= rtlc2n163 AND rtlc2n251 ;
   rtlc2_52_or_31 : or_8u_8u port map ( a(7)=>o_row(0), a(6)=>o_row(1), a(5)
      =>o_row(2), a(4)=>o_row(3), a(3)=>o_row(4), a(2)=>o_row(5), a(1)=>
      o_row(6), a(0)=>o_row(7), d=>rtlc2n163);
   rtlc2_78_or_32 : or_8u_8u port map ( a(7)=>col(0), a(6)=>col(1), a(5)=>
      col(2), a(4)=>col(3), a(3)=>col(4), a(2)=>col(5), a(1)=>col(6), a(0)=>
      col(7), d=>rtlc2n251);
   rtlc5n65 <= rtlc5n171 AND rtlc5n259 ;
   rtlc5n66 <= p_i_valid AND rtlc5n65 ;
   rtlc5_68_or_33 : or_7u_7u port map ( a(6)=>o_row(1), a(5)=>o_row(2), a(4)
      =>o_row(3), a(3)=>o_row(4), a(2)=>o_row(5), a(1)=>o_row(6), a(0)=>
      o_row(7), d=>rtlc5n171);
   rtlc5_94_or_34 : or_7u_7u port map ( a(6)=>col(1), a(5)=>col(2), a(4)=>
      col(3), a(3)=>col(4), a(2)=>col(5), a(1)=>col(6), a(0)=>col(7), d=>
      rtlc5n259);
   rtlc6_298_gt_35 : gt_8u_8u port map ( a(7)=>h(7), a(6)=>h(6), a(5)=>h(5), 
      a(4)=>h(4), a(3)=>h(3), a(2)=>h(2), a(1)=>h(1), a(0)=>h(0), b(7)=>e(7), 
      b(6)=>e(6), b(5)=>e(5), b(4)=>e(4), b(3)=>e(3), b(2)=>e(2), b(1)=>e(1), 
      b(0)=>e(0), d=>not_rtlc6n327);
   rtlc6_308_gt_36 : gt_8u_8u port map ( a(7)=>f(7), a(6)=>f(6), a(5)=>f(5), 
      a(4)=>f(4), a(3)=>f(3), a(2)=>f(2), a(1)=>f(1), a(0)=>f(0), b(7)=>c(7), 
      b(6)=>c(6), b(5)=>c(5), b(4)=>c(4), b(3)=>c(3), b(2)=>c(2), b(1)=>c(1), 
      b(0)=>c(0), d=>not_rtlc6n325);
   rtlc6_318_gt_37 : gt_8u_8u port map ( a(7)=>b(7), a(6)=>b(6), a(5)=>b(5), 
      a(4)=>b(4), a(3)=>b(3), a(2)=>b(2), a(1)=>b(1), a(0)=>b(0), b(7)=>g(7), 
      b(6)=>g(6), b(5)=>g(5), b(4)=>g(4), b(3)=>g(3), b(2)=>g(2), b(1)=>g(1), 
      b(0)=>g(0), d=>not_rtlc6n323);
   rtlc6n323 <= NOT not_rtlc6n323 ;
   not_validBit_0 <= NOT validBit_0 ;
   rtlc6_329_gt_38 : gt_8u_8u port map ( a(7)=>d(7), a(6)=>d(6), a(5)=>d(5), 
      a(4)=>d(4), a(3)=>d(3), a(2)=>d(2), a(1)=>d(1), a(0)=>d(0), b(7)=>a(7), 
      b(6)=>a(6), b(5)=>a(5), b(4)=>a(4), b(3)=>a(3), b(2)=>a(2), b(1)=>a(1), 
      b(0)=>a(0), d=>not_rtlc6n321);
   rtlc6_438_and_39 : and_3u_3u port map ( a(2)=>not_validBit_0, a(1)=>
      not_validBit_1, a(0)=>validBit_2_rename0, d=>rtlc6n519);
   rtlc6n521 <= not_validBit_0 AND validBit_1(1) ;
   r2_select_6i8Bus56_7 : select_4_4 port map ( a(3)=>rtlc6n519, a(2)=>
      validBit_0, a(1)=>rtlc6n521, a(0)=>not_rtlcn179, b(3)=>d(7), b(2)=>
      b(7), b(1)=>h(7), b(0)=>f(7), d=>r2_6n3s1f1(7));
   r2_select_6i8Bus56_6 : select_4_4 port map ( a(3)=>rtlc6n519, a(2)=>
      validBit_0, a(1)=>rtlc6n521, a(0)=>not_rtlcn179, b(3)=>d(6), b(2)=>
      b(6), b(1)=>h(6), b(0)=>f(6), d=>r2_6n3s1f1(6));
   r2_select_6i8Bus56_5 : select_4_4 port map ( a(3)=>rtlc6n519, a(2)=>
      validBit_0, a(1)=>rtlc6n521, a(0)=>not_rtlcn179, b(3)=>d(5), b(2)=>
      b(5), b(1)=>h(5), b(0)=>f(5), d=>r2_6n3s1f1(5));
   r2_select_6i8Bus56_4 : select_4_4 port map ( a(3)=>rtlc6n519, a(2)=>
      validBit_0, a(1)=>rtlc6n521, a(0)=>not_rtlcn179, b(3)=>d(4), b(2)=>
      b(4), b(1)=>h(4), b(0)=>f(4), d=>r2_6n3s1f1(4));
   r2_select_6i8Bus56_3 : select_4_4 port map ( a(3)=>rtlc6n519, a(2)=>
      validBit_0, a(1)=>rtlc6n521, a(0)=>not_rtlcn179, b(3)=>d(3), b(2)=>
      b(3), b(1)=>h(3), b(0)=>f(3), d=>r2_6n3s1f1(3));
   r2_select_6i8Bus56_2 : select_4_4 port map ( a(3)=>rtlc6n519, a(2)=>
      validBit_0, a(1)=>rtlc6n521, a(0)=>not_rtlcn179, b(3)=>d(2), b(2)=>
      b(2), b(1)=>h(2), b(0)=>f(2), d=>r2_6n3s1f1(2));
   r2_select_6i8Bus56_1 : select_4_4 port map ( a(3)=>rtlc6n519, a(2)=>
      validBit_0, a(1)=>rtlc6n521, a(0)=>not_rtlcn179, b(3)=>d(1), b(2)=>
      b(1), b(1)=>h(1), b(0)=>f(1), d=>r2_6n3s1f1(1));
   r2_select_6i8Bus56_0 : select_4_4 port map ( a(3)=>rtlc6n519, a(2)=>
      validBit_0, a(1)=>rtlc6n521, a(0)=>not_rtlcn179, b(3)=>d(0), b(2)=>
      b(0), b(1)=>h(0), b(0)=>f(0), d=>r2_6n3s1f1(0));
   r2_select_6i16Bus57_7 : select_4_4 port map ( a(3)=>not_rtlcn179, a(2)=>
      rtlc6n521, a(1)=>validBit_0, a(0)=>rtlc6n519, b(3)=>g(7), b(2)=>a(7), 
      b(1)=>c(7), b(0)=>e(7), d=>r2_6n3s1f2(7));
   r2_select_6i16Bus57_6 : select_4_4 port map ( a(3)=>not_rtlcn179, a(2)=>
      rtlc6n521, a(1)=>validBit_0, a(0)=>rtlc6n519, b(3)=>g(6), b(2)=>a(6), 
      b(1)=>c(6), b(0)=>e(6), d=>r2_6n3s1f2(6));
   r2_select_6i16Bus57_5 : select_4_4 port map ( a(3)=>not_rtlcn179, a(2)=>
      rtlc6n521, a(1)=>validBit_0, a(0)=>rtlc6n519, b(3)=>g(5), b(2)=>a(5), 
      b(1)=>c(5), b(0)=>e(5), d=>r2_6n3s1f2(5));
   r2_select_6i16Bus57_4 : select_4_4 port map ( a(3)=>not_rtlcn179, a(2)=>
      rtlc6n521, a(1)=>validBit_0, a(0)=>rtlc6n519, b(3)=>g(4), b(2)=>a(4), 
      b(1)=>c(4), b(0)=>e(4), d=>r2_6n3s1f2(4));
   r2_select_6i16Bus57_3 : select_4_4 port map ( a(3)=>not_rtlcn179, a(2)=>
      rtlc6n521, a(1)=>validBit_0, a(0)=>rtlc6n519, b(3)=>g(3), b(2)=>a(3), 
      b(1)=>c(3), b(0)=>e(3), d=>r2_6n3s1f2(3));
   r2_select_6i16Bus57_2 : select_4_4 port map ( a(3)=>not_rtlcn179, a(2)=>
      rtlc6n521, a(1)=>validBit_0, a(0)=>rtlc6n519, b(3)=>g(2), b(2)=>a(2), 
      b(1)=>c(2), b(0)=>e(2), d=>r2_6n3s1f2(2));
   r2_select_6i16Bus57_1 : select_4_4 port map ( a(3)=>not_rtlcn179, a(2)=>
      rtlc6n521, a(1)=>validBit_0, a(0)=>rtlc6n519, b(3)=>g(1), b(2)=>a(1), 
      b(1)=>c(1), b(0)=>e(1), d=>r2_6n3s1f2(1));
   r2_select_6i16Bus57_0 : select_4_4 port map ( a(3)=>not_rtlcn179, a(2)=>
      rtlc6n521, a(1)=>validBit_0, a(0)=>rtlc6n519, b(3)=>g(0), b(2)=>a(0), 
      b(1)=>c(0), b(0)=>e(0), d=>r2_6n3s1f2(0));
   rtlc9_178_gt_56 : gt_10u_10u port map ( a(9)=>x_r11(9), a(8)=>x_r11(8), 
      a(7)=>x_r11(7), a(6)=>x_r11(6), a(5)=>x_r11(5), a(4)=>x_r11(4), a(3)=>
      x_r11(3), a(2)=>x_r11(2), a(1)=>x_r11(1), a(0)=>x_r11(0), b(9)=>r15(9), 
      b(8)=>r15(8), b(7)=>r15(7), b(6)=>r15(6), b(5)=>r15(5), b(4)=>r15(4), 
      b(3)=>r15(3), b(2)=>r15(2), b(1)=>r15(1), b(0)=>r15(0), d=>nx83);
   rtlc9_188_gt_57 : gt_10u_10u port map ( a(9)=>r16(9), a(8)=>r16(8), a(7)
      =>r16(7), a(6)=>r16(6), a(5)=>r16(5), a(4)=>r16(4), a(3)=>r16(3), a(2)
      =>r16(2), a(1)=>r16(1), a(0)=>r16(0), b(9)=>r11(9), b(8)=>r11(8), b(7)
      =>r11(7), b(6)=>r11(6), b(5)=>r11(5), b(4)=>r11(4), b(3)=>r11(3), b(2)
      =>r11(2), b(1)=>r11(1), b(0)=>r11(0), d=>not_rtlc9n130);
   rtlc9_199_gt_58 : gt_10u_10u port map ( a(9)=>b_d1(9), a(8)=>b_d1(8), 
      a(7)=>b_d1(7), a(6)=>b_d1(6), a(5)=>b_d1(5), a(4)=>b_d1(4), a(3)=>
      b_d1(3), a(2)=>b_d1(2), a(1)=>b_d1(1), a(0)=>b_d1(0), b(9)=>x_r3(9), 
      b(8)=>x_r3(8), b(7)=>x_r3(7), b(6)=>x_r3(6), b(5)=>x_r3(5), b(4)=>
      x_r3(4), b(3)=>x_r3(3), b(2)=>x_r3(2), b(1)=>x_r3(1), b(0)=>x_r3(0), d
      =>not_rtlc9n128);
   rtlc9n128 <= NOT not_rtlc9n128 ;
   o_edge <= o_valid AND rtlcn0 ;
   rtlc11n129 <= r17_8 AND r17_7 ;
   rtlc3n52 <= p_i_reset OR vBit(1) ;
   x_r3_7n3s1f1(7) <= r5(7) when validBit_2_rename0 = '1' else x_r5(7) ;
   x_r3_7n3s1f1(6) <= r5(6) when validBit_2_rename0 = '1' else x_r5(6) ;
   x_r3_7n3s1f1(5) <= r5(5) when validBit_2_rename0 = '1' else x_r5(5) ;
   x_r3_7n3s1f1(4) <= r5(4) when validBit_2_rename0 = '1' else x_r5(4) ;
   x_r3_7n3s1f1(3) <= r5(3) when validBit_2_rename0 = '1' else x_r5(3) ;
   x_r3_7n3s1f1(2) <= r5(2) when validBit_2_rename0 = '1' else x_r5(2) ;
   x_r3_7n3s1f1(1) <= r5(1) when validBit_2_rename0 = '1' else x_r5(1) ;
   x_r3_7n3s1f1(0) <= r5(0) when validBit_2_rename0 = '1' else x_r5(0) ;
   not_i_reset <= NOT p_i_reset ;
   rtlc4n274 <= not_i_reset AND p_i_valid ;
   not_i_valid <= NOT p_i_valid ;
   rtlcn161 <= validBit_1(1) OR validBit_2_rename0 ;
   not_rtlcn161 <= NOT rtlcn161 ;
   rtlc_336_and_62 : and_3u_3u port map ( a(2)=>not_validBit_0, a(1)=>
      validBit_2(3), a(0)=>not_rtlcn161, d=>rtlc6n398);
   not_validBit_1 <= NOT validBit_1(1) ;
   rtlc6n356 <= not_validBit_0 AND rtlcn161 ;
   not_validBit_3 <= NOT validBit_2(3) ;
   rtlc_344_and_63 : and_3u_3u port map ( a(2)=>not_validBit_3, a(1)=>
      validBit_2(4), a(0)=>not_rtlcn161, d=>rtlc7n224);
   rtlc7n214 <= validBit_2(3) AND not_rtlcn161 ;
   rtlc7n204 <= not_validBit_1 AND validBit_2_rename0 ;
   not_validBit_2 <= NOT validBit_2_rename0 ;
   not_validBit_4 <= NOT validBit_2(4) ;
   rtlc_349_and_64 : and_4u_4u port map ( a(3)=>not_validBit_2, a(2)=>
      not_validBit_3, a(1)=>not_validBit_4, a(0)=>validBit_2(5), d=>
      rtlc8n247);
   rtlc_350_and_65 : and_3u_3u port map ( a(2)=>not_validBit_2, a(1)=>
      not_validBit_3, a(0)=>validBit_2(4), d=>rtlc8n234);
   rtlc8n222 <= not_validBit_2 AND validBit_2(3) ;
   not_validBit_5 <= NOT validBit_2(5) ;
   rtlc_353_and_66 : and_3u_3u port map ( a(2)=>not_validBit_3, a(1)=>
      not_validBit_5, a(0)=>validBit_2(6), d=>rtlc9n171);
   rtlc9n158 <= not_validBit_3 AND validBit_2(5) ;
   not_col_7 <= NOT col(7) ;
   not_col_6 <= NOT col(6) ;
   not_col_5 <= NOT col(5) ;
   not_col_4 <= NOT col(4) ;
   not_col_3 <= NOT col(3) ;
   not_col_2 <= NOT col(2) ;
   not_col_1 <= NOT col(1) ;
   not_col_0 <= NOT col(0) ;
   rtlc_365_or_68 : or_3u_3u port map ( a(2)=>validBit_0, a(1)=>
      validBit_1(1), a(0)=>validBit_2_rename0, d=>rtlcn179);
   not_rtlcn179 <= NOT rtlcn179 ;
   x_r22_add12_8i1 : add_12u_12u_12u_0_0 port map ( cin=>GND, a(11)=>GND, 
      a(10)=>x_r12(11), a(9)=>x_r12(10), a(8)=>x_r12(9), a(7)=>x_r12(8), 
      a(6)=>x_r12(7), a(5)=>x_r12(6), a(4)=>x_r12(5), a(3)=>x_r12(4), a(2)=>
      x_r12(3), a(1)=>x_r12(2), a(0)=>x_r12(1), b(11)=>x_r12(11), b(10)=>
      x_r12(10), b(9)=>x_r12(9), b(8)=>x_r12(8), b(7)=>x_r12(7), b(6)=>
      x_r12(6), b(5)=>x_r12(5), b(4)=>x_r12(4), b(3)=>x_r12(3), b(2)=>
      x_r12(2), b(1)=>x_r12(1), b(0)=>x_r12(0), d(11)=>x_r22_8n1s1(12), 
      d(10)=>x_r22_8n1s1(11), d(9)=>x_r22_8n1s1(10), d(8)=>x_r22_8n1s1(9), 
      d(7)=>x_r22_8n1s1(8), d(6)=>x_r22_8n1s1(7), d(5)=>x_r22_8n1s1(6), d(4)
      =>x_r22_8n1s1(5), d(3)=>x_r22_8n1s1(4), d(2)=>x_r22_8n1s1(3), d(1)=>
      x_r22_8n1s1(2), d(0)=>x_r22_8n1s1(1), cout=>DANGLING(0));
   first_cw_9n1ss1_0 <= stage1_wNw_0 AND rtlc9n128 ;
   second_cw_9n2ss1_0 <= stage1_eSe_2 OR not_rtlc9n130 ;
   p_o_dir(0) <= final_dir(0) AND o_edge ;
   p_o_dir(1) <= final_dir(1) AND o_edge ;
   p_o_dir(2) <= final_dir(2) AND o_edge ;
   modgen_counter_col : counter_up_sclear_clock_clk_en_0_8 port map ( clock
      =>p_i_clock, q(7)=>col(7), q(6)=>col(6), q(5)=>col(5), q(4)=>col(4), 
      q(3)=>col(3), q(2)=>col(2), q(1)=>col(1), q(0)=>col(0), clk_en=>
      rtlc3n52, aclear=>GND, sload=>GND, data(7)=>DANGLING(1), data(6)=>
      DANGLING(2), data(5)=>DANGLING(3), data(4)=>DANGLING(4), data(3)=>
      DANGLING(5), data(2)=>DANGLING(6), data(1)=>DANGLING(7), data(0)=>
      DANGLING(8), aset=>GND, sclear=>p_i_reset, updn=>PWR, cnt_en=>PWR);
   modgen_counter_o_row : counter_up_cnt_en_sclear_clock_0_8 port map ( 
      clock=>p_i_clock, q(7)=>o_row(7), q(6)=>o_row(6), q(5)=>o_row(5), q(4)
      =>o_row(4), q(3)=>o_row(3), q(2)=>o_row(2), q(1)=>o_row(1), q(0)=>
      o_row(0), clk_en=>PWR, aclear=>GND, sload=>GND, data(7)=>DANGLING(9), 
      data(6)=>DANGLING(10), data(5)=>DANGLING(11), data(4)=>DANGLING(12), 
      data(3)=>DANGLING(13), data(2)=>DANGLING(14), data(1)=>DANGLING(15), 
      data(0)=>DANGLING(16), aset=>GND, sclear=>p_i_reset, updn=>PWR, cnt_en
      =>rtlc4n202);
   r2_add8_6i49 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>r2_6n3s1f1(7), 
      a(6)=>r2_6n3s1f1(6), a(5)=>r2_6n3s1f1(5), a(4)=>r2_6n3s1f1(4), a(3)=>
      r2_6n3s1f1(3), a(2)=>r2_6n3s1f1(2), a(1)=>r2_6n3s1f1(1), a(0)=>
      r2_6n3s1f1(0), b(7)=>r2_6n3s1f2(7), b(6)=>r2_6n3s1f2(6), b(5)=>
      r2_6n3s1f2(5), b(4)=>r2_6n3s1f2(4), b(3)=>r2_6n3s1f2(3), b(2)=>
      r2_6n3s1f2(2), b(1)=>r2_6n3s1f2(1), b(0)=>r2_6n3s1f2(0), d(7)=>
      r2_6n3s1(0), d(6)=>r2_6n3s1(1), d(5)=>r2_6n3s1(2), d(4)=>r2_6n3s1(3), 
      d(3)=>r2_6n3s1(4), d(2)=>r2_6n3s1(5), d(1)=>r2_6n3s1(6), d(0)=>
      r2_6n3s1(7), cout=>r2_6n3s1(8));
   x_r3_add9_7i9 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>r2(8), a(7)=>
      r2(7), a(6)=>r2(6), a(5)=>r2(5), a(4)=>r2(4), a(3)=>r2(3), a(2)=>r2(2), 
      a(1)=>r2(1), a(0)=>r2(0), b(8)=>GND, b(7)=>x_r3_7n3s1f1(7), b(6)=>
      x_r3_7n3s1f1(6), b(5)=>x_r3_7n3s1f1(5), b(4)=>x_r3_7n3s1f1(4), b(3)=>
      x_r3_7n3s1f1(3), b(2)=>x_r3_7n3s1f1(2), b(1)=>x_r3_7n3s1f1(1), b(0)=>
      x_r3_7n3s1f1(0), d(8)=>x_r3_7n3s1(0), d(7)=>x_r3_7n3s1(1), d(6)=>
      x_r3_7n3s1(2), d(5)=>x_r3_7n3s1(3), d(4)=>x_r3_7n3s1(4), d(3)=>
      x_r3_7n3s1(5), d(2)=>x_r3_7n3s1(6), d(1)=>x_r3_7n3s1(7), d(0)=>
      x_r3_7n3s1(8), cout=>x_r3_7n3s1(9));
   b_d1_add9_7i10 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>r9(8), a(7)
      =>r9(7), a(6)=>r9(6), a(5)=>r9(5), a(4)=>r9(4), a(3)=>r9(3), a(2)=>
      r9(2), a(1)=>r9(1), a(0)=>r9(0), b(8)=>GND, b(7)=>r10(7), b(6)=>r10(6), 
      b(5)=>r10(5), b(4)=>r10(4), b(3)=>r10(3), b(2)=>r10(2), b(1)=>r10(1), 
      b(0)=>r10(0), d(8)=>b_d1_7n4s1(0), d(7)=>b_d1_7n4s1(1), d(6)=>
      b_d1_7n4s1(2), d(5)=>b_d1_7n4s1(3), d(4)=>b_d1_7n4s1(4), d(3)=>
      b_d1_7n4s1(5), d(2)=>b_d1_7n4s1(6), d(1)=>b_d1_7n4s1(7), d(0)=>
      b_d1_7n4s1(8), cout=>b_d1_7n4s1(9));
   r16_add9_7i11 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>GND, a(7)=>
      r12(7), a(6)=>r12(6), a(5)=>r12(5), a(4)=>r12(4), a(3)=>r12(3), a(2)=>
      r12(2), a(1)=>r12(1), a(0)=>r12(0), b(8)=>r13(8), b(7)=>r13(7), b(6)=>
      r13(6), b(5)=>r13(5), b(4)=>r13(4), b(3)=>r13(3), b(2)=>r13(2), b(1)=>
      r13(1), b(0)=>r13(0), d(8)=>r16_7n1s1(0), d(7)=>r16_7n1s1(1), d(6)=>
      r16_7n1s1(2), d(5)=>r16_7n1s1(3), d(4)=>r16_7n1s1(4), d(3)=>
      r16_7n1s1(5), d(2)=>r16_7n1s1(6), d(1)=>r16_7n1s1(7), d(0)=>
      r16_7n1s1(8), cout=>r16_7n1s1(9));
   x_r6_add9_8i2 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>r9(8), a(7)=>
      r9(7), a(6)=>r9(6), a(5)=>r9(5), a(4)=>r9(4), a(3)=>r9(3), a(2)=>r9(2), 
      a(1)=>r9(1), a(0)=>r9(0), b(8)=>r2(8), b(7)=>r2(7), b(6)=>r2(6), b(5)
      =>r2(5), b(4)=>r2(4), b(3)=>r2(3), b(2)=>r2(2), b(1)=>r2(1), b(0)=>
      r2(0), d(8)=>x_r6_8n4s1(0), d(7)=>x_r6_8n4s1(1), d(6)=>x_r6_8n4s1(2), 
      d(5)=>x_r6_8n4s1(3), d(4)=>x_r6_8n4s1(4), d(3)=>x_r6_8n4s1(5), d(2)=>
      x_r6_8n4s1(6), d(1)=>x_r6_8n4s1(7), d(0)=>x_r6_8n4s1(8), cout=>
      x_r6_8n4s1(9));
   r14_add10_8i3 : add_10u_10u_10u_0_0 port map ( cin=>GND, a(9)=>GND, a(8)
      =>r2(8), a(7)=>r2(7), a(6)=>r2(6), a(5)=>r2(5), a(4)=>r2(4), a(3)=>
      r2(3), a(2)=>r2(2), a(1)=>r2(1), a(0)=>r2(0), b(9)=>x_r6(9), b(8)=>
      x_r6(8), b(7)=>x_r6(7), b(6)=>x_r6(6), b(5)=>x_r6(5), b(4)=>x_r6(4), 
      b(3)=>x_r6(3), b(2)=>x_r6(2), b(1)=>x_r6(1), b(0)=>x_r6(0), d(9)=>
      r14_8n3s1(0), d(8)=>r14_8n3s1(1), d(7)=>r14_8n3s1(2), d(6)=>
      r14_8n3s1(3), d(5)=>r14_8n3s1(4), d(4)=>r14_8n3s1(5), d(3)=>
      r14_8n3s1(6), d(2)=>r14_8n3s1(7), d(1)=>r14_8n3s1(8), d(0)=>
      r14_8n3s1(9), cout=>r14_8n3s1(10));
   x_r12_add11_8i4 : add_11u_11u_11u_0_0 port map ( cin=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>r13(8), a(7)=>r13(7), a(6)=>r13(6), a(5)=>r13(5), 
      a(4)=>r13(4), a(3)=>r13(3), a(2)=>r13(2), a(1)=>r13(1), a(0)=>r13(0), 
      b(10)=>r14(10), b(9)=>r14(9), b(8)=>r14(8), b(7)=>r14(7), b(6)=>r14(6), 
      b(5)=>r14(5), b(4)=>r14(4), b(3)=>r14(3), b(2)=>r14(2), b(1)=>r14(1), 
      b(0)=>r14(0), d(10)=>x_r12_8n2s1(0), d(9)=>x_r12_8n2s1(1), d(8)=>
      x_r12_8n2s1(2), d(7)=>x_r12_8n2s1(3), d(6)=>x_r12_8n2s1(4), d(5)=>
      x_r12_8n2s1(5), d(4)=>x_r12_8n2s1(6), d(3)=>x_r12_8n2s1(7), d(2)=>
      x_r12_8n2s1(8), d(1)=>x_r12_8n2s1(9), d(0)=>x_r12_8n2s1(10), cout=>
      x_r12_8n2s1(11));
   DFFPC (vBit(1),GND,GND,p_i_clock,vBit(2)) ;
   DFFPC (p_i_valid,GND,GND,p_i_clock,vBit(1)) ;
   DFFRSE (PWR,GND,p_i_reset,PWR,p_i_clock,p_o_mode(1)) ;
   DFFRSE (rtlc2n58,p_i_reset,GND,PWR,p_i_clock,p_o_mode(0)) ;
   DFFPCE (p_i_pixel(7),GND,GND,rtlc4n274,p_i_clock,e(7)) ;
   DFFPCE (p_i_pixel(6),GND,GND,rtlc4n274,p_i_clock,e(6)) ;
   DFFPCE (p_i_pixel(5),GND,GND,rtlc4n274,p_i_clock,e(5)) ;
   DFFPCE (p_i_pixel(4),GND,GND,rtlc4n274,p_i_clock,e(4)) ;
   DFFPCE (p_i_pixel(3),GND,GND,rtlc4n274,p_i_clock,e(3)) ;
   DFFPCE (p_i_pixel(2),GND,GND,rtlc4n274,p_i_clock,e(2)) ;
   DFFPCE (p_i_pixel(1),GND,GND,rtlc4n274,p_i_clock,e(1)) ;
   DFFPCE (p_i_pixel(0),GND,GND,rtlc4n274,p_i_clock,e(0)) ;
   DFFPCE (mem1(7),GND,GND,rtlc4n274,p_i_clock,d(7)) ;
   DFFPCE (mem1(6),GND,GND,rtlc4n274,p_i_clock,d(6)) ;
   DFFPCE (mem1(5),GND,GND,rtlc4n274,p_i_clock,d(5)) ;
   DFFPCE (mem1(4),GND,GND,rtlc4n274,p_i_clock,d(4)) ;
   DFFPCE (mem1(3),GND,GND,rtlc4n274,p_i_clock,d(3)) ;
   DFFPCE (mem1(2),GND,GND,rtlc4n274,p_i_clock,d(2)) ;
   DFFPCE (mem1(1),GND,GND,rtlc4n274,p_i_clock,d(1)) ;
   DFFPCE (mem1(0),GND,GND,rtlc4n274,p_i_clock,d(0)) ;
   DFFPCE (mem0(7),GND,GND,rtlc4n274,p_i_clock,c(7)) ;
   DFFPCE (mem0(6),GND,GND,rtlc4n274,p_i_clock,c(6)) ;
   DFFPCE (mem0(5),GND,GND,rtlc4n274,p_i_clock,c(5)) ;
   DFFPCE (mem0(4),GND,GND,rtlc4n274,p_i_clock,c(4)) ;
   DFFPCE (mem0(3),GND,GND,rtlc4n274,p_i_clock,c(3)) ;
   DFFPCE (mem0(2),GND,GND,rtlc4n274,p_i_clock,c(2)) ;
   DFFPCE (mem0(1),GND,GND,rtlc4n274,p_i_clock,c(1)) ;
   DFFPCE (mem0(0),GND,GND,rtlc4n274,p_i_clock,c(0)) ;
   DFFPCE (e(7),GND,GND,rtlc4n274,p_i_clock,f(7)) ;
   DFFPCE (e(6),GND,GND,rtlc4n274,p_i_clock,f(6)) ;
   DFFPCE (e(5),GND,GND,rtlc4n274,p_i_clock,f(5)) ;
   DFFPCE (e(4),GND,GND,rtlc4n274,p_i_clock,f(4)) ;
   DFFPCE (e(3),GND,GND,rtlc4n274,p_i_clock,f(3)) ;
   DFFPCE (e(2),GND,GND,rtlc4n274,p_i_clock,f(2)) ;
   DFFPCE (e(1),GND,GND,rtlc4n274,p_i_clock,f(1)) ;
   DFFPCE (e(0),GND,GND,rtlc4n274,p_i_clock,f(0)) ;
   DFFPCE (d(7),GND,GND,rtlc4n274,p_i_clock,i(7)) ;
   DFFPCE (d(6),GND,GND,rtlc4n274,p_i_clock,i(6)) ;
   DFFPCE (d(5),GND,GND,rtlc4n274,p_i_clock,i(5)) ;
   DFFPCE (d(4),GND,GND,rtlc4n274,p_i_clock,i(4)) ;
   DFFPCE (d(3),GND,GND,rtlc4n274,p_i_clock,i(3)) ;
   DFFPCE (d(2),GND,GND,rtlc4n274,p_i_clock,i(2)) ;
   DFFPCE (d(1),GND,GND,rtlc4n274,p_i_clock,i(1)) ;
   DFFPCE (d(0),GND,GND,rtlc4n274,p_i_clock,i(0)) ;
   DFFPCE (c(7),GND,GND,rtlc4n274,p_i_clock,b(7)) ;
   DFFPCE (c(6),GND,GND,rtlc4n274,p_i_clock,b(6)) ;
   DFFPCE (c(5),GND,GND,rtlc4n274,p_i_clock,b(5)) ;
   DFFPCE (c(4),GND,GND,rtlc4n274,p_i_clock,b(4)) ;
   DFFPCE (c(3),GND,GND,rtlc4n274,p_i_clock,b(3)) ;
   DFFPCE (c(2),GND,GND,rtlc4n274,p_i_clock,b(2)) ;
   DFFPCE (c(1),GND,GND,rtlc4n274,p_i_clock,b(1)) ;
   DFFPCE (c(0),GND,GND,rtlc4n274,p_i_clock,b(0)) ;
   DFFPCE (f(7),GND,GND,rtlc4n274,p_i_clock,g(7)) ;
   DFFPCE (f(6),GND,GND,rtlc4n274,p_i_clock,g(6)) ;
   DFFPCE (f(5),GND,GND,rtlc4n274,p_i_clock,g(5)) ;
   DFFPCE (f(4),GND,GND,rtlc4n274,p_i_clock,g(4)) ;
   DFFPCE (f(3),GND,GND,rtlc4n274,p_i_clock,g(3)) ;
   DFFPCE (f(2),GND,GND,rtlc4n274,p_i_clock,g(2)) ;
   DFFPCE (f(1),GND,GND,rtlc4n274,p_i_clock,g(1)) ;
   DFFPCE (f(0),GND,GND,rtlc4n274,p_i_clock,g(0)) ;
   DFFPCE (i(7),GND,GND,rtlc4n274,p_i_clock,h(7)) ;
   DFFPCE (i(6),GND,GND,rtlc4n274,p_i_clock,h(6)) ;
   DFFPCE (i(5),GND,GND,rtlc4n274,p_i_clock,h(5)) ;
   DFFPCE (i(4),GND,GND,rtlc4n274,p_i_clock,h(4)) ;
   DFFPCE (i(3),GND,GND,rtlc4n274,p_i_clock,h(3)) ;
   DFFPCE (i(2),GND,GND,rtlc4n274,p_i_clock,h(2)) ;
   DFFPCE (i(1),GND,GND,rtlc4n274,p_i_clock,h(1)) ;
   DFFPCE (i(0),GND,GND,rtlc4n274,p_i_clock,h(0)) ;
   DFFPCE (b(7),GND,GND,rtlc4n274,p_i_clock,a(7)) ;
   DFFPCE (b(6),GND,GND,rtlc4n274,p_i_clock,a(6)) ;
   DFFPCE (b(5),GND,GND,rtlc4n274,p_i_clock,a(5)) ;
   DFFPCE (b(4),GND,GND,rtlc4n274,p_i_clock,a(4)) ;
   DFFPCE (b(3),GND,GND,rtlc4n274,p_i_clock,a(3)) ;
   DFFPCE (b(2),GND,GND,rtlc4n274,p_i_clock,a(2)) ;
   DFFPCE (b(1),GND,GND,rtlc4n274,p_i_clock,a(1)) ;
   DFFPCE (b(0),GND,GND,rtlc4n274,p_i_clock,a(0)) ;
   DFFRSE (state(0),GND,p_i_reset,rtlc4n202,p_i_clock,state(2)) ;
   DFFRSE (state(1),GND,p_i_reset,rtlc4n202,p_i_clock,state(0)) ;
   DFFRSE (state(2),p_i_reset,GND,rtlc4n202,p_i_clock,state(1)) ;
   DFFRSE (validBit_2(7),GND,p_i_reset,PWR,p_i_clock,o_valid) ;
   DFFRSE (validBit_2(6),GND,p_i_reset,PWR,p_i_clock,validBit_2(7)) ;
   DFFRSE (validBit_2(5),GND,p_i_reset,PWR,p_i_clock,validBit_2(6)) ;
   DFFRSE (validBit_2(4),GND,p_i_reset,PWR,p_i_clock,validBit_2(5)) ;
   DFFRSE (validBit_2(3),GND,p_i_reset,PWR,p_i_clock,validBit_2(4)) ;
   DFFRSE (validBit_2_rename0,GND,p_i_reset,PWR,p_i_clock,validBit_2(3)) ;
   DFFRSE (validBit_1(1),GND,p_i_reset,PWR,p_i_clock,validBit_2_rename0) ;
   DFFRSE (validBit_0,GND,p_i_reset,PWR,p_i_clock,validBit_1(1)) ;
   DFFRSE (rtlc5n66,GND,p_i_reset,PWR,p_i_clock,validBit_0) ;
   DFFPCE (not_rtlc6n327,GND,GND,rtlc6n398,p_i_clock,stage1_sSw_2) ;
   DFFPCE (r12_6n4ss1(7),GND,GND,rtlc6n398,p_i_clock,r12(7)) ;
   DFFPCE (r12_6n4ss1(6),GND,GND,rtlc6n398,p_i_clock,r12(6)) ;
   DFFPCE (r12_6n4ss1(5),GND,GND,rtlc6n398,p_i_clock,r12(5)) ;
   DFFPCE (r12_6n4ss1(4),GND,GND,rtlc6n398,p_i_clock,r12(4)) ;
   DFFPCE (r12_6n4ss1(3),GND,GND,rtlc6n398,p_i_clock,r12(3)) ;
   DFFPCE (r12_6n4ss1(2),GND,GND,rtlc6n398,p_i_clock,r12(2)) ;
   DFFPCE (r12_6n4ss1(1),GND,GND,rtlc6n398,p_i_clock,r12(1)) ;
   DFFPCE (r12_6n4ss1(0),GND,GND,rtlc6n398,p_i_clock,r12(0)) ;
   DFFPCE (r2_6n3s1(8),GND,GND,rtlc6n398,p_i_clock,r13(8)) ;
   DFFPCE (r2_6n3s1(0),GND,GND,rtlc6n398,p_i_clock,r13(7)) ;
   DFFPCE (r2_6n3s1(1),GND,GND,rtlc6n398,p_i_clock,r13(6)) ;
   DFFPCE (r2_6n3s1(2),GND,GND,rtlc6n398,p_i_clock,r13(5)) ;
   DFFPCE (r2_6n3s1(3),GND,GND,rtlc6n398,p_i_clock,r13(4)) ;
   DFFPCE (r2_6n3s1(4),GND,GND,rtlc6n398,p_i_clock,r13(3)) ;
   DFFPCE (r2_6n3s1(5),GND,GND,rtlc6n398,p_i_clock,r13(2)) ;
   DFFPCE (r2_6n3s1(6),GND,GND,rtlc6n398,p_i_clock,r13(1)) ;
   DFFPCE (r2_6n3s1(7),GND,GND,rtlc6n398,p_i_clock,r13(0)) ;
   DFFPCE (not_rtlc6n325,GND,GND,rtlc6n519,p_i_clock,stage1_eSe_2) ;
   DFFPCE (x_r5_6n3ss1(7),GND,GND,rtlc6n519,p_i_clock,x_r5(7)) ;
   DFFPCE (x_r5_6n3ss1(6),GND,GND,rtlc6n519,p_i_clock,x_r5(6)) ;
   DFFPCE (x_r5_6n3ss1(5),GND,GND,rtlc6n519,p_i_clock,x_r5(5)) ;
   DFFPCE (x_r5_6n3ss1(4),GND,GND,rtlc6n519,p_i_clock,x_r5(4)) ;
   DFFPCE (x_r5_6n3ss1(3),GND,GND,rtlc6n519,p_i_clock,x_r5(3)) ;
   DFFPCE (x_r5_6n3ss1(2),GND,GND,rtlc6n519,p_i_clock,x_r5(2)) ;
   DFFPCE (x_r5_6n3ss1(1),GND,GND,rtlc6n519,p_i_clock,x_r5(1)) ;
   DFFPCE (x_r5_6n3ss1(0),GND,GND,rtlc6n519,p_i_clock,x_r5(0)) ;
   DFFPCE (not_rtlc6n323,GND,GND,rtlc6n521,p_i_clock,stage1_wNw_2) ;
   DFFPCE (rtlc6n323,GND,GND,rtlc6n521,p_i_clock,stage1_wNw_0) ;
   DFFPCE (r5_6n2ss1(7),GND,GND,rtlc6n521,p_i_clock,r5(7)) ;
   DFFPCE (r5_6n2ss1(6),GND,GND,rtlc6n521,p_i_clock,r5(6)) ;
   DFFPCE (r5_6n2ss1(5),GND,GND,rtlc6n521,p_i_clock,r5(5)) ;
   DFFPCE (r5_6n2ss1(4),GND,GND,rtlc6n521,p_i_clock,r5(4)) ;
   DFFPCE (r5_6n2ss1(3),GND,GND,rtlc6n521,p_i_clock,r5(3)) ;
   DFFPCE (r5_6n2ss1(2),GND,GND,rtlc6n521,p_i_clock,r5(2)) ;
   DFFPCE (r5_6n2ss1(1),GND,GND,rtlc6n521,p_i_clock,r5(1)) ;
   DFFPCE (r5_6n2ss1(0),GND,GND,rtlc6n521,p_i_clock,r5(0)) ;
   DFFPCE (r2_6n3s1(8),GND,GND,rtlc6n356,p_i_clock,r2(8)) ;
   DFFPCE (r2_6n3s1(0),GND,GND,rtlc6n356,p_i_clock,r2(7)) ;
   DFFPCE (r2_6n3s1(1),GND,GND,rtlc6n356,p_i_clock,r2(6)) ;
   DFFPCE (r2_6n3s1(2),GND,GND,rtlc6n356,p_i_clock,r2(5)) ;
   DFFPCE (r2_6n3s1(3),GND,GND,rtlc6n356,p_i_clock,r2(4)) ;
   DFFPCE (r2_6n3s1(4),GND,GND,rtlc6n356,p_i_clock,r2(3)) ;
   DFFPCE (r2_6n3s1(5),GND,GND,rtlc6n356,p_i_clock,r2(2)) ;
   DFFPCE (r2_6n3s1(6),GND,GND,rtlc6n356,p_i_clock,r2(1)) ;
   DFFPCE (r2_6n3s1(7),GND,GND,rtlc6n356,p_i_clock,r2(0)) ;
   DFFPCE (r2_6n3s1(8),GND,GND,validBit_0,p_i_clock,r9(8)) ;
   DFFPCE (r2_6n3s1(0),GND,GND,validBit_0,p_i_clock,r9(7)) ;
   DFFPCE (r2_6n3s1(1),GND,GND,validBit_0,p_i_clock,r9(6)) ;
   DFFPCE (r2_6n3s1(2),GND,GND,validBit_0,p_i_clock,r9(5)) ;
   DFFPCE (r2_6n3s1(3),GND,GND,validBit_0,p_i_clock,r9(4)) ;
   DFFPCE (r2_6n3s1(4),GND,GND,validBit_0,p_i_clock,r9(3)) ;
   DFFPCE (r2_6n3s1(5),GND,GND,validBit_0,p_i_clock,r9(2)) ;
   DFFPCE (r2_6n3s1(6),GND,GND,validBit_0,p_i_clock,r9(1)) ;
   DFFPCE (r2_6n3s1(7),GND,GND,validBit_0,p_i_clock,r9(0)) ;
   DFFPCE (not_rtlc6n321,GND,GND,validBit_0,p_i_clock,stage1_nNe_2) ;
   DFFPCE (r10_6n1ss1(7),GND,GND,validBit_0,p_i_clock,r10(7)) ;
   DFFPCE (r10_6n1ss1(6),GND,GND,validBit_0,p_i_clock,r10(6)) ;
   DFFPCE (r10_6n1ss1(5),GND,GND,validBit_0,p_i_clock,r10(5)) ;
   DFFPCE (r10_6n1ss1(4),GND,GND,validBit_0,p_i_clock,r10(4)) ;
   DFFPCE (r10_6n1ss1(3),GND,GND,validBit_0,p_i_clock,r10(3)) ;
   DFFPCE (r10_6n1ss1(2),GND,GND,validBit_0,p_i_clock,r10(2)) ;
   DFFPCE (r10_6n1ss1(1),GND,GND,validBit_0,p_i_clock,r10(1)) ;
   DFFPCE (r10_6n1ss1(0),GND,GND,validBit_0,p_i_clock,r10(0)) ;
   DFFPCE (r16_7n1s1(9),GND,GND,rtlc7n224,p_i_clock,r16(9)) ;
   DFFPCE (r16_7n1s1(0),GND,GND,rtlc7n224,p_i_clock,r16(8)) ;
   DFFPCE (r16_7n1s1(1),GND,GND,rtlc7n224,p_i_clock,r16(7)) ;
   DFFPCE (r16_7n1s1(2),GND,GND,rtlc7n224,p_i_clock,r16(6)) ;
   DFFPCE (r16_7n1s1(3),GND,GND,rtlc7n224,p_i_clock,r16(5)) ;
   DFFPCE (r16_7n1s1(4),GND,GND,rtlc7n224,p_i_clock,r16(4)) ;
   DFFPCE (r16_7n1s1(5),GND,GND,rtlc7n224,p_i_clock,r16(3)) ;
   DFFPCE (r16_7n1s1(6),GND,GND,rtlc7n224,p_i_clock,r16(2)) ;
   DFFPCE (r16_7n1s1(7),GND,GND,rtlc7n224,p_i_clock,r16(1)) ;
   DFFPCE (r16_7n1s1(8),GND,GND,rtlc7n224,p_i_clock,r16(0)) ;
   DFFPCE (x_r3_7n3s1(9),GND,GND,rtlc7n214,p_i_clock,r11(9)) ;
   DFFPCE (x_r3_7n3s1(0),GND,GND,rtlc7n214,p_i_clock,r11(8)) ;
   DFFPCE (x_r3_7n3s1(1),GND,GND,rtlc7n214,p_i_clock,r11(7)) ;
   DFFPCE (x_r3_7n3s1(2),GND,GND,rtlc7n214,p_i_clock,r11(6)) ;
   DFFPCE (x_r3_7n3s1(3),GND,GND,rtlc7n214,p_i_clock,r11(5)) ;
   DFFPCE (x_r3_7n3s1(4),GND,GND,rtlc7n214,p_i_clock,r11(4)) ;
   DFFPCE (x_r3_7n3s1(5),GND,GND,rtlc7n214,p_i_clock,r11(3)) ;
   DFFPCE (x_r3_7n3s1(6),GND,GND,rtlc7n214,p_i_clock,r11(2)) ;
   DFFPCE (x_r3_7n3s1(7),GND,GND,rtlc7n214,p_i_clock,r11(1)) ;
   DFFPCE (x_r3_7n3s1(8),GND,GND,rtlc7n214,p_i_clock,r11(0)) ;
   DFFPCE (x_r3_7n3s1(9),GND,GND,rtlc7n204,p_i_clock,x_r3(9)) ;
   DFFPCE (x_r3_7n3s1(0),GND,GND,rtlc7n204,p_i_clock,x_r3(8)) ;
   DFFPCE (x_r3_7n3s1(1),GND,GND,rtlc7n204,p_i_clock,x_r3(7)) ;
   DFFPCE (x_r3_7n3s1(2),GND,GND,rtlc7n204,p_i_clock,x_r3(6)) ;
   DFFPCE (x_r3_7n3s1(3),GND,GND,rtlc7n204,p_i_clock,x_r3(5)) ;
   DFFPCE (x_r3_7n3s1(4),GND,GND,rtlc7n204,p_i_clock,x_r3(4)) ;
   DFFPCE (x_r3_7n3s1(5),GND,GND,rtlc7n204,p_i_clock,x_r3(3)) ;
   DFFPCE (x_r3_7n3s1(6),GND,GND,rtlc7n204,p_i_clock,x_r3(2)) ;
   DFFPCE (x_r3_7n3s1(7),GND,GND,rtlc7n204,p_i_clock,x_r3(1)) ;
   DFFPCE (x_r3_7n3s1(8),GND,GND,rtlc7n204,p_i_clock,x_r3(0)) ;
   DFFPCE (b_d1_7n4s1(9),GND,GND,validBit_1(1),p_i_clock,b_d1(9)) ;
   DFFPCE (b_d1_7n4s1(0),GND,GND,validBit_1(1),p_i_clock,b_d1(8)) ;
   DFFPCE (b_d1_7n4s1(1),GND,GND,validBit_1(1),p_i_clock,b_d1(7)) ;
   DFFPCE (b_d1_7n4s1(2),GND,GND,validBit_1(1),p_i_clock,b_d1(6)) ;
   DFFPCE (b_d1_7n4s1(3),GND,GND,validBit_1(1),p_i_clock,b_d1(5)) ;
   DFFPCE (b_d1_7n4s1(4),GND,GND,validBit_1(1),p_i_clock,b_d1(4)) ;
   DFFPCE (b_d1_7n4s1(5),GND,GND,validBit_1(1),p_i_clock,b_d1(3)) ;
   DFFPCE (b_d1_7n4s1(6),GND,GND,validBit_1(1),p_i_clock,b_d1(2)) ;
   DFFPCE (b_d1_7n4s1(7),GND,GND,validBit_1(1),p_i_clock,b_d1(1)) ;
   DFFPCE (b_d1_7n4s1(8),GND,GND,validBit_1(1),p_i_clock,b_d1(0)) ;
   DFFPCE (x_r22_8n1s1(12),GND,GND,rtlc8n247,p_i_clock,x_r22(12)) ;
   DFFPCE (x_r22_8n1s1(11),GND,GND,rtlc8n247,p_i_clock,x_r22(11)) ;
   DFFPCE (x_r22_8n1s1(10),GND,GND,rtlc8n247,p_i_clock,x_r22(10)) ;
   DFFPCE (x_r22_8n1s1(9),GND,GND,rtlc8n247,p_i_clock,x_r22(9)) ;
   DFFPCE (x_r22_8n1s1(8),GND,GND,rtlc8n247,p_i_clock,x_r22(8)) ;
   DFFPCE (x_r22_8n1s1(7),GND,GND,rtlc8n247,p_i_clock,x_r22(7)) ;
   DFFPCE (x_r22_8n1s1(6),GND,GND,rtlc8n247,p_i_clock,x_r22(6)) ;
   DFFPCE (x_r22_8n1s1(5),GND,GND,rtlc8n247,p_i_clock,x_r22(5)) ;
   DFFPCE (x_r22_8n1s1(4),GND,GND,rtlc8n247,p_i_clock,x_r22(4)) ;
   DFFPCE (x_r22_8n1s1(3),GND,GND,rtlc8n247,p_i_clock,x_r22(3)) ;
   DFFPCE (x_r22_8n1s1(2),GND,GND,rtlc8n247,p_i_clock,x_r22(2)) ;
   DFFPCE (x_r22_8n1s1(1),GND,GND,rtlc8n247,p_i_clock,x_r22(1)) ;
   DFFPCE (x_r12(0),GND,GND,rtlc8n247,p_i_clock,x_r22(0)) ;
   DFFPCE (x_r12_8n2s1(11),GND,GND,rtlc8n234,p_i_clock,x_r12(11)) ;
   DFFPCE (x_r12_8n2s1(0),GND,GND,rtlc8n234,p_i_clock,x_r12(10)) ;
   DFFPCE (x_r12_8n2s1(1),GND,GND,rtlc8n234,p_i_clock,x_r12(9)) ;
   DFFPCE (x_r12_8n2s1(2),GND,GND,rtlc8n234,p_i_clock,x_r12(8)) ;
   DFFPCE (x_r12_8n2s1(3),GND,GND,rtlc8n234,p_i_clock,x_r12(7)) ;
   DFFPCE (x_r12_8n2s1(4),GND,GND,rtlc8n234,p_i_clock,x_r12(6)) ;
   DFFPCE (x_r12_8n2s1(5),GND,GND,rtlc8n234,p_i_clock,x_r12(5)) ;
   DFFPCE (x_r12_8n2s1(6),GND,GND,rtlc8n234,p_i_clock,x_r12(4)) ;
   DFFPCE (x_r12_8n2s1(7),GND,GND,rtlc8n234,p_i_clock,x_r12(3)) ;
   DFFPCE (x_r12_8n2s1(8),GND,GND,rtlc8n234,p_i_clock,x_r12(2)) ;
   DFFPCE (x_r12_8n2s1(9),GND,GND,rtlc8n234,p_i_clock,x_r12(1)) ;
   DFFPCE (x_r12_8n2s1(10),GND,GND,rtlc8n234,p_i_clock,x_r12(0)) ;
   DFFPCE (r14_8n3s1(10),GND,GND,rtlc8n222,p_i_clock,r14(10)) ;
   DFFPCE (r14_8n3s1(0),GND,GND,rtlc8n222,p_i_clock,r14(9)) ;
   DFFPCE (r14_8n3s1(1),GND,GND,rtlc8n222,p_i_clock,r14(8)) ;
   DFFPCE (r14_8n3s1(2),GND,GND,rtlc8n222,p_i_clock,r14(7)) ;
   DFFPCE (r14_8n3s1(3),GND,GND,rtlc8n222,p_i_clock,r14(6)) ;
   DFFPCE (r14_8n3s1(4),GND,GND,rtlc8n222,p_i_clock,r14(5)) ;
   DFFPCE (r14_8n3s1(5),GND,GND,rtlc8n222,p_i_clock,r14(4)) ;
   DFFPCE (r14_8n3s1(6),GND,GND,rtlc8n222,p_i_clock,r14(3)) ;
   DFFPCE (r14_8n3s1(7),GND,GND,rtlc8n222,p_i_clock,r14(2)) ;
   DFFPCE (r14_8n3s1(8),GND,GND,rtlc8n222,p_i_clock,r14(1)) ;
   DFFPCE (r14_8n3s1(9),GND,GND,rtlc8n222,p_i_clock,r14(0)) ;
   DFFPCE (x_r6_8n4s1(9),GND,GND,validBit_2_rename0,p_i_clock,x_r6(9)) ;
   DFFPCE (x_r6_8n4s1(0),GND,GND,validBit_2_rename0,p_i_clock,x_r6(8)) ;
   DFFPCE (x_r6_8n4s1(1),GND,GND,validBit_2_rename0,p_i_clock,x_r6(7)) ;
   DFFPCE (x_r6_8n4s1(2),GND,GND,validBit_2_rename0,p_i_clock,x_r6(6)) ;
   DFFPCE (x_r6_8n4s1(3),GND,GND,validBit_2_rename0,p_i_clock,x_r6(5)) ;
   DFFPCE (x_r6_8n4s1(4),GND,GND,validBit_2_rename0,p_i_clock,x_r6(4)) ;
   DFFPCE (x_r6_8n4s1(5),GND,GND,validBit_2_rename0,p_i_clock,x_r6(3)) ;
   DFFPCE (x_r6_8n4s1(6),GND,GND,validBit_2_rename0,p_i_clock,x_r6(2)) ;
   DFFPCE (x_r6_8n4s1(7),GND,GND,validBit_2_rename0,p_i_clock,x_r6(1)) ;
   DFFPCE (x_r6_8n4s1(8),GND,GND,validBit_2_rename0,p_i_clock,x_r6(0)) ;
   DFFPCE (final_dir_9n3ss1(2),GND,GND,rtlc9n171,p_i_clock,final_dir(2)) ;
   DFFPCE (final_dir_9n3ss1(1),GND,GND,rtlc9n171,p_i_clock,final_dir(1)) ;
   DFFPCE (final_dir_9n3ss1(0),GND,GND,rtlc9n171,p_i_clock,final_dir(0)) ;
   DFFPCE (r18_9n3ss1(9),GND,GND,rtlc9n171,p_i_clock,r18(9)) ;
   DFFPCE (r18_9n3ss1(8),GND,GND,rtlc9n171,p_i_clock,r18(8)) ;
   DFFPCE (r18_9n3ss1(7),GND,GND,rtlc9n171,p_i_clock,r18(7)) ;
   DFFPCE (r18_9n3ss1(6),GND,GND,rtlc9n171,p_i_clock,r18(6)) ;
   DFFPCE (r18_9n3ss1(5),GND,GND,rtlc9n171,p_i_clock,r18(5)) ;
   DFFPCE (r18_9n3ss1(4),GND,GND,rtlc9n171,p_i_clock,r18(4)) ;
   DFFPCE (r18_9n3ss1(3),GND,GND,rtlc9n171,p_i_clock,r18(3)) ;
   DFFPCE (r18_9n3ss1(2),GND,GND,rtlc9n171,p_i_clock,r18(2)) ;
   DFFPCE (r18_9n3ss1(1),GND,GND,rtlc9n171,p_i_clock,r18(1)) ;
   DFFPCE (r18_9n3ss1(0),GND,GND,rtlc9n171,p_i_clock,r18(0)) ;
   DFFPCE (second_cw_9n2ss1_2,GND,GND,rtlc9n158,p_i_clock,second_cw(2)) ;
   DFFPCE (not_rtlc9n130,GND,GND,rtlc9n158,p_i_clock,second_cw(1)) ;
   DFFPCE (second_cw_9n2ss1_0,GND,GND,rtlc9n158,p_i_clock,second_cw(0)) ;
   DFFPCE (x_r11_9n2ss1(9),GND,GND,rtlc9n158,p_i_clock,x_r11(9)) ;
   DFFPCE (x_r11_9n2ss1(8),GND,GND,rtlc9n158,p_i_clock,x_r11(8)) ;
   DFFPCE (x_r11_9n2ss1(7),GND,GND,rtlc9n158,p_i_clock,x_r11(7)) ;
   DFFPCE (x_r11_9n2ss1(6),GND,GND,rtlc9n158,p_i_clock,x_r11(6)) ;
   DFFPCE (x_r11_9n2ss1(5),GND,GND,rtlc9n158,p_i_clock,x_r11(5)) ;
   DFFPCE (x_r11_9n2ss1(4),GND,GND,rtlc9n158,p_i_clock,x_r11(4)) ;
   DFFPCE (x_r11_9n2ss1(3),GND,GND,rtlc9n158,p_i_clock,x_r11(3)) ;
   DFFPCE (x_r11_9n2ss1(2),GND,GND,rtlc9n158,p_i_clock,x_r11(2)) ;
   DFFPCE (x_r11_9n2ss1(1),GND,GND,rtlc9n158,p_i_clock,x_r11(1)) ;
   DFFPCE (x_r11_9n2ss1(0),GND,GND,rtlc9n158,p_i_clock,x_r11(0)) ;
   DFFPCE (first_cw_9n1ss1_2,GND,GND,validBit_2(3),p_i_clock,first_cw(2)) ;
   DFFPCE (not_rtlc9n128,GND,GND,validBit_2(3),p_i_clock,first_cw(1)) ;
   DFFPCE (first_cw_9n1ss1_0,GND,GND,validBit_2(3),p_i_clock,first_cw(0)) ;
   DFFPCE (r15_9n1ss1(9),GND,GND,validBit_2(3),p_i_clock,r15(9)) ;
   DFFPCE (r15_9n1ss1(8),GND,GND,validBit_2(3),p_i_clock,r15(8)) ;
   DFFPCE (r15_9n1ss1(7),GND,GND,validBit_2(3),p_i_clock,r15(7)) ;
   DFFPCE (r15_9n1ss1(6),GND,GND,validBit_2(3),p_i_clock,r15(6)) ;
   DFFPCE (r15_9n1ss1(5),GND,GND,validBit_2(3),p_i_clock,r15(5)) ;
   DFFPCE (r15_9n1ss1(4),GND,GND,validBit_2(3),p_i_clock,r15(4)) ;
   DFFPCE (r15_9n1ss1(3),GND,GND,validBit_2(3),p_i_clock,r15(3)) ;
   DFFPCE (r15_9n1ss1(2),GND,GND,validBit_2(3),p_i_clock,r15(2)) ;
   DFFPCE (r15_9n1ss1(1),GND,GND,validBit_2(3),p_i_clock,r15(1)) ;
   DFFPCE (r15_9n1ss1(0),GND,GND,validBit_2(3),p_i_clock,r15(0)) ;
   DFFPCE (r17_10n1s1_12,GND,GND,validBit_2(7),p_i_clock,r17_12) ;
   DFFPCE (r17_10n1s1_11,GND,GND,validBit_2(7),p_i_clock,r17_11) ;
   DFFPCE (r17_10n1s1_10,GND,GND,validBit_2(7),p_i_clock,r17_10) ;
   DFFPCE (r17_10n1s1_9,GND,GND,validBit_2(7),p_i_clock,r17_9) ;
   DFFPCE (r17_10n1s1_8,GND,GND,validBit_2(7),p_i_clock,r17_8) ;
   DFFPCE (r17_10n1s1_7,GND,GND,validBit_2(7),p_i_clock,r17_7) ;
   r10_6n1ss1(0) <= d(0) when not_rtlc6n321 = '1' else a(0) ;
   r10_6n1ss1(1) <= d(1) when not_rtlc6n321 = '1' else a(1) ;
   r10_6n1ss1(2) <= d(2) when not_rtlc6n321 = '1' else a(2) ;
   r10_6n1ss1(3) <= d(3) when not_rtlc6n321 = '1' else a(3) ;
   r10_6n1ss1(4) <= d(4) when not_rtlc6n321 = '1' else a(4) ;
   r10_6n1ss1(5) <= d(5) when not_rtlc6n321 = '1' else a(5) ;
   r10_6n1ss1(6) <= d(6) when not_rtlc6n321 = '1' else a(6) ;
   r10_6n1ss1(7) <= d(7) when not_rtlc6n321 = '1' else a(7) ;
   r5_6n2ss1(0) <= b(0) when not_rtlc6n323 = '1' else g(0) ;
   r5_6n2ss1(1) <= b(1) when not_rtlc6n323 = '1' else g(1) ;
   r5_6n2ss1(2) <= b(2) when not_rtlc6n323 = '1' else g(2) ;
   r5_6n2ss1(3) <= b(3) when not_rtlc6n323 = '1' else g(3) ;
   r5_6n2ss1(4) <= b(4) when not_rtlc6n323 = '1' else g(4) ;
   r5_6n2ss1(5) <= b(5) when not_rtlc6n323 = '1' else g(5) ;
   r5_6n2ss1(6) <= b(6) when not_rtlc6n323 = '1' else g(6) ;
   r5_6n2ss1(7) <= b(7) when not_rtlc6n323 = '1' else g(7) ;
   x_r5_6n3ss1(0) <= f(0) when not_rtlc6n325 = '1' else c(0) ;
   x_r5_6n3ss1(1) <= f(1) when not_rtlc6n325 = '1' else c(1) ;
   x_r5_6n3ss1(2) <= f(2) when not_rtlc6n325 = '1' else c(2) ;
   x_r5_6n3ss1(3) <= f(3) when not_rtlc6n325 = '1' else c(3) ;
   x_r5_6n3ss1(4) <= f(4) when not_rtlc6n325 = '1' else c(4) ;
   x_r5_6n3ss1(5) <= f(5) when not_rtlc6n325 = '1' else c(5) ;
   x_r5_6n3ss1(6) <= f(6) when not_rtlc6n325 = '1' else c(6) ;
   x_r5_6n3ss1(7) <= f(7) when not_rtlc6n325 = '1' else c(7) ;
   r12_6n4ss1(0) <= h(0) when not_rtlc6n327 = '1' else e(0) ;
   r12_6n4ss1(1) <= h(1) when not_rtlc6n327 = '1' else e(1) ;
   r12_6n4ss1(2) <= h(2) when not_rtlc6n327 = '1' else e(2) ;
   r12_6n4ss1(3) <= h(3) when not_rtlc6n327 = '1' else e(3) ;
   r12_6n4ss1(4) <= h(4) when not_rtlc6n327 = '1' else e(4) ;
   r12_6n4ss1(5) <= h(5) when not_rtlc6n327 = '1' else e(5) ;
   r12_6n4ss1(6) <= h(6) when not_rtlc6n327 = '1' else e(6) ;
   r12_6n4ss1(7) <= h(7) when not_rtlc6n327 = '1' else e(7) ;
   r15_9n1ss1(0) <= b_d1(0) when not_rtlc9n128 = '1' else x_r3(0) ;
   r15_9n1ss1(1) <= b_d1(1) when not_rtlc9n128 = '1' else x_r3(1) ;
   r15_9n1ss1(2) <= b_d1(2) when not_rtlc9n128 = '1' else x_r3(2) ;
   r15_9n1ss1(3) <= b_d1(3) when not_rtlc9n128 = '1' else x_r3(3) ;
   r15_9n1ss1(4) <= b_d1(4) when not_rtlc9n128 = '1' else x_r3(4) ;
   r15_9n1ss1(5) <= b_d1(5) when not_rtlc9n128 = '1' else x_r3(5) ;
   r15_9n1ss1(6) <= b_d1(6) when not_rtlc9n128 = '1' else x_r3(6) ;
   r15_9n1ss1(7) <= b_d1(7) when not_rtlc9n128 = '1' else x_r3(7) ;
   r15_9n1ss1(8) <= b_d1(8) when not_rtlc9n128 = '1' else x_r3(8) ;
   r15_9n1ss1(9) <= b_d1(9) when not_rtlc9n128 = '1' else x_r3(9) ;
   first_cw_9n1ss1_2 <= stage1_nNe_2 when not_rtlc9n128 = '1' else 
   stage1_wNw_2 ;
   x_r11_9n2ss1(0) <= r16(0) when not_rtlc9n130 = '1' else r11(0) ;
   x_r11_9n2ss1(1) <= r16(1) when not_rtlc9n130 = '1' else r11(1) ;
   x_r11_9n2ss1(2) <= r16(2) when not_rtlc9n130 = '1' else r11(2) ;
   x_r11_9n2ss1(3) <= r16(3) when not_rtlc9n130 = '1' else r11(3) ;
   x_r11_9n2ss1(4) <= r16(4) when not_rtlc9n130 = '1' else r11(4) ;
   x_r11_9n2ss1(5) <= r16(5) when not_rtlc9n130 = '1' else r11(5) ;
   x_r11_9n2ss1(6) <= r16(6) when not_rtlc9n130 = '1' else r11(6) ;
   x_r11_9n2ss1(7) <= r16(7) when not_rtlc9n130 = '1' else r11(7) ;
   x_r11_9n2ss1(8) <= r16(8) when not_rtlc9n130 = '1' else r11(8) ;
   x_r11_9n2ss1(9) <= r16(9) when not_rtlc9n130 = '1' else r11(9) ;
   second_cw_9n2ss1_2 <= stage1_sSw_2 when not_rtlc9n130 = '1' else 
   stage1_eSe_2 ;
   r18_9n3ss1(0) <= x_r11(0) when nx83 = '1' else r15(0) ;
   r18_9n3ss1(1) <= x_r11(1) when nx83 = '1' else r15(1) ;
   r18_9n3ss1(2) <= x_r11(2) when nx83 = '1' else r15(2) ;
   r18_9n3ss1(3) <= x_r11(3) when nx83 = '1' else r15(3) ;
   r18_9n3ss1(4) <= x_r11(4) when nx83 = '1' else r15(4) ;
   r18_9n3ss1(5) <= x_r11(5) when nx83 = '1' else r15(5) ;
   r18_9n3ss1(6) <= x_r11(6) when nx83 = '1' else r15(6) ;
   r18_9n3ss1(7) <= x_r11(7) when nx83 = '1' else r15(7) ;
   r18_9n3ss1(8) <= x_r11(8) when nx83 = '1' else r15(8) ;
   r18_9n3ss1(9) <= x_r11(9) when nx83 = '1' else r15(9) ;
   final_dir_9n3ss1(0) <= second_cw(0) when nx83 = '1' else first_cw(0) ;
   final_dir_9n3ss1(1) <= second_cw(1) when nx83 = '1' else first_cw(1) ;
   final_dir_9n3ss1(2) <= second_cw(2) when nx83 = '1' else first_cw(2) ;
   NOT_x_r22_0 <= NOT x_r22(0) ;
   r17_sub13_10i1 : sub_12u_12u_12u_0 port map ( cin=>NOT_x_r22_0, a(11)=>
      r18(9), a(10)=>r18(8), a(9)=>r18(7), a(8)=>r18(6), a(7)=>r18(5), a(6)
      =>r18(4), a(5)=>r18(3), a(4)=>r18(2), a(3)=>r18(1), a(2)=>r18(0), a(1)
      =>GND, a(0)=>GND, b(11)=>x_r22(12), b(10)=>x_r22(11), b(9)=>x_r22(10), 
      b(8)=>x_r22(9), b(7)=>x_r22(8), b(6)=>x_r22(7), b(5)=>x_r22(6), b(4)=>
      x_r22(5), b(3)=>x_r22(4), b(2)=>x_r22(3), b(1)=>x_r22(2), b(0)=>
      x_r22(1), d(11)=>r17_10n1s1_12, d(10)=>r17_10n1s1_11, d(9)=>
      r17_10n1s1_10, d(8)=>r17_10n1s1_9, d(7)=>r17_10n1s1_8, d(6)=>
      r17_10n1s1_7, d(5)=>DANGLING(17), d(4)=>DANGLING(18), d(3)=>DANGLING(
      19), d(2)=>DANGLING(20), d(1)=>DANGLING(21), d(0)=>DANGLING(22), cout
      =>DANGLING(23));
   modgen_or_0 : or_5u_5u port map ( a(4)=>r17_9, a(3)=>r17_10, a(2)=>r17_11, 
      a(1)=>r17_12, a(0)=>rtlc11n129, d=>rtlcn0);
   modgen_and_1 : and_10u_10u port map ( a(9)=>not_i_valid, a(8)=>vBit(2), 
      a(7)=>not_col_7, a(6)=>not_col_6, a(5)=>not_col_5, a(4)=>not_col_4, 
      a(3)=>not_col_3, a(2)=>not_col_2, a(1)=>not_col_1, a(0)=>not_col_0, d
      =>rtlc4n202);
end main_unfold_1777 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
         txflex : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
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
         p_i_clock : IN std_logic) ;
   end component ;
   signal o_mode_EXMPLR493: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_nrst_EXMPLR425, pixavail: std_logic ;
   
   signal pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid, kirschout: std_logic ;
   
   signal dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal rowcount: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_0: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_1: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_2: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_3: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_4: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_5: std_logic_vector (3 DOWNTO 0) ;
   
   signal GND, o_sevenseg_7_EXMPLR491, rtlc1n224, rtlc1n225, rtlc1n228, 
      rtlc1n230, rtlc1n232, rtlc1n233, rtlc1n236, rtlc1n144, rtlc1n145, 
      rtlc1n148, rtlc1n150, rtlc1n152, rtlc1n153, rtlc1n156, rtlc3n105, 
      rtlc3n106, rtlc3n109, rtlc3n111, rtlc3n113, rtlc3n114, rtlc3n117, 
      rtlc5n105, rtlc5n106, rtlc5n109, rtlc5n111, rtlc5n113, rtlc5n114, 
      rtlc5n117, rtlc7n105, rtlc7n106, rtlc7n109, rtlc7n111, rtlc7n113, 
      rtlc7n114, rtlc7n117, rtlc9n105, rtlc9n106, rtlc9n109, rtlc9n111, 
      rtlc9n113, rtlc9n114, rtlc9n117, rtlc11n105, rtlc11n106, rtlc11n109, 
      rtlc11n111, rtlc11n113, rtlc11n114, rtlc11n117, rtlc13n105, rtlc13n106, 
      rtlc13n109, rtlc13n111, rtlc13n113, rtlc13n114, rtlc13n117, 
      not_rtlc1n224, not_rtlc1n225, not_rtlc1n233, not_rtlc1n144, 
      not_rtlc1n145, not_rtlc1n153, not_rtlc3n105, not_rtlc3n106, 
      not_rtlc3n114, not_rtlc5n105, not_rtlc5n106, not_rtlc5n114, 
      not_rtlc7n105, not_rtlc7n106, not_rtlc7n114, not_rtlc9n105, 
      not_rtlc9n106, not_rtlc9n114, not_rtlc11n105, not_rtlc11n106, 
      not_rtlc11n114, not_rtlc13n105, not_rtlc13n106, not_rtlc13n114, rtlcs0, 
      rtlcs1, rtlcs2, rtlcs3, rtlcs4, rtlcs5, rtlcs8, rtlcs9, rtlcs10, 
      rtlcs11, rtlcs13, rtlcs15, rtlcs16, rtlcs17, rtlcs18, rtlcs19, rtlcs20, 
      rtlcs22, rtlcs23, rtlcs24, rtlcs25, rtlcs27, rtlcs29, rtlcs31, rtlcs32, 
      rtlcs33, rtlcs34, rtlcs35, rtlcs36, rtlcs37, rtlcs40, rtlcs41, rtlcs42, 
      rtlcs43, rtlcs45, rtlcs47, rtlcs48, rtlcs49, rtlcs50, rtlcs51, rtlcs52, 
      rtlcs54, rtlcs55, rtlcs56, rtlcs57, rtlcs59, rtlcs61, rtlcs63, rtlcs64, 
      rtlcs65, rtlcs66, rtlcs67, rtlcs68, rtlcs69, rtlcs72, rtlcs73, rtlcs74, 
      rtlcs75, rtlcs77, rtlcs79, rtlcs80, rtlcs81, rtlcs82, rtlcs83, rtlcs84, 
      rtlcs86, rtlcs87, rtlcs88, rtlcs89, rtlcs91, rtlcs93, rtlcs95, rtlcs96, 
      rtlcs97, rtlcs98, rtlcs99, rtlcs100, rtlcs101, rtlcs104, rtlcs105, 
      rtlcs106, rtlcs107, rtlcs109, rtlcs111, rtlcs112, rtlcs113, rtlcs114, 
      rtlcs115, rtlcs116, rtlcs118, rtlcs119, rtlcs120, rtlcs121, rtlcs123, 
      rtlcs125, rtlcs127, rtlcs128, rtlcs129, rtlcs130, rtlcs131, rtlcs132, 
      rtlcs133, rtlcs136, rtlcs137, rtlcs138, rtlcs139, rtlcs141, rtlcs143, 
      rtlcs144, rtlcs145, rtlcs146, rtlcs147, rtlcs148, rtlcs150, rtlcs151, 
      rtlcs152, rtlcs153, rtlcs155, rtlcs157, rtlcs159, rtlcs160, rtlcs161, 
      rtlcs162, rtlcs163, rtlcs164, rtlcs165, rtlcs168, rtlcs169, rtlcs170, 
      rtlcs171, rtlcs173, rtlcs175, rtlcs176, rtlcs177, rtlcs178, rtlcs179, 
      rtlcs180, rtlcs182, rtlcs183, rtlcs184, rtlcs185, rtlcs187, rtlcs189, 
      rtlcs191, rtlcs192, rtlcs193, rtlcs194, rtlcs195, rtlcs196, rtlcs197, 
      rtlcs200, rtlcs201, rtlcs202, rtlcs203, rtlcs205, rtlcs207, rtlcs208, 
      rtlcs209, rtlcs210, rtlcs211, rtlcs212, rtlcs214, rtlcs215, rtlcs216, 
      rtlcs217, rtlcs219, rtlcs221, rtlcs223, rtlcs224, rtlcs225, rtlcs226, 
      rtlcs227, rtlcs228, rtlcs229, rtlcs232, rtlcs233, rtlcs234, rtlcs235, 
      rtlcs237, rtlcs239, rtlcs240, rtlcs241, rtlcs242, rtlcs243, rtlcs244, 
      rtlcs246, rtlcs247, rtlcs248, rtlcs249, rtlcs251, rtlcs253, rtlcs255, 
      rtlcs256, rtlcs257, rtlcs258, rtlcs259, rtlcs260, rtlcs261, rtlcs262, 
      rtlcs263, not_rowcount_2, not_rowcount_0, not_rowcount_3, 
      not_rowcount_1, not_rowcount_6, not_rowcount_4, not_rowcount_7, 
      not_rowcount_5, not_debug_num_0_2, not_debug_num_0_0, 
      not_debug_num_0_3, not_debug_num_0_1, not_debug_num_1_2, 
      not_debug_num_1_0, not_debug_num_1_3, not_debug_num_1_1, 
      not_debug_num_2_2, not_debug_num_2_0, not_debug_num_2_3, 
      not_debug_num_2_1, not_debug_num_3_2, not_debug_num_3_0, 
      not_debug_num_3_3, not_debug_num_3_1, not_debug_num_4_2, 
      not_debug_num_4_0, not_debug_num_4_3, not_debug_num_4_1, 
      not_debug_num_5_2, not_debug_num_5_0, not_debug_num_5_3, 
      not_debug_num_5_1: std_logic ;

begin
   o_sevenseg(15) <= o_sevenseg_7_EXMPLR491 ;
   o_sevenseg(7) <= o_sevenseg_7_EXMPLR491 ;
   o_mode(1) <= o_mode_EXMPLR493(1) ;
   o_mode(0) <= o_mode_EXMPLR493(0) ;
   o_nrst <= o_nrst_EXMPLR425 ;
   debug_sevenseg_0(7) <= o_sevenseg_7_EXMPLR491 ;
   debug_sevenseg_1(7) <= o_sevenseg_7_EXMPLR491 ;
   debug_sevenseg_2(7) <= o_sevenseg_7_EXMPLR491 ;
   debug_sevenseg_3(7) <= o_sevenseg_7_EXMPLR491 ;
   debug_sevenseg_4(7) <= o_sevenseg_7_EXMPLR491 ;
   debug_sevenseg_5(7) <= o_sevenseg_7_EXMPLR491 ;
   GND <= '0' ;
   o_sevenseg_7_EXMPLR491 <= '1' ;
   u_uw_uart : uw_uart port map ( clk=>clk, rst=>o_nrst_EXMPLR425, kirschout
      =>kirschout, kirschdir(2)=>dir(2), kirschdir(1)=>dir(1), kirschdir(0)
      =>dir(0), o_valid=>o_valid, i_mode(1)=>o_mode_EXMPLR493(1), i_mode(0)
      =>o_mode_EXMPLR493(0), datain(7)=>pixel(7), datain(6)=>pixel(6), 
      datain(5)=>pixel(5), datain(4)=>pixel(4), datain(3)=>pixel(3), 
      datain(2)=>pixel(2), datain(1)=>pixel(1), datain(0)=>pixel(0), 
      o_pixavail=>pixavail, rxflex=>rxflex, txflex=>txflex);
   o_nrst_EXMPLR425 <= NOT nrst ;
   rtlc1_100_or_77 : or_4u_4u port map ( a(3)=>rtlcs2, a(2)=>rtlcs5, a(1)=>
      rtlcs17, a(0)=>rtlcs24, d=>rtlc1n236);
   rtlc1_20_or_78 : or_4u_4u port map ( a(3)=>rtlcs34, a(2)=>rtlcs37, a(1)=>
      rtlcs49, a(0)=>rtlcs56, d=>rtlc1n156);
   rtlc3_20_or_79 : or_4u_4u port map ( a(3)=>rtlcs66, a(2)=>rtlcs69, a(1)=>
      rtlcs81, a(0)=>rtlcs88, d=>rtlc3n117);
   rtlc5_20_or_80 : or_4u_4u port map ( a(3)=>rtlcs98, a(2)=>rtlcs101, a(1)
      =>rtlcs113, a(0)=>rtlcs120, d=>rtlc5n117);
   rtlc7_20_or_81 : or_4u_4u port map ( a(3)=>rtlcs130, a(2)=>rtlcs133, a(1)
      =>rtlcs145, a(0)=>rtlcs152, d=>rtlc7n117);
   rtlc9_20_or_82 : or_4u_4u port map ( a(3)=>rtlcs162, a(2)=>rtlcs165, a(1)
      =>rtlcs177, a(0)=>rtlcs184, d=>rtlc9n117);
   rtlc11_20_or_83 : or_4u_4u port map ( a(3)=>rtlcs194, a(2)=>rtlcs197, 
      a(1)=>rtlcs209, a(0)=>rtlcs216, d=>rtlc11n117);
   rtlc13_20_or_84 : or_4u_4u port map ( a(3)=>rtlcs226, a(2)=>rtlcs229, 
      a(1)=>rtlcs241, a(0)=>rtlcs248, d=>rtlc13n117);
   rtlc_71_or_85 : or_5u_5u port map ( a(4)=>rtlcs0, a(3)=>rtlcs1, a(2)=>
      rtlcs3, a(1)=>rtlcs16, a(0)=>rtlcs31, d=>rtlc1n224);
   rtlc_77_or_86 : or_5u_5u port map ( a(4)=>rtlcs0, a(3)=>rtlcs8, a(2)=>
      rtlcs15, a(1)=>rtlcs16, a(0)=>rtlcs20, d=>rtlc1n225);
   rtlc_90_or_87 : or_3u_3u port map ( a(2)=>rtlcs16, a(1)=>rtlcs23, a(0)=>
      rtlcs25, d=>rtlc1n228);
   rtlc_99_or_88 : or_4u_4u port map ( a(3)=>rtlcs9, a(2)=>rtlcs17, a(1)=>
      rtlcs19, a(0)=>rtlcs23, d=>rtlc1n230);
   rtlc_108_or_89 : or_3u_3u port map ( a(2)=>rtlcs11, a(1)=>rtlcs13, a(0)=>
      rtlcs29, d=>rtlc1n232);
   rtlc_114_or_90 : or_5u_5u port map ( a(4)=>rtlcs4, a(3)=>rtlcs10, a(2)=>
      rtlcs18, a(1)=>rtlcs22, a(0)=>rtlcs27, d=>rtlc1n233);
   rtlc_133_or_91 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs33, a(2)=>
      rtlcs35, a(1)=>rtlcs48, a(0)=>rtlcs63, d=>rtlc1n144);
   rtlc_139_or_92 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs40, a(2)=>
      rtlcs47, a(1)=>rtlcs48, a(0)=>rtlcs52, d=>rtlc1n145);
   rtlc_152_or_93 : or_3u_3u port map ( a(2)=>rtlcs48, a(1)=>rtlcs55, a(0)=>
      rtlcs57, d=>rtlc1n148);
   rtlc_161_or_94 : or_4u_4u port map ( a(3)=>rtlcs41, a(2)=>rtlcs49, a(1)=>
      rtlcs51, a(0)=>rtlcs55, d=>rtlc1n150);
   rtlc_170_or_95 : or_3u_3u port map ( a(2)=>rtlcs43, a(1)=>rtlcs45, a(0)=>
      rtlcs61, d=>rtlc1n152);
   rtlc_176_or_96 : or_5u_5u port map ( a(4)=>rtlcs36, a(3)=>rtlcs42, a(2)=>
      rtlcs50, a(1)=>rtlcs54, a(0)=>rtlcs59, d=>rtlc1n153);
   rtlc_195_or_97 : or_5u_5u port map ( a(4)=>rtlcs64, a(3)=>rtlcs65, a(2)=>
      rtlcs67, a(1)=>rtlcs80, a(0)=>rtlcs95, d=>rtlc3n105);
   rtlc_201_or_98 : or_5u_5u port map ( a(4)=>rtlcs64, a(3)=>rtlcs72, a(2)=>
      rtlcs79, a(1)=>rtlcs80, a(0)=>rtlcs84, d=>rtlc3n106);
   rtlc_214_or_99 : or_3u_3u port map ( a(2)=>rtlcs80, a(1)=>rtlcs87, a(0)=>
      rtlcs89, d=>rtlc3n109);
   rtlc_223_or_100 : or_4u_4u port map ( a(3)=>rtlcs73, a(2)=>rtlcs81, a(1)
      =>rtlcs83, a(0)=>rtlcs87, d=>rtlc3n111);
   rtlc_232_or_101 : or_3u_3u port map ( a(2)=>rtlcs75, a(1)=>rtlcs77, a(0)
      =>rtlcs93, d=>rtlc3n113);
   rtlc_238_or_102 : or_5u_5u port map ( a(4)=>rtlcs68, a(3)=>rtlcs74, a(2)
      =>rtlcs82, a(1)=>rtlcs86, a(0)=>rtlcs91, d=>rtlc3n114);
   rtlc_257_or_103 : or_5u_5u port map ( a(4)=>rtlcs96, a(3)=>rtlcs97, a(2)
      =>rtlcs99, a(1)=>rtlcs112, a(0)=>rtlcs127, d=>rtlc5n105);
   rtlc_263_or_104 : or_5u_5u port map ( a(4)=>rtlcs96, a(3)=>rtlcs104, a(2)
      =>rtlcs111, a(1)=>rtlcs112, a(0)=>rtlcs116, d=>rtlc5n106);
   rtlc_276_or_105 : or_3u_3u port map ( a(2)=>rtlcs112, a(1)=>rtlcs119, 
      a(0)=>rtlcs121, d=>rtlc5n109);
   rtlc_285_or_106 : or_4u_4u port map ( a(3)=>rtlcs105, a(2)=>rtlcs113, 
      a(1)=>rtlcs115, a(0)=>rtlcs119, d=>rtlc5n111);
   rtlc_294_or_107 : or_3u_3u port map ( a(2)=>rtlcs107, a(1)=>rtlcs109, 
      a(0)=>rtlcs125, d=>rtlc5n113);
   rtlc_300_or_108 : or_5u_5u port map ( a(4)=>rtlcs100, a(3)=>rtlcs106, 
      a(2)=>rtlcs114, a(1)=>rtlcs118, a(0)=>rtlcs123, d=>rtlc5n114);
   rtlc_319_or_109 : or_5u_5u port map ( a(4)=>rtlcs128, a(3)=>rtlcs129, 
      a(2)=>rtlcs131, a(1)=>rtlcs144, a(0)=>rtlcs159, d=>rtlc7n105);
   rtlc_325_or_110 : or_5u_5u port map ( a(4)=>rtlcs128, a(3)=>rtlcs136, 
      a(2)=>rtlcs143, a(1)=>rtlcs144, a(0)=>rtlcs148, d=>rtlc7n106);
   rtlc_338_or_111 : or_3u_3u port map ( a(2)=>rtlcs144, a(1)=>rtlcs151, 
      a(0)=>rtlcs153, d=>rtlc7n109);
   rtlc_347_or_112 : or_4u_4u port map ( a(3)=>rtlcs137, a(2)=>rtlcs145, 
      a(1)=>rtlcs147, a(0)=>rtlcs151, d=>rtlc7n111);
   rtlc_356_or_113 : or_3u_3u port map ( a(2)=>rtlcs139, a(1)=>rtlcs141, 
      a(0)=>rtlcs157, d=>rtlc7n113);
   rtlc_362_or_114 : or_5u_5u port map ( a(4)=>rtlcs132, a(3)=>rtlcs138, 
      a(2)=>rtlcs146, a(1)=>rtlcs150, a(0)=>rtlcs155, d=>rtlc7n114);
   rtlc_381_or_115 : or_5u_5u port map ( a(4)=>rtlcs160, a(3)=>rtlcs161, 
      a(2)=>rtlcs163, a(1)=>rtlcs176, a(0)=>rtlcs191, d=>rtlc9n105);
   rtlc_387_or_116 : or_5u_5u port map ( a(4)=>rtlcs160, a(3)=>rtlcs168, 
      a(2)=>rtlcs175, a(1)=>rtlcs176, a(0)=>rtlcs180, d=>rtlc9n106);
   rtlc_400_or_117 : or_3u_3u port map ( a(2)=>rtlcs176, a(1)=>rtlcs183, 
      a(0)=>rtlcs185, d=>rtlc9n109);
   rtlc_409_or_118 : or_4u_4u port map ( a(3)=>rtlcs169, a(2)=>rtlcs177, 
      a(1)=>rtlcs179, a(0)=>rtlcs183, d=>rtlc9n111);
   rtlc_418_or_119 : or_3u_3u port map ( a(2)=>rtlcs171, a(1)=>rtlcs173, 
      a(0)=>rtlcs189, d=>rtlc9n113);
   rtlc_424_or_120 : or_5u_5u port map ( a(4)=>rtlcs164, a(3)=>rtlcs170, 
      a(2)=>rtlcs178, a(1)=>rtlcs182, a(0)=>rtlcs187, d=>rtlc9n114);
   rtlc_443_or_121 : or_5u_5u port map ( a(4)=>rtlcs192, a(3)=>rtlcs193, 
      a(2)=>rtlcs195, a(1)=>rtlcs208, a(0)=>rtlcs223, d=>rtlc11n105);
   rtlc_449_or_122 : or_5u_5u port map ( a(4)=>rtlcs192, a(3)=>rtlcs200, 
      a(2)=>rtlcs207, a(1)=>rtlcs208, a(0)=>rtlcs212, d=>rtlc11n106);
   rtlc_462_or_123 : or_3u_3u port map ( a(2)=>rtlcs208, a(1)=>rtlcs215, 
      a(0)=>rtlcs217, d=>rtlc11n109);
   rtlc_471_or_124 : or_4u_4u port map ( a(3)=>rtlcs201, a(2)=>rtlcs209, 
      a(1)=>rtlcs211, a(0)=>rtlcs215, d=>rtlc11n111);
   rtlc_480_or_125 : or_3u_3u port map ( a(2)=>rtlcs203, a(1)=>rtlcs205, 
      a(0)=>rtlcs221, d=>rtlc11n113);
   rtlc_486_or_126 : or_5u_5u port map ( a(4)=>rtlcs196, a(3)=>rtlcs202, 
      a(2)=>rtlcs210, a(1)=>rtlcs214, a(0)=>rtlcs219, d=>rtlc11n114);
   rtlc_505_or_127 : or_5u_5u port map ( a(4)=>rtlcs224, a(3)=>rtlcs225, 
      a(2)=>rtlcs227, a(1)=>rtlcs240, a(0)=>rtlcs255, d=>rtlc13n105);
   rtlc_511_or_128 : or_5u_5u port map ( a(4)=>rtlcs224, a(3)=>rtlcs232, 
      a(2)=>rtlcs239, a(1)=>rtlcs240, a(0)=>rtlcs244, d=>rtlc13n106);
   rtlc_524_or_129 : or_3u_3u port map ( a(2)=>rtlcs240, a(1)=>rtlcs247, 
      a(0)=>rtlcs249, d=>rtlc13n109);
   rtlc_533_or_130 : or_4u_4u port map ( a(3)=>rtlcs233, a(2)=>rtlcs241, 
      a(1)=>rtlcs243, a(0)=>rtlcs247, d=>rtlc13n111);
   rtlc_542_or_131 : or_3u_3u port map ( a(2)=>rtlcs235, a(1)=>rtlcs237, 
      a(0)=>rtlcs253, d=>rtlc13n113);
   rtlc_548_or_132 : or_5u_5u port map ( a(4)=>rtlcs228, a(3)=>rtlcs234, 
      a(2)=>rtlcs242, a(1)=>rtlcs246, a(0)=>rtlcs251, d=>rtlc13n114);
   not_rtlc1n224 <= NOT rtlc1n224 ;
   not_rtlc1n225 <= NOT rtlc1n225 ;
   not_rtlc1n233 <= NOT rtlc1n233 ;
   not_rtlc1n144 <= NOT rtlc1n144 ;
   not_rtlc1n145 <= NOT rtlc1n145 ;
   not_rtlc1n153 <= NOT rtlc1n153 ;
   not_rtlc3n105 <= NOT rtlc3n105 ;
   not_rtlc3n106 <= NOT rtlc3n106 ;
   not_rtlc3n114 <= NOT rtlc3n114 ;
   not_rtlc5n105 <= NOT rtlc5n105 ;
   not_rtlc5n106 <= NOT rtlc5n106 ;
   not_rtlc5n114 <= NOT rtlc5n114 ;
   not_rtlc7n105 <= NOT rtlc7n105 ;
   not_rtlc7n106 <= NOT rtlc7n106 ;
   not_rtlc7n114 <= NOT rtlc7n114 ;
   not_rtlc9n105 <= NOT rtlc9n105 ;
   not_rtlc9n106 <= NOT rtlc9n106 ;
   not_rtlc9n114 <= NOT rtlc9n114 ;
   not_rtlc11n105 <= NOT rtlc11n105 ;
   not_rtlc11n106 <= NOT rtlc11n106 ;
   not_rtlc11n114 <= NOT rtlc11n114 ;
   not_rtlc13n105 <= NOT rtlc13n105 ;
   not_rtlc13n106 <= NOT rtlc13n106 ;
   not_rtlc13n114 <= NOT rtlc13n114 ;
   rtlcs2 <= rtlcs3 AND rtlcs1 ;
   rtlcs5 <= rowcount(2) AND rtlcs4 ;
   rtlcs4 <= not_rowcount_1 AND rtlcs1 ;
   rtlcs9 <= rtlcs8 AND rtlcs10 ;
   rtlcs11 <= rowcount(2) AND rtlcs8 ;
   rtlcs13 <= rowcount(3) AND rtlcs15 ;
   rtlcs17 <= rtlcs15 AND rtlcs18 ;
   rtlcs18 <= not_rowcount_3 AND rtlcs20 ;
   rtlcs24 <= rtlcs25 AND rtlcs23 ;
   rtlcs23 <= rowcount(0) AND rtlcs22 ;
   rtlcs27 <= rowcount(1) AND rtlcs25 ;
   rtlcs256 <= rtlcs10 AND not_rowcount_3 ;
   rtlcs29 <= rtlcs256 AND rtlcs31 ;
   rtlcs34 <= rtlcs35 AND rtlcs33 ;
   rtlcs37 <= rowcount(6) AND rtlcs36 ;
   rtlcs36 <= not_rowcount_5 AND rtlcs33 ;
   rtlcs41 <= rtlcs40 AND rtlcs42 ;
   rtlcs43 <= rowcount(6) AND rtlcs40 ;
   rtlcs45 <= rowcount(7) AND rtlcs47 ;
   rtlcs49 <= rtlcs47 AND rtlcs50 ;
   rtlcs50 <= not_rowcount_7 AND rtlcs52 ;
   rtlcs56 <= rtlcs57 AND rtlcs55 ;
   rtlcs55 <= rowcount(4) AND rtlcs54 ;
   rtlcs59 <= rowcount(5) AND rtlcs57 ;
   rtlcs257 <= rtlcs42 AND not_rowcount_7 ;
   rtlcs61 <= rtlcs257 AND rtlcs63 ;
   rtlcs66 <= rtlcs67 AND rtlcs65 ;
   rtlcs69 <= debug_num_0(2) AND rtlcs68 ;
   rtlcs68 <= not_debug_num_0_1 AND rtlcs65 ;
   rtlcs73 <= rtlcs72 AND rtlcs74 ;
   rtlcs75 <= debug_num_0(2) AND rtlcs72 ;
   rtlcs77 <= debug_num_0(3) AND rtlcs79 ;
   rtlcs81 <= rtlcs79 AND rtlcs82 ;
   rtlcs82 <= not_debug_num_0_3 AND rtlcs84 ;
   rtlcs88 <= rtlcs89 AND rtlcs87 ;
   rtlcs87 <= debug_num_0(0) AND rtlcs86 ;
   rtlcs91 <= debug_num_0(1) AND rtlcs89 ;
   rtlcs258 <= rtlcs74 AND not_debug_num_0_3 ;
   rtlcs93 <= rtlcs258 AND rtlcs95 ;
   rtlcs98 <= rtlcs99 AND rtlcs97 ;
   rtlcs101 <= debug_num_1(2) AND rtlcs100 ;
   rtlcs100 <= not_debug_num_1_1 AND rtlcs97 ;
   rtlcs105 <= rtlcs104 AND rtlcs106 ;
   rtlcs107 <= debug_num_1(2) AND rtlcs104 ;
   rtlcs109 <= debug_num_1(3) AND rtlcs111 ;
   rtlcs113 <= rtlcs111 AND rtlcs114 ;
   rtlcs114 <= not_debug_num_1_3 AND rtlcs116 ;
   rtlcs120 <= rtlcs121 AND rtlcs119 ;
   rtlcs119 <= debug_num_1(0) AND rtlcs118 ;
   rtlcs123 <= debug_num_1(1) AND rtlcs121 ;
   rtlcs259 <= rtlcs106 AND not_debug_num_1_3 ;
   rtlcs125 <= rtlcs259 AND rtlcs127 ;
   rtlcs130 <= rtlcs131 AND rtlcs129 ;
   rtlcs133 <= debug_num_2(2) AND rtlcs132 ;
   rtlcs132 <= not_debug_num_2_1 AND rtlcs129 ;
   rtlcs137 <= rtlcs136 AND rtlcs138 ;
   rtlcs139 <= debug_num_2(2) AND rtlcs136 ;
   rtlcs141 <= debug_num_2(3) AND rtlcs143 ;
   rtlcs145 <= rtlcs143 AND rtlcs146 ;
   rtlcs146 <= not_debug_num_2_3 AND rtlcs148 ;
   rtlcs152 <= rtlcs153 AND rtlcs151 ;
   rtlcs151 <= debug_num_2(0) AND rtlcs150 ;
   rtlcs155 <= debug_num_2(1) AND rtlcs153 ;
   rtlcs260 <= rtlcs138 AND not_debug_num_2_3 ;
   rtlcs157 <= rtlcs260 AND rtlcs159 ;
   rtlcs162 <= rtlcs163 AND rtlcs161 ;
   rtlcs165 <= debug_num_3(2) AND rtlcs164 ;
   rtlcs164 <= not_debug_num_3_1 AND rtlcs161 ;
   rtlcs169 <= rtlcs168 AND rtlcs170 ;
   rtlcs171 <= debug_num_3(2) AND rtlcs168 ;
   rtlcs173 <= debug_num_3(3) AND rtlcs175 ;
   rtlcs177 <= rtlcs175 AND rtlcs178 ;
   rtlcs178 <= not_debug_num_3_3 AND rtlcs180 ;
   rtlcs184 <= rtlcs185 AND rtlcs183 ;
   rtlcs183 <= debug_num_3(0) AND rtlcs182 ;
   rtlcs187 <= debug_num_3(1) AND rtlcs185 ;
   rtlcs261 <= rtlcs170 AND not_debug_num_3_3 ;
   rtlcs189 <= rtlcs261 AND rtlcs191 ;
   rtlcs194 <= rtlcs195 AND rtlcs193 ;
   rtlcs197 <= debug_num_4(2) AND rtlcs196 ;
   rtlcs196 <= not_debug_num_4_1 AND rtlcs193 ;
   rtlcs201 <= rtlcs200 AND rtlcs202 ;
   rtlcs203 <= debug_num_4(2) AND rtlcs200 ;
   rtlcs205 <= debug_num_4(3) AND rtlcs207 ;
   rtlcs209 <= rtlcs207 AND rtlcs210 ;
   rtlcs210 <= not_debug_num_4_3 AND rtlcs212 ;
   rtlcs216 <= rtlcs217 AND rtlcs215 ;
   rtlcs215 <= debug_num_4(0) AND rtlcs214 ;
   rtlcs219 <= debug_num_4(1) AND rtlcs217 ;
   rtlcs262 <= rtlcs202 AND not_debug_num_4_3 ;
   rtlcs221 <= rtlcs262 AND rtlcs223 ;
   rtlcs226 <= rtlcs227 AND rtlcs225 ;
   rtlcs229 <= debug_num_5(2) AND rtlcs228 ;
   rtlcs228 <= not_debug_num_5_1 AND rtlcs225 ;
   rtlcs233 <= rtlcs232 AND rtlcs234 ;
   rtlcs235 <= debug_num_5(2) AND rtlcs232 ;
   rtlcs237 <= debug_num_5(3) AND rtlcs239 ;
   rtlcs241 <= rtlcs239 AND rtlcs242 ;
   rtlcs242 <= not_debug_num_5_3 AND rtlcs244 ;
   rtlcs248 <= rtlcs249 AND rtlcs247 ;
   rtlcs247 <= debug_num_5(0) AND rtlcs246 ;
   rtlcs251 <= debug_num_5(1) AND rtlcs249 ;
   rtlcs263 <= rtlcs234 AND not_debug_num_5_3 ;
   rtlcs253 <= rtlcs263 AND rtlcs255 ;
   not_rowcount_2 <= NOT rowcount(2) ;
   not_rowcount_0 <= NOT rowcount(0) ;
   not_rowcount_3 <= NOT rowcount(3) ;
   not_rowcount_1 <= NOT rowcount(1) ;
   rtlc_898_and_133 : and_3u_3u port map ( a(2)=>not_rowcount_3, a(1)=>
      rowcount(2), a(0)=>not_rowcount_1, d=>rtlcs16);
   rtlc_914_and_134 : and_3u_3u port map ( a(2)=>rowcount(2), a(1)=>
      rowcount(1), a(0)=>rowcount(0), d=>rtlcs19);
   not_rowcount_6 <= NOT rowcount(6) ;
   not_rowcount_4 <= NOT rowcount(4) ;
   not_rowcount_7 <= NOT rowcount(7) ;
   not_rowcount_5 <= NOT rowcount(5) ;
   rtlc_937_and_135 : and_3u_3u port map ( a(2)=>not_rowcount_7, a(1)=>
      rowcount(6), a(0)=>not_rowcount_5, d=>rtlcs48);
   rtlc_953_and_136 : and_3u_3u port map ( a(2)=>rowcount(6), a(1)=>
      rowcount(5), a(0)=>rowcount(4), d=>rtlcs51);
   not_debug_num_0_2 <= NOT debug_num_0(2) ;
   not_debug_num_0_0 <= NOT debug_num_0(0) ;
   not_debug_num_0_3 <= NOT debug_num_0(3) ;
   not_debug_num_0_1 <= NOT debug_num_0(1) ;
   rtlc_976_and_137 : and_3u_3u port map ( a(2)=>not_debug_num_0_3, a(1)=>
      debug_num_0(2), a(0)=>not_debug_num_0_1, d=>rtlcs80);
   rtlc_992_and_138 : and_3u_3u port map ( a(2)=>debug_num_0(2), a(1)=>
      debug_num_0(1), a(0)=>debug_num_0(0), d=>rtlcs83);
   not_debug_num_1_2 <= NOT debug_num_1(2) ;
   not_debug_num_1_0 <= NOT debug_num_1(0) ;
   not_debug_num_1_3 <= NOT debug_num_1(3) ;
   not_debug_num_1_1 <= NOT debug_num_1(1) ;
   rtlc_1015_and_139 : and_3u_3u port map ( a(2)=>not_debug_num_1_3, a(1)=>
      debug_num_1(2), a(0)=>not_debug_num_1_1, d=>rtlcs112);
   rtlc_1031_and_140 : and_3u_3u port map ( a(2)=>debug_num_1(2), a(1)=>
      debug_num_1(1), a(0)=>debug_num_1(0), d=>rtlcs115);
   not_debug_num_2_2 <= NOT debug_num_2(2) ;
   not_debug_num_2_0 <= NOT debug_num_2(0) ;
   not_debug_num_2_3 <= NOT debug_num_2(3) ;
   not_debug_num_2_1 <= NOT debug_num_2(1) ;
   rtlc_1054_and_141 : and_3u_3u port map ( a(2)=>not_debug_num_2_3, a(1)=>
      debug_num_2(2), a(0)=>not_debug_num_2_1, d=>rtlcs144);
   rtlc_1070_and_142 : and_3u_3u port map ( a(2)=>debug_num_2(2), a(1)=>
      debug_num_2(1), a(0)=>debug_num_2(0), d=>rtlcs147);
   not_debug_num_3_2 <= NOT debug_num_3(2) ;
   not_debug_num_3_0 <= NOT debug_num_3(0) ;
   not_debug_num_3_3 <= NOT debug_num_3(3) ;
   not_debug_num_3_1 <= NOT debug_num_3(1) ;
   rtlc_1093_and_143 : and_3u_3u port map ( a(2)=>not_debug_num_3_3, a(1)=>
      debug_num_3(2), a(0)=>not_debug_num_3_1, d=>rtlcs176);
   rtlc_1109_and_144 : and_3u_3u port map ( a(2)=>debug_num_3(2), a(1)=>
      debug_num_3(1), a(0)=>debug_num_3(0), d=>rtlcs179);
   not_debug_num_4_2 <= NOT debug_num_4(2) ;
   not_debug_num_4_0 <= NOT debug_num_4(0) ;
   not_debug_num_4_3 <= NOT debug_num_4(3) ;
   not_debug_num_4_1 <= NOT debug_num_4(1) ;
   rtlc_1132_and_145 : and_3u_3u port map ( a(2)=>not_debug_num_4_3, a(1)=>
      debug_num_4(2), a(0)=>not_debug_num_4_1, d=>rtlcs208);
   rtlc_1148_and_146 : and_3u_3u port map ( a(2)=>debug_num_4(2), a(1)=>
      debug_num_4(1), a(0)=>debug_num_4(0), d=>rtlcs211);
   not_debug_num_5_2 <= NOT debug_num_5(2) ;
   not_debug_num_5_0 <= NOT debug_num_5(0) ;
   not_debug_num_5_3 <= NOT debug_num_5(3) ;
   not_debug_num_5_1 <= NOT debug_num_5(1) ;
   rtlc_1171_and_147 : and_3u_3u port map ( a(2)=>not_debug_num_5_3, a(1)=>
      debug_num_5(2), a(0)=>not_debug_num_5_1, d=>rtlcs240);
   rtlc_1187_and_148 : and_3u_3u port map ( a(2)=>debug_num_5(2), a(1)=>
      debug_num_5(1), a(0)=>debug_num_5(0), d=>rtlcs243);
   rtlcs0 <= rowcount(3) AND not_rowcount_2 ;
   rtlcs1 <= rowcount(3) AND rowcount(0) ;
   rtlcs3 <= not_rowcount_2 AND rowcount(1) ;
   rtlcs31 <= rowcount(1) AND not_rowcount_0 ;
   rtlcs8 <= rowcount(3) AND rowcount(1) ;
   rtlcs15 <= rowcount(2) AND not_rowcount_0 ;
   rtlcs20 <= not_rowcount_1 AND not_rowcount_0 ;
   rtlcs22 <= not_rowcount_2 AND not_rowcount_1 ;
   rtlcs25 <= not_rowcount_3 AND rowcount(0) ;
   rtlcs10 <= not_rowcount_2 AND not_rowcount_0 ;
   rtlcs32 <= rowcount(7) AND not_rowcount_6 ;
   rtlcs33 <= rowcount(7) AND rowcount(4) ;
   rtlcs35 <= not_rowcount_6 AND rowcount(5) ;
   rtlcs63 <= rowcount(5) AND not_rowcount_4 ;
   rtlcs40 <= rowcount(7) AND rowcount(5) ;
   rtlcs47 <= rowcount(6) AND not_rowcount_4 ;
   rtlcs52 <= not_rowcount_5 AND not_rowcount_4 ;
   rtlcs54 <= not_rowcount_6 AND not_rowcount_5 ;
   rtlcs57 <= not_rowcount_7 AND rowcount(4) ;
   rtlcs42 <= not_rowcount_6 AND not_rowcount_4 ;
   rtlcs64 <= debug_num_0(3) AND not_debug_num_0_2 ;
   rtlcs65 <= debug_num_0(3) AND debug_num_0(0) ;
   rtlcs67 <= not_debug_num_0_2 AND debug_num_0(1) ;
   rtlcs95 <= debug_num_0(1) AND not_debug_num_0_0 ;
   rtlcs72 <= debug_num_0(3) AND debug_num_0(1) ;
   rtlcs79 <= debug_num_0(2) AND not_debug_num_0_0 ;
   rtlcs84 <= not_debug_num_0_1 AND not_debug_num_0_0 ;
   rtlcs86 <= not_debug_num_0_2 AND not_debug_num_0_1 ;
   rtlcs89 <= not_debug_num_0_3 AND debug_num_0(0) ;
   rtlcs74 <= not_debug_num_0_2 AND not_debug_num_0_0 ;
   rtlcs96 <= debug_num_1(3) AND not_debug_num_1_2 ;
   rtlcs97 <= debug_num_1(3) AND debug_num_1(0) ;
   rtlcs99 <= not_debug_num_1_2 AND debug_num_1(1) ;
   rtlcs127 <= debug_num_1(1) AND not_debug_num_1_0 ;
   rtlcs104 <= debug_num_1(3) AND debug_num_1(1) ;
   rtlcs111 <= debug_num_1(2) AND not_debug_num_1_0 ;
   rtlcs116 <= not_debug_num_1_1 AND not_debug_num_1_0 ;
   rtlcs118 <= not_debug_num_1_2 AND not_debug_num_1_1 ;
   rtlcs121 <= not_debug_num_1_3 AND debug_num_1(0) ;
   rtlcs106 <= not_debug_num_1_2 AND not_debug_num_1_0 ;
   rtlcs128 <= debug_num_2(3) AND not_debug_num_2_2 ;
   rtlcs129 <= debug_num_2(3) AND debug_num_2(0) ;
   rtlcs131 <= not_debug_num_2_2 AND debug_num_2(1) ;
   rtlcs159 <= debug_num_2(1) AND not_debug_num_2_0 ;
   rtlcs136 <= debug_num_2(3) AND debug_num_2(1) ;
   rtlcs143 <= debug_num_2(2) AND not_debug_num_2_0 ;
   rtlcs148 <= not_debug_num_2_1 AND not_debug_num_2_0 ;
   rtlcs150 <= not_debug_num_2_2 AND not_debug_num_2_1 ;
   rtlcs153 <= not_debug_num_2_3 AND debug_num_2(0) ;
   rtlcs138 <= not_debug_num_2_2 AND not_debug_num_2_0 ;
   rtlcs160 <= debug_num_3(3) AND not_debug_num_3_2 ;
   rtlcs161 <= debug_num_3(3) AND debug_num_3(0) ;
   rtlcs163 <= not_debug_num_3_2 AND debug_num_3(1) ;
   rtlcs191 <= debug_num_3(1) AND not_debug_num_3_0 ;
   rtlcs168 <= debug_num_3(3) AND debug_num_3(1) ;
   rtlcs175 <= debug_num_3(2) AND not_debug_num_3_0 ;
   rtlcs180 <= not_debug_num_3_1 AND not_debug_num_3_0 ;
   rtlcs182 <= not_debug_num_3_2 AND not_debug_num_3_1 ;
   rtlcs185 <= not_debug_num_3_3 AND debug_num_3(0) ;
   rtlcs170 <= not_debug_num_3_2 AND not_debug_num_3_0 ;
   rtlcs192 <= debug_num_4(3) AND not_debug_num_4_2 ;
   rtlcs193 <= debug_num_4(3) AND debug_num_4(0) ;
   rtlcs195 <= not_debug_num_4_2 AND debug_num_4(1) ;
   rtlcs223 <= debug_num_4(1) AND not_debug_num_4_0 ;
   rtlcs200 <= debug_num_4(3) AND debug_num_4(1) ;
   rtlcs207 <= debug_num_4(2) AND not_debug_num_4_0 ;
   rtlcs212 <= not_debug_num_4_1 AND not_debug_num_4_0 ;
   rtlcs214 <= not_debug_num_4_2 AND not_debug_num_4_1 ;
   rtlcs217 <= not_debug_num_4_3 AND debug_num_4(0) ;
   rtlcs202 <= not_debug_num_4_2 AND not_debug_num_4_0 ;
   rtlcs224 <= debug_num_5(3) AND not_debug_num_5_2 ;
   rtlcs225 <= debug_num_5(3) AND debug_num_5(0) ;
   rtlcs227 <= not_debug_num_5_2 AND debug_num_5(1) ;
   rtlcs255 <= debug_num_5(1) AND not_debug_num_5_0 ;
   rtlcs232 <= debug_num_5(3) AND debug_num_5(1) ;
   rtlcs239 <= debug_num_5(2) AND not_debug_num_5_0 ;
   rtlcs244 <= not_debug_num_5_1 AND not_debug_num_5_0 ;
   rtlcs246 <= not_debug_num_5_2 AND not_debug_num_5_1 ;
   rtlcs249 <= not_debug_num_5_3 AND debug_num_5(0) ;
   rtlcs234 <= not_debug_num_5_2 AND not_debug_num_5_0 ;
   DFFPC (rtlc1n156,GND,GND,clk,o_sevenseg(14)) ;
   DFFPC (not_rtlc1n153,GND,GND,clk,o_sevenseg(13)) ;
   DFFPC (rtlc1n152,GND,GND,clk,o_sevenseg(12)) ;
   DFFPC (rtlc1n150,GND,GND,clk,o_sevenseg(11)) ;
   DFFPC (rtlc1n148,GND,GND,clk,o_sevenseg(10)) ;
   DFFPC (not_rtlc1n145,GND,GND,clk,o_sevenseg(9)) ;
   DFFPC (not_rtlc1n144,GND,GND,clk,o_sevenseg(8)) ;
   DFFPC (rtlc1n236,GND,GND,clk,o_sevenseg(6)) ;
   DFFPC (not_rtlc1n233,GND,GND,clk,o_sevenseg(5)) ;
   DFFPC (rtlc1n232,GND,GND,clk,o_sevenseg(4)) ;
   DFFPC (rtlc1n230,GND,GND,clk,o_sevenseg(3)) ;
   DFFPC (rtlc1n228,GND,GND,clk,o_sevenseg(2)) ;
   DFFPC (not_rtlc1n225,GND,GND,clk,o_sevenseg(1)) ;
   DFFPC (not_rtlc1n224,GND,GND,clk,o_sevenseg(0)) ;
   DFFPC (rtlc3n117,GND,GND,clk,debug_sevenseg_0(6)) ;
   DFFPC (not_rtlc3n114,GND,GND,clk,debug_sevenseg_0(5)) ;
   DFFPC (rtlc3n113,GND,GND,clk,debug_sevenseg_0(4)) ;
   DFFPC (rtlc3n111,GND,GND,clk,debug_sevenseg_0(3)) ;
   DFFPC (rtlc3n109,GND,GND,clk,debug_sevenseg_0(2)) ;
   DFFPC (not_rtlc3n106,GND,GND,clk,debug_sevenseg_0(1)) ;
   DFFPC (not_rtlc3n105,GND,GND,clk,debug_sevenseg_0(0)) ;
   DFFPC (rtlc5n117,GND,GND,clk,debug_sevenseg_1(6)) ;
   DFFPC (not_rtlc5n114,GND,GND,clk,debug_sevenseg_1(5)) ;
   DFFPC (rtlc5n113,GND,GND,clk,debug_sevenseg_1(4)) ;
   DFFPC (rtlc5n111,GND,GND,clk,debug_sevenseg_1(3)) ;
   DFFPC (rtlc5n109,GND,GND,clk,debug_sevenseg_1(2)) ;
   DFFPC (not_rtlc5n106,GND,GND,clk,debug_sevenseg_1(1)) ;
   DFFPC (not_rtlc5n105,GND,GND,clk,debug_sevenseg_1(0)) ;
   DFFPC (rtlc7n117,GND,GND,clk,debug_sevenseg_2(6)) ;
   DFFPC (not_rtlc7n114,GND,GND,clk,debug_sevenseg_2(5)) ;
   DFFPC (rtlc7n113,GND,GND,clk,debug_sevenseg_2(4)) ;
   DFFPC (rtlc7n111,GND,GND,clk,debug_sevenseg_2(3)) ;
   DFFPC (rtlc7n109,GND,GND,clk,debug_sevenseg_2(2)) ;
   DFFPC (not_rtlc7n106,GND,GND,clk,debug_sevenseg_2(1)) ;
   DFFPC (not_rtlc7n105,GND,GND,clk,debug_sevenseg_2(0)) ;
   DFFPC (rtlc9n117,GND,GND,clk,debug_sevenseg_3(6)) ;
   DFFPC (not_rtlc9n114,GND,GND,clk,debug_sevenseg_3(5)) ;
   DFFPC (rtlc9n113,GND,GND,clk,debug_sevenseg_3(4)) ;
   DFFPC (rtlc9n111,GND,GND,clk,debug_sevenseg_3(3)) ;
   DFFPC (rtlc9n109,GND,GND,clk,debug_sevenseg_3(2)) ;
   DFFPC (not_rtlc9n106,GND,GND,clk,debug_sevenseg_3(1)) ;
   DFFPC (not_rtlc9n105,GND,GND,clk,debug_sevenseg_3(0)) ;
   DFFPC (rtlc11n117,GND,GND,clk,debug_sevenseg_4(6)) ;
   DFFPC (not_rtlc11n114,GND,GND,clk,debug_sevenseg_4(5)) ;
   DFFPC (rtlc11n113,GND,GND,clk,debug_sevenseg_4(4)) ;
   DFFPC (rtlc11n111,GND,GND,clk,debug_sevenseg_4(3)) ;
   DFFPC (rtlc11n109,GND,GND,clk,debug_sevenseg_4(2)) ;
   DFFPC (not_rtlc11n106,GND,GND,clk,debug_sevenseg_4(1)) ;
   DFFPC (not_rtlc11n105,GND,GND,clk,debug_sevenseg_4(0)) ;
   DFFPC (rtlc13n117,GND,GND,clk,debug_sevenseg_5(6)) ;
   DFFPC (not_rtlc13n114,GND,GND,clk,debug_sevenseg_5(5)) ;
   DFFPC (rtlc13n113,GND,GND,clk,debug_sevenseg_5(4)) ;
   DFFPC (rtlc13n111,GND,GND,clk,debug_sevenseg_5(3)) ;
   DFFPC (rtlc13n109,GND,GND,clk,debug_sevenseg_5(2)) ;
   DFFPC (not_rtlc13n106,GND,GND,clk,debug_sevenseg_5(1)) ;
   DFFPC (not_rtlc13n105,GND,GND,clk,debug_sevenseg_5(0)) ;
   debug_led_red(0) <= GND when GND = '1' else 'Z' ;
   debug_led_red(1) <= GND when GND = '1' else 'Z' ;
   debug_led_red(2) <= GND when GND = '1' else 'Z' ;
   debug_led_red(3) <= GND when GND = '1' else 'Z' ;
   debug_led_red(4) <= GND when GND = '1' else 'Z' ;
   debug_led_red(5) <= GND when GND = '1' else 'Z' ;
   debug_led_red(6) <= GND when GND = '1' else 'Z' ;
   debug_led_red(7) <= GND when GND = '1' else 'Z' ;
   debug_led_red(8) <= GND when GND = '1' else 'Z' ;
   debug_led_red(9) <= GND when GND = '1' else 'Z' ;
   debug_led_red(10) <= GND when GND = '1' else 'Z' ;
   debug_led_red(11) <= GND when GND = '1' else 'Z' ;
   debug_led_red(12) <= GND when GND = '1' else 'Z' ;
   debug_led_red(13) <= GND when GND = '1' else 'Z' ;
   debug_led_red(14) <= GND when GND = '1' else 'Z' ;
   debug_led_red(15) <= GND when GND = '1' else 'Z' ;
   debug_led_red(16) <= GND when GND = '1' else 'Z' ;
   debug_led_grn(0) <= GND when GND = '1' else 'Z' ;
   debug_led_grn(1) <= GND when GND = '1' else 'Z' ;
   debug_led_grn(2) <= GND when GND = '1' else 'Z' ;
   debug_led_grn(3) <= GND when GND = '1' else 'Z' ;
   debug_led_grn(4) <= GND when GND = '1' else 'Z' ;
   debug_led_grn(5) <= GND when GND = '1' else 'Z' ;
   debug_num_0(0) <= GND when GND = '1' else 'Z' ;
   debug_num_0(1) <= GND when GND = '1' else 'Z' ;
   debug_num_0(2) <= GND when GND = '1' else 'Z' ;
   debug_num_0(3) <= GND when GND = '1' else 'Z' ;
   debug_num_1(0) <= GND when GND = '1' else 'Z' ;
   debug_num_1(1) <= GND when GND = '1' else 'Z' ;
   debug_num_1(2) <= GND when GND = '1' else 'Z' ;
   debug_num_1(3) <= GND when GND = '1' else 'Z' ;
   debug_num_2(0) <= GND when GND = '1' else 'Z' ;
   debug_num_2(1) <= GND when GND = '1' else 'Z' ;
   debug_num_2(2) <= GND when GND = '1' else 'Z' ;
   debug_num_2(3) <= GND when GND = '1' else 'Z' ;
   debug_num_3(0) <= GND when GND = '1' else 'Z' ;
   debug_num_3(1) <= GND when GND = '1' else 'Z' ;
   debug_num_3(2) <= GND when GND = '1' else 'Z' ;
   debug_num_3(3) <= GND when GND = '1' else 'Z' ;
   debug_num_4(0) <= GND when GND = '1' else 'Z' ;
   debug_num_4(1) <= GND when GND = '1' else 'Z' ;
   debug_num_4(2) <= GND when GND = '1' else 'Z' ;
   debug_num_4(3) <= GND when GND = '1' else 'Z' ;
   debug_num_5(0) <= GND when GND = '1' else 'Z' ;
   debug_num_5(1) <= GND when GND = '1' else 'Z' ;
   debug_num_5(2) <= GND when GND = '1' else 'Z' ;
   debug_num_5(3) <= GND when GND = '1' else 'Z' ;
   u_kirsch : kirsch_notri port map ( p_o_mode(1)=>o_mode_EXMPLR493(1), 
      p_o_mode(0)=>o_mode_EXMPLR493(0), p_o_dir(2)=>dir(2), p_o_dir(1)=>
      dir(1), p_o_dir(0)=>dir(0), p_i_reset=>o_nrst_EXMPLR425, p_o_edge=>
      kirschout, p_o_valid=>o_valid, p_o_row(7)=>rowcount(7), p_o_row(6)=>
      rowcount(6), p_o_row(5)=>rowcount(5), p_o_row(4)=>rowcount(4), 
      p_o_row(3)=>rowcount(3), p_o_row(2)=>rowcount(2), p_o_row(1)=>
      rowcount(1), p_o_row(0)=>rowcount(0), p_i_valid=>pixavail, 
      p_i_pixel(7)=>pixel(7), p_i_pixel(6)=>pixel(6), p_i_pixel(5)=>pixel(5), 
      p_i_pixel(4)=>pixel(4), p_i_pixel(3)=>pixel(3), p_i_pixel(2)=>pixel(2), 
      p_i_pixel(1)=>pixel(1), p_i_pixel(0)=>pixel(0), p_i_clock=>clk);
end main ;

