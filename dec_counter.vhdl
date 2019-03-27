library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity dec_counter is
port (clk,rst:in std_logic;
      val:out std_logic_vector(3 downto 0));
end dec_counter;
architecture behave of dec_counter is
signal v:unsigned(3 downto 0);
begin
process(clk,rst)
begin
if rst='1' then v<=x"0";
elsif rising_edge(clk) then
if v="1010" then
   v<=x"0";
else
   v<=v+1;
end if;
end if;
end process;
val<=std_logic_vector(v);
end behave;
