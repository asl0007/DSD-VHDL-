library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
 
  end mux_tb;

architecture test of mux_tb is
  component mux is
	Port(
	d : in std_logic_vector(3 downto 0);
	s : in std_logic_vector(1 downto 0);
	y : out std_logic);
  end component;
  signal d : std_logic_vector(3 downto 0);
  signal s : std_logic_vector(1 downto 0);
  signal y : std_logic;
  begin
  UUT : mux Port map(d=>d, s=>s, y=>y);
  Process begin
	d <= "0110";
	s <= "00";
	wait for 1 ns;
	s <= "01";
	wait for 1 ns;
	s <= "10";
	wait for 1 ns;
	s <= "11";
	wait for 1 ns;
	assert false report "Reach end of text";
	wait;
  end Process;
end test;
	
