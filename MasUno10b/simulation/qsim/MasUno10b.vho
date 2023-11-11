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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/28/2021 21:34:41"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MasUno10b IS
    PORT (
	A : IN std_logic_vector(9 DOWNTO 0);
	S : OUT std_logic_vector(9 DOWNTO 0);
	Cout : OUT std_logic
	);
END MasUno10b;

-- Design Ports Information
-- S[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MasUno10b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \I1|S~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \I2|S~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \I3|S~combout\ : std_logic;
SIGNAL \I3|Co~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \I4|S~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \I5|S~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \I6|S~combout\ : std_logic;
SIGNAL \I6|Co~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \I7|S~combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \I8|S~combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \I9|S~combout\ : std_logic;
SIGNAL \I9|Co~combout\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
S <= ww_S;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y45_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N30
\S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_A[0]~input_o\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|S~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I2|S~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I3|S~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\S[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|S~combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\S[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I5|S~combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\S[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I6|S~combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\S[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I7|S~combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\S[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I8|S~combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\S[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I9|S~combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\Cout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I9|Co~combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOIBUF_X46_Y54_N15
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N8
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X50_Y53_N16
\I1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|S~combout\ = \A[1]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	combout => \I1|S~combout\);

-- Location: IOIBUF_X54_Y54_N15
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X50_Y53_N26
\I2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|S~combout\ = \A[2]~input_o\ $ (((\A[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	combout => \I2|S~combout\);

-- Location: IOIBUF_X46_Y54_N1
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X50_Y53_N4
\I3|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|S~combout\ = \A[3]~input_o\ $ (((\A[2]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \I3|S~combout\);

-- Location: LCCOMB_X50_Y53_N30
\I3|Co\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Co~combout\ = (\A[2]~input_o\ & (\A[3]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \I3|Co~combout\);

-- Location: IOIBUF_X51_Y54_N29
\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X50_Y53_N0
\I4|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|S~combout\ = \I3|Co~combout\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I3|Co~combout\,
	datad => \A[4]~input_o\,
	combout => \I4|S~combout\);

-- Location: IOIBUF_X51_Y54_N22
\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X50_Y53_N2
\I5|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I5|S~combout\ = \A[5]~input_o\ $ (((\I3|Co~combout\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \I3|Co~combout\,
	datad => \A[4]~input_o\,
	combout => \I5|S~combout\);

-- Location: IOIBUF_X54_Y54_N8
\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X50_Y53_N12
\I6|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I6|S~combout\ = \A[6]~input_o\ $ (((\I3|Co~combout\ & (\A[5]~input_o\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|Co~combout\,
	datab => \A[5]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[4]~input_o\,
	combout => \I6|S~combout\);

-- Location: LCCOMB_X50_Y53_N22
\I6|Co\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I6|Co~combout\ = (\I3|Co~combout\ & (\A[5]~input_o\ & (\A[6]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|Co~combout\,
	datab => \A[5]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[4]~input_o\,
	combout => \I6|Co~combout\);

-- Location: IOIBUF_X51_Y54_N1
\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X50_Y53_N24
\I7|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I7|S~combout\ = \I6|Co~combout\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I6|Co~combout\,
	datad => \A[7]~input_o\,
	combout => \I7|S~combout\);

-- Location: IOIBUF_X54_Y54_N1
\A[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X50_Y53_N18
\I8|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I8|S~combout\ = \A[8]~input_o\ $ (((\A[7]~input_o\ & \I6|Co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \I6|Co~combout\,
	datad => \A[8]~input_o\,
	combout => \I8|S~combout\);

-- Location: IOIBUF_X51_Y54_N15
\A[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X50_Y53_N28
\I9|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I9|S~combout\ = \A[9]~input_o\ $ (((\A[7]~input_o\ & (\I6|Co~combout\ & \A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[9]~input_o\,
	datac => \I6|Co~combout\,
	datad => \A[8]~input_o\,
	combout => \I9|S~combout\);

-- Location: LCCOMB_X50_Y53_N6
\I9|Co\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I9|Co~combout\ = (\A[7]~input_o\ & (\A[9]~input_o\ & (\I6|Co~combout\ & \A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[9]~input_o\,
	datac => \I6|Co~combout\,
	datad => \A[8]~input_o\,
	combout => \I9|Co~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


