
-- 
-- Definition of  kirsch
-- 
--      Thu Jul 24 07:12:13 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

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
   component add_12u_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
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
   signal o_valid_EXMPLR258, o_edge_EXMPLR259: std_logic ;
   
   signal o_row_EXMPLR324: std_logic_vector (7 DOWNTO 0) ;
   
   signal col: std_logic_vector (7 DOWNTO 0) ;
   
   signal state: std_logic_vector (2 DOWNTO 0) ;
   
   signal vBit: std_logic_vector (2 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal we: std_logic_vector (2 DOWNTO 0) ;
   
   signal mem0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem1: std_logic_vector (7 DOWNTO 0) ;
   
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
   
   signal PWR, rtlc2n58, rtlc2n163, rtlc2n251, rtlc3n52, rtlc4n202, 
      rtlc4n274, rtlc5n65, rtlc5n66, rtlc5n171, rtlc5n259: std_logic ;
   
   signal r10_6n1ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r5_6n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal x_r5_6n3ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r12_6n4ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_validBit_0: std_logic ;
   
   signal r2_6n3s1: std_logic_vector (8 DOWNTO 0) ;
   
   signal rtlc6n323, rtlc6n356, rtlc6n398, rtlc6n493, not_rtlcn248, 
      rtlc6n495: std_logic ;
   
   signal b_d1_7n4s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal x_r3_7n3s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r16_7n1s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal rtlc7n204, rtlc7n214, rtlc7n224: std_logic ;
   
   signal x_r6_8n4s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r14_8n3s1: std_logic_vector (10 DOWNTO 0) ;
   
   signal x_r12_8n2s1: std_logic_vector (11 DOWNTO 0) ;
   
   signal x_r22_8n1s1: std_logic_vector (12 DOWNTO 1) ;
   
   signal rtlc8n222, rtlc8n234, rtlc8n247: std_logic ;
   
   signal r15_9n1ss1: std_logic_vector (9 DOWNTO 0) ;
   
   signal first_cw_9n1ss1_2, first_cw_9n1ss1_0: std_logic ;
   
   signal x_r11_9n2ss1: std_logic_vector (9 DOWNTO 0) ;
   
   signal second_cw_9n2ss1_2, second_cw_9n2ss1_0: std_logic ;
   
   signal r18_9n3ss1: std_logic_vector (9 DOWNTO 0) ;
   
   signal final_dir_9n3ss1: std_logic_vector (2 DOWNTO 0) ;
   
   signal rtlc9n128, rtlc9n158, rtlc9n171, r17_10n1s1_12, r17_10n1s1_11, 
      r17_10n1s1_10, r17_10n1s1_9, r17_10n1s1_8, r17_10n1s1_7, rtlc11n129, 
      rtlcn0, rtlcn230, not_i_reset, not_i_valid, not_rtlcn230, 
      not_validBit_1, not_validBit_3, not_validBit_2, not_validBit_4, 
      not_validBit_5, not_col_7, not_col_6, not_col_5, not_col_4, not_col_3, 
      not_col_2, not_col_1, not_col_0, rtlcn248: std_logic ;
   
   signal tempStorage_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal tempStorage_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal tempStorage_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlcn1495, rtlcn1496, rtlcn1498, rtlcn1499, rtlcn1500: std_logic
    ;
   
   signal r2_6n3s1f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r2_6n3s1f2: std_logic_vector (7 DOWNTO 0) ;
   
   signal x_r3_7n3s1f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_rtlc6n327, not_rtlc6n325, not_rtlc6n323, not_rtlc6n321, nx83, 
      not_rtlc9n130, not_rtlc9n128, NOT_x_r22_0: std_logic ;
   
   signal DANGLING : std_logic_vector (23 downto 0 );

begin
   o_valid <= o_valid_EXMPLR258 ;
   o_edge <= o_edge_EXMPLR259 ;
   o_row(7) <= o_row_EXMPLR324(7) ;
   o_row(6) <= o_row_EXMPLR324(6) ;
   o_row(5) <= o_row_EXMPLR324(5) ;
   o_row(4) <= o_row_EXMPLR324(4) ;
   o_row(3) <= o_row_EXMPLR324(3) ;
   o_row(2) <= o_row_EXMPLR324(2) ;
   o_row(1) <= o_row_EXMPLR324(1) ;
   o_row(0) <= o_row_EXMPLR324(0) ;
   GND <= '0' ;
   PWR <= '1' ;
   Generate_mem_0_u_mem0 : mem_8_8 port map ( address(7)=>col(7), address(6)
      =>col(6), address(5)=>col(5), address(4)=>col(4), address(3)=>col(3), 
      address(2)=>col(2), address(1)=>col(1), address(0)=>col(0), clock=>
      i_clock, data(7)=>i_pixel(7), data(6)=>i_pixel(6), data(5)=>i_pixel(5), 
      data(4)=>i_pixel(4), data(3)=>i_pixel(3), data(2)=>i_pixel(2), data(1)
      =>i_pixel(1), data(0)=>i_pixel(0), wren=>we(0), q(7)=>tempStorage_0(7), 
      q(6)=>tempStorage_0(6), q(5)=>tempStorage_0(5), q(4)=>tempStorage_0(4), 
      q(3)=>tempStorage_0(3), q(2)=>tempStorage_0(2), q(1)=>tempStorage_0(1), 
      q(0)=>tempStorage_0(0));
   Generate_mem_1_u_mem0 : mem_8_8 port map ( address(7)=>col(7), address(6)
      =>col(6), address(5)=>col(5), address(4)=>col(4), address(3)=>col(3), 
      address(2)=>col(2), address(1)=>col(1), address(0)=>col(0), clock=>
      i_clock, data(7)=>i_pixel(7), data(6)=>i_pixel(6), data(5)=>i_pixel(5), 
      data(4)=>i_pixel(4), data(3)=>i_pixel(3), data(2)=>i_pixel(2), data(1)
      =>i_pixel(1), data(0)=>i_pixel(0), wren=>we(1), q(7)=>tempStorage_1(7), 
      q(6)=>tempStorage_1(6), q(5)=>tempStorage_1(5), q(4)=>tempStorage_1(4), 
      q(3)=>tempStorage_1(3), q(2)=>tempStorage_1(2), q(1)=>tempStorage_1(1), 
      q(0)=>tempStorage_1(0));
   Generate_mem_2_u_mem0 : mem_8_8 port map ( address(7)=>col(7), address(6)
      =>col(6), address(5)=>col(5), address(4)=>col(4), address(3)=>col(3), 
      address(2)=>col(2), address(1)=>col(1), address(0)=>col(0), clock=>
      i_clock, data(7)=>i_pixel(7), data(6)=>i_pixel(6), data(5)=>i_pixel(5), 
      data(4)=>i_pixel(4), data(3)=>i_pixel(3), data(2)=>i_pixel(2), data(1)
      =>i_pixel(1), data(0)=>i_pixel(0), wren=>we(2), q(7)=>tempStorage_2(7), 
      q(6)=>tempStorage_2(6), q(5)=>tempStorage_2(5), q(4)=>tempStorage_2(4), 
      q(3)=>tempStorage_2(3), q(2)=>tempStorage_2(2), q(1)=>tempStorage_2(1), 
      q(0)=>tempStorage_2(0));
   mem0_mux_0Bus14_0 : mux_3u_3u port map ( a(2)=>tempStorage_2(0), a(1)=>
      tempStorage_1(0), a(0)=>tempStorage_0(0), b(2)=>GND, b(1)=>state(1), 
      b(0)=>state(0), d=>mem0(0));
   mem0_mux_0Bus14_1 : mux_3u_3u port map ( a(2)=>tempStorage_2(1), a(1)=>
      tempStorage_1(1), a(0)=>tempStorage_0(1), b(2)=>GND, b(1)=>state(1), 
      b(0)=>state(0), d=>mem0(1));
   mem0_mux_0Bus14_2 : mux_3u_3u port map ( a(2)=>tempStorage_2(2), a(1)=>
      tempStorage_1(2), a(0)=>tempStorage_0(2), b(2)=>GND, b(1)=>state(1), 
      b(0)=>state(0), d=>mem0(2));
   mem0_mux_0Bus14_3 : mux_3u_3u port map ( a(2)=>tempStorage_2(3), a(1)=>
      tempStorage_1(3), a(0)=>tempStorage_0(3), b(2)=>GND, b(1)=>state(1), 
      b(0)=>state(0), d=>mem0(3));
   mem0_mux_0Bus14_4 : mux_3u_3u port map ( a(2)=>tempStorage_2(4), a(1)=>
      tempStorage_1(4), a(0)=>tempStorage_0(4), b(2)=>GND, b(1)=>state(1), 
      b(0)=>state(0), d=>mem0(4));
   mem0_mux_0Bus14_5 : mux_3u_3u port map ( a(2)=>tempStorage_2(5), a(1)=>
      tempStorage_1(5), a(0)=>tempStorage_0(5), b(2)=>GND, b(1)=>state(1), 
      b(0)=>state(0), d=>mem0(5));
   mem0_mux_0Bus14_6 : mux_3u_3u port map ( a(2)=>tempStorage_2(6), a(1)=>
      tempStorage_1(6), a(0)=>tempStorage_0(6), b(2)=>GND, b(1)=>state(1), 
      b(0)=>state(0), d=>mem0(6));
   mem0_mux_0Bus14_7 : mux_3u_3u port map ( a(2)=>tempStorage_2(7), a(1)=>
      tempStorage_1(7), a(0)=>tempStorage_0(7), b(2)=>GND, b(1)=>state(1), 
      b(0)=>state(0), d=>mem0(7));
   mem1_mux_8Bus15_0 : mux_3u_3u port map ( a(2)=>tempStorage_2(0), a(1)=>
      tempStorage_1(0), a(0)=>tempStorage_0(0), b(2)=>GND, b(1)=>state(0), 
      b(0)=>state(2), d=>mem1(0));
   mem1_mux_8Bus15_1 : mux_3u_3u port map ( a(2)=>tempStorage_2(1), a(1)=>
      tempStorage_1(1), a(0)=>tempStorage_0(1), b(2)=>GND, b(1)=>state(0), 
      b(0)=>state(2), d=>mem1(1));
   mem1_mux_8Bus15_2 : mux_3u_3u port map ( a(2)=>tempStorage_2(2), a(1)=>
      tempStorage_1(2), a(0)=>tempStorage_0(2), b(2)=>GND, b(1)=>state(0), 
      b(0)=>state(2), d=>mem1(2));
   mem1_mux_8Bus15_3 : mux_3u_3u port map ( a(2)=>tempStorage_2(3), a(1)=>
      tempStorage_1(3), a(0)=>tempStorage_0(3), b(2)=>GND, b(1)=>state(0), 
      b(0)=>state(2), d=>mem1(3));
   mem1_mux_8Bus15_4 : mux_3u_3u port map ( a(2)=>tempStorage_2(4), a(1)=>
      tempStorage_1(4), a(0)=>tempStorage_0(4), b(2)=>GND, b(1)=>state(0), 
      b(0)=>state(2), d=>mem1(4));
   mem1_mux_8Bus15_5 : mux_3u_3u port map ( a(2)=>tempStorage_2(5), a(1)=>
      tempStorage_1(5), a(0)=>tempStorage_0(5), b(2)=>GND, b(1)=>state(0), 
      b(0)=>state(2), d=>mem1(5));
   mem1_mux_8Bus15_6 : mux_3u_3u port map ( a(2)=>tempStorage_2(6), a(1)=>
      tempStorage_1(6), a(0)=>tempStorage_0(6), b(2)=>GND, b(1)=>state(0), 
      b(0)=>state(2), d=>mem1(6));
   mem1_mux_8Bus15_7 : mux_3u_3u port map ( a(2)=>tempStorage_2(7), a(1)=>
      tempStorage_1(7), a(0)=>tempStorage_0(7), b(2)=>GND, b(1)=>state(0), 
      b(0)=>state(2), d=>mem1(7));
   we(0) <= state(0) AND i_valid ;
   we(1) <= state(1) AND i_valid ;
   we(2) <= state(2) AND i_valid ;
   rtlc2n58 <= rtlc2n163 AND rtlc2n251 ;
   rtlc2_52_or_16 : or_8u_8u port map ( a(7)=>o_row_EXMPLR324(0), a(6)=>
      o_row_EXMPLR324(1), a(5)=>o_row_EXMPLR324(2), a(4)=>o_row_EXMPLR324(3), 
      a(3)=>o_row_EXMPLR324(4), a(2)=>o_row_EXMPLR324(5), a(1)=>
      o_row_EXMPLR324(6), a(0)=>o_row_EXMPLR324(7), d=>rtlc2n163);
   rtlc2_78_or_17 : or_8u_8u port map ( a(7)=>col(0), a(6)=>col(1), a(5)=>
      col(2), a(4)=>col(3), a(3)=>col(4), a(2)=>col(5), a(1)=>col(6), a(0)=>
      col(7), d=>rtlc2n251);
   rtlc5n65 <= rtlc5n171 AND rtlc5n259 ;
   rtlc5n66 <= i_valid AND rtlc5n65 ;
   rtlc5_68_or_18 : or_7u_7u port map ( a(6)=>o_row_EXMPLR324(1), a(5)=>
      o_row_EXMPLR324(2), a(4)=>o_row_EXMPLR324(3), a(3)=>o_row_EXMPLR324(4), 
      a(2)=>o_row_EXMPLR324(5), a(1)=>o_row_EXMPLR324(6), a(0)=>
      o_row_EXMPLR324(7), d=>rtlc5n171);
   rtlc5_94_or_19 : or_7u_7u port map ( a(6)=>col(1), a(5)=>col(2), a(4)=>
      col(3), a(3)=>col(4), a(2)=>col(5), a(1)=>col(6), a(0)=>col(7), d=>
      rtlc5n259);
   rtlc6_298_gt_20 : gt_8u_8u port map ( a(7)=>h(7), a(6)=>h(6), a(5)=>h(5), 
      a(4)=>h(4), a(3)=>h(3), a(2)=>h(2), a(1)=>h(1), a(0)=>h(0), b(7)=>e(7), 
      b(6)=>e(6), b(5)=>e(5), b(4)=>e(4), b(3)=>e(3), b(2)=>e(2), b(1)=>e(1), 
      b(0)=>e(0), d=>not_rtlc6n327);
   rtlc6_308_gt_21 : gt_8u_8u port map ( a(7)=>f(7), a(6)=>f(6), a(5)=>f(5), 
      a(4)=>f(4), a(3)=>f(3), a(2)=>f(2), a(1)=>f(1), a(0)=>f(0), b(7)=>c(7), 
      b(6)=>c(6), b(5)=>c(5), b(4)=>c(4), b(3)=>c(3), b(2)=>c(2), b(1)=>c(1), 
      b(0)=>c(0), d=>not_rtlc6n325);
   rtlc6_318_gt_22 : gt_8u_8u port map ( a(7)=>b(7), a(6)=>b(6), a(5)=>b(5), 
      a(4)=>b(4), a(3)=>b(3), a(2)=>b(2), a(1)=>b(1), a(0)=>b(0), b(7)=>g(7), 
      b(6)=>g(6), b(5)=>g(5), b(4)=>g(4), b(3)=>g(3), b(2)=>g(2), b(1)=>g(1), 
      b(0)=>g(0), d=>not_rtlc6n323);
   rtlc6n323 <= NOT not_rtlc6n323 ;
   not_validBit_0 <= NOT validBit(0) ;
   rtlc6_329_gt_23 : gt_8u_8u port map ( a(7)=>d(7), a(6)=>d(6), a(5)=>d(5), 
      a(4)=>d(4), a(3)=>d(3), a(2)=>d(2), a(1)=>d(1), a(0)=>d(0), b(7)=>a(7), 
      b(6)=>a(6), b(5)=>a(5), b(4)=>a(4), b(3)=>a(3), b(2)=>a(2), b(1)=>a(1), 
      b(0)=>a(0), d=>not_rtlc6n321);
   rtlc6_436_and_24 : and_3u_3u port map ( a(2)=>not_validBit_0, a(1)=>
      not_validBit_1, a(0)=>validBit(2), d=>rtlc6n493);
   rtlc6n495 <= not_validBit_0 AND validBit(1) ;
   r2_select_6i8Bus56_7 : select_4_4 port map ( a(3)=>rtlc6n493, a(2)=>
      validBit(0), a(1)=>rtlc6n495, a(0)=>not_rtlcn248, b(3)=>d(7), b(2)=>
      b(7), b(1)=>h(7), b(0)=>f(7), d=>r2_6n3s1f1(7));
   r2_select_6i8Bus56_6 : select_4_4 port map ( a(3)=>rtlc6n493, a(2)=>
      validBit(0), a(1)=>rtlc6n495, a(0)=>not_rtlcn248, b(3)=>d(6), b(2)=>
      b(6), b(1)=>h(6), b(0)=>f(6), d=>r2_6n3s1f1(6));
   r2_select_6i8Bus56_5 : select_4_4 port map ( a(3)=>rtlc6n493, a(2)=>
      validBit(0), a(1)=>rtlc6n495, a(0)=>not_rtlcn248, b(3)=>d(5), b(2)=>
      b(5), b(1)=>h(5), b(0)=>f(5), d=>r2_6n3s1f1(5));
   r2_select_6i8Bus56_4 : select_4_4 port map ( a(3)=>rtlc6n493, a(2)=>
      validBit(0), a(1)=>rtlc6n495, a(0)=>not_rtlcn248, b(3)=>d(4), b(2)=>
      b(4), b(1)=>h(4), b(0)=>f(4), d=>r2_6n3s1f1(4));
   r2_select_6i8Bus56_3 : select_4_4 port map ( a(3)=>rtlc6n493, a(2)=>
      validBit(0), a(1)=>rtlc6n495, a(0)=>not_rtlcn248, b(3)=>d(3), b(2)=>
      b(3), b(1)=>h(3), b(0)=>f(3), d=>r2_6n3s1f1(3));
   r2_select_6i8Bus56_2 : select_4_4 port map ( a(3)=>rtlc6n493, a(2)=>
      validBit(0), a(1)=>rtlc6n495, a(0)=>not_rtlcn248, b(3)=>d(2), b(2)=>
      b(2), b(1)=>h(2), b(0)=>f(2), d=>r2_6n3s1f1(2));
   r2_select_6i8Bus56_1 : select_4_4 port map ( a(3)=>rtlc6n493, a(2)=>
      validBit(0), a(1)=>rtlc6n495, a(0)=>not_rtlcn248, b(3)=>d(1), b(2)=>
      b(1), b(1)=>h(1), b(0)=>f(1), d=>r2_6n3s1f1(1));
   r2_select_6i8Bus56_0 : select_4_4 port map ( a(3)=>rtlc6n493, a(2)=>
      validBit(0), a(1)=>rtlc6n495, a(0)=>not_rtlcn248, b(3)=>d(0), b(2)=>
      b(0), b(1)=>h(0), b(0)=>f(0), d=>r2_6n3s1f1(0));
   r2_select_6i16Bus57_7 : select_4_4 port map ( a(3)=>not_rtlcn248, a(2)=>
      rtlc6n495, a(1)=>validBit(0), a(0)=>rtlc6n493, b(3)=>g(7), b(2)=>a(7), 
      b(1)=>c(7), b(0)=>e(7), d=>r2_6n3s1f2(7));
   r2_select_6i16Bus57_6 : select_4_4 port map ( a(3)=>not_rtlcn248, a(2)=>
      rtlc6n495, a(1)=>validBit(0), a(0)=>rtlc6n493, b(3)=>g(6), b(2)=>a(6), 
      b(1)=>c(6), b(0)=>e(6), d=>r2_6n3s1f2(6));
   r2_select_6i16Bus57_5 : select_4_4 port map ( a(3)=>not_rtlcn248, a(2)=>
      rtlc6n495, a(1)=>validBit(0), a(0)=>rtlc6n493, b(3)=>g(5), b(2)=>a(5), 
      b(1)=>c(5), b(0)=>e(5), d=>r2_6n3s1f2(5));
   r2_select_6i16Bus57_4 : select_4_4 port map ( a(3)=>not_rtlcn248, a(2)=>
      rtlc6n495, a(1)=>validBit(0), a(0)=>rtlc6n493, b(3)=>g(4), b(2)=>a(4), 
      b(1)=>c(4), b(0)=>e(4), d=>r2_6n3s1f2(4));
   r2_select_6i16Bus57_3 : select_4_4 port map ( a(3)=>not_rtlcn248, a(2)=>
      rtlc6n495, a(1)=>validBit(0), a(0)=>rtlc6n493, b(3)=>g(3), b(2)=>a(3), 
      b(1)=>c(3), b(0)=>e(3), d=>r2_6n3s1f2(3));
   r2_select_6i16Bus57_2 : select_4_4 port map ( a(3)=>not_rtlcn248, a(2)=>
      rtlc6n495, a(1)=>validBit(0), a(0)=>rtlc6n493, b(3)=>g(2), b(2)=>a(2), 
      b(1)=>c(2), b(0)=>e(2), d=>r2_6n3s1f2(2));
   r2_select_6i16Bus57_1 : select_4_4 port map ( a(3)=>not_rtlcn248, a(2)=>
      rtlc6n495, a(1)=>validBit(0), a(0)=>rtlc6n493, b(3)=>g(1), b(2)=>a(1), 
      b(1)=>c(1), b(0)=>e(1), d=>r2_6n3s1f2(1));
   r2_select_6i16Bus57_0 : select_4_4 port map ( a(3)=>not_rtlcn248, a(2)=>
      rtlc6n495, a(1)=>validBit(0), a(0)=>rtlc6n493, b(3)=>g(0), b(2)=>a(0), 
      b(1)=>c(0), b(0)=>e(0), d=>r2_6n3s1f2(0));
   rtlc9_178_gt_41 : gt_10u_10u port map ( a(9)=>x_r11(9), a(8)=>x_r11(8), 
      a(7)=>x_r11(7), a(6)=>x_r11(6), a(5)=>x_r11(5), a(4)=>x_r11(4), a(3)=>
      x_r11(3), a(2)=>x_r11(2), a(1)=>x_r11(1), a(0)=>x_r11(0), b(9)=>r15(9), 
      b(8)=>r15(8), b(7)=>r15(7), b(6)=>r15(6), b(5)=>r15(5), b(4)=>r15(4), 
      b(3)=>r15(3), b(2)=>r15(2), b(1)=>r15(1), b(0)=>r15(0), d=>nx83);
   rtlc9_188_gt_42 : gt_10u_10u port map ( a(9)=>r16(9), a(8)=>r16(8), a(7)
      =>r16(7), a(6)=>r16(6), a(5)=>r16(5), a(4)=>r16(4), a(3)=>r16(3), a(2)
      =>r16(2), a(1)=>r16(1), a(0)=>r16(0), b(9)=>r11(9), b(8)=>r11(8), b(7)
      =>r11(7), b(6)=>r11(6), b(5)=>r11(5), b(4)=>r11(4), b(3)=>r11(3), b(2)
      =>r11(2), b(1)=>r11(1), b(0)=>r11(0), d=>not_rtlc9n130);
   rtlc9_199_gt_43 : gt_10u_10u port map ( a(9)=>b_d1(9), a(8)=>b_d1(8), 
      a(7)=>b_d1(7), a(6)=>b_d1(6), a(5)=>b_d1(5), a(4)=>b_d1(4), a(3)=>
      b_d1(3), a(2)=>b_d1(2), a(1)=>b_d1(1), a(0)=>b_d1(0), b(9)=>x_r3(9), 
      b(8)=>x_r3(8), b(7)=>x_r3(7), b(6)=>x_r3(6), b(5)=>x_r3(5), b(4)=>
      x_r3(4), b(3)=>x_r3(3), b(2)=>x_r3(2), b(1)=>x_r3(1), b(0)=>x_r3(0), d
      =>not_rtlc9n128);
   rtlc9n128 <= NOT not_rtlc9n128 ;
   o_edge_EXMPLR259 <= o_valid_EXMPLR258 AND rtlcn0 ;
   rtlc11n129 <= r17_8 AND r17_7 ;
   x_r3_7n3s1f1(7) <= r5(7) when validBit(2) = '1' else x_r5(7) ;
   x_r3_7n3s1f1(6) <= r5(6) when validBit(2) = '1' else x_r5(6) ;
   x_r3_7n3s1f1(5) <= r5(5) when validBit(2) = '1' else x_r5(5) ;
   x_r3_7n3s1f1(4) <= r5(4) when validBit(2) = '1' else x_r5(4) ;
   x_r3_7n3s1f1(3) <= r5(3) when validBit(2) = '1' else x_r5(3) ;
   x_r3_7n3s1f1(2) <= r5(2) when validBit(2) = '1' else x_r5(2) ;
   x_r3_7n3s1f1(1) <= r5(1) when validBit(2) = '1' else x_r5(1) ;
   x_r3_7n3s1f1(0) <= r5(0) when validBit(2) = '1' else x_r5(0) ;
   not_i_reset <= NOT i_reset ;
   rtlc4n274 <= not_i_reset AND i_valid ;
   not_i_valid <= NOT i_valid ;
   rtlcn230 <= validBit(1) OR validBit(2) ;
   not_rtlcn230 <= NOT rtlcn230 ;
   rtlc_352_and_47 : and_3u_3u port map ( a(2)=>not_validBit_0, a(1)=>
      validBit(3), a(0)=>not_rtlcn230, d=>rtlc6n398);
   not_validBit_1 <= NOT validBit(1) ;
   rtlc6n356 <= not_validBit_0 AND rtlcn230 ;
   not_validBit_3 <= NOT validBit(3) ;
   rtlc_360_and_48 : and_3u_3u port map ( a(2)=>not_validBit_3, a(1)=>
      validBit(4), a(0)=>not_rtlcn230, d=>rtlc7n224);
   rtlc7n214 <= validBit(3) AND not_rtlcn230 ;
   rtlc7n204 <= not_validBit_1 AND validBit(2) ;
   not_validBit_2 <= NOT validBit(2) ;
   not_validBit_4 <= NOT validBit(4) ;
   rtlc_365_and_49 : and_4u_4u port map ( a(3)=>not_validBit_2, a(2)=>
      not_validBit_3, a(1)=>not_validBit_4, a(0)=>validBit(5), d=>rtlc8n247
   );
   rtlc_366_and_50 : and_3u_3u port map ( a(2)=>not_validBit_2, a(1)=>
      not_validBit_3, a(0)=>validBit(4), d=>rtlc8n234);
   rtlc8n222 <= not_validBit_2 AND validBit(3) ;
   not_validBit_5 <= NOT validBit(5) ;
   rtlc_369_and_51 : and_3u_3u port map ( a(2)=>not_validBit_3, a(1)=>
      not_validBit_5, a(0)=>validBit(6), d=>rtlc9n171);
   rtlc9n158 <= not_validBit_3 AND validBit(5) ;
   rtlc3n52 <= i_reset OR vBit(1) ;
   not_col_7 <= NOT col(7) ;
   not_col_6 <= NOT col(6) ;
   not_col_5 <= NOT col(5) ;
   not_col_4 <= NOT col(4) ;
   not_col_3 <= NOT col(3) ;
   not_col_2 <= NOT col(2) ;
   not_col_1 <= NOT col(1) ;
   not_col_0 <= NOT col(0) ;
   rtlc_382_or_53 : or_3u_3u port map ( a(2)=>validBit(0), a(1)=>validBit(1), 
      a(0)=>validBit(2), d=>rtlcn248);
   not_rtlcn248 <= NOT rtlcn248 ;
   first_cw_9n1ss1_0 <= stage1_wNw_0 AND rtlc9n128 ;
   second_cw_9n2ss1_0 <= stage1_eSe_2 OR not_rtlc9n130 ;
   o_dir(0) <= final_dir(0) AND o_edge_EXMPLR259 ;
   o_dir(1) <= final_dir(1) AND o_edge_EXMPLR259 ;
   o_dir(2) <= final_dir(2) AND o_edge_EXMPLR259 ;
   modgen_counter_col : counter_up_sclear_clock_clk_en_0_8 port map ( clock
      =>i_clock, q(7)=>col(7), q(6)=>col(6), q(5)=>col(5), q(4)=>col(4), 
      q(3)=>col(3), q(2)=>col(2), q(1)=>col(1), q(0)=>col(0), clk_en=>
      rtlc3n52, aclear=>GND, sload=>GND, data(7)=>DANGLING(0), data(6)=>
      DANGLING(1), data(5)=>DANGLING(2), data(4)=>DANGLING(3), data(3)=>
      DANGLING(4), data(2)=>DANGLING(5), data(1)=>DANGLING(6), data(0)=>
      DANGLING(7), aset=>GND, sclear=>i_reset, updn=>PWR, cnt_en=>PWR);
   modgen_counter_o_row : counter_up_cnt_en_sclear_clock_0_8 port map ( 
      clock=>i_clock, q(7)=>o_row_EXMPLR324(7), q(6)=>o_row_EXMPLR324(6), 
      q(5)=>o_row_EXMPLR324(5), q(4)=>o_row_EXMPLR324(4), q(3)=>
      o_row_EXMPLR324(3), q(2)=>o_row_EXMPLR324(2), q(1)=>o_row_EXMPLR324(1), 
      q(0)=>o_row_EXMPLR324(0), clk_en=>PWR, aclear=>GND, sload=>GND, 
      data(7)=>DANGLING(8), data(6)=>DANGLING(9), data(5)=>DANGLING(10), 
      data(4)=>DANGLING(11), data(3)=>DANGLING(12), data(2)=>DANGLING(13), 
      data(1)=>DANGLING(14), data(0)=>DANGLING(15), aset=>GND, sclear=>
      i_reset, updn=>PWR, cnt_en=>rtlc4n202);
   r2_add8_6i49 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>r2_6n3s1f1(7), 
      a(6)=>r2_6n3s1f1(6), a(5)=>r2_6n3s1f1(5), a(4)=>r2_6n3s1f1(4), a(3)=>
      r2_6n3s1f1(3), a(2)=>r2_6n3s1f1(2), a(1)=>r2_6n3s1f1(1), a(0)=>
      r2_6n3s1f1(0), b(7)=>r2_6n3s1f2(7), b(6)=>r2_6n3s1f2(6), b(5)=>
      r2_6n3s1f2(5), b(4)=>r2_6n3s1f2(4), b(3)=>r2_6n3s1f2(3), b(2)=>
      r2_6n3s1f2(2), b(1)=>r2_6n3s1f2(1), b(0)=>r2_6n3s1f2(0), d(7)=>
      r2_6n3s1(7), d(6)=>r2_6n3s1(6), d(5)=>r2_6n3s1(5), d(4)=>r2_6n3s1(4), 
      d(3)=>r2_6n3s1(3), d(2)=>r2_6n3s1(2), d(1)=>r2_6n3s1(1), d(0)=>
      r2_6n3s1(0), cout=>r2_6n3s1(8));
   x_r3_add9_7i9 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>r2(8), a(7)=>
      r2(7), a(6)=>r2(6), a(5)=>r2(5), a(4)=>r2(4), a(3)=>r2(3), a(2)=>r2(2), 
      a(1)=>r2(1), a(0)=>r2(0), b(8)=>GND, b(7)=>x_r3_7n3s1f1(7), b(6)=>
      x_r3_7n3s1f1(6), b(5)=>x_r3_7n3s1f1(5), b(4)=>x_r3_7n3s1f1(4), b(3)=>
      x_r3_7n3s1f1(3), b(2)=>x_r3_7n3s1f1(2), b(1)=>x_r3_7n3s1f1(1), b(0)=>
      x_r3_7n3s1f1(0), d(8)=>x_r3_7n3s1(8), d(7)=>x_r3_7n3s1(7), d(6)=>
      x_r3_7n3s1(6), d(5)=>x_r3_7n3s1(5), d(4)=>x_r3_7n3s1(4), d(3)=>
      x_r3_7n3s1(3), d(2)=>x_r3_7n3s1(2), d(1)=>x_r3_7n3s1(1), d(0)=>
      x_r3_7n3s1(0), cout=>x_r3_7n3s1(9));
   b_d1_add9_7i10 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>r9(8), a(7)
      =>r9(7), a(6)=>r9(6), a(5)=>r9(5), a(4)=>r9(4), a(3)=>r9(3), a(2)=>
      r9(2), a(1)=>r9(1), a(0)=>r9(0), b(8)=>GND, b(7)=>r10(7), b(6)=>r10(6), 
      b(5)=>r10(5), b(4)=>r10(4), b(3)=>r10(3), b(2)=>r10(2), b(1)=>r10(1), 
      b(0)=>r10(0), d(8)=>b_d1_7n4s1(8), d(7)=>b_d1_7n4s1(7), d(6)=>
      b_d1_7n4s1(6), d(5)=>b_d1_7n4s1(5), d(4)=>b_d1_7n4s1(4), d(3)=>
      b_d1_7n4s1(3), d(2)=>b_d1_7n4s1(2), d(1)=>b_d1_7n4s1(1), d(0)=>
      b_d1_7n4s1(0), cout=>b_d1_7n4s1(9));
   r16_add9_7i11 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>GND, a(7)=>
      r12(7), a(6)=>r12(6), a(5)=>r12(5), a(4)=>r12(4), a(3)=>r12(3), a(2)=>
      r12(2), a(1)=>r12(1), a(0)=>r12(0), b(8)=>r13(8), b(7)=>r13(7), b(6)=>
      r13(6), b(5)=>r13(5), b(4)=>r13(4), b(3)=>r13(3), b(2)=>r13(2), b(1)=>
      r13(1), b(0)=>r13(0), d(8)=>r16_7n1s1(8), d(7)=>r16_7n1s1(7), d(6)=>
      r16_7n1s1(6), d(5)=>r16_7n1s1(5), d(4)=>r16_7n1s1(4), d(3)=>
      r16_7n1s1(3), d(2)=>r16_7n1s1(2), d(1)=>r16_7n1s1(1), d(0)=>
      r16_7n1s1(0), cout=>r16_7n1s1(9));
   x_r6_add9_8i1 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>r9(8), a(7)=>
      r9(7), a(6)=>r9(6), a(5)=>r9(5), a(4)=>r9(4), a(3)=>r9(3), a(2)=>r9(2), 
      a(1)=>r9(1), a(0)=>r9(0), b(8)=>r2(8), b(7)=>r2(7), b(6)=>r2(6), b(5)
      =>r2(5), b(4)=>r2(4), b(3)=>r2(3), b(2)=>r2(2), b(1)=>r2(1), b(0)=>
      r2(0), d(8)=>x_r6_8n4s1(8), d(7)=>x_r6_8n4s1(7), d(6)=>x_r6_8n4s1(6), 
      d(5)=>x_r6_8n4s1(5), d(4)=>x_r6_8n4s1(4), d(3)=>x_r6_8n4s1(3), d(2)=>
      x_r6_8n4s1(2), d(1)=>x_r6_8n4s1(1), d(0)=>x_r6_8n4s1(0), cout=>
      x_r6_8n4s1(9));
   r14_add10_8i2 : add_10u_10u_10u_0_0 port map ( cin=>GND, a(9)=>GND, a(8)
      =>r2(8), a(7)=>r2(7), a(6)=>r2(6), a(5)=>r2(5), a(4)=>r2(4), a(3)=>
      r2(3), a(2)=>r2(2), a(1)=>r2(1), a(0)=>r2(0), b(9)=>x_r6(9), b(8)=>
      x_r6(8), b(7)=>x_r6(7), b(6)=>x_r6(6), b(5)=>x_r6(5), b(4)=>x_r6(4), 
      b(3)=>x_r6(3), b(2)=>x_r6(2), b(1)=>x_r6(1), b(0)=>x_r6(0), d(9)=>
      r14_8n3s1(9), d(8)=>r14_8n3s1(8), d(7)=>r14_8n3s1(7), d(6)=>
      r14_8n3s1(6), d(5)=>r14_8n3s1(5), d(4)=>r14_8n3s1(4), d(3)=>
      r14_8n3s1(3), d(2)=>r14_8n3s1(2), d(1)=>r14_8n3s1(1), d(0)=>
      r14_8n3s1(0), cout=>r14_8n3s1(10));
   x_r12_add11_8i3 : add_11u_11u_11u_0_0 port map ( cin=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>r13(8), a(7)=>r13(7), a(6)=>r13(6), a(5)=>r13(5), 
      a(4)=>r13(4), a(3)=>r13(3), a(2)=>r13(2), a(1)=>r13(1), a(0)=>r13(0), 
      b(10)=>r14(10), b(9)=>r14(9), b(8)=>r14(8), b(7)=>r14(7), b(6)=>r14(6), 
      b(5)=>r14(5), b(4)=>r14(4), b(3)=>r14(3), b(2)=>r14(2), b(1)=>r14(1), 
      b(0)=>r14(0), d(10)=>x_r12_8n2s1(10), d(9)=>x_r12_8n2s1(9), d(8)=>
      x_r12_8n2s1(8), d(7)=>x_r12_8n2s1(7), d(6)=>x_r12_8n2s1(6), d(5)=>
      x_r12_8n2s1(5), d(4)=>x_r12_8n2s1(4), d(3)=>x_r12_8n2s1(3), d(2)=>
      x_r12_8n2s1(2), d(1)=>x_r12_8n2s1(1), d(0)=>x_r12_8n2s1(0), cout=>
      x_r12_8n2s1(11));
   x_r22_add12_8i4 : add_12u_12u_12u_0_0 port map ( cin=>GND, a(11)=>GND, 
      a(10)=>x_r12(11), a(9)=>x_r12(10), a(8)=>x_r12(9), a(7)=>x_r12(8), 
      a(6)=>x_r12(7), a(5)=>x_r12(6), a(4)=>x_r12(5), a(3)=>x_r12(4), a(2)=>
      x_r12(3), a(1)=>x_r12(2), a(0)=>x_r12(1), b(11)=>x_r12(11), b(10)=>
      x_r12(10), b(9)=>x_r12(9), b(8)=>x_r12(8), b(7)=>x_r12(7), b(6)=>
      x_r12(6), b(5)=>x_r12(5), b(4)=>x_r12(4), b(3)=>x_r12(3), b(2)=>
      x_r12(2), b(1)=>x_r12(1), b(0)=>x_r12(0), d(11)=>x_r22_8n1s1(12), 
      d(10)=>x_r22_8n1s1(11), d(9)=>x_r22_8n1s1(10), d(8)=>x_r22_8n1s1(9), 
      d(7)=>x_r22_8n1s1(8), d(6)=>x_r22_8n1s1(7), d(5)=>x_r22_8n1s1(6), d(4)
      =>x_r22_8n1s1(5), d(3)=>x_r22_8n1s1(4), d(2)=>x_r22_8n1s1(3), d(1)=>
      x_r22_8n1s1(2), d(0)=>x_r22_8n1s1(1), cout=>DANGLING(16));
   rtlcn1495 <= state(2) OR i_reset ;
   rtlcn1496 <= rtlc4n202 OR i_reset ;
   rtlcn1498 <= state(1) when rtlc4n202 = '1' else state(2) ;
   rtlcn1499 <= state(0) when rtlc4n202 = '1' else state(1) ;
   rtlcn1500 <= rtlcn1495 when rtlcn1496 = '1' else state(0) ;
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
   debug_led_red(17) <= GND when GND = '1' else 'Z' ;
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
   DFFPC (vBit(1),GND,GND,i_clock,vBit(2)) ;
   DFFPC (i_valid,GND,GND,i_clock,vBit(1)) ;
   DFFRSE (PWR,GND,i_reset,PWR,i_clock,o_mode(1)) ;
   DFFRSE (rtlc2n58,i_reset,GND,PWR,i_clock,o_mode(0)) ;
   DFFPCE (i_pixel(7),GND,GND,rtlc4n274,i_clock,e(7)) ;
   DFFPCE (i_pixel(6),GND,GND,rtlc4n274,i_clock,e(6)) ;
   DFFPCE (i_pixel(5),GND,GND,rtlc4n274,i_clock,e(5)) ;
   DFFPCE (i_pixel(4),GND,GND,rtlc4n274,i_clock,e(4)) ;
   DFFPCE (i_pixel(3),GND,GND,rtlc4n274,i_clock,e(3)) ;
   DFFPCE (i_pixel(2),GND,GND,rtlc4n274,i_clock,e(2)) ;
   DFFPCE (i_pixel(1),GND,GND,rtlc4n274,i_clock,e(1)) ;
   DFFPCE (i_pixel(0),GND,GND,rtlc4n274,i_clock,e(0)) ;
   DFFPCE (mem1(7),GND,GND,rtlc4n274,i_clock,d(7)) ;
   DFFPCE (mem1(6),GND,GND,rtlc4n274,i_clock,d(6)) ;
   DFFPCE (mem1(5),GND,GND,rtlc4n274,i_clock,d(5)) ;
   DFFPCE (mem1(4),GND,GND,rtlc4n274,i_clock,d(4)) ;
   DFFPCE (mem1(3),GND,GND,rtlc4n274,i_clock,d(3)) ;
   DFFPCE (mem1(2),GND,GND,rtlc4n274,i_clock,d(2)) ;
   DFFPCE (mem1(1),GND,GND,rtlc4n274,i_clock,d(1)) ;
   DFFPCE (mem1(0),GND,GND,rtlc4n274,i_clock,d(0)) ;
   DFFPCE (mem0(7),GND,GND,rtlc4n274,i_clock,c(7)) ;
   DFFPCE (mem0(6),GND,GND,rtlc4n274,i_clock,c(6)) ;
   DFFPCE (mem0(5),GND,GND,rtlc4n274,i_clock,c(5)) ;
   DFFPCE (mem0(4),GND,GND,rtlc4n274,i_clock,c(4)) ;
   DFFPCE (mem0(3),GND,GND,rtlc4n274,i_clock,c(3)) ;
   DFFPCE (mem0(2),GND,GND,rtlc4n274,i_clock,c(2)) ;
   DFFPCE (mem0(1),GND,GND,rtlc4n274,i_clock,c(1)) ;
   DFFPCE (mem0(0),GND,GND,rtlc4n274,i_clock,c(0)) ;
   DFFPCE (e(7),GND,GND,rtlc4n274,i_clock,f(7)) ;
   DFFPCE (e(6),GND,GND,rtlc4n274,i_clock,f(6)) ;
   DFFPCE (e(5),GND,GND,rtlc4n274,i_clock,f(5)) ;
   DFFPCE (e(4),GND,GND,rtlc4n274,i_clock,f(4)) ;
   DFFPCE (e(3),GND,GND,rtlc4n274,i_clock,f(3)) ;
   DFFPCE (e(2),GND,GND,rtlc4n274,i_clock,f(2)) ;
   DFFPCE (e(1),GND,GND,rtlc4n274,i_clock,f(1)) ;
   DFFPCE (e(0),GND,GND,rtlc4n274,i_clock,f(0)) ;
   DFFPCE (d(7),GND,GND,rtlc4n274,i_clock,i(7)) ;
   DFFPCE (d(6),GND,GND,rtlc4n274,i_clock,i(6)) ;
   DFFPCE (d(5),GND,GND,rtlc4n274,i_clock,i(5)) ;
   DFFPCE (d(4),GND,GND,rtlc4n274,i_clock,i(4)) ;
   DFFPCE (d(3),GND,GND,rtlc4n274,i_clock,i(3)) ;
   DFFPCE (d(2),GND,GND,rtlc4n274,i_clock,i(2)) ;
   DFFPCE (d(1),GND,GND,rtlc4n274,i_clock,i(1)) ;
   DFFPCE (d(0),GND,GND,rtlc4n274,i_clock,i(0)) ;
   DFFPCE (c(7),GND,GND,rtlc4n274,i_clock,b(7)) ;
   DFFPCE (c(6),GND,GND,rtlc4n274,i_clock,b(6)) ;
   DFFPCE (c(5),GND,GND,rtlc4n274,i_clock,b(5)) ;
   DFFPCE (c(4),GND,GND,rtlc4n274,i_clock,b(4)) ;
   DFFPCE (c(3),GND,GND,rtlc4n274,i_clock,b(3)) ;
   DFFPCE (c(2),GND,GND,rtlc4n274,i_clock,b(2)) ;
   DFFPCE (c(1),GND,GND,rtlc4n274,i_clock,b(1)) ;
   DFFPCE (c(0),GND,GND,rtlc4n274,i_clock,b(0)) ;
   DFFPCE (f(7),GND,GND,rtlc4n274,i_clock,g(7)) ;
   DFFPCE (f(6),GND,GND,rtlc4n274,i_clock,g(6)) ;
   DFFPCE (f(5),GND,GND,rtlc4n274,i_clock,g(5)) ;
   DFFPCE (f(4),GND,GND,rtlc4n274,i_clock,g(4)) ;
   DFFPCE (f(3),GND,GND,rtlc4n274,i_clock,g(3)) ;
   DFFPCE (f(2),GND,GND,rtlc4n274,i_clock,g(2)) ;
   DFFPCE (f(1),GND,GND,rtlc4n274,i_clock,g(1)) ;
   DFFPCE (f(0),GND,GND,rtlc4n274,i_clock,g(0)) ;
   DFFPCE (i(7),GND,GND,rtlc4n274,i_clock,h(7)) ;
   DFFPCE (i(6),GND,GND,rtlc4n274,i_clock,h(6)) ;
   DFFPCE (i(5),GND,GND,rtlc4n274,i_clock,h(5)) ;
   DFFPCE (i(4),GND,GND,rtlc4n274,i_clock,h(4)) ;
   DFFPCE (i(3),GND,GND,rtlc4n274,i_clock,h(3)) ;
   DFFPCE (i(2),GND,GND,rtlc4n274,i_clock,h(2)) ;
   DFFPCE (i(1),GND,GND,rtlc4n274,i_clock,h(1)) ;
   DFFPCE (i(0),GND,GND,rtlc4n274,i_clock,h(0)) ;
   DFFPCE (b(7),GND,GND,rtlc4n274,i_clock,a(7)) ;
   DFFPCE (b(6),GND,GND,rtlc4n274,i_clock,a(6)) ;
   DFFPCE (b(5),GND,GND,rtlc4n274,i_clock,a(5)) ;
   DFFPCE (b(4),GND,GND,rtlc4n274,i_clock,a(4)) ;
   DFFPCE (b(3),GND,GND,rtlc4n274,i_clock,a(3)) ;
   DFFPCE (b(2),GND,GND,rtlc4n274,i_clock,a(2)) ;
   DFFPCE (b(1),GND,GND,rtlc4n274,i_clock,a(1)) ;
   DFFPCE (b(0),GND,GND,rtlc4n274,i_clock,a(0)) ;
   DFFRSE (validBit(7),GND,i_reset,PWR,i_clock,o_valid_EXMPLR258) ;
   DFFRSE (validBit(6),GND,i_reset,PWR,i_clock,validBit(7)) ;
   DFFRSE (validBit(5),GND,i_reset,PWR,i_clock,validBit(6)) ;
   DFFRSE (validBit(4),GND,i_reset,PWR,i_clock,validBit(5)) ;
   DFFRSE (validBit(3),GND,i_reset,PWR,i_clock,validBit(4)) ;
   DFFRSE (validBit(2),GND,i_reset,PWR,i_clock,validBit(3)) ;
   DFFRSE (validBit(1),GND,i_reset,PWR,i_clock,validBit(2)) ;
   DFFRSE (validBit(0),GND,i_reset,PWR,i_clock,validBit(1)) ;
   DFFRSE (rtlc5n66,GND,i_reset,PWR,i_clock,validBit(0)) ;
   DFFPCE (not_rtlc6n327,GND,GND,rtlc6n398,i_clock,stage1_sSw_2) ;
   DFFPCE (r12_6n4ss1(7),GND,GND,rtlc6n398,i_clock,r12(7)) ;
   DFFPCE (r12_6n4ss1(6),GND,GND,rtlc6n398,i_clock,r12(6)) ;
   DFFPCE (r12_6n4ss1(5),GND,GND,rtlc6n398,i_clock,r12(5)) ;
   DFFPCE (r12_6n4ss1(4),GND,GND,rtlc6n398,i_clock,r12(4)) ;
   DFFPCE (r12_6n4ss1(3),GND,GND,rtlc6n398,i_clock,r12(3)) ;
   DFFPCE (r12_6n4ss1(2),GND,GND,rtlc6n398,i_clock,r12(2)) ;
   DFFPCE (r12_6n4ss1(1),GND,GND,rtlc6n398,i_clock,r12(1)) ;
   DFFPCE (r12_6n4ss1(0),GND,GND,rtlc6n398,i_clock,r12(0)) ;
   DFFPCE (r2_6n3s1(8),GND,GND,rtlc6n398,i_clock,r13(8)) ;
   DFFPCE (r2_6n3s1(7),GND,GND,rtlc6n398,i_clock,r13(7)) ;
   DFFPCE (r2_6n3s1(6),GND,GND,rtlc6n398,i_clock,r13(6)) ;
   DFFPCE (r2_6n3s1(5),GND,GND,rtlc6n398,i_clock,r13(5)) ;
   DFFPCE (r2_6n3s1(4),GND,GND,rtlc6n398,i_clock,r13(4)) ;
   DFFPCE (r2_6n3s1(3),GND,GND,rtlc6n398,i_clock,r13(3)) ;
   DFFPCE (r2_6n3s1(2),GND,GND,rtlc6n398,i_clock,r13(2)) ;
   DFFPCE (r2_6n3s1(1),GND,GND,rtlc6n398,i_clock,r13(1)) ;
   DFFPCE (r2_6n3s1(0),GND,GND,rtlc6n398,i_clock,r13(0)) ;
   DFFPCE (not_rtlc6n325,GND,GND,rtlc6n493,i_clock,stage1_eSe_2) ;
   DFFPCE (x_r5_6n3ss1(7),GND,GND,rtlc6n493,i_clock,x_r5(7)) ;
   DFFPCE (x_r5_6n3ss1(6),GND,GND,rtlc6n493,i_clock,x_r5(6)) ;
   DFFPCE (x_r5_6n3ss1(5),GND,GND,rtlc6n493,i_clock,x_r5(5)) ;
   DFFPCE (x_r5_6n3ss1(4),GND,GND,rtlc6n493,i_clock,x_r5(4)) ;
   DFFPCE (x_r5_6n3ss1(3),GND,GND,rtlc6n493,i_clock,x_r5(3)) ;
   DFFPCE (x_r5_6n3ss1(2),GND,GND,rtlc6n493,i_clock,x_r5(2)) ;
   DFFPCE (x_r5_6n3ss1(1),GND,GND,rtlc6n493,i_clock,x_r5(1)) ;
   DFFPCE (x_r5_6n3ss1(0),GND,GND,rtlc6n493,i_clock,x_r5(0)) ;
   DFFPCE (not_rtlc6n323,GND,GND,rtlc6n495,i_clock,stage1_wNw_2) ;
   DFFPCE (rtlc6n323,GND,GND,rtlc6n495,i_clock,stage1_wNw_0) ;
   DFFPCE (r5_6n2ss1(7),GND,GND,rtlc6n495,i_clock,r5(7)) ;
   DFFPCE (r5_6n2ss1(6),GND,GND,rtlc6n495,i_clock,r5(6)) ;
   DFFPCE (r5_6n2ss1(5),GND,GND,rtlc6n495,i_clock,r5(5)) ;
   DFFPCE (r5_6n2ss1(4),GND,GND,rtlc6n495,i_clock,r5(4)) ;
   DFFPCE (r5_6n2ss1(3),GND,GND,rtlc6n495,i_clock,r5(3)) ;
   DFFPCE (r5_6n2ss1(2),GND,GND,rtlc6n495,i_clock,r5(2)) ;
   DFFPCE (r5_6n2ss1(1),GND,GND,rtlc6n495,i_clock,r5(1)) ;
   DFFPCE (r5_6n2ss1(0),GND,GND,rtlc6n495,i_clock,r5(0)) ;
   DFFPCE (r2_6n3s1(8),GND,GND,rtlc6n356,i_clock,r2(8)) ;
   DFFPCE (r2_6n3s1(7),GND,GND,rtlc6n356,i_clock,r2(7)) ;
   DFFPCE (r2_6n3s1(6),GND,GND,rtlc6n356,i_clock,r2(6)) ;
   DFFPCE (r2_6n3s1(5),GND,GND,rtlc6n356,i_clock,r2(5)) ;
   DFFPCE (r2_6n3s1(4),GND,GND,rtlc6n356,i_clock,r2(4)) ;
   DFFPCE (r2_6n3s1(3),GND,GND,rtlc6n356,i_clock,r2(3)) ;
   DFFPCE (r2_6n3s1(2),GND,GND,rtlc6n356,i_clock,r2(2)) ;
   DFFPCE (r2_6n3s1(1),GND,GND,rtlc6n356,i_clock,r2(1)) ;
   DFFPCE (r2_6n3s1(0),GND,GND,rtlc6n356,i_clock,r2(0)) ;
   DFFPCE (r2_6n3s1(8),GND,GND,validBit(0),i_clock,r9(8)) ;
   DFFPCE (r2_6n3s1(7),GND,GND,validBit(0),i_clock,r9(7)) ;
   DFFPCE (r2_6n3s1(6),GND,GND,validBit(0),i_clock,r9(6)) ;
   DFFPCE (r2_6n3s1(5),GND,GND,validBit(0),i_clock,r9(5)) ;
   DFFPCE (r2_6n3s1(4),GND,GND,validBit(0),i_clock,r9(4)) ;
   DFFPCE (r2_6n3s1(3),GND,GND,validBit(0),i_clock,r9(3)) ;
   DFFPCE (r2_6n3s1(2),GND,GND,validBit(0),i_clock,r9(2)) ;
   DFFPCE (r2_6n3s1(1),GND,GND,validBit(0),i_clock,r9(1)) ;
   DFFPCE (r2_6n3s1(0),GND,GND,validBit(0),i_clock,r9(0)) ;
   DFFPCE (not_rtlc6n321,GND,GND,validBit(0),i_clock,stage1_nNe_2) ;
   DFFPCE (r10_6n1ss1(7),GND,GND,validBit(0),i_clock,r10(7)) ;
   DFFPCE (r10_6n1ss1(6),GND,GND,validBit(0),i_clock,r10(6)) ;
   DFFPCE (r10_6n1ss1(5),GND,GND,validBit(0),i_clock,r10(5)) ;
   DFFPCE (r10_6n1ss1(4),GND,GND,validBit(0),i_clock,r10(4)) ;
   DFFPCE (r10_6n1ss1(3),GND,GND,validBit(0),i_clock,r10(3)) ;
   DFFPCE (r10_6n1ss1(2),GND,GND,validBit(0),i_clock,r10(2)) ;
   DFFPCE (r10_6n1ss1(1),GND,GND,validBit(0),i_clock,r10(1)) ;
   DFFPCE (r10_6n1ss1(0),GND,GND,validBit(0),i_clock,r10(0)) ;
   DFFPCE (r16_7n1s1(9),GND,GND,rtlc7n224,i_clock,r16(9)) ;
   DFFPCE (r16_7n1s1(8),GND,GND,rtlc7n224,i_clock,r16(8)) ;
   DFFPCE (r16_7n1s1(7),GND,GND,rtlc7n224,i_clock,r16(7)) ;
   DFFPCE (r16_7n1s1(6),GND,GND,rtlc7n224,i_clock,r16(6)) ;
   DFFPCE (r16_7n1s1(5),GND,GND,rtlc7n224,i_clock,r16(5)) ;
   DFFPCE (r16_7n1s1(4),GND,GND,rtlc7n224,i_clock,r16(4)) ;
   DFFPCE (r16_7n1s1(3),GND,GND,rtlc7n224,i_clock,r16(3)) ;
   DFFPCE (r16_7n1s1(2),GND,GND,rtlc7n224,i_clock,r16(2)) ;
   DFFPCE (r16_7n1s1(1),GND,GND,rtlc7n224,i_clock,r16(1)) ;
   DFFPCE (r16_7n1s1(0),GND,GND,rtlc7n224,i_clock,r16(0)) ;
   DFFPCE (x_r3_7n3s1(9),GND,GND,rtlc7n214,i_clock,r11(9)) ;
   DFFPCE (x_r3_7n3s1(8),GND,GND,rtlc7n214,i_clock,r11(8)) ;
   DFFPCE (x_r3_7n3s1(7),GND,GND,rtlc7n214,i_clock,r11(7)) ;
   DFFPCE (x_r3_7n3s1(6),GND,GND,rtlc7n214,i_clock,r11(6)) ;
   DFFPCE (x_r3_7n3s1(5),GND,GND,rtlc7n214,i_clock,r11(5)) ;
   DFFPCE (x_r3_7n3s1(4),GND,GND,rtlc7n214,i_clock,r11(4)) ;
   DFFPCE (x_r3_7n3s1(3),GND,GND,rtlc7n214,i_clock,r11(3)) ;
   DFFPCE (x_r3_7n3s1(2),GND,GND,rtlc7n214,i_clock,r11(2)) ;
   DFFPCE (x_r3_7n3s1(1),GND,GND,rtlc7n214,i_clock,r11(1)) ;
   DFFPCE (x_r3_7n3s1(0),GND,GND,rtlc7n214,i_clock,r11(0)) ;
   DFFPCE (x_r3_7n3s1(9),GND,GND,rtlc7n204,i_clock,x_r3(9)) ;
   DFFPCE (x_r3_7n3s1(8),GND,GND,rtlc7n204,i_clock,x_r3(8)) ;
   DFFPCE (x_r3_7n3s1(7),GND,GND,rtlc7n204,i_clock,x_r3(7)) ;
   DFFPCE (x_r3_7n3s1(6),GND,GND,rtlc7n204,i_clock,x_r3(6)) ;
   DFFPCE (x_r3_7n3s1(5),GND,GND,rtlc7n204,i_clock,x_r3(5)) ;
   DFFPCE (x_r3_7n3s1(4),GND,GND,rtlc7n204,i_clock,x_r3(4)) ;
   DFFPCE (x_r3_7n3s1(3),GND,GND,rtlc7n204,i_clock,x_r3(3)) ;
   DFFPCE (x_r3_7n3s1(2),GND,GND,rtlc7n204,i_clock,x_r3(2)) ;
   DFFPCE (x_r3_7n3s1(1),GND,GND,rtlc7n204,i_clock,x_r3(1)) ;
   DFFPCE (x_r3_7n3s1(0),GND,GND,rtlc7n204,i_clock,x_r3(0)) ;
   DFFPCE (b_d1_7n4s1(9),GND,GND,validBit(1),i_clock,b_d1(9)) ;
   DFFPCE (b_d1_7n4s1(8),GND,GND,validBit(1),i_clock,b_d1(8)) ;
   DFFPCE (b_d1_7n4s1(7),GND,GND,validBit(1),i_clock,b_d1(7)) ;
   DFFPCE (b_d1_7n4s1(6),GND,GND,validBit(1),i_clock,b_d1(6)) ;
   DFFPCE (b_d1_7n4s1(5),GND,GND,validBit(1),i_clock,b_d1(5)) ;
   DFFPCE (b_d1_7n4s1(4),GND,GND,validBit(1),i_clock,b_d1(4)) ;
   DFFPCE (b_d1_7n4s1(3),GND,GND,validBit(1),i_clock,b_d1(3)) ;
   DFFPCE (b_d1_7n4s1(2),GND,GND,validBit(1),i_clock,b_d1(2)) ;
   DFFPCE (b_d1_7n4s1(1),GND,GND,validBit(1),i_clock,b_d1(1)) ;
   DFFPCE (b_d1_7n4s1(0),GND,GND,validBit(1),i_clock,b_d1(0)) ;
   DFFPCE (x_r22_8n1s1(12),GND,GND,rtlc8n247,i_clock,x_r22(12)) ;
   DFFPCE (x_r22_8n1s1(11),GND,GND,rtlc8n247,i_clock,x_r22(11)) ;
   DFFPCE (x_r22_8n1s1(10),GND,GND,rtlc8n247,i_clock,x_r22(10)) ;
   DFFPCE (x_r22_8n1s1(9),GND,GND,rtlc8n247,i_clock,x_r22(9)) ;
   DFFPCE (x_r22_8n1s1(8),GND,GND,rtlc8n247,i_clock,x_r22(8)) ;
   DFFPCE (x_r22_8n1s1(7),GND,GND,rtlc8n247,i_clock,x_r22(7)) ;
   DFFPCE (x_r22_8n1s1(6),GND,GND,rtlc8n247,i_clock,x_r22(6)) ;
   DFFPCE (x_r22_8n1s1(5),GND,GND,rtlc8n247,i_clock,x_r22(5)) ;
   DFFPCE (x_r22_8n1s1(4),GND,GND,rtlc8n247,i_clock,x_r22(4)) ;
   DFFPCE (x_r22_8n1s1(3),GND,GND,rtlc8n247,i_clock,x_r22(3)) ;
   DFFPCE (x_r22_8n1s1(2),GND,GND,rtlc8n247,i_clock,x_r22(2)) ;
   DFFPCE (x_r22_8n1s1(1),GND,GND,rtlc8n247,i_clock,x_r22(1)) ;
   DFFPCE (x_r12(0),GND,GND,rtlc8n247,i_clock,x_r22(0)) ;
   DFFPCE (x_r12_8n2s1(11),GND,GND,rtlc8n234,i_clock,x_r12(11)) ;
   DFFPCE (x_r12_8n2s1(10),GND,GND,rtlc8n234,i_clock,x_r12(10)) ;
   DFFPCE (x_r12_8n2s1(9),GND,GND,rtlc8n234,i_clock,x_r12(9)) ;
   DFFPCE (x_r12_8n2s1(8),GND,GND,rtlc8n234,i_clock,x_r12(8)) ;
   DFFPCE (x_r12_8n2s1(7),GND,GND,rtlc8n234,i_clock,x_r12(7)) ;
   DFFPCE (x_r12_8n2s1(6),GND,GND,rtlc8n234,i_clock,x_r12(6)) ;
   DFFPCE (x_r12_8n2s1(5),GND,GND,rtlc8n234,i_clock,x_r12(5)) ;
   DFFPCE (x_r12_8n2s1(4),GND,GND,rtlc8n234,i_clock,x_r12(4)) ;
   DFFPCE (x_r12_8n2s1(3),GND,GND,rtlc8n234,i_clock,x_r12(3)) ;
   DFFPCE (x_r12_8n2s1(2),GND,GND,rtlc8n234,i_clock,x_r12(2)) ;
   DFFPCE (x_r12_8n2s1(1),GND,GND,rtlc8n234,i_clock,x_r12(1)) ;
   DFFPCE (x_r12_8n2s1(0),GND,GND,rtlc8n234,i_clock,x_r12(0)) ;
   DFFPCE (r14_8n3s1(10),GND,GND,rtlc8n222,i_clock,r14(10)) ;
   DFFPCE (r14_8n3s1(9),GND,GND,rtlc8n222,i_clock,r14(9)) ;
   DFFPCE (r14_8n3s1(8),GND,GND,rtlc8n222,i_clock,r14(8)) ;
   DFFPCE (r14_8n3s1(7),GND,GND,rtlc8n222,i_clock,r14(7)) ;
   DFFPCE (r14_8n3s1(6),GND,GND,rtlc8n222,i_clock,r14(6)) ;
   DFFPCE (r14_8n3s1(5),GND,GND,rtlc8n222,i_clock,r14(5)) ;
   DFFPCE (r14_8n3s1(4),GND,GND,rtlc8n222,i_clock,r14(4)) ;
   DFFPCE (r14_8n3s1(3),GND,GND,rtlc8n222,i_clock,r14(3)) ;
   DFFPCE (r14_8n3s1(2),GND,GND,rtlc8n222,i_clock,r14(2)) ;
   DFFPCE (r14_8n3s1(1),GND,GND,rtlc8n222,i_clock,r14(1)) ;
   DFFPCE (r14_8n3s1(0),GND,GND,rtlc8n222,i_clock,r14(0)) ;
   DFFPCE (x_r6_8n4s1(9),GND,GND,validBit(2),i_clock,x_r6(9)) ;
   DFFPCE (x_r6_8n4s1(8),GND,GND,validBit(2),i_clock,x_r6(8)) ;
   DFFPCE (x_r6_8n4s1(7),GND,GND,validBit(2),i_clock,x_r6(7)) ;
   DFFPCE (x_r6_8n4s1(6),GND,GND,validBit(2),i_clock,x_r6(6)) ;
   DFFPCE (x_r6_8n4s1(5),GND,GND,validBit(2),i_clock,x_r6(5)) ;
   DFFPCE (x_r6_8n4s1(4),GND,GND,validBit(2),i_clock,x_r6(4)) ;
   DFFPCE (x_r6_8n4s1(3),GND,GND,validBit(2),i_clock,x_r6(3)) ;
   DFFPCE (x_r6_8n4s1(2),GND,GND,validBit(2),i_clock,x_r6(2)) ;
   DFFPCE (x_r6_8n4s1(1),GND,GND,validBit(2),i_clock,x_r6(1)) ;
   DFFPCE (x_r6_8n4s1(0),GND,GND,validBit(2),i_clock,x_r6(0)) ;
   DFFPCE (final_dir_9n3ss1(2),GND,GND,rtlc9n171,i_clock,final_dir(2)) ;
   DFFPCE (final_dir_9n3ss1(1),GND,GND,rtlc9n171,i_clock,final_dir(1)) ;
   DFFPCE (final_dir_9n3ss1(0),GND,GND,rtlc9n171,i_clock,final_dir(0)) ;
   DFFPCE (r18_9n3ss1(9),GND,GND,rtlc9n171,i_clock,r18(9)) ;
   DFFPCE (r18_9n3ss1(8),GND,GND,rtlc9n171,i_clock,r18(8)) ;
   DFFPCE (r18_9n3ss1(7),GND,GND,rtlc9n171,i_clock,r18(7)) ;
   DFFPCE (r18_9n3ss1(6),GND,GND,rtlc9n171,i_clock,r18(6)) ;
   DFFPCE (r18_9n3ss1(5),GND,GND,rtlc9n171,i_clock,r18(5)) ;
   DFFPCE (r18_9n3ss1(4),GND,GND,rtlc9n171,i_clock,r18(4)) ;
   DFFPCE (r18_9n3ss1(3),GND,GND,rtlc9n171,i_clock,r18(3)) ;
   DFFPCE (r18_9n3ss1(2),GND,GND,rtlc9n171,i_clock,r18(2)) ;
   DFFPCE (r18_9n3ss1(1),GND,GND,rtlc9n171,i_clock,r18(1)) ;
   DFFPCE (r18_9n3ss1(0),GND,GND,rtlc9n171,i_clock,r18(0)) ;
   DFFPCE (second_cw_9n2ss1_2,GND,GND,rtlc9n158,i_clock,second_cw(2)) ;
   DFFPCE (not_rtlc9n130,GND,GND,rtlc9n158,i_clock,second_cw(1)) ;
   DFFPCE (second_cw_9n2ss1_0,GND,GND,rtlc9n158,i_clock,second_cw(0)) ;
   DFFPCE (x_r11_9n2ss1(9),GND,GND,rtlc9n158,i_clock,x_r11(9)) ;
   DFFPCE (x_r11_9n2ss1(8),GND,GND,rtlc9n158,i_clock,x_r11(8)) ;
   DFFPCE (x_r11_9n2ss1(7),GND,GND,rtlc9n158,i_clock,x_r11(7)) ;
   DFFPCE (x_r11_9n2ss1(6),GND,GND,rtlc9n158,i_clock,x_r11(6)) ;
   DFFPCE (x_r11_9n2ss1(5),GND,GND,rtlc9n158,i_clock,x_r11(5)) ;
   DFFPCE (x_r11_9n2ss1(4),GND,GND,rtlc9n158,i_clock,x_r11(4)) ;
   DFFPCE (x_r11_9n2ss1(3),GND,GND,rtlc9n158,i_clock,x_r11(3)) ;
   DFFPCE (x_r11_9n2ss1(2),GND,GND,rtlc9n158,i_clock,x_r11(2)) ;
   DFFPCE (x_r11_9n2ss1(1),GND,GND,rtlc9n158,i_clock,x_r11(1)) ;
   DFFPCE (x_r11_9n2ss1(0),GND,GND,rtlc9n158,i_clock,x_r11(0)) ;
   DFFPCE (first_cw_9n1ss1_2,GND,GND,validBit(3),i_clock,first_cw(2)) ;
   DFFPCE (not_rtlc9n128,GND,GND,validBit(3),i_clock,first_cw(1)) ;
   DFFPCE (first_cw_9n1ss1_0,GND,GND,validBit(3),i_clock,first_cw(0)) ;
   DFFPCE (r15_9n1ss1(9),GND,GND,validBit(3),i_clock,r15(9)) ;
   DFFPCE (r15_9n1ss1(8),GND,GND,validBit(3),i_clock,r15(8)) ;
   DFFPCE (r15_9n1ss1(7),GND,GND,validBit(3),i_clock,r15(7)) ;
   DFFPCE (r15_9n1ss1(6),GND,GND,validBit(3),i_clock,r15(6)) ;
   DFFPCE (r15_9n1ss1(5),GND,GND,validBit(3),i_clock,r15(5)) ;
   DFFPCE (r15_9n1ss1(4),GND,GND,validBit(3),i_clock,r15(4)) ;
   DFFPCE (r15_9n1ss1(3),GND,GND,validBit(3),i_clock,r15(3)) ;
   DFFPCE (r15_9n1ss1(2),GND,GND,validBit(3),i_clock,r15(2)) ;
   DFFPCE (r15_9n1ss1(1),GND,GND,validBit(3),i_clock,r15(1)) ;
   DFFPCE (r15_9n1ss1(0),GND,GND,validBit(3),i_clock,r15(0)) ;
   DFFPCE (r17_10n1s1_12,GND,GND,validBit(7),i_clock,r17_12) ;
   DFFPCE (r17_10n1s1_11,GND,GND,validBit(7),i_clock,r17_11) ;
   DFFPCE (r17_10n1s1_10,GND,GND,validBit(7),i_clock,r17_10) ;
   DFFPCE (r17_10n1s1_9,GND,GND,validBit(7),i_clock,r17_9) ;
   DFFPCE (r17_10n1s1_8,GND,GND,validBit(7),i_clock,r17_8) ;
   DFFPCE (r17_10n1s1_7,GND,GND,validBit(7),i_clock,r17_7) ;
   DFFRSE (rtlcn1498,GND,i_reset,PWR,i_clock,state(2)) ;
   DFFRSE (rtlcn1499,GND,i_reset,PWR,i_clock,state(1)) ;
   DFFPC (rtlcn1500,GND,GND,i_clock,state(0)) ;
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
end main ;

