library ieee;
use ieee.std_logic_1164.all;

entity waterControl is
port(
	clk: in std_logic;
	sw_seleccion: in  std_logic;
	led_seleccion : out std_logic;
	display_seleccion: out std_logic_vector (7 downto 0);
	display_configurador: out std_logic_vector (7 downto 0)
	
);
end waterControl;


architecture behavior of waterControl is

begin 

--port(
--	clk: in std_logic;
--	sw_seleccion: in  std_logic;
--	led : out std_logic;
--	display: out std_logic_vector (6 downto 0)
--	
--);
u1: entity work.selector(behavior) port map (clk,sw_seleccion,led_seleccion,display_seleccion);


--port(
--	sw_seleccion: in  std_logic;
--	display_configurador: out std_logic_vector (7 downto 0)
--
--);

u2: entity work.configurador(behavior) port map (clk,sw_seleccion,display_configurador);



end architecture behavior;




