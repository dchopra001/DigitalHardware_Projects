library ieee;
use ieee.std_logic_1164.all;

entity sum is
       port ( i_a, i_b, i_cin : in std_logic;
              o_sum :       out std_logic
       );
end sum;

architecture main of sum is
begin
  -- insert your code here
  o_sum <= i_a xor i_b xor i_cin; 

end architecture;

-- question 1
  -- the hardware has three inputs (i_b, i_cin, i_a)
  -- first i_cin and i_a are xored together through an 
  -- xor gate (ix1). Then the ouput from ix1 and i_b are 
  --xored together  through gate ix3. The resulting output is
  --o_sum

