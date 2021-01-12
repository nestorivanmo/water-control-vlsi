library ieee;
use ieee.std_logic_1164.all;

entity configurador is 
port(
	clk: in std_logic;
	sw_seleccion: in  std_logic;
	display_configurador: out std_logic_vector (7 downto 0)

);
end entity configurador;

architecture behavior of configurador is

begin
	process(clk)
	begin
		if rising_edge(clk) then	
			if sw_seleccion ='1' then
				display_configurador<="11111001";
			else
				display_configurador<="11000000";
			end if;
		end if;
	end process;
end architecture behavior;