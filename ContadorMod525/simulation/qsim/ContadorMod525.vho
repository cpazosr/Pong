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

-- DATE "03/12/2021 03:30:52"

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

ENTITY 	ContadorMod525 IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	ENABLE : IN std_logic;
	CUENTA : BUFFER std_logic_vector(9 DOWNTO 0);
	Cout : BUFFER std_logic
	);
END ContadorMod525;

-- Design Ports Information
-- CUENTA[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CUENTA[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CUENTA[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CUENTA[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CUENTA[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CUENTA[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CUENTA[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CUENTA[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CUENTA[8]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CUENTA[9]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENABLE	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ContadorMod525 IS
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
SIGNAL ww_ENABLE : std_logic;
SIGNAL ww_CUENTA : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \CUENTA[0]~output_o\ : std_logic;
SIGNAL \CUENTA[1]~output_o\ : std_logic;
SIGNAL \CUENTA[2]~output_o\ : std_logic;
SIGNAL \CUENTA[3]~output_o\ : std_logic;
SIGNAL \CUENTA[4]~output_o\ : std_logic;
SIGNAL \CUENTA[5]~output_o\ : std_logic;
SIGNAL \CUENTA[6]~output_o\ : std_logic;
SIGNAL \CUENTA[7]~output_o\ : std_logic;
SIGNAL \CUENTA[8]~output_o\ : std_logic;
SIGNAL \CUENTA[9]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ENABLE~input_o\ : std_logic;
SIGNAL \Q[0]~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \Q[1]~5_combout\ : std_logic;
SIGNAL \Q[2]~6_combout\ : std_logic;
SIGNAL \Q[3]~7_combout\ : std_logic;
SIGNAL \Q[3]~8_combout\ : std_logic;
SIGNAL \Q[9]~1_combout\ : std_logic;
SIGNAL \Q[4]~9_combout\ : std_logic;
SIGNAL \Q[5]~10_combout\ : std_logic;
SIGNAL \Q[5]~11_combout\ : std_logic;
SIGNAL \Q[6]~12_combout\ : std_logic;
SIGNAL \Q[7]~13_combout\ : std_logic;
SIGNAL \I0|I7|Co~0_combout\ : std_logic;
SIGNAL \I0|I7|Co~1_combout\ : std_logic;
SIGNAL \Q[8]~14_combout\ : std_logic;
SIGNAL \Q[9]~15_combout\ : std_logic;
SIGNAL \Q[9]~16_combout\ : std_logic;
SIGNAL \Q[9]~2_combout\ : std_logic;
SIGNAL \Q[9]~3_combout\ : std_logic;
SIGNAL \Q[9]~4_combout\ : std_logic;
SIGNAL \I0|I9|Co~0_combout\ : std_logic;
SIGNAL Q : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_Q[9]~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_ENABLE <= ENABLE;
CUENTA <= ww_CUENTA;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_Q[9]~4_combout\ <= NOT \Q[9]~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X56_Y54_N9
\CUENTA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(0),
	devoe => ww_devoe,
	o => \CUENTA[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\CUENTA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(1),
	devoe => ww_devoe,
	o => \CUENTA[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\CUENTA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(2),
	devoe => ww_devoe,
	o => \CUENTA[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\CUENTA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(3),
	devoe => ww_devoe,
	o => \CUENTA[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\CUENTA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(4),
	devoe => ww_devoe,
	o => \CUENTA[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\CUENTA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(5),
	devoe => ww_devoe,
	o => \CUENTA[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\CUENTA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(6),
	devoe => ww_devoe,
	o => \CUENTA[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\CUENTA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(7),
	devoe => ww_devoe,
	o => \CUENTA[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\CUENTA[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(8),
	devoe => ww_devoe,
	o => \CUENTA[8]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\CUENTA[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(9),
	devoe => ww_devoe,
	o => \CUENTA[9]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\Cout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|I9|Co~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

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

-- Location: IOIBUF_X58_Y54_N8
\ENABLE~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENABLE,
	o => \ENABLE~input_o\);

-- Location: LCCOMB_X57_Y53_N16
\Q[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[0]~0_combout\ = \ENABLE~input_o\ $ (Q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ENABLE~input_o\,
	datad => Q(0),
	combout => \Q[0]~0_combout\);

-- Location: IOIBUF_X58_Y54_N15
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

-- Location: LCCOMB_X58_Y53_N2
\Q[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[1]~5_combout\ = Q(1) $ (((Q(0) & \ENABLE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datac => Q(1),
	datad => \ENABLE~input_o\,
	combout => \Q[1]~5_combout\);

-- Location: FF_X58_Y53_N3
\Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q[1]~5_combout\,
	clrn => \ALT_INV_Q[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(1));

-- Location: LCCOMB_X58_Y53_N4
\Q[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[2]~6_combout\ = Q(2) $ (((Q(0) & (Q(1) & \ENABLE~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(2),
	datad => \ENABLE~input_o\,
	combout => \Q[2]~6_combout\);

-- Location: FF_X58_Y53_N5
\Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q[2]~6_combout\,
	clrn => \ALT_INV_Q[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(2));

-- Location: LCCOMB_X57_Y53_N14
\Q[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~7_combout\ = (Q(1) & (Q(0) & (\ENABLE~input_o\ & Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => Q(0),
	datac => \ENABLE~input_o\,
	datad => Q(2),
	combout => \Q[3]~7_combout\);

-- Location: LCCOMB_X58_Y53_N6
\Q[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~8_combout\ = Q(3) $ (\Q[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(3),
	datad => \Q[3]~7_combout\,
	combout => \Q[3]~8_combout\);

-- Location: FF_X58_Y53_N7
\Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q[3]~8_combout\,
	clrn => \ALT_INV_Q[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(3));

-- Location: LCCOMB_X58_Y53_N26
\Q[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[9]~1_combout\ = (\ENABLE~input_o\ & (Q(0) & (Q(2) & Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENABLE~input_o\,
	datab => Q(0),
	datac => Q(2),
	datad => Q(3),
	combout => \Q[9]~1_combout\);

-- Location: LCCOMB_X58_Y53_N8
\Q[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[4]~9_combout\ = Q(4) $ (((Q(1) & \Q[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datac => Q(4),
	datad => \Q[9]~1_combout\,
	combout => \Q[4]~9_combout\);

-- Location: FF_X58_Y53_N9
\Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q[4]~9_combout\,
	clrn => \ALT_INV_Q[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(4));

-- Location: LCCOMB_X58_Y53_N30
\Q[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[5]~10_combout\ = Q(5) $ (((Q(4) & (Q(1) & \Q[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q(1),
	datac => Q(5),
	datad => \Q[9]~1_combout\,
	combout => \Q[5]~10_combout\);

-- Location: FF_X58_Y53_N31
\Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q[5]~10_combout\,
	clrn => \ALT_INV_Q[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(5));

-- Location: LCCOMB_X58_Y53_N10
\Q[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[5]~11_combout\ = (Q(4) & (Q(1) & \Q[9]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datac => Q(1),
	datad => \Q[9]~1_combout\,
	combout => \Q[5]~11_combout\);

-- Location: LCCOMB_X58_Y53_N16
\Q[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[6]~12_combout\ = Q(6) $ (((Q(5) & \Q[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datac => Q(6),
	datad => \Q[5]~11_combout\,
	combout => \Q[6]~12_combout\);

-- Location: FF_X58_Y53_N17
\Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q[6]~12_combout\,
	clrn => \ALT_INV_Q[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(6));

-- Location: LCCOMB_X58_Y53_N22
\Q[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[7]~13_combout\ = Q(7) $ (((Q(6) & (Q(5) & \Q[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(6),
	datab => Q(5),
	datac => Q(7),
	datad => \Q[5]~11_combout\,
	combout => \Q[7]~13_combout\);

-- Location: FF_X58_Y53_N23
\Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q[7]~13_combout\,
	clrn => \ALT_INV_Q[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(7));

-- Location: LCCOMB_X58_Y53_N12
\I0|I7|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I7|Co~0_combout\ = (Q(5) & (Q(6) & (Q(0) & Q(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(6),
	datac => Q(0),
	datad => Q(7),
	combout => \I0|I7|Co~0_combout\);

-- Location: LCCOMB_X57_Y53_N24
\I0|I7|Co~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I7|Co~1_combout\ = (Q(2) & (Q(1) & (Q(4) & Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(1),
	datac => Q(4),
	datad => Q(3),
	combout => \I0|I7|Co~1_combout\);

-- Location: LCCOMB_X58_Y53_N0
\Q[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[8]~14_combout\ = Q(8) $ (((\I0|I7|Co~0_combout\ & (\ENABLE~input_o\ & \I0|I7|Co~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I7|Co~0_combout\,
	datab => \ENABLE~input_o\,
	datac => Q(8),
	datad => \I0|I7|Co~1_combout\,
	combout => \Q[8]~14_combout\);

-- Location: FF_X58_Y53_N1
\Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q[8]~14_combout\,
	clrn => \ALT_INV_Q[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(8));

-- Location: LCCOMB_X58_Y53_N24
\Q[9]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[9]~15_combout\ = (!Q(8)) # (!\ENABLE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENABLE~input_o\,
	datad => Q(8),
	combout => \Q[9]~15_combout\);

-- Location: LCCOMB_X58_Y53_N14
\Q[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[9]~16_combout\ = Q(9) $ (((\I0|I7|Co~0_combout\ & (!\Q[9]~15_combout\ & \I0|I7|Co~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I7|Co~0_combout\,
	datab => \Q[9]~15_combout\,
	datac => Q(9),
	datad => \I0|I7|Co~1_combout\,
	combout => \Q[9]~16_combout\);

-- Location: FF_X58_Y53_N15
\Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Q[9]~16_combout\,
	clrn => \ALT_INV_Q[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(9));

-- Location: LCCOMB_X58_Y53_N28
\Q[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[9]~2_combout\ = (!Q(7) & (!Q(8) & (Q(9) & !Q(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(7),
	datab => Q(8),
	datac => Q(9),
	datad => Q(6),
	combout => \Q[9]~2_combout\);

-- Location: LCCOMB_X58_Y53_N18
\Q[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[9]~3_combout\ = (!Q(5) & (!Q(4) & !Q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datac => Q(4),
	datad => Q(1),
	combout => \Q[9]~3_combout\);

-- Location: LCCOMB_X58_Y53_N20
\Q[9]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[9]~4_combout\ = ((\Q[9]~2_combout\ & (\Q[9]~1_combout\ & \Q[9]~3_combout\))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \Q[9]~2_combout\,
	datac => \Q[9]~1_combout\,
	datad => \Q[9]~3_combout\,
	combout => \Q[9]~4_combout\);

-- Location: FF_X58_Y53_N25
\Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Q[0]~0_combout\,
	clrn => \ALT_INV_Q[9]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(0));

-- Location: LCCOMB_X57_Y53_N2
\I0|I9|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I9|Co~0_combout\ = (Q(8) & (\I0|I7|Co~1_combout\ & (\I0|I7|Co~0_combout\ & Q(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(8),
	datab => \I0|I7|Co~1_combout\,
	datac => \I0|I7|Co~0_combout\,
	datad => Q(9),
	combout => \I0|I9|Co~0_combout\);

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

ww_CUENTA(0) <= \CUENTA[0]~output_o\;

ww_CUENTA(1) <= \CUENTA[1]~output_o\;

ww_CUENTA(2) <= \CUENTA[2]~output_o\;

ww_CUENTA(3) <= \CUENTA[3]~output_o\;

ww_CUENTA(4) <= \CUENTA[4]~output_o\;

ww_CUENTA(5) <= \CUENTA[5]~output_o\;

ww_CUENTA(6) <= \CUENTA[6]~output_o\;

ww_CUENTA(7) <= \CUENTA[7]~output_o\;

ww_CUENTA(8) <= \CUENTA[8]~output_o\;

ww_CUENTA(9) <= \CUENTA[9]~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


