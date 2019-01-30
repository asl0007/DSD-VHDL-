library ieee;
use ieee.std_logic_1164.all;

entity comparator is
  Port(a,b : in std_logic_vector(3 downto 0);
	smaller, equal, greater : out std_logic);
end comparator;

architecture behave of comparator is
  begin
    greater <= '1' when (a>b) else '0';
    equal <= '1' when (a=b) else '0';
    smaller <= '1' when (a<b) else '0';
end behave; 
