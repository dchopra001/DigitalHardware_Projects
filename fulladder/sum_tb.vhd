library ieee;
use ieee.std_logic_1164.all;

entity sum_tb is
end sum_tb;

architecture main of sum_tb is
  signal a, b, cin, the_sum  : std_logic;
begin
  
  uut : entity work.sum(main)
  port map (
    i_a   => a,
    i_b   => b,
    i_cin => cin,
    o_sum => the_sum
  );

  process
  begin
    -- --------------------
    a <= '0'; b <= '0'; cin <= '0';
    wait for 10 ns;
    -- --------------------
    a <= '1'; b <= '0'; cin <= '0';
    wait for 10 ns;
    -- --------------------
    a <= '0'; b <= '0'; cin <= '1';
    wait for 10 ns;
    -- --------------------
  end process;
  
end architecture;

-- question 2
-- signal   | waveform description
-- a          1 0 0
-- b          0 0 0
-- cin        0 1 0
-- the_sum    1 1 0


-- question 3
  --the signal values repeat
  --at 30 ns,the values revert back to what they were at 0ns
  --then at 40ns, the value is the same asit was at 10ns. Similarly,
  --at 50ns, the value is the same as it was at 20ns and 60nsis the same as 
  --30ns or 0ns. 

