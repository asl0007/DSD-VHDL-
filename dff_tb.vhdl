library ieee;
use ieee.std_logic_1164.all;

entity dff_tb is
  
  end dff_tb;

architecture behave of dff_tb is
component dff is
  Port(
	d,reset,clk : in std_logic;
	q : out std_logic);
  end component;
Signal d,reset,clk,q : std_logic;
begin
UUT : dff port map (d=>d,reset=>reset,q=>q,clk=>clk); 

  process 
  begin
    clk <= '0';
    wait for 1 ns;
    clk <= '1';
    wait for 1 ns;
  
  end process;
  process begin
    reset <= '1';
    d <= '1';
  wait for 10 ns;
    reset <= '0';
    d <= '0';
  wait for 10 ns;
    d <= '1';
  wait for 10 ns;
    d <= '0';
  wait for 10 ns;
  assert false report "Reach end of test" severity failure;
	wait;
  end process;	
end behave;
