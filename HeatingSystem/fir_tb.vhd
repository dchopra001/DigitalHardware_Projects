------------------------------------------------------------------------
-- fir test bench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.fir_synth_pkg.all;

entity fir_tb is
end entity;

------------------------------------------------------------------------

architecture main of fir_tb is
   signal input_data  : word;
   signal output_data : word;
   signal clock       : std_logic;
  
begin

   uut : entity work.fir(avg)
       port map (
            i_data =>input_data,
            o_data => output_data,
            clk    => clock
       );

process
  begin
   input_data <= x"0000";
   wait until rising_edge(clock); --wait for number of taps
   wait until rising_edge(clock);
   wait until rising_edge(clock);
   wait until rising_edge(clock);
   input_data <= x"1000";
   wait until rising_edge(clock); --wait one more cycle before back to 0
   input_data <= x"0000";
end process;

process
  begin
   clock <= '0';
   wait for 5 ns;
   clock <= '1';
   wait for 5 ns;
end process;
end architecture;
------------------------------------------------------------------------

