library ieee;
use ieee.std_logic_1164.all;

entity gates is
  Port(
	a,b : in std_logic;
	y1,y2,y3,y4,y5,y6 : out std_logic);
  end gates;

architecture behave of gates is
  begin
	y1 <= a and b;
	y2 <= a nand b;
	y3 <= not b;
	y4 <= a xor b;
	y5 <= a nor b;
	y6 <= a or b;
  end behave;
