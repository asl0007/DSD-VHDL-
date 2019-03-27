library ieee;
use ieee.std_logic_1164.all;
entity encoder_tb is
end encoder_tb;
architecture test of encoder_tb is
component encoder is
  port(din: in std_logic_vector (3 downto 0);
         dout: out std_logic_vector (1 downto 0));
end component;
signal din:std_logic_vector(3 downto 0);
signal dout:std_logic_vector(1 downto 0);
begin
uut:encoder port map (din=>din,dout=>dout);
process begin
din<="0001";
wait for 1 ns;
din<="0010";
wait for 1 ns;
din<="0100";
wait for 1 ns;
din<="0001";
wait for 1 ns;
din<="1000";
wait for 1 ns;
din<="0001";
wait for 1 ns;
assert false report "Reached end of test";
wait;
end process;
end test; 
