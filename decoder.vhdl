library ieee;
use ieee.std_logic_1164.all;
entity decoder is
   port( din:in std_logic_vector(1 downto 0);
         dout:out std_logic_vector(3 downto 0));
end decoder;
architecture bhev of decoder is
begin
decoder: process(din) is
begin
if (din="00") then dout<="0001";
elsif (din="01") then dout<="0010";
elsif (din="10") then dout<="0100";
else dout<="1000";
end if;
end process decoder;
end bhev;
