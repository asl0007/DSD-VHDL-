library ieee;
use ieee.std_logic_1164.all;

entity ha_tb is
 
  end ha_tb;

architecture test of ha_tb is
  component ha is
	Port(
	a,b : in std_logic;
	s,c : out std_logic);
  end component;
  signal a,b,s,c : std_logic;
  begin
  UUT : gates Port map(a=>a,b=>b,s=>s,c=>c);
  Process begin
	a <= '0';
	b <= '0';
	wait for 1 ns;
	a <= '0';
	b <= '1';
	wait for 1 ns;
	a <= '1';
	b <= '0';
	wait for 1 ns;
	a <= '1';
	b <= '1';
	assert false report "Reach end of text";
	wait;
  end Process;
end test;
	
