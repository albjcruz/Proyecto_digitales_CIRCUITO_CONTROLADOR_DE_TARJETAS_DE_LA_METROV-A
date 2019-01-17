-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "01/10/2019 19:18:08"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SIMULACION IS
    PORT (
	Led_Inicio : OUT std_logic;
	Reset : IN std_logic;
	Start : IN std_logic;
	Pasa : IN std_logic;
	RetirarT : IN std_logic;
	Puerta : IN std_logic;
	Lectura : IN std_logic;
	stopN : OUT std_logic;
	n_viajesQ : OUT std_logic_vector(4 DOWNTO 0);
	Clock2 : IN std_logic;
	resetRG : OUT std_logic;
	Clock : IN std_logic;
	ID_usQ : IN std_logic_vector(3 DOWNTO 0);
	n_viajes : OUT std_logic_vector(4 DOWNTO 0);
	enN : OUT std_logic;
	resetNN : OUT std_logic;
	Comprar : IN std_logic;
	moneda : IN std_logic;
	stopM : OUT std_logic;
	n_monedas : OUT std_logic_vector(2 DOWNTO 0);
	enM : OUT std_logic;
	resetD : OUT std_logic;
	pasaMoneda : OUT std_logic;
	LedMonedaIn : OUT std_logic;
	ET : OUT std_logic
	);
END SIMULACION;

ARCHITECTURE structure OF SIMULACION IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Led_Inicio : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Pasa : std_logic;
SIGNAL ww_RetirarT : std_logic;
SIGNAL ww_Puerta : std_logic;
SIGNAL ww_Lectura : std_logic;
SIGNAL ww_stopN : std_logic;
SIGNAL ww_n_viajesQ : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Clock2 : std_logic;
SIGNAL ww_resetRG : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_ID_usQ : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n_viajes : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_enN : std_logic;
SIGNAL ww_resetNN : std_logic;
SIGNAL ww_Comprar : std_logic;
SIGNAL ww_moneda : std_logic;
SIGNAL ww_stopM : std_logic;
SIGNAL ww_n_monedas : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_enM : std_logic;
SIGNAL ww_resetD : std_logic;
SIGNAL ww_pasaMoneda : std_logic;
SIGNAL ww_LedMonedaIn : std_logic;
SIGNAL ww_ET : std_logic;
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Led_Inicio~output_o\ : std_logic;
SIGNAL \stopN~output_o\ : std_logic;
SIGNAL \n_viajesQ[4]~output_o\ : std_logic;
SIGNAL \n_viajesQ[3]~output_o\ : std_logic;
SIGNAL \n_viajesQ[2]~output_o\ : std_logic;
SIGNAL \n_viajesQ[1]~output_o\ : std_logic;
SIGNAL \n_viajesQ[0]~output_o\ : std_logic;
SIGNAL \resetRG~output_o\ : std_logic;
SIGNAL \n_viajes[4]~output_o\ : std_logic;
SIGNAL \n_viajes[3]~output_o\ : std_logic;
SIGNAL \n_viajes[2]~output_o\ : std_logic;
SIGNAL \n_viajes[1]~output_o\ : std_logic;
SIGNAL \n_viajes[0]~output_o\ : std_logic;
SIGNAL \enN~output_o\ : std_logic;
SIGNAL \resetNN~output_o\ : std_logic;
SIGNAL \stopM~output_o\ : std_logic;
SIGNAL \n_monedas[2]~output_o\ : std_logic;
SIGNAL \n_monedas[1]~output_o\ : std_logic;
SIGNAL \n_monedas[0]~output_o\ : std_logic;
SIGNAL \enM~output_o\ : std_logic;
SIGNAL \resetD~output_o\ : std_logic;
SIGNAL \pasaMoneda~output_o\ : std_logic;
SIGNAL \LedMonedaIn~output_o\ : std_logic;
SIGNAL \ET~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Lectura~input_o\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \inst2|y.Ta~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst2|y.Ta~q\ : std_logic;
SIGNAL \inst2|y~31_combout\ : std_logic;
SIGNAL \inst2|y.Tb~q\ : std_logic;
SIGNAL \Puerta~input_o\ : std_logic;
SIGNAL \inst19|Q[0]~0_combout\ : std_logic;
SIGNAL \moneda~input_o\ : std_logic;
SIGNAL \inst2|y~29_combout\ : std_logic;
SIGNAL \inst2|y.Tp~q\ : std_logic;
SIGNAL \Comprar~input_o\ : std_logic;
SIGNAL \Clock2~input_o\ : std_logic;
SIGNAL \inst|Q[0]~0_combout\ : std_logic;
SIGNAL \ID_usQ[0]~input_o\ : std_logic;
SIGNAL \inst2|enRG~combout\ : std_logic;
SIGNAL \ID_usQ[1]~input_o\ : std_logic;
SIGNAL \ID_usQ[2]~input_o\ : std_logic;
SIGNAL \ID_usQ[3]~input_o\ : std_logic;
SIGNAL \inst|Add0~3_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \inst2|y~34_combout\ : std_logic;
SIGNAL \inst2|y.Td~q\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|y.Tk~q\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|y.Tm~q\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|y.Tn~q\ : std_logic;
SIGNAL \inst2|Selector7~0_combout\ : std_logic;
SIGNAL \inst2|y.Tx~q\ : std_logic;
SIGNAL \inst2|EnM~combout\ : std_logic;
SIGNAL \inst19|Add0~1_combout\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst19|Add0~0_combout\ : std_logic;
SIGNAL \inst2|y~32_combout\ : std_logic;
SIGNAL \inst2|y.Tq~q\ : std_logic;
SIGNAL \inst2|save~combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst2|y~33_combout\ : std_logic;
SIGNAL \inst2|y.Te~q\ : std_logic;
SIGNAL \inst2|y.Tz~q\ : std_logic;
SIGNAL \inst2|y.Tf~q\ : std_logic;
SIGNAL \inst2|y.Th~q\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|y.Ti~q\ : std_logic;
SIGNAL \inst2|y~27_combout\ : std_logic;
SIGNAL \inst2|y.Tj~q\ : std_logic;
SIGNAL \RetirarT~input_o\ : std_logic;
SIGNAL \inst2|Selector5~0_combout\ : std_logic;
SIGNAL \inst2|y.Tr~q\ : std_logic;
SIGNAL \inst2|y~30_combout\ : std_logic;
SIGNAL \inst2|y.Ts~q\ : std_logic;
SIGNAL \Pasa~input_o\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \inst2|y.tt~q\ : std_logic;
SIGNAL \inst2|y~28_combout\ : std_logic;
SIGNAL \inst2|y.Tu~q\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|Selector0~1_combout\ : std_logic;
SIGNAL \inst2|y.Tc~q\ : std_logic;
SIGNAL \inst2|resetD~combout\ : std_logic;
SIGNAL \inst2|WideOr9~combout\ : std_logic;
SIGNAL \inst2|WideOr11~combout\ : std_logic;
SIGNAL \inst2|ET~combout\ : std_logic;
SIGNAL \inst4|altsyncram_component|auto_generated|q_a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst19|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|temp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst21|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|ALT_INV_y.Th~q\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Tm~q\ : std_logic;
SIGNAL \inst5|ALT_INV_temp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|ALT_INV_y.Tq~q\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Tf~q\ : std_logic;
SIGNAL \inst2|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Tb~q\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Ts~q\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Tr~q\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Tx~q\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Tn~q\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Tp~q\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Tu~q\ : std_logic;
SIGNAL \inst2|ALT_INV_y.tt~q\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Tj~q\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Ti~q\ : std_logic;
SIGNAL \ALT_INV_inst14~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_inst15~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Tc~q\ : std_logic;
SIGNAL \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_RetirarT~input_o\ : std_logic;
SIGNAL \ALT_INV_Comprar~input_o\ : std_logic;
SIGNAL \ALT_INV_moneda~input_o\ : std_logic;
SIGNAL \ALT_INV_Puerta~input_o\ : std_logic;
SIGNAL \ALT_INV_Pasa~input_o\ : std_logic;
SIGNAL \ALT_INV_Start~input_o\ : std_logic;
SIGNAL \ALT_INV_Lectura~input_o\ : std_logic;
SIGNAL \inst2|ALT_INV_enRG~combout\ : std_logic;
SIGNAL \inst2|ALT_INV_resetD~combout\ : std_logic;
SIGNAL \inst2|ALT_INV_EnM~combout\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Td~q\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Tk~q\ : std_logic;
SIGNAL \inst2|ALT_INV_y.Ta~q\ : std_logic;

BEGIN

Led_Inicio <= ww_Led_Inicio;
ww_Reset <= Reset;
ww_Start <= Start;
ww_Pasa <= Pasa;
ww_RetirarT <= RetirarT;
ww_Puerta <= Puerta;
ww_Lectura <= Lectura;
stopN <= ww_stopN;
n_viajesQ <= ww_n_viajesQ;
ww_Clock2 <= Clock2;
resetRG <= ww_resetRG;
ww_Clock <= Clock;
ww_ID_usQ <= ID_usQ;
n_viajes <= ww_n_viajes;
enN <= ww_enN;
resetNN <= ww_resetNN;
ww_Comprar <= Comprar;
ww_moneda <= moneda;
stopM <= ww_stopM;
n_monedas <= ww_n_monedas;
enM <= ww_enM;
resetD <= ww_resetD;
pasaMoneda <= ww_pasaMoneda;
LedMonedaIn <= ww_LedMonedaIn;
ET <= ww_ET;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \inst|Q\(4);

\inst4|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst21|temp\(3) & \inst21|temp\(2) & \inst21|temp\(1) & \inst21|temp\(0));

\inst4|altsyncram_component|auto_generated|q_a\(4) <= \inst4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\inst4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \inst|Q\(2);

\inst4|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst21|temp\(3) & \inst21|temp\(2) & \inst21|temp\(1) & \inst21|temp\(0));

\inst4|altsyncram_component|auto_generated|q_a\(2) <= \inst4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\inst4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \inst|Q\(3);

\inst4|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst21|temp\(3) & \inst21|temp\(2) & \inst21|temp\(1) & \inst21|temp\(0));

\inst4|altsyncram_component|auto_generated|q_a\(3) <= \inst4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\inst4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \inst|Q\(1);

\inst4|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst21|temp\(3) & \inst21|temp\(2) & \inst21|temp\(1) & \inst21|temp\(0));

\inst4|altsyncram_component|auto_generated|q_a\(1) <= \inst4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \inst|Q\(0);

\inst4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst21|temp\(3) & \inst21|temp\(2) & \inst21|temp\(1) & \inst21|temp\(0));

\inst4|altsyncram_component|auto_generated|q_a\(0) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst2|ALT_INV_y.Th~q\ <= NOT \inst2|y.Th~q\;
\inst2|ALT_INV_y.Tm~q\ <= NOT \inst2|y.Tm~q\;
\inst5|ALT_INV_temp\(0) <= NOT \inst5|temp\(0);
\inst5|ALT_INV_temp\(1) <= NOT \inst5|temp\(1);
\inst5|ALT_INV_temp\(2) <= NOT \inst5|temp\(2);
\inst2|ALT_INV_y.Tq~q\ <= NOT \inst2|y.Tq~q\;
\inst2|ALT_INV_y.Tf~q\ <= NOT \inst2|y.Tf~q\;
\inst2|ALT_INV_Selector0~0_combout\ <= NOT \inst2|Selector0~0_combout\;
\inst2|ALT_INV_y.Tb~q\ <= NOT \inst2|y.Tb~q\;
\inst2|ALT_INV_y.Ts~q\ <= NOT \inst2|y.Ts~q\;
\inst2|ALT_INV_y.Tr~q\ <= NOT \inst2|y.Tr~q\;
\inst2|ALT_INV_y.Tx~q\ <= NOT \inst2|y.Tx~q\;
\inst2|ALT_INV_y.Tn~q\ <= NOT \inst2|y.Tn~q\;
\inst2|ALT_INV_y.Tp~q\ <= NOT \inst2|y.Tp~q\;
\inst2|ALT_INV_y.Tu~q\ <= NOT \inst2|y.Tu~q\;
\inst2|ALT_INV_y.tt~q\ <= NOT \inst2|y.tt~q\;
\inst2|ALT_INV_y.Tj~q\ <= NOT \inst2|y.Tj~q\;
\inst2|ALT_INV_y.Ti~q\ <= NOT \inst2|y.Ti~q\;
\ALT_INV_inst14~0_combout\ <= NOT \inst14~0_combout\;
\inst19|ALT_INV_Q\(0) <= NOT \inst19|Q\(0);
\inst19|ALT_INV_Q\(1) <= NOT \inst19|Q\(1);
\inst19|ALT_INV_Q\(2) <= NOT \inst19|Q\(2);
\ALT_INV_inst15~0_combout\ <= NOT \inst15~0_combout\;
\inst2|ALT_INV_y.Tc~q\ <= NOT \inst2|y.Tc~q\;
\inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst4|altsyncram_component|auto_generated|q_a\(0);
\inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst4|altsyncram_component|auto_generated|q_a\(1);
\inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst4|altsyncram_component|auto_generated|q_a\(3);
\inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst4|altsyncram_component|auto_generated|q_a\(2);
\inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst4|altsyncram_component|auto_generated|q_a\(4);
\ALT_INV_RetirarT~input_o\ <= NOT \RetirarT~input_o\;
\ALT_INV_Comprar~input_o\ <= NOT \Comprar~input_o\;
\ALT_INV_moneda~input_o\ <= NOT \moneda~input_o\;
\ALT_INV_Puerta~input_o\ <= NOT \Puerta~input_o\;
\ALT_INV_Pasa~input_o\ <= NOT \Pasa~input_o\;
\ALT_INV_Start~input_o\ <= NOT \Start~input_o\;
\ALT_INV_Lectura~input_o\ <= NOT \Lectura~input_o\;
\inst2|ALT_INV_enRG~combout\ <= NOT \inst2|enRG~combout\;
\inst2|ALT_INV_resetD~combout\ <= NOT \inst2|resetD~combout\;
\inst2|ALT_INV_EnM~combout\ <= NOT \inst2|EnM~combout\;
\inst2|ALT_INV_y.Td~q\ <= NOT \inst2|y.Td~q\;
\inst2|ALT_INV_y.Tk~q\ <= NOT \inst2|y.Tk~q\;
\inst2|ALT_INV_y.Ta~q\ <= NOT \inst2|y.Ta~q\;

\Led_Inicio~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|y.Tc~q\,
	devoe => ww_devoe,
	o => \Led_Inicio~output_o\);

\stopN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~0_combout\,
	devoe => ww_devoe,
	o => \stopN~output_o\);

\n_viajesQ[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \n_viajesQ[4]~output_o\);

\n_viajesQ[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \n_viajesQ[3]~output_o\);

\n_viajesQ[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \n_viajesQ[2]~output_o\);

\n_viajesQ[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \n_viajesQ[1]~output_o\);

\n_viajesQ[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \n_viajesQ[0]~output_o\);

\resetRG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \resetRG~output_o\);

\n_viajes[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(4),
	devoe => ww_devoe,
	o => \n_viajes[4]~output_o\);

\n_viajes[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(3),
	devoe => ww_devoe,
	o => \n_viajes[3]~output_o\);

\n_viajes[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(2),
	devoe => ww_devoe,
	o => \n_viajes[2]~output_o\);

\n_viajes[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(1),
	devoe => ww_devoe,
	o => \n_viajes[1]~output_o\);

\n_viajes[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(0),
	devoe => ww_devoe,
	o => \n_viajes[0]~output_o\);

\enN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \enN~output_o\);

\resetNN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \resetNN~output_o\);

\stopM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~0_combout\,
	devoe => ww_devoe,
	o => \stopM~output_o\);

\n_monedas[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|Q\(2),
	devoe => ww_devoe,
	o => \n_monedas[2]~output_o\);

\n_monedas[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|Q\(1),
	devoe => ww_devoe,
	o => \n_monedas[1]~output_o\);

\n_monedas[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|Q\(0),
	devoe => ww_devoe,
	o => \n_monedas[0]~output_o\);

\enM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|EnM~combout\,
	devoe => ww_devoe,
	o => \enM~output_o\);

\resetD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|resetD~combout\,
	devoe => ww_devoe,
	o => \resetD~output_o\);

\pasaMoneda~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|WideOr9~combout\,
	devoe => ww_devoe,
	o => \pasaMoneda~output_o\);

\LedMonedaIn~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|WideOr11~combout\,
	devoe => ww_devoe,
	o => \LedMonedaIn~output_o\);

\ET~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ET~combout\,
	devoe => ww_devoe,
	o => \ET~output_o\);

\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\Lectura~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lectura,
	o => \Lectura~input_o\);

\Start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

\inst2|y.Ta~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|y.Ta~0_combout\ = (\inst2|y.Ta~q\) # (\Start~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~input_o\,
	datab => \inst2|ALT_INV_y.Ta~q\,
	combout => \inst2|y.Ta~0_combout\);

\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

\inst2|y.Ta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|y.Ta~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Ta~q\);

\inst2|y~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|y~31_combout\ = (\Start~input_o\ & ((!\inst2|y.Ta~q\) # (\inst2|y.Tb~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001010100010101000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~input_o\,
	datab => \inst2|ALT_INV_y.Tb~q\,
	datac => \inst2|ALT_INV_y.Ta~q\,
	combout => \inst2|y~31_combout\);

\inst2|y.Tb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|y~31_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Tb~q\);

\Puerta~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Puerta,
	o => \Puerta~input_o\);

\inst5|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst19|Q\(1),
	ena => \ALT_INV_inst14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|temp\(1));

\inst19|Q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Q[0]~0_combout\ = !\inst5|temp\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_temp\(0),
	combout => \inst19|Q[0]~0_combout\);

\moneda~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_moneda,
	o => \moneda~input_o\);

\inst2|y~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|y~29_combout\ = (\inst2|y.Tx~q\ & !\moneda~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.Tx~q\,
	datab => \ALT_INV_moneda~input_o\,
	combout => \inst2|y~29_combout\);

\inst2|y.Tp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|y~29_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Tp~q\);

\Comprar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Comprar,
	o => \Comprar~input_o\);

\Clock2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock2,
	o => \Clock2~input_o\);

\inst|Q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[0]~0_combout\ = !\inst4|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst|Q[0]~0_combout\);

\inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(0));

\ID_usQ[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_usQ(0),
	o => \ID_usQ[0]~input_o\);

\inst2|enRG\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|enRG~combout\ = ( \inst2|enRG~combout\ & ( \inst2|y.Tc~q\ & ( \Lectura~input_o\ ) ) ) # ( !\inst2|enRG~combout\ & ( \inst2|y.Tc~q\ & ( \Lectura~input_o\ ) ) ) # ( \inst2|enRG~combout\ & ( !\inst2|y.Tc~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Lectura~input_o\,
	datae => \inst2|ALT_INV_enRG~combout\,
	dataf => \inst2|ALT_INV_y.Tc~q\,
	combout => \inst2|enRG~combout\);

\inst21|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \ID_usQ[0]~input_o\,
	ena => \inst2|enRG~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|temp\(0));

\ID_usQ[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_usQ(1),
	o => \ID_usQ[1]~input_o\);

\inst21|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \ID_usQ[1]~input_o\,
	ena => \inst2|enRG~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|temp\(1));

\ID_usQ[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_usQ(2),
	o => \ID_usQ[2]~input_o\);

\inst21|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \ID_usQ[2]~input_o\,
	ena => \inst2|enRG~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|temp\(2));

\ID_usQ[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_usQ(3),
	o => \ID_usQ[3]~input_o\);

\inst21|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \ID_usQ[3]~input_o\,
	ena => \inst2|enRG~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|temp\(3));

\inst4|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "C0CA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "proyecto.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAMProyecto:inst4|altsyncram:altsyncram_component|altsyncram_hm14:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 5,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst2|save~combout\,
	portare => VCC,
	clk0 => \Clock2~input_o\,
	portadatain => \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\inst|Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~3_combout\ = !\inst4|altsyncram_component|auto_generated|q_a\(1) $ (!\inst4|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datab => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst|Add0~3_combout\);

\inst|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst|Add0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(1));

\inst4|altsyncram_component|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0002",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "proyecto.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAMProyecto:inst4|altsyncram:altsyncram_component|altsyncram_hm14:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 5,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst2|save~combout\,
	portare => VCC,
	clk0 => \Clock2~input_o\,
	portadatain => \inst4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst4|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\inst|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = !\inst4|altsyncram_component|auto_generated|q_a\(2) $ (((!\inst4|altsyncram_component|auto_generated|q_a\(1)) # (!\inst4|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011001010110010101100101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datab => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst|Add0~2_combout\);

\inst|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(2));

\inst4|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "proyecto.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAMProyecto:inst4|altsyncram:altsyncram_component|altsyncram_hm14:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 5,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst2|save~combout\,
	portare => VCC,
	clk0 => \Clock2~input_o\,
	portadatain => \inst4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst4|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = !\inst4|altsyncram_component|auto_generated|q_a\(3) $ (((!\inst4|altsyncram_component|auto_generated|q_a\(2)) # ((!\inst4|altsyncram_component|auto_generated|q_a\(1)) # (!\inst4|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110001100110011011000110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datab => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst|Add0~1_combout\);

\inst|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst|Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(3));

\inst4|altsyncram_component|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "proyecto.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAMProyecto:inst4|altsyncram:altsyncram_component|altsyncram_hm14:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 5,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst2|save~combout\,
	portare => VCC,
	clk0 => \Clock2~input_o\,
	portadatain => \inst4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst4|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\inst15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = (\inst4|altsyncram_component|auto_generated|q_a\(4) & ((\inst4|altsyncram_component|auto_generated|q_a\(3)) # (\inst4|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datab => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \inst15~0_combout\);

\inst2|y~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|y~34_combout\ = (\Lectura~input_o\ & ((\inst2|y.Td~q\) # (\inst2|y.Tc~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.Tc~q\,
	datab => \ALT_INV_Lectura~input_o\,
	datac => \inst2|ALT_INV_y.Td~q\,
	combout => \inst2|y~34_combout\);

\inst2|y.Td\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|y~34_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Td~q\);

\inst2|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = ( \inst2|y.Td~q\ & ( (!\inst15~0_combout\ & (((!\Comprar~input_o\ & \inst2|y.Tk~q\)))) # (\inst15~0_combout\ & ((!\Lectura~input_o\) # ((!\Comprar~input_o\ & \inst2|y.Tk~q\)))) ) ) # ( !\inst2|y.Td~q\ & ( (!\Comprar~input_o\ 
-- & \inst2|y.Tk~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010001001111010000000000111100000100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst15~0_combout\,
	datab => \ALT_INV_Lectura~input_o\,
	datac => \ALT_INV_Comprar~input_o\,
	datad => \inst2|ALT_INV_y.Tk~q\,
	datae => \inst2|ALT_INV_y.Td~q\,
	combout => \inst2|Selector2~0_combout\);

\inst2|y.Tk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|Selector2~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Tk~q\);

\inst2|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\Comprar~input_o\ & ((\inst2|y.Tk~q\) # (\inst2|y.Tm~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Comprar~input_o\,
	datab => \inst2|ALT_INV_y.Tm~q\,
	datac => \inst2|ALT_INV_y.Tk~q\,
	combout => \inst2|Selector3~0_combout\);

\inst2|y.Tm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|Selector3~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Tm~q\);

\inst2|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = ( \Comprar~input_o\ & ( \inst2|y.Tm~q\ & ( (!\inst14~0_combout\ & (((\inst2|y.Tn~q\ & !\moneda~input_o\)) # (\inst2|y.Tp~q\))) ) ) ) # ( !\Comprar~input_o\ & ( \inst2|y.Tm~q\ ) ) # ( \Comprar~input_o\ & ( !\inst2|y.Tm~q\ & ( 
-- (!\inst14~0_combout\ & (((\inst2|y.Tn~q\ & !\moneda~input_o\)) # (\inst2|y.Tp~q\))) ) ) ) # ( !\Comprar~input_o\ & ( !\inst2|y.Tm~q\ & ( (!\inst14~0_combout\ & (((\inst2|y.Tn~q\ & !\moneda~input_o\)) # (\inst2|y.Tp~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000100010001010100010001011111111111111110010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst14~0_combout\,
	datab => \inst2|ALT_INV_y.Tp~q\,
	datac => \inst2|ALT_INV_y.Tn~q\,
	datad => \ALT_INV_moneda~input_o\,
	datae => \ALT_INV_Comprar~input_o\,
	dataf => \inst2|ALT_INV_y.Tm~q\,
	combout => \inst2|Selector4~0_combout\);

\inst2|y.Tn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|Selector4~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Tn~q\);

\inst2|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector7~0_combout\ = ( \inst2|y.Tx~q\ & ( \moneda~input_o\ ) ) # ( !\inst2|y.Tx~q\ & ( \moneda~input_o\ & ( \inst2|y.Tn~q\ ) ) ) # ( \inst2|y.Tx~q\ & ( !\moneda~input_o\ & ( (\inst19|Q\(2) & (\inst2|y.Tn~q\ & ((\inst19|Q\(0)) # (\inst19|Q\(1))))) 
-- ) ) ) # ( !\inst2|y.Tx~q\ & ( !\moneda~input_o\ & ( (\inst19|Q\(2) & (\inst2|y.Tn~q\ & ((\inst19|Q\(0)) # (\inst19|Q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Q\(2),
	datab => \inst19|ALT_INV_Q\(1),
	datac => \inst19|ALT_INV_Q\(0),
	datad => \inst2|ALT_INV_y.Tn~q\,
	datae => \inst2|ALT_INV_y.Tx~q\,
	dataf => \ALT_INV_moneda~input_o\,
	combout => \inst2|Selector7~0_combout\);

\inst2|y.Tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|Selector7~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Tx~q\);

\inst2|EnM\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|EnM~combout\ = ( \inst2|EnM~combout\ & ( \inst2|y.Tx~q\ & ( !\moneda~input_o\ ) ) ) # ( !\inst2|EnM~combout\ & ( \inst2|y.Tx~q\ & ( !\moneda~input_o\ ) ) ) # ( \inst2|EnM~combout\ & ( !\inst2|y.Tx~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_moneda~input_o\,
	datae => \inst2|ALT_INV_EnM~combout\,
	dataf => \inst2|ALT_INV_y.Tx~q\,
	combout => \inst2|EnM~combout\);

\inst19|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst19|Q[0]~0_combout\,
	ena => \inst2|EnM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Q\(0));

\inst5|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst19|Q\(0),
	ena => \ALT_INV_inst14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|temp\(0));

\inst19|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~1_combout\ = !\inst5|temp\(1) $ (!\inst5|temp\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_temp\(1),
	datab => \inst5|ALT_INV_temp\(0),
	combout => \inst19|Add0~1_combout\);

\inst19|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst19|Add0~1_combout\,
	ena => \inst2|EnM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Q\(1));

\inst14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\inst19|Q\(2) & ((\inst19|Q\(0)) # (\inst19|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Q\(2),
	datab => \inst19|ALT_INV_Q\(1),
	datac => \inst19|ALT_INV_Q\(0),
	combout => \inst14~0_combout\);

\inst5|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst19|Q\(2),
	ena => \ALT_INV_inst14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|temp\(2));

\inst19|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~0_combout\ = !\inst5|temp\(2) $ (((!\inst5|temp\(1)) # (!\inst5|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011001010110010101100101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_temp\(2),
	datab => \inst5|ALT_INV_temp\(1),
	datac => \inst5|ALT_INV_temp\(0),
	combout => \inst19|Add0~0_combout\);

\inst19|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst19|Add0~0_combout\,
	ena => \inst2|EnM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|Q\(2));

\inst2|y~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|y~32_combout\ = (\inst19|Q\(2) & (\inst2|y.Tp~q\ & ((\inst19|Q\(0)) # (\inst19|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000000000101010000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Q\(2),
	datab => \inst19|ALT_INV_Q\(1),
	datac => \inst19|ALT_INV_Q\(0),
	datad => \inst2|ALT_INV_y.Tp~q\,
	combout => \inst2|y~32_combout\);

\inst2|y.Tq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|y~32_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Tq~q\);

\inst2|save\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|save~combout\ = (\inst2|y.Tq~q\) # (\inst2|y.Tf~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.Tf~q\,
	datab => \inst2|ALT_INV_y.Tq~q\,
	combout => \inst2|save~combout\);

\inst|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = ( \inst4|altsyncram_component|auto_generated|q_a\(0) & ( !\inst4|altsyncram_component|auto_generated|q_a\(4) $ (((!\inst4|altsyncram_component|auto_generated|q_a\(2)) # ((!\inst4|altsyncram_component|auto_generated|q_a\(3)) # 
-- (!\inst4|altsyncram_component|auto_generated|q_a\(1))))) ) ) # ( !\inst4|altsyncram_component|auto_generated|q_a\(0) & ( \inst4|altsyncram_component|auto_generated|q_a\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101011001010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datab => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datae => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst|Add0~0_combout\);

\inst|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(4));

\inst4|altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "proyecto.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAMProyecto:inst4|altsyncram:altsyncram_component|altsyncram_hm14:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 5,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst2|save~combout\,
	portare => VCC,
	clk0 => \Clock2~input_o\,
	portadatain => \inst4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst4|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\inst2|y~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|y~33_combout\ = ( \inst2|y.Td~q\ & ( (!\Lectura~input_o\ & ((!\inst4|altsyncram_component|auto_generated|q_a\(4)) # ((!\inst4|altsyncram_component|auto_generated|q_a\(2) & !\inst4|altsyncram_component|auto_generated|q_a\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100000000000000000000000001110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datab => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst4|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \ALT_INV_Lectura~input_o\,
	datae => \inst2|ALT_INV_y.Td~q\,
	combout => \inst2|y~33_combout\);

\inst2|y.Te\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|y~33_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Te~q\);

\inst2|y.Tz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|y.Te~q\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Tz~q\);

\inst2|y.Tf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|y.Tz~q\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Tf~q\);

\inst2|y.Th\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|y.Tf~q\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Th~q\);

\inst2|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = ((\inst2|y.Ti~q\ & !\Puerta~input_o\)) # (\inst2|y.Th~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.Ti~q\,
	datab => \ALT_INV_Puerta~input_o\,
	datac => \inst2|ALT_INV_y.Th~q\,
	combout => \inst2|Selector1~0_combout\);

\inst2|y.Ti\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|Selector1~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Ti~q\);

\inst2|y~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|y~27_combout\ = (\Puerta~input_o\ & ((\inst2|y.Tj~q\) # (\inst2|y.Ti~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.Ti~q\,
	datab => \inst2|ALT_INV_y.Tj~q\,
	datac => \ALT_INV_Puerta~input_o\,
	combout => \inst2|y~27_combout\);

\inst2|y.Tj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|y~27_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Tj~q\);

\RetirarT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RetirarT,
	o => \RetirarT~input_o\);

\inst2|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector5~0_combout\ = ((\inst2|y.Tr~q\ & !\RetirarT~input_o\)) # (\inst2|y.Tq~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011100110111001101110011011100110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.Tr~q\,
	datab => \inst2|ALT_INV_y.Tq~q\,
	datac => \ALT_INV_RetirarT~input_o\,
	combout => \inst2|Selector5~0_combout\);

\inst2|y.Tr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|Selector5~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Tr~q\);

\inst2|y~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|y~30_combout\ = (\RetirarT~input_o\ & ((\inst2|y.Ts~q\) # (\inst2|y.Tr~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.Tr~q\,
	datab => \inst2|ALT_INV_y.Ts~q\,
	datac => \ALT_INV_RetirarT~input_o\,
	combout => \inst2|y~30_combout\);

\inst2|y.Ts\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|y~30_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Ts~q\);

\Pasa~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pasa,
	o => \Pasa~input_o\);

\inst2|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (!\inst2|y.tt~q\ & (\inst2|y.Ts~q\ & ((!\RetirarT~input_o\)))) # (\inst2|y.tt~q\ & ((!\Pasa~input_o\) # ((\inst2|y.Ts~q\ & !\RetirarT~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101010000011100110101000001110011010100000111001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.tt~q\,
	datab => \inst2|ALT_INV_y.Ts~q\,
	datac => \ALT_INV_Pasa~input_o\,
	datad => \ALT_INV_RetirarT~input_o\,
	combout => \inst2|Selector6~0_combout\);

\inst2|y.tt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|Selector6~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.tt~q\);

\inst2|y~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|y~28_combout\ = (\Pasa~input_o\ & ((\inst2|y.Tu~q\) # (\inst2|y.tt~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.tt~q\,
	datab => \inst2|ALT_INV_y.Tu~q\,
	datac => \ALT_INV_Pasa~input_o\,
	combout => \inst2|y~28_combout\);

\inst2|y.Tu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|y~28_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Tu~q\);

\inst2|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (!\inst2|y.Tj~q\ & (\inst2|y.Tu~q\ & (!\Pasa~input_o\))) # (\inst2|y.Tj~q\ & ((!\Puerta~input_o\) # ((\inst2|y.Tu~q\ & !\Pasa~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010100110000011101010011000001110101001100000111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.Tj~q\,
	datab => \inst2|ALT_INV_y.Tu~q\,
	datac => \ALT_INV_Pasa~input_o\,
	datad => \ALT_INV_Puerta~input_o\,
	combout => \inst2|Selector0~0_combout\);

\inst2|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector0~1_combout\ = ( \inst2|Selector0~0_combout\ ) # ( !\inst2|Selector0~0_combout\ & ( (!\inst2|y.Tc~q\ & (((!\Start~input_o\ & \inst2|y.Tb~q\)))) # (\inst2|y.Tc~q\ & ((!\Lectura~input_o\) # ((!\Start~input_o\ & \inst2|y.Tb~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011110100111111111111111101000100111101001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.Tc~q\,
	datab => \ALT_INV_Lectura~input_o\,
	datac => \ALT_INV_Start~input_o\,
	datad => \inst2|ALT_INV_y.Tb~q\,
	datae => \inst2|ALT_INV_Selector0~0_combout\,
	combout => \inst2|Selector0~1_combout\);

\inst2|y.Tc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2|Selector0~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|y.Tc~q\);

\inst2|resetD\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|resetD~combout\ = ( \inst2|resetD~combout\ & ( \inst2|y.Tm~q\ & ( !\Comprar~input_o\ ) ) ) # ( !\inst2|resetD~combout\ & ( \inst2|y.Tm~q\ & ( !\Comprar~input_o\ ) ) ) # ( \inst2|resetD~combout\ & ( !\inst2|y.Tm~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Comprar~input_o\,
	datae => \inst2|ALT_INV_resetD~combout\,
	dataf => \inst2|ALT_INV_y.Tm~q\,
	combout => \inst2|resetD~combout\);

\inst2|WideOr9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|WideOr9~combout\ = (((\inst2|y.Tu~q\) # (\inst2|y.tt~q\)) # (\inst2|y.Tj~q\)) # (\inst2|y.Ti~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.Ti~q\,
	datab => \inst2|ALT_INV_y.Tj~q\,
	datac => \inst2|ALT_INV_y.tt~q\,
	datad => \inst2|ALT_INV_y.Tu~q\,
	combout => \inst2|WideOr9~combout\);

\inst2|WideOr11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|WideOr11~combout\ = ((\inst2|y.Tx~q\) # (\inst2|y.Tn~q\)) # (\inst2|y.Tp~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.Tp~q\,
	datab => \inst2|ALT_INV_y.Tn~q\,
	datac => \inst2|ALT_INV_y.Tx~q\,
	combout => \inst2|WideOr11~combout\);

\inst2|ET\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ET~combout\ = (\inst2|y.Ts~q\) # (\inst2|y.Tr~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_y.Tr~q\,
	datab => \inst2|ALT_INV_y.Ts~q\,
	combout => \inst2|ET~combout\);

ww_Led_Inicio <= \Led_Inicio~output_o\;

ww_stopN <= \stopN~output_o\;

ww_n_viajesQ(4) <= \n_viajesQ[4]~output_o\;

ww_n_viajesQ(3) <= \n_viajesQ[3]~output_o\;

ww_n_viajesQ(2) <= \n_viajesQ[2]~output_o\;

ww_n_viajesQ(1) <= \n_viajesQ[1]~output_o\;

ww_n_viajesQ(0) <= \n_viajesQ[0]~output_o\;

ww_resetRG <= \resetRG~output_o\;

ww_n_viajes(4) <= \n_viajes[4]~output_o\;

ww_n_viajes(3) <= \n_viajes[3]~output_o\;

ww_n_viajes(2) <= \n_viajes[2]~output_o\;

ww_n_viajes(1) <= \n_viajes[1]~output_o\;

ww_n_viajes(0) <= \n_viajes[0]~output_o\;

ww_enN <= \enN~output_o\;

ww_resetNN <= \resetNN~output_o\;

ww_stopM <= \stopM~output_o\;

ww_n_monedas(2) <= \n_monedas[2]~output_o\;

ww_n_monedas(1) <= \n_monedas[1]~output_o\;

ww_n_monedas(0) <= \n_monedas[0]~output_o\;

ww_enM <= \enM~output_o\;

ww_resetD <= \resetD~output_o\;

ww_pasaMoneda <= \pasaMoneda~output_o\;

ww_LedMonedaIn <= \LedMonedaIn~output_o\;

ww_ET <= \ET~output_o\;
END structure;


