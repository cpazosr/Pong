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
-- Generated on "03/12/2021 03:42:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SyncVGA800x525
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SyncVGA800x525_vhd_vec_tst IS
END SyncVGA800x525_vhd_vec_tst;
ARCHITECTURE SyncVGA800x525_arch OF SyncVGA800x525_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL H_SYNC : STD_LOGIC;
SIGNAL LINEA : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL PIXEL : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
SIGNAL START : STD_LOGIC;
SIGNAL V_SYNC : STD_LOGIC;
COMPONENT SyncVGA800x525
	PORT (
	CLK : IN STD_LOGIC;
	H_SYNC : BUFFER STD_LOGIC;
	LINEA : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	PIXEL : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	RST : IN STD_LOGIC;
	START : IN STD_LOGIC;
	V_SYNC : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SyncVGA800x525
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	H_SYNC => H_SYNC,
	LINEA => LINEA,
	PIXEL => PIXEL,
	RST => RST,
	START => START,
	V_SYNC => V_SYNC
	);

-- START
t_prcs_START: PROCESS
BEGIN
	START <= '0';
	WAIT FOR 240000 ps;
	START <= '1';
	WAIT FOR 1200000 ps;
	START <= '0';
	WAIT FOR 560000 ps;
	START <= '1';
	WAIT FOR 4880000 ps;
	START <= '0';
	WAIT FOR 320000 ps;
	START <= '1';
WAIT;
END PROCESS t_prcs_START;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
	WAIT FOR 80000 ps;
	RST <= '1';
	WAIT FOR 1360000 ps;
	RST <= '0';
	WAIT FOR 80000 ps;
	RST <= '1';
WAIT;
END PROCESS t_prcs_RST;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 250 ps;
	CLK <= '1';
	WAIT FOR 250 ps;
	IF (NOW >= 20000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
END SyncVGA800x525_arch;
