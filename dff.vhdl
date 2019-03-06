library ieee;
use ieee.std_logic_1164.all;

entity dff is
  Port(
	d,reset,clk : in std_logic;
	q : out std_logic);
  end dff;

architecture behave of dff is
  begin
  process (d,reset,clk)
  begin
    if reset = '1' then q <='0';
    elsif clk'event and clk = '1' then q <= d;
    end if;
    end process;	
  end behave;
