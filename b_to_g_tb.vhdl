library ieee;
use ieee.std_logic_1164.all;
entity b_to_g_tb is 
end b_to_g_tb;
architecture test of b_to_g_tb is 
component b_to_g is 
 port(b:in std_logic_vector(3 downto 0);
      g:out std_logic_vector(3 downto 0));
end component;
signal b:std_logic_vector(3 downto 0);
signal g:std_logic_vector(3 downto 0);
begin
uut :b_to_g port map(b=>b,g=>g);
process begin
b <="0001";
wait for 1 ns;
b <="0010";
wait for 1 ns;
b <="0011";
wait for 1 ns;
b <="0100";
wait for 1 ns;
b <="1011";
wait for 1 ns;
assert false report "Reached end of test";
wait;
end process;
end test;
