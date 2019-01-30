library ieee;
use ieee.std_logic_1164.all;

entity comparator_tb is
 
  end comparator_tb;

architecture test of comparator_tb is
  component comparator is
	Port(
	a,b : in std_logic_vector(3 downto 0);
	greater,smaller,equal : out std_logic);
  end component;
  signal a,b: std_logic_vector(3 downto 0);
  signal greater,smaller,equal : std_logic;
  begin
  UUT : comparator Port map(a=>a,b=>b,greater=>greater,smaller=>smaller,equal=>equal);
  Process begin
	a<="1010";
	b<="0010";
	wait for 1 ns;
	a<="0010";
	b<="1010";
	wait for 1 ns;
	a<="1010";
	b<="1010";
	wait for 1 ns;
	assert false report "Reach end of text";
	wait;
  end Process;
end test;
	
