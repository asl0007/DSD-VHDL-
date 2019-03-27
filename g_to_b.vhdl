library ieee;
use ieee.std_logic_1164.all;
entity g_to_b is
   port(g:in std_logic_vector(3 downto 0);
        b:inout std_logic_vector(3 downto 0));
end g_to_b;
architecture test of g_to_b is
begin 
process(b,g)
begin
b(3)<=g(3);
for i in 2 downto 0 loop
  b(i) <= b(i+1) xor g(i);
end loop;
end process;
end test;
