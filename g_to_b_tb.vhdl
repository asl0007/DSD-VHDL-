library ieee;
use ieee.std_logic_1164.all;
entity g_to_b_tb is 
end g_to_b_tb;
architecture test of g_to_b_tb is 
component g_to_b is 
 port(g:in std_logic_vector(3 downto 0);
      b:inout std_logic_vector(3 downto 0));
end component;
signal b:std_logic_vector(3 downto 0);
signal g:std_logic_vector(3 downto 0);
begin
uut :g_to_b port map(b=>b,g=>g);
process begin
g <="0001";
wait for 1 ns;
g <="0010";
wait for 1 ns;
g <="0011";
wait for 1 ns;
g <="0100";
wait for 1 ns;
g <="1011";
wait for 1 ns;
assert false report "Reached end of test";
wait;
end process;
end test;
