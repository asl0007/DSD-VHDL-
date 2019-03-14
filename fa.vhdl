library ieee;
use ieee.std_logic_1164.all;

entity fa is
  Port(
	a,b,c : in std_logic;
	sum,carry : out std_logic);
  end fa;

architecture behave of fa is
  begin	
	sum <= a xor b xor c;
	carry <= (a and b) or (b and c) or (c and a);
  end behave;
