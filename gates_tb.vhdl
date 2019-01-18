library ieee;
use ieee.std_logic_1164.all;

entity gates_tb is
 
  end gates_tb;

architecture test of gates_tb is
  component gates is
	Port(
	a,b : in std_logic;
	y1,y2,y3,y4,y5,y6 : out std_logic);
  end component;
  signal a,b,y1,y2,y3,y4,y5,y6 : std_logic;
  begin
  UUT : gates Port map(a=>a,b=>b,y1=>y1,y2=>y2,y3=>y3,y4=>y4,y5=>y5,y6=>y6);
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
	
