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

-- DATE "03/12/2021 03:42:26"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SyncVGA800x525 IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	START : IN std_logic;
	PIXEL : BUFFER std_logic_vector(9 DOWNTO 0);
	LINEA : BUFFER std_logic_vector(9 DOWNTO 0);
	H_SYNC : BUFFER std_logic;
	V_SYNC : BUFFER std_logic
	);
END SyncVGA800x525;

-- Design Ports Information
-- PIXEL[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIXEL[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIXEL[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIXEL[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIXEL[4]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIXEL[5]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIXEL[6]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIXEL[7]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIXEL[8]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIXEL[9]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LINEA[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LINEA[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LINEA[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LINEA[3]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LINEA[4]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LINEA[5]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LINEA[6]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LINEA[7]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LINEA[8]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LINEA[9]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H_SYNC	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SYNC	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SyncVGA800x525 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_PIXEL : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LINEA : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_H_SYNC : std_logic;
SIGNAL ww_V_SYNC : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \PIXEL[0]~output_o\ : std_logic;
SIGNAL \PIXEL[1]~output_o\ : std_logic;
SIGNAL \PIXEL[2]~output_o\ : std_logic;
SIGNAL \PIXEL[3]~output_o\ : std_logic;
SIGNAL \PIXEL[4]~output_o\ : std_logic;
SIGNAL \PIXEL[5]~output_o\ : std_logic;
SIGNAL \PIXEL[6]~output_o\ : std_logic;
SIGNAL \PIXEL[7]~output_o\ : std_logic;
SIGNAL \PIXEL[8]~output_o\ : std_logic;
SIGNAL \PIXEL[9]~output_o\ : std_logic;
SIGNAL \LINEA[0]~output_o\ : std_logic;
SIGNAL \LINEA[1]~output_o\ : std_logic;
SIGNAL \LINEA[2]~output_o\ : std_logic;
SIGNAL \LINEA[3]~output_o\ : std_logic;
SIGNAL \LINEA[4]~output_o\ : std_logic;
SIGNAL \LINEA[5]~output_o\ : std_logic;
SIGNAL \LINEA[6]~output_o\ : std_logic;
SIGNAL \LINEA[7]~output_o\ : std_logic;
SIGNAL \LINEA[8]~output_o\ : std_logic;
SIGNAL \LINEA[9]~output_o\ : std_logic;
SIGNAL \H_SYNC~output_o\ : std_logic;
SIGNAL \V_SYNC~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \I0|I0|Q[0]~9_combout\ : std_logic;
SIGNAL \I0|I0|Q[1]~0_combout\ : std_logic;
SIGNAL \I0|I0|Q[2]~1_combout\ : std_logic;
SIGNAL \I0|I0|Q[3]~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \I0|I0|Q[4]~3_combout\ : std_logic;
SIGNAL \I0|I0|Q[5]~4_combout\ : std_logic;
SIGNAL \I0|I0|Q[6]~5_combout\ : std_logic;
SIGNAL \I0|I0|I0|I6|Co~combout\ : std_logic;
SIGNAL \I0|I0|Q[7]~6_combout\ : std_logic;
SIGNAL \I0|I0|Q[8]~7_combout\ : std_logic;
SIGNAL \I0|I0|Q[9]~8_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \I0|Equal0~0_combout\ : std_logic;
SIGNAL \I0|Equal0~1_combout\ : std_logic;
SIGNAL \I0|RST_MOD800~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \I1|Q[0]~2_combout\ : std_logic;
SIGNAL \I1|Q[1]~4_combout\ : std_logic;
SIGNAL \I1|Q[2]~5_combout\ : std_logic;
SIGNAL \I1|Q[2]~6_combout\ : std_logic;
SIGNAL \I1|Q[2]~7_combout\ : std_logic;
SIGNAL \I1|Q[3]~8_combout\ : std_logic;
SIGNAL \I1|Q[4]~17_combout\ : std_logic;
SIGNAL \I1|Q[4]~9_combout\ : std_logic;
SIGNAL \I1|Q[5]~10_combout\ : std_logic;
SIGNAL \I1|Q[8]~11_combout\ : std_logic;
SIGNAL \I1|Q[6]~12_combout\ : std_logic;
SIGNAL \I1|Q[7]~13_combout\ : std_logic;
SIGNAL \I1|Q[8]~14_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \I1|Q[9]~15_combout\ : std_logic;
SIGNAL \I1|Q[9]~16_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \I1|Q[9]~3_combout\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \EDO_X.IDLE_X~0_combout\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \EDO_X.IDLE_X~q\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \EDO_X.E_BAJO_X~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \EDO_X.E_ALTO_X~q\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \EDO_Y.E_BAJO_Y~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \EDO_Y.E_ALTO_Y~q\ : std_logic;
SIGNAL \I0|I0|Q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \I1|Q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \I1|ALT_INV_Q[9]~3_combout\ : std_logic;
SIGNAL \I0|ALT_INV_RST_MOD800~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_START <= START;
PIXEL <= ww_PIXEL;
LINEA <= ww_LINEA;
H_SYNC <= ww_H_SYNC;
V_SYNC <= ww_V_SYNC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\I1|ALT_INV_Q[9]~3_combout\ <= NOT \I1|Q[9]~3_combout\;
\I0|ALT_INV_RST_MOD800~0_combout\ <= NOT \I0|RST_MOD800~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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

-- Location: IOOBUF_X0_Y28_N2
\PIXEL[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|I0|Q\(0),
	devoe => ww_devoe,
	o => \PIXEL[0]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\PIXEL[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|I0|Q\(1),
	devoe => ww_devoe,
	o => \PIXEL[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\PIXEL[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|I0|Q\(2),
	devoe => ww_devoe,
	o => \PIXEL[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\PIXEL[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|I0|Q\(3),
	devoe => ww_devoe,
	o => \PIXEL[3]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\PIXEL[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|I0|Q\(4),
	devoe => ww_devoe,
	o => \PIXEL[4]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\PIXEL[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|I0|Q\(5),
	devoe => ww_devoe,
	o => \PIXEL[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\PIXEL[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|I0|Q\(6),
	devoe => ww_devoe,
	o => \PIXEL[6]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\PIXEL[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|I0|Q\(7),
	devoe => ww_devoe,
	o => \PIXEL[7]~output_o\);

-- Location: IOOBUF_X0_Y30_N23
\PIXEL[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|I0|Q\(8),
	devoe => ww_devoe,
	o => \PIXEL[8]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\PIXEL[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|I0|Q\(9),
	devoe => ww_devoe,
	o => \PIXEL[9]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\LINEA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|Q\(0),
	devoe => ww_devoe,
	o => \LINEA[0]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\LINEA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|Q\(1),
	devoe => ww_devoe,
	o => \LINEA[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\LINEA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|Q\(2),
	devoe => ww_devoe,
	o => \LINEA[2]~output_o\);

-- Location: IOOBUF_X0_Y36_N9
\LINEA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|Q\(3),
	devoe => ww_devoe,
	o => \LINEA[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\LINEA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|Q\(4),
	devoe => ww_devoe,
	o => \LINEA[4]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\LINEA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|Q\(5),
	devoe => ww_devoe,
	o => \LINEA[5]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\LINEA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|Q\(6),
	devoe => ww_devoe,
	o => \LINEA[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\LINEA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|Q\(7),
	devoe => ww_devoe,
	o => \LINEA[7]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\LINEA[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|Q\(8),
	devoe => ww_devoe,
	o => \LINEA[8]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\LINEA[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|Q\(9),
	devoe => ww_devoe,
	o => \LINEA[9]~output_o\);

-- Location: IOOBUF_X0_Y37_N9
\H_SYNC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EDO_X.E_ALTO_X~q\,
	devoe => ww_devoe,
	o => \H_SYNC~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\V_SYNC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EDO_Y.E_ALTO_Y~q\,
	devoe => ww_devoe,
	o => \V_SYNC~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X8_Y35_N8
\I0|I0|Q[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|Q[0]~9_combout\ = !\I0|I0|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I0|I0|Q\(0),
	combout => \I0|I0|Q[0]~9_combout\);

-- Location: LCCOMB_X8_Y35_N26
\I0|I0|Q[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|Q[1]~0_combout\ = \I0|I0|Q\(1) $ (\I0|I0|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I0|I0|Q\(1),
	datad => \I0|I0|Q\(0),
	combout => \I0|I0|Q[1]~0_combout\);

-- Location: FF_X8_Y35_N27
\I0|I0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|I0|Q[1]~0_combout\,
	clrn => \I0|ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|I0|Q\(1));

-- Location: LCCOMB_X8_Y35_N12
\I0|I0|Q[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|Q[2]~1_combout\ = \I0|I0|Q\(2) $ (((\I0|I0|Q\(0) & \I0|I0|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I0|Q\(0),
	datac => \I0|I0|Q\(2),
	datad => \I0|I0|Q\(1),
	combout => \I0|I0|Q[2]~1_combout\);

-- Location: FF_X8_Y35_N13
\I0|I0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|I0|Q[2]~1_combout\,
	clrn => \I0|ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|I0|Q\(2));

-- Location: LCCOMB_X8_Y35_N22
\I0|I0|Q[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|Q[3]~2_combout\ = \I0|I0|Q\(3) $ (((\I0|I0|Q\(2) & (\I0|I0|Q\(0) & \I0|I0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I0|Q\(2),
	datab => \I0|I0|Q\(0),
	datac => \I0|I0|Q\(3),
	datad => \I0|I0|Q\(1),
	combout => \I0|I0|Q[3]~2_combout\);

-- Location: FF_X8_Y35_N23
\I0|I0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|I0|Q[3]~2_combout\,
	clrn => \I0|ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|I0|Q\(3));

-- Location: LCCOMB_X8_Y35_N0
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\I0|I0|Q\(1) & (\I0|I0|Q\(0) & (\I0|I0|Q\(3) & \I0|I0|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I0|Q\(1),
	datab => \I0|I0|Q\(0),
	datac => \I0|I0|Q\(3),
	datad => \I0|I0|Q\(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X8_Y35_N28
\I0|I0|Q[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|Q[4]~3_combout\ = \I0|I0|Q\(4) $ (\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I0|I0|Q\(4),
	datad => \Equal0~0_combout\,
	combout => \I0|I0|Q[4]~3_combout\);

-- Location: FF_X8_Y35_N29
\I0|I0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|I0|Q[4]~3_combout\,
	clrn => \I0|ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|I0|Q\(4));

-- Location: LCCOMB_X8_Y35_N10
\I0|I0|Q[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|Q[5]~4_combout\ = \I0|I0|Q\(5) $ (((\I0|I0|Q\(4) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I0|I0|Q\(4),
	datac => \I0|I0|Q\(5),
	datad => \Equal0~0_combout\,
	combout => \I0|I0|Q[5]~4_combout\);

-- Location: FF_X8_Y35_N11
\I0|I0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|I0|Q[5]~4_combout\,
	clrn => \I0|ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|I0|Q\(5));

-- Location: LCCOMB_X8_Y35_N4
\I0|I0|Q[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|Q[6]~5_combout\ = \I0|I0|Q\(6) $ (((\I0|I0|Q\(5) & (\Equal0~0_combout\ & \I0|I0|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I0|Q\(5),
	datab => \Equal0~0_combout\,
	datac => \I0|I0|Q\(6),
	datad => \I0|I0|Q\(4),
	combout => \I0|I0|Q[6]~5_combout\);

-- Location: FF_X8_Y35_N5
\I0|I0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|I0|Q[6]~5_combout\,
	clrn => \I0|ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|I0|Q\(6));

-- Location: LCCOMB_X8_Y35_N18
\I0|I0|I0|I6|Co\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|I0|I6|Co~combout\ = (\I0|I0|Q\(5) & (\Equal0~0_combout\ & (\I0|I0|Q\(4) & \I0|I0|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I0|Q\(5),
	datab => \Equal0~0_combout\,
	datac => \I0|I0|Q\(4),
	datad => \I0|I0|Q\(6),
	combout => \I0|I0|I0|I6|Co~combout\);

-- Location: LCCOMB_X8_Y35_N2
\I0|I0|Q[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|Q[7]~6_combout\ = \I0|I0|Q\(7) $ (\I0|I0|I0|I6|Co~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I0|I0|Q\(7),
	datad => \I0|I0|I0|I6|Co~combout\,
	combout => \I0|I0|Q[7]~6_combout\);

-- Location: FF_X8_Y35_N3
\I0|I0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|I0|Q[7]~6_combout\,
	clrn => \I0|ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|I0|Q\(7));

-- Location: LCCOMB_X8_Y35_N24
\I0|I0|Q[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|Q[8]~7_combout\ = \I0|I0|Q\(8) $ (((\I0|I0|Q\(7) & \I0|I0|I0|I6|Co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I0|Q\(7),
	datac => \I0|I0|Q\(8),
	datad => \I0|I0|I0|I6|Co~combout\,
	combout => \I0|I0|Q[8]~7_combout\);

-- Location: FF_X8_Y35_N25
\I0|I0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|I0|Q[8]~7_combout\,
	clrn => \I0|ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|I0|Q\(8));

-- Location: LCCOMB_X8_Y35_N30
\I0|I0|Q[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|Q[9]~8_combout\ = \I0|I0|Q\(9) $ (((\I0|I0|Q\(7) & (\I0|I0|Q\(8) & \I0|I0|I0|I6|Co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I0|Q\(7),
	datab => \I0|I0|Q\(8),
	datac => \I0|I0|Q\(9),
	datad => \I0|I0|I0|I6|Co~combout\,
	combout => \I0|I0|Q[9]~8_combout\);

-- Location: FF_X8_Y35_N31
\I0|I0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|I0|Q[9]~8_combout\,
	clrn => \I0|ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|I0|Q\(9));

-- Location: LCCOMB_X8_Y35_N20
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\I0|I0|Q\(6) & (\I0|I0|Q\(9) & \I0|I0|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I0|I0|Q\(6),
	datac => \I0|I0|Q\(9),
	datad => \I0|I0|Q\(8),
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\RST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: LCCOMB_X8_Y35_N6
\I0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Equal0~0_combout\ = (!\I0|I0|Q\(3) & (!\I0|I0|Q\(4) & (\I0|I0|Q\(5) & !\I0|I0|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I0|Q\(3),
	datab => \I0|I0|Q\(4),
	datac => \I0|I0|Q\(5),
	datad => \I0|I0|Q\(2),
	combout => \I0|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y35_N16
\I0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Equal0~1_combout\ = (!\I0|I0|Q\(1) & (!\I0|I0|Q\(0) & \I0|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I0|Q\(1),
	datac => \I0|I0|Q\(0),
	datad => \I0|Equal0~0_combout\,
	combout => \I0|Equal0~1_combout\);

-- Location: LCCOMB_X8_Y35_N14
\I0|RST_MOD800~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|RST_MOD800~0_combout\ = ((!\I0|I0|Q\(7) & (\Equal1~0_combout\ & \I0|Equal0~1_combout\))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I0|Q\(7),
	datab => \Equal1~0_combout\,
	datac => \RST~input_o\,
	datad => \I0|Equal0~1_combout\,
	combout => \I0|RST_MOD800~0_combout\);

-- Location: FF_X8_Y35_N9
\I0|I0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|I0|Q[0]~9_combout\,
	clrn => \I0|ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|I0|Q\(0));

-- Location: LCCOMB_X7_Y35_N18
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\I0|I0|Q\(5) & !\I0|I0|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I0|I0|Q\(5),
	datad => \I0|I0|Q\(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X7_Y35_N8
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Equal1~0_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \I0|I0|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \I0|I0|Q\(4),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X7_Y35_N0
\I1|Q[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[0]~2_combout\ = \I1|Q\(0) $ (((\RST~input_o\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \I1|Q\(0),
	datad => \Equal1~1_combout\,
	combout => \I1|Q[0]~2_combout\);

-- Location: LCCOMB_X7_Y35_N30
\I1|Q[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[1]~4_combout\ = \I1|Q\(1) $ (((\RST~input_o\ & (\I1|Q\(0) & \Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \I1|Q\(0),
	datac => \I1|Q\(1),
	datad => \Equal1~1_combout\,
	combout => \I1|Q[1]~4_combout\);

-- Location: FF_X7_Y35_N31
\I1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I1|Q[1]~4_combout\,
	clrn => \I1|ALT_INV_Q[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(1));

-- Location: LCCOMB_X7_Y35_N14
\I1|Q[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[2]~5_combout\ = (\RST~input_o\ & (\I1|Q\(0) & (\I1|Q\(1) & \I0|I0|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \I1|Q\(0),
	datac => \I1|Q\(1),
	datad => \I0|I0|Q\(4),
	combout => \I1|Q[2]~5_combout\);

-- Location: LCCOMB_X7_Y35_N12
\I1|Q[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[2]~6_combout\ = (\Equal1~0_combout\ & (\Equal0~0_combout\ & (\I1|Q[2]~5_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \I1|Q[2]~5_combout\,
	datad => \Equal0~1_combout\,
	combout => \I1|Q[2]~6_combout\);

-- Location: LCCOMB_X7_Y35_N16
\I1|Q[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[2]~7_combout\ = \I1|Q\(2) $ (\I1|Q[2]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I1|Q\(2),
	datad => \I1|Q[2]~6_combout\,
	combout => \I1|Q[2]~7_combout\);

-- Location: FF_X7_Y35_N17
\I1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I1|Q[2]~7_combout\,
	clrn => \I1|ALT_INV_Q[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(2));

-- Location: LCCOMB_X6_Y35_N8
\I1|Q[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[3]~8_combout\ = \I1|Q\(3) $ (((\I1|Q\(2) & \I1|Q[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I1|Q\(2),
	datac => \I1|Q\(3),
	datad => \I1|Q[2]~6_combout\,
	combout => \I1|Q[3]~8_combout\);

-- Location: FF_X6_Y35_N9
\I1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I1|Q[3]~8_combout\,
	clrn => \I1|ALT_INV_Q[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(3));

-- Location: LCCOMB_X7_Y35_N6
\I1|Q[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[4]~17_combout\ = \I1|Q\(4) $ (((\I1|Q\(3) & (\I1|Q\(2) & \I1|Q[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(3),
	datab => \I1|Q\(2),
	datac => \I1|Q\(4),
	datad => \I1|Q[2]~6_combout\,
	combout => \I1|Q[4]~17_combout\);

-- Location: FF_X7_Y35_N7
\I1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I1|Q[4]~17_combout\,
	clrn => \I1|ALT_INV_Q[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(4));

-- Location: LCCOMB_X6_Y35_N6
\I1|Q[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[4]~9_combout\ = (\I1|Q\(3) & \I1|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I1|Q\(3),
	datad => \I1|Q\(2),
	combout => \I1|Q[4]~9_combout\);

-- Location: LCCOMB_X7_Y35_N20
\I1|Q[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[5]~10_combout\ = \I1|Q\(5) $ (((\I1|Q\(4) & (\I1|Q[4]~9_combout\ & \I1|Q[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(4),
	datab => \I1|Q[4]~9_combout\,
	datac => \I1|Q\(5),
	datad => \I1|Q[2]~6_combout\,
	combout => \I1|Q[5]~10_combout\);

-- Location: FF_X7_Y35_N21
\I1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I1|Q[5]~10_combout\,
	clrn => \I1|ALT_INV_Q[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(5));

-- Location: LCCOMB_X7_Y35_N2
\I1|Q[8]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[8]~11_combout\ = (\I1|Q\(4) & (\I1|Q\(5) & (\I1|Q[4]~9_combout\ & \I1|Q[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(4),
	datab => \I1|Q\(5),
	datac => \I1|Q[4]~9_combout\,
	datad => \I1|Q[2]~6_combout\,
	combout => \I1|Q[8]~11_combout\);

-- Location: LCCOMB_X6_Y35_N30
\I1|Q[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[6]~12_combout\ = \I1|Q\(6) $ (\I1|Q[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I1|Q\(6),
	datad => \I1|Q[8]~11_combout\,
	combout => \I1|Q[6]~12_combout\);

-- Location: FF_X6_Y35_N31
\I1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I1|Q[6]~12_combout\,
	clrn => \I1|ALT_INV_Q[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(6));

-- Location: LCCOMB_X7_Y35_N22
\I1|Q[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[7]~13_combout\ = \I1|Q\(7) $ (((\I1|Q\(6) & \I1|Q[8]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I1|Q\(6),
	datac => \I1|Q\(7),
	datad => \I1|Q[8]~11_combout\,
	combout => \I1|Q[7]~13_combout\);

-- Location: FF_X7_Y35_N23
\I1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I1|Q[7]~13_combout\,
	clrn => \I1|ALT_INV_Q[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(7));

-- Location: LCCOMB_X7_Y35_N4
\I1|Q[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[8]~14_combout\ = \I1|Q\(8) $ (((\I1|Q\(7) & (\I1|Q\(6) & \I1|Q[8]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(7),
	datab => \I1|Q\(6),
	datac => \I1|Q\(8),
	datad => \I1|Q[8]~11_combout\,
	combout => \I1|Q[8]~14_combout\);

-- Location: FF_X7_Y35_N5
\I1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I1|Q[8]~14_combout\,
	clrn => \I1|ALT_INV_Q[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(8));

-- Location: LCCOMB_X7_Y35_N26
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\I1|Q\(7) & (!\I1|Q\(5) & (!\I1|Q\(8) & !\I1|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(7),
	datab => \I1|Q\(5),
	datac => \I1|Q\(8),
	datad => \I1|Q\(6),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X6_Y35_N16
\I1|Q[9]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[9]~15_combout\ = (\I1|Q\(6) & (\I1|Q\(7) & (\I1|Q\(8) & \I1|Q[8]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(6),
	datab => \I1|Q\(7),
	datac => \I1|Q\(8),
	datad => \I1|Q[8]~11_combout\,
	combout => \I1|Q[9]~15_combout\);

-- Location: LCCOMB_X6_Y35_N12
\I1|Q[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[9]~16_combout\ = \I1|Q\(9) $ (\I1|Q[9]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I1|Q\(9),
	datad => \I1|Q[9]~15_combout\,
	combout => \I1|Q[9]~16_combout\);

-- Location: FF_X6_Y35_N13
\I1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I1|Q[9]~16_combout\,
	clrn => \I1|ALT_INV_Q[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(9));

-- Location: LCCOMB_X7_Y35_N24
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\I1|Q\(3) & (\I1|Q\(2) & (!\I1|Q\(1) & \I1|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(3),
	datab => \I1|Q\(2),
	datac => \I1|Q\(1),
	datad => \I1|Q\(9),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X7_Y35_N10
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\I1|Q\(4) & (\Equal2~0_combout\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(4),
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X7_Y35_N28
\I1|Q[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[9]~3_combout\ = ((\I1|Q\(0) & (\Equal1~1_combout\ & \Equal3~1_combout\))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \I1|Q\(0),
	datac => \Equal1~1_combout\,
	datad => \Equal3~1_combout\,
	combout => \I1|Q[9]~3_combout\);

-- Location: FF_X7_Y35_N1
\I1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I1|Q[0]~2_combout\,
	clrn => \I1|ALT_INV_Q[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(0));

-- Location: IOIBUF_X0_Y37_N15
\START~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: LCCOMB_X3_Y35_N16
\EDO_X.IDLE_X~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \EDO_X.IDLE_X~0_combout\ = (\EDO_X.IDLE_X~q\) # (\START~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EDO_X.IDLE_X~q\,
	datad => \START~input_o\,
	combout => \EDO_X.IDLE_X~0_combout\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X3_Y35_N17
\EDO_X.IDLE_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \EDO_X.IDLE_X~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDO_X.IDLE_X~q\);

-- Location: LCCOMB_X6_Y35_N24
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\I0|I0|Q\(8) & (\I0|I0|Q\(6) & !\I0|I0|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I0|Q\(8),
	datac => \I0|I0|Q\(6),
	datad => \I0|I0|Q\(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X6_Y35_N10
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~1_combout\ & (\I0|I0|Q\(4) & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \I0|I0|Q\(4),
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X6_Y35_N20
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\EDO_X.IDLE_X~q\ & ((\EDO_X.E_ALTO_X~q\ & (\Equal1~1_combout\)) # (!\EDO_X.E_ALTO_X~q\ & ((!\Equal0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EDO_X.IDLE_X~q\,
	datab => \EDO_X.E_ALTO_X~q\,
	datac => \Equal1~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X6_Y35_N14
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((!\EDO_X.IDLE_X~q\ & \START~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EDO_X.IDLE_X~q\,
	datac => \START~input_o\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X6_Y35_N15
\EDO_X.E_BAJO_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDO_X.E_BAJO_X~q\);

-- Location: LCCOMB_X6_Y35_N18
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\EDO_X.E_BAJO_X~q\ & ((\Equal0~3_combout\) # ((!\Equal1~1_combout\ & \EDO_X.E_ALTO_X~q\)))) # (!\EDO_X.E_BAJO_X~q\ & (!\Equal1~1_combout\ & (\EDO_X.E_ALTO_X~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EDO_X.E_BAJO_X~q\,
	datab => \Equal1~1_combout\,
	datac => \EDO_X.E_ALTO_X~q\,
	datad => \Equal0~3_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X6_Y35_N19
\EDO_X.E_ALTO_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDO_X.E_ALTO_X~q\);

-- Location: LCCOMB_X6_Y35_N22
\Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!\I1|Q\(4) & (\Equal3~0_combout\ & (!\I1|Q\(0) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(4),
	datab => \Equal3~0_combout\,
	datac => \I1|Q\(0),
	datad => \Equal2~0_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X6_Y35_N26
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\I1|Q\(1) & (!\I1|Q\(3) & (\I1|Q\(0) & !\I1|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(1),
	datab => \I1|Q\(3),
	datac => \I1|Q\(0),
	datad => \I1|Q\(9),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X6_Y35_N0
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!\I1|Q\(4) & (!\I1|Q\(2) & (\Equal2~1_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(4),
	datab => \I1|Q\(2),
	datac => \Equal2~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X6_Y35_N2
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\EDO_X.IDLE_X~q\ & ((\EDO_Y.E_ALTO_Y~q\ & (\Equal3~2_combout\)) # (!\EDO_Y.E_ALTO_Y~q\ & ((!\Equal2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EDO_X.IDLE_X~q\,
	datab => \EDO_Y.E_ALTO_Y~q\,
	datac => \Equal3~2_combout\,
	datad => \Equal2~2_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X6_Y35_N28
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((!\EDO_X.IDLE_X~q\ & \START~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EDO_X.IDLE_X~q\,
	datac => \START~input_o\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X6_Y35_N29
\EDO_Y.E_BAJO_Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDO_Y.E_BAJO_Y~q\);

-- Location: LCCOMB_X6_Y35_N4
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Equal3~2_combout\ & (\EDO_Y.E_BAJO_Y~q\ & ((\Equal2~2_combout\)))) # (!\Equal3~2_combout\ & ((\EDO_Y.E_ALTO_Y~q\) # ((\EDO_Y.E_BAJO_Y~q\ & \Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \EDO_Y.E_BAJO_Y~q\,
	datac => \EDO_Y.E_ALTO_Y~q\,
	datad => \Equal2~2_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X6_Y35_N5
\EDO_Y.E_ALTO_Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDO_Y.E_ALTO_Y~q\);

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

ww_PIXEL(0) <= \PIXEL[0]~output_o\;

ww_PIXEL(1) <= \PIXEL[1]~output_o\;

ww_PIXEL(2) <= \PIXEL[2]~output_o\;

ww_PIXEL(3) <= \PIXEL[3]~output_o\;

ww_PIXEL(4) <= \PIXEL[4]~output_o\;

ww_PIXEL(5) <= \PIXEL[5]~output_o\;

ww_PIXEL(6) <= \PIXEL[6]~output_o\;

ww_PIXEL(7) <= \PIXEL[7]~output_o\;

ww_PIXEL(8) <= \PIXEL[8]~output_o\;

ww_PIXEL(9) <= \PIXEL[9]~output_o\;

ww_LINEA(0) <= \LINEA[0]~output_o\;

ww_LINEA(1) <= \LINEA[1]~output_o\;

ww_LINEA(2) <= \LINEA[2]~output_o\;

ww_LINEA(3) <= \LINEA[3]~output_o\;

ww_LINEA(4) <= \LINEA[4]~output_o\;

ww_LINEA(5) <= \LINEA[5]~output_o\;

ww_LINEA(6) <= \LINEA[6]~output_o\;

ww_LINEA(7) <= \LINEA[7]~output_o\;

ww_LINEA(8) <= \LINEA[8]~output_o\;

ww_LINEA(9) <= \LINEA[9]~output_o\;

ww_H_SYNC <= \H_SYNC~output_o\;

ww_V_SYNC <= \V_SYNC~output_o\;
END structure;


