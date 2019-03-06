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

library ieee;
use ieee.std_logic_1164.all;

entity sipo is
  Port(
	d,reset,clk : in std_logic;
	q : out std_logic_vector(3 downto 0));
end sipo;

architecture behave of sipo is
component dff is
Port(
	d,reset,clk : in std_logic;
	q : out std_logic);
end component;
signal s: std_logic_vector(3 downto 0);
begin
UUT0 : dff port map (d=>d,reset=>reset,q=>s(0),clk=>clk);
UUT1 : dff port map (d=>d,reset=>reset,q=>s(1),clk=>clk);
UUT2 : dff port map (d=>d,reset=>reset,q=>s(2),clk=>clk);
UUT3 : dff port map (d=>d,reset=>reset,q=>s(3),clk=>clk);
	q<=s;
end behave;
