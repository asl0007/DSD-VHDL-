library ieee;
use ieee.std_logic_1164.all;
entity decoder_tb is
end decoder_tb;
architecture test of decoder_tb is
component decoder is
  port( din:in std_logic_vector(1 downto 0);
         dout:out std_logic_vector(3 downto 0));
end component;
signal din:std_logic_vector(1 downto 0);
signal dout:std_logic_vector(3 downto 0);
begin
uut:decoder port map (din=>din,dout=>dout);
process begin
din<="00";
wait for 1 ns;
din<="01";
wait for 1 ns;
din<="10";
wait for 1 ns;
din<="11";
wait for 1 ns;
assert false report "Reached end of test";
wait;
end process;
end test; 
