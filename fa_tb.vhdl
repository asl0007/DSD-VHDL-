library ieee;
use ieee.std_logic_1164.all;

entity fa_tb is
 
  end fa_tb;

architecture test of fa_tb is
  component fa is
	Port(
	a,b,c : in std_logic;
	sum,carry : out std_logic);
  end component;
  signal a,b,c,sum,carry : std_logic;
  begin
  UUT : fa Port map(a=>a,b=>b,c=>c,sum=>sum,carry=>carry);
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
	assert false report "Reach end of test";
	wait;
  end Process;
end test;
	
