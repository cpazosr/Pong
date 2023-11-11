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
-- Generated on "03/12/2021 04:11:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DivisorFrecuenciaPorMitad
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DivisorFrecuenciaPorMitad_vhd_vec_tst IS
END DivisorFrecuenciaPorMitad_vhd_vec_tst;
ARCHITECTURE DivisorFrecuenciaPorMitad_arch OF DivisorFrecuenciaPorMitad_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_ENTRADA : STD_LOGIC;
SIGNAL CLK_SALIDA : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
COMPONENT DivisorFrecuenciaPorMitad
	PORT (
	CLK_ENTRADA : IN STD_LOGIC;
	CLK_SALIDA : BUFFER STD_LOGIC;
	RST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DivisorFrecuenciaPorMitad
	PORT MAP (
-- list connections between master ports and signals
	CLK_ENTRADA => CLK_ENTRADA,
	CLK_SALIDA => CLK_SALIDA,
	RST => RST
	);

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
	WAIT FOR 30000 ps;
	RST <= '1';
	WAIT FOR 520000 ps;
	RST <= '0';
	WAIT FOR 60000 ps;
	RST <= '1';
WAIT;
END PROCESS t_prcs_RST;

-- CLK_ENTRADA
t_prcs_CLK_ENTRADA: PROCESS
BEGIN
LOOP
	CLK_ENTRADA <= '0';
	WAIT FOR 20000 ps;
	CLK_ENTRADA <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_ENTRADA;
END DivisorFrecuenciaPorMitad_arch;
