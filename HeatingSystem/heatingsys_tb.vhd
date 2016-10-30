------------------------------------------------------------------------
-- heating system testbench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys_tb is
end entity;

architecture main of heatingsys_tb is

signal cur_temp  : signed(7 downto 0);
signal des_temp  : signed(7 downto 0);
signal reset   : std_logic;         
signal clock   : std_logic;     
signal heatmode: heat_ty;

begin

uut : entity work.heatingsys(main)
     port map (
       i_cur_temp => cur_temp,
       i_des_temp => des_temp,
       i_reset    => reset,
       i_clock    => clock,
       o_heatmode => heatmode
     );

  process
  begin
  clock <='0';
  wait for 10 ns;
  clock <= '1';
  wait for 10 ns;
  end process;

   
process
begin

wait until rising_edge(clock);
reset    <='1';
des_temp <= to_signed(5,8);
cur_temp <= to_signed(2,8);
wait until rising_edge(clock);
reset    <= '0';
des_temp <= to_signed(5,8);
cur_temp <= to_signed(2,8);  --transition to low from off
wait until rising_edge(clock);
reset    <= '0';
des_temp <= to_signed(7,8);
cur_temp <= to_signed(0,8); --transition to high from low
wait until rising_edge(clock);
reset    <= '0';
des_temp <= to_signed(0,8);
cur_temp <= to_signed(4,8); --transition to low from high
wait until rising_edge(clock);
reset    <= '0';
des_temp <= to_signed(0,8);
cur_temp <= to_signed(3,8); --transition to off from low
wait until rising_edge(clock);
reset    <= '0';
des_temp <= to_signed(7,8);
cur_temp <= to_signed(0,8); --trantion to high from low
wait until rising_edge(clock);
reset    <= '1';           --transition to off... other temps dont matter


end process;

end architecture;
