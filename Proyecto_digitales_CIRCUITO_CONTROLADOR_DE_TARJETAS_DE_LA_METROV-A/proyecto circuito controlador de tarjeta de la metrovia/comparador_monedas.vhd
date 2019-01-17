library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparador_monedas is
	Port ( Ent: in STD_LOGIC_VECTOR(2 downto 0);
		enable :	in std_logic;
		Menor_a_5 : OUT STD_LOGIC;
		Igual_a_5 : OUT STD_LOGIC;
		Mayor_a_5 : OUT STD_LOGIC
		);
end comparador_monedas;

Architecture sol of comparador_monedas is
Begin
	Menor_a_5<='1' when (Ent<"101" and enable='1') else '0';
	Igual_a_5<='1' when (Ent="101" and enable='1') else '0';
	Mayor_a_5<='1' when (Ent>"101" and enable='1') else '0';	
end sol;