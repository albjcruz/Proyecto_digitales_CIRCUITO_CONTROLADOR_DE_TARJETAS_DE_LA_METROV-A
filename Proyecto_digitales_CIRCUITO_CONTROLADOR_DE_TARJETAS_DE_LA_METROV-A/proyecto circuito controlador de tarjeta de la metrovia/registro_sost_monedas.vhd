library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY registro_sost_monedas IS
				Generic(n:Integer:=3);
				Port(Resetn,Clock,En: in std_logic;
								DataIn: in std_logic_vector(n-1 downto 0);
								Q: out std_logic_vector(n-1 downto 0));
					
END registro_sost_monedas;

ARCHITECTURE sol OF registro_sost_monedas IS
SIGNAL temp: std_logic_vector(n-1 downto 0);
BEGIN
	Process (Clock,Resetn)
	BEGIN 
			if Resetn='0' then temp<=(OTHERS =>'0');
			elsif(Clock'event and Clock='1') then 
					if(En='1') then
							temp<=Datain;
					end if;
			end if;
	end process;
	Q<=temp;
END sol;