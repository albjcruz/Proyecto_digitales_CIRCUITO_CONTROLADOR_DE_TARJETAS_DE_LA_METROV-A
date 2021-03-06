library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparador is
	Port ( Ent: in STD_LOGIC_VECTOR(3 downto 0);
		enable :	in std_logic;
		MayorIgual_a_8 : OUT STD_LOGIC;
		Entre_6_y_7 : OUT STD_LOGIC;
		Menor_a_6 : OUT STD_LOGIC
		);
end comparador;

Architecture sol of comparador is
Begin
	MayorIgual_a_8<='1' when (Ent>="1000" and enable='1') else '0';
	Entre_6_y_7<='1' when ((Ent="0110" OR Ent="0111") and enable='1') else '0';
	Menor_a_6<='1' when (Ent<"0110" and enable='1') else '0';	
end sol;