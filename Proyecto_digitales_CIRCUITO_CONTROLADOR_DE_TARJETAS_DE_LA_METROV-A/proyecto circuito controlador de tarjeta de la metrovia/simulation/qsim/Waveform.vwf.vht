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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/06/2019 22:41:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SIMULACION
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SIMULACION_vhd_vec_tst IS
END SIMULACION_vhd_vec_tst;
ARCHITECTURE SIMULACION_arch OF SIMULACION_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL Clock2 : STD_LOGIC;
SIGNAL Comprar : STD_LOGIC;
SIGNAL enM : STD_LOGIC;
SIGNAL enN : STD_LOGIC;
SIGNAL ET : STD_LOGIC;
SIGNAL ID_usQ : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lectura : STD_LOGIC;
SIGNAL Led_Inicio : STD_LOGIC;
SIGNAL LedMonedaIn : STD_LOGIC;
SIGNAL moneda : STD_LOGIC;
SIGNAL n_monedas : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL n_viajesQ : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Pasa : STD_LOGIC;
SIGNAL pasaMoneda : STD_LOGIC;
SIGNAL Puerta : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL resetD : STD_LOGIC;
SIGNAL resetNN : STD_LOGIC;
SIGNAL resetRG : STD_LOGIC;
SIGNAL RetirarT : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
SIGNAL stopM : STD_LOGIC;
SIGNAL stopN : STD_LOGIC;
COMPONENT SIMULACION
	PORT (
	Clock : IN STD_LOGIC;
	Clock2 : IN STD_LOGIC;
	Comprar : IN STD_LOGIC;
	enM : OUT STD_LOGIC;
	enN : OUT STD_LOGIC;
	ET : OUT STD_LOGIC;
	ID_usQ : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lectura : IN STD_LOGIC;
	Led_Inicio : OUT STD_LOGIC;
	LedMonedaIn : OUT STD_LOGIC;
	moneda : IN STD_LOGIC;
	n_monedas : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	n_viajesQ : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Pasa : IN STD_LOGIC;
	pasaMoneda : OUT STD_LOGIC;
	Puerta : IN STD_LOGIC;
	Reset : IN STD_LOGIC;
	resetD : OUT STD_LOGIC;
	resetNN : OUT STD_LOGIC;
	resetRG : OUT STD_LOGIC;
	RetirarT : IN STD_LOGIC;
	Start : IN STD_LOGIC;
	stopM : OUT STD_LOGIC;
	stopN : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SIMULACION
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Clock2 => Clock2,
	Comprar => Comprar,
	enM => enM,
	enN => enN,
	ET => ET,
	ID_usQ => ID_usQ,
	Lectura => Lectura,
	Led_Inicio => Led_Inicio,
	LedMonedaIn => LedMonedaIn,
	moneda => moneda,
	n_monedas => n_monedas,
	n_viajesQ => n_viajesQ,
	Pasa => Pasa,
	pasaMoneda => pasaMoneda,
	Puerta => Puerta,
	Reset => Reset,
	resetD => resetD,
	resetNN => resetNN,
	resetRG => resetRG,
	RetirarT => RetirarT,
	Start => Start,
	stopM => stopM,
	stopN => stopN
	);

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
	WAIT FOR 70000 ps;
	Reset <= '1';
WAIT;
END PROCESS t_prcs_Reset;

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 5000 ps;
	Clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- Start
t_prcs_Start: PROCESS
BEGIN
	Start <= '0';
	WAIT FOR 90000 ps;
	Start <= '1';
	WAIT FOR 70000 ps;
	Start <= '0';
	WAIT FOR 350000 ps;
	Start <= '1';
	WAIT FOR 90000 ps;
	Start <= '0';
WAIT;
END PROCESS t_prcs_Start;

-- Lectura
t_prcs_Lectura: PROCESS
BEGIN
	Lectura <= '0';
	WAIT FOR 180000 ps;
	Lectura <= '1';
	WAIT FOR 40000 ps;
	Lectura <= '0';
	WAIT FOR 400000 ps;
	Lectura <= '1';
	WAIT FOR 50000 ps;
	Lectura <= '0';
WAIT;
END PROCESS t_prcs_Lectura;

-- Puerta
t_prcs_Puerta: PROCESS
BEGIN
	Puerta <= '0';
	WAIT FOR 250000 ps;
	Puerta <= '1';
	WAIT FOR 40000 ps;
	Puerta <= '0';
	WAIT FOR 400000 ps;
	Puerta <= '1';
	WAIT FOR 40000 ps;
	Puerta <= '0';
WAIT;
END PROCESS t_prcs_Puerta;

-- Comprar
t_prcs_Comprar: PROCESS
BEGIN
	Comprar <= '0';
	WAIT FOR 240000 ps;
	Comprar <= '1';
	WAIT FOR 50000 ps;
	Comprar <= '0';
WAIT;
END PROCESS t_prcs_Comprar;

-- moneda
t_prcs_moneda: PROCESS
BEGIN
	moneda <= '0';
	WAIT FOR 330000 ps;
	moneda <= '1';
	WAIT FOR 30000 ps;
	moneda <= '0';
	WAIT FOR 30000 ps;
	moneda <= '1';
	WAIT FOR 30000 ps;
	moneda <= '0';
	WAIT FOR 30000 ps;
	moneda <= '1';
	WAIT FOR 30000 ps;
	moneda <= '0';
	WAIT FOR 30000 ps;
	moneda <= '1';
	WAIT FOR 30000 ps;
	moneda <= '0';
	WAIT FOR 30000 ps;
	moneda <= '1';
	WAIT FOR 30000 ps;
	moneda <= '0';
	WAIT FOR 30000 ps;
	moneda <= '1';
	WAIT FOR 30000 ps;
	moneda <= '0';
WAIT;
END PROCESS t_prcs_moneda;

-- RetirarT
t_prcs_RetirarT: PROCESS
BEGIN
	RetirarT <= '0';
	WAIT FOR 680000 ps;
	RetirarT <= '1';
	WAIT FOR 50000 ps;
	RetirarT <= '0';
WAIT;
END PROCESS t_prcs_RetirarT;

-- Pasa
t_prcs_Pasa: PROCESS
BEGIN
	Pasa <= '0';
	WAIT FOR 770000 ps;
	Pasa <= '1';
	WAIT FOR 130000 ps;
	Pasa <= '0';
WAIT;
END PROCESS t_prcs_Pasa;
-- ID_usQ[3]
t_prcs_ID_usQ_3: PROCESS
BEGIN
	ID_usQ(3) <= '0';
WAIT;
END PROCESS t_prcs_ID_usQ_3;
-- ID_usQ[2]
t_prcs_ID_usQ_2: PROCESS
BEGIN
	ID_usQ(2) <= '1';
WAIT;
END PROCESS t_prcs_ID_usQ_2;
-- ID_usQ[1]
t_prcs_ID_usQ_1: PROCESS
BEGIN
	ID_usQ(1) <= '0';
WAIT;
END PROCESS t_prcs_ID_usQ_1;
-- ID_usQ[0]
t_prcs_ID_usQ_0: PROCESS
BEGIN
	ID_usQ(0) <= '0';
WAIT;
END PROCESS t_prcs_ID_usQ_0;
END SIMULACION_arch;
