library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY contador_UP_viajes IS
				PORT(Clock,enable,reset: IN std_logic;
											data: IN std_logic_vector(4 downto 0);
											Q:Buffer Std_logic_vector(4 downto 0));
END contador_UP_viajes;

ARCHITECTURE sol OF contador_UP_viajes IS
BEGIN
	Process(Clock,reset)
	BEGIN 
			If reset='0' then Q<="00000";
			elsif (Clock'event and Clock='1') then
				If enable='1' then Q<=data+'1'; end if;
			end if;
	END Process;
END sol;
	