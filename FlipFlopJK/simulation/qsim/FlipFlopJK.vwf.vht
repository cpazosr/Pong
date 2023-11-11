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
-- Generated on "02/26/2021 19:21:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FlipFlopJK
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FlipFlopJK_vhd_vec_tst IS
END FlipFlopJK_vhd_vec_tst;
ARCHITECTURE FlipFlopJK_arch OF FlipFlopJK_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL J : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL NOT_Q : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
COMPONENT FlipFlopJK
	PORT (
	CLK : IN STD_LOGIC;
	J : IN STD_LOGIC;
	K : IN STD_LOGIC;
	NOT_Q : OUT STD_LOGIC;
	Q : OUT STD_LOGIC;
	RST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FlipFlopJK
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	J => J,
	K => K,
	NOT_Q => NOT_Q,
	Q => Q,
	RST => RST
	);

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
	WAIT FOR 40000 ps;
	RST <= '1';
WAIT;
END PROCESS t_prcs_RST;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 20000 ps;
	CLK <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- J
t_prcs_J: PROCESS
BEGIN
LOOP
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_J;

-- K
t_prcs_K: PROCESS
BEGIN
LOOP
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_K;
END FlipFlopJK_arch;
