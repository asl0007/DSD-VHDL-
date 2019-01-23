library ieee;
use ieee.std_logic_1164.all;

entity mux is
 port (d: in std_logic_vector(3 downto 0);
       s: in std_logic_vector(1 downto 0);
       y: out std_logic);
end mux;

architecture behavioural of mux is 
  begin
  process(d,s)
    begin
      case s is 
      when "00" => y <= d(3);
      when "01" => y <= d(2);
      when "10" => y  <= d(1);
      when others => y <= d(0);
      end case;
  end process;
end behavioural;
