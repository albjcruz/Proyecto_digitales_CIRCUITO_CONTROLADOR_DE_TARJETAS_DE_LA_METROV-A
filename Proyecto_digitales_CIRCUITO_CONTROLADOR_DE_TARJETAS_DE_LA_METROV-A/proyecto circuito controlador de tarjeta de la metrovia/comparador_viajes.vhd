library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparador_viajes is
	Port ( Ent: in STD_LOGIC_VECTOR(4 downto 0);
		enable :	in std_logic;
		Menor_a_20 : OUT STD_LOGIC;
		Igual_a_20 : OUT STD_LOGIC;
		Mayor_a_20 : OUT STD_LOGIC
		);
end comparador_viajes;

Architecture sol of comparador_viajes is
Begin
	Menor_a_20<='1' when (Ent<"10100" and enable='1') else '0';
	Igual_a_20<='1' when (Ent="10100" and enable='1') else '0';
	Mayor_a_20<='1' when (Ent>"10100" and enable='1') else '0';	
end sol;