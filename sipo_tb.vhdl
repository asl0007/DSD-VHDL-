library ieee;
use ieee.std_logic_1164.all;

entity sipo_tb is
  
  end sipo_tb;

architecture structure of sipo_tb is
component sipo is
  Port(
	d,reset,clk : in std_logic;
	q : out std_logic_vector(3 downto 0));
end component;

Signal d,reset,clk : std_logic;
Signal s : std_logic_vector(3 downto 0);
begin
mapping : sipo port map (d=>d,reset=>reset,q=>s,clk=>clk);
process begin
  clk <= '0';
    wait for 1 ns;
    clk <= '1';
    wait for 1 ns;
end process;
process begin
    reset <= '1';
    d <= '1';
  wait for 10 ns;
    reset <= '0';
    d <= '0';
  wait for 10 ns;
    d <= '1';
  wait for 10 ns;
    d <= '0';
  wait for 10 ns;
  assert false report "Reach end of test" severity failure;
	wait;
end process;
end structure;
