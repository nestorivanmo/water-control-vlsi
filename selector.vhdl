library ieee;
use ieee.std_logic_1164.all;

entity selector is
port(
	clk: in std_logic;
	sw_seleccion: in  std_logic;
	led : out std_logic;
	display: out std_logic_vector (7 downto 0)
	
);
end selector;


architecture behavior of selector is
signal ledInterno : std_logic:='0';

begin 
led<=ledInterno;
process(clk)
	begin
		if rising_edge(clk) then	
			if sw_seleccion='1' then
				ledInterno<='1';
				display<="01111001";	--	información
			else
				ledInterno<='0';
				display <= "11000110"; --configuración 
			end if;
		end if;


end process;



end architecture behavior;




