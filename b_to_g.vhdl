library ieee;
use ieee.std_logic_1164.all
entity b_to_g is
   port(b:in std_logic_vector(3 downto 0);
        g:out std_logic_vector(3 downto 0));
end b_to_g;
architecture test of b_to_g is
begin 
process (b)
begin
g(3)<=b(3);
for i in 2 to 0 loop
  g(i) <= b(i+1) xor b(i);
end loop;
end process;
end test;
