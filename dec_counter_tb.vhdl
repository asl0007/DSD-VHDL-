library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity dec_counter_tb is
end dec_counter_tb;
architecture behave of dec_counter_tb is
component dec_counter
port (clk,rst:in std_logic;
      val:out std_logic_vector(3 downto 0));
end component;
signal clk,rst:std_logic;
signal val:std_logic_vector(3 downto 0);
begin
uut:dec_counter port map (clk=>clk,rst=>rst,val=>val);
process begin
clk<='0'; wait for 1 ns;
clk<='1'; wait for 1 ns;
end process;
process begin
rst<='1'; wait for 1 ns;
rst<='0'; wait for 50 ns;
assert false report "Reached end of test"severity failure;
wait;
end process;
end behave;
