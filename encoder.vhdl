library ieee;
use ieee.std_logic_1164.all;
entity encoder is
   port(din:in std_logic_vector(3 downto 0);
         dout:out std_logic_vector(1 downto 0));
end encoder;
architecture bhev of encoder is
begin
encoder: process(din) is
begin
if (din="0001") then dout<="00";
elsif (din="0010") then dout<="01";
elsif (din="0100") then dout<="10";
else dout<="11";
end if;
end process encoder;
end bhev;
