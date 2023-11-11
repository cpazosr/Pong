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

-- DATE "03/12/2021 03:25:39"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ContadorMod800 IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	CUENTA : OUT std_logic_vector(9 DOWNTO 0);
	Cout : OUT std_logic
	);
END ContadorMod800;

ARCHITECTURE structure OF ContadorMod800 IS
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
SIGNAL ww_CUENTA : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
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
SIGNAL \I0|Q[0]~10_combout\ : std_logic;
SIGNAL \I0|Q[1]~0_combout\ : std_logic;
SIGNAL \I0|Q[2]~1_combout\ : std_logic;
SIGNAL \I0|Q[3]~2_combout\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \I0|Q[4]~3_combout\ : std_logic;
SIGNAL \I0|Q[5]~4_combout\ : std_logic;
SIGNAL \I0|Q[6]~5_combout\ : std_logic;
SIGNAL \I0|I0|I6|Co~combout\ : std_logic;
SIGNAL \I0|Q[7]~6_combout\ : std_logic;
SIGNAL \I0|Q[8]~7_combout\ : std_logic;
SIGNAL \I0|Q[8]~8_combout\ : std_logic;
SIGNAL \I0|Q[9]~9_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST_MOD800~0_combout\ : std_logic;
SIGNAL \Cout~1_combout\ : std_logic;
SIGNAL \Cout~2_combout\ : std_logic;
SIGNAL \I0|Q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_RST_MOD800~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
CUENTA <= ww_CUENTA;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RST_MOD800~0_combout\ <= NOT \RST_MOD800~0_combout\;

\CUENTA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(0),
	devoe => ww_devoe,
	o => \CUENTA[0]~output_o\);

\CUENTA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(1),
	devoe => ww_devoe,
	o => \CUENTA[1]~output_o\);

\CUENTA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(2),
	devoe => ww_devoe,
	o => \CUENTA[2]~output_o\);

\CUENTA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(3),
	devoe => ww_devoe,
	o => \CUENTA[3]~output_o\);

\CUENTA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(4),
	devoe => ww_devoe,
	o => \CUENTA[4]~output_o\);

\CUENTA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(5),
	devoe => ww_devoe,
	o => \CUENTA[5]~output_o\);

\CUENTA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(6),
	devoe => ww_devoe,
	o => \CUENTA[6]~output_o\);

\CUENTA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(7),
	devoe => ww_devoe,
	o => \CUENTA[7]~output_o\);

\CUENTA[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(8),
	devoe => ww_devoe,
	o => \CUENTA[8]~output_o\);

\CUENTA[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(9),
	devoe => ww_devoe,
	o => \CUENTA[9]~output_o\);

\Cout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~2_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

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

\I0|Q[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[0]~10_combout\ = !\I0|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(0),
	combout => \I0|Q[0]~10_combout\);

\I0|Q[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[1]~0_combout\ = \I0|Q\(0) $ (\I0|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I0|Q\(0),
	datad => \I0|Q\(1),
	combout => \I0|Q[1]~0_combout\);

\I0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \I0|Q[1]~0_combout\,
	clrn => \ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(1));

\I0|Q[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[2]~1_combout\ = \I0|Q\(2) $ (((\I0|Q\(0) & \I0|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I0|Q\(2),
	datac => \I0|Q\(0),
	datad => \I0|Q\(1),
	combout => \I0|Q[2]~1_combout\);

\I0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \I0|Q[2]~1_combout\,
	clrn => \ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(2));

\I0|Q[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[3]~2_combout\ = \I0|Q\(3) $ (((\I0|Q\(0) & (\I0|Q\(1) & \I0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(3),
	datab => \I0|Q\(0),
	datac => \I0|Q\(1),
	datad => \I0|Q\(2),
	combout => \I0|Q[3]~2_combout\);

\I0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \I0|Q[3]~2_combout\,
	clrn => \ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(3));

\Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = (\I0|Q\(0) & (\I0|Q\(1) & (\I0|Q\(2) & \I0|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(0),
	datab => \I0|Q\(1),
	datac => \I0|Q\(2),
	datad => \I0|Q\(3),
	combout => \Cout~0_combout\);

\I0|Q[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[4]~3_combout\ = \I0|Q\(4) $ (\Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I0|Q\(4),
	datad => \Cout~0_combout\,
	combout => \I0|Q[4]~3_combout\);

\I0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \I0|Q[4]~3_combout\,
	clrn => \ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(4));

\I0|Q[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[5]~4_combout\ = \I0|Q\(5) $ (((\I0|Q\(4) & \Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I0|Q\(5),
	datac => \I0|Q\(4),
	datad => \Cout~0_combout\,
	combout => \I0|Q[5]~4_combout\);

\I0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \I0|Q[5]~4_combout\,
	clrn => \ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(5));

\I0|Q[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[6]~5_combout\ = \I0|Q\(6) $ (((\I0|Q\(4) & (\I0|Q\(5) & \Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(6),
	datab => \I0|Q\(4),
	datac => \I0|Q\(5),
	datad => \Cout~0_combout\,
	combout => \I0|Q[6]~5_combout\);

\I0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \I0|Q[6]~5_combout\,
	clrn => \ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(6));

\I0|I0|I6|Co\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|I6|Co~combout\ = (\I0|Q\(4) & (\I0|Q\(5) & (\I0|Q\(6) & \Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(4),
	datab => \I0|Q\(5),
	datac => \I0|Q\(6),
	datad => \Cout~0_combout\,
	combout => \I0|I0|I6|Co~combout\);

\I0|Q[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[7]~6_combout\ = \I0|Q\(7) $ (\I0|I0|I6|Co~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I0|Q\(7),
	datad => \I0|I0|I6|Co~combout\,
	combout => \I0|Q[7]~6_combout\);

\I0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \I0|Q[7]~6_combout\,
	clrn => \ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(7));

\I0|Q[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[8]~7_combout\ = ((!\I0|Q\(6)) # (!\I0|Q\(5))) # (!\I0|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(4),
	datab => \I0|Q\(5),
	datac => \I0|Q\(6),
	combout => \I0|Q[8]~7_combout\);

\I0|Q[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[8]~8_combout\ = \I0|Q\(8) $ (((\I0|Q\(7) & (\Cout~0_combout\ & !\I0|Q[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(8),
	datab => \I0|Q\(7),
	datac => \Cout~0_combout\,
	datad => \I0|Q[8]~7_combout\,
	combout => \I0|Q[8]~8_combout\);

\I0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \I0|Q[8]~8_combout\,
	clrn => \ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(8));

\I0|Q[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[9]~9_combout\ = \I0|Q\(9) $ (((\I0|Q\(7) & (\I0|Q\(8) & \I0|I0|I6|Co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(9),
	datab => \I0|Q\(7),
	datac => \I0|Q\(8),
	datad => \I0|I0|I6|Co~combout\,
	combout => \I0|Q[9]~9_combout\);

\I0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \I0|Q[9]~9_combout\,
	clrn => \ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(9));

\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\I0|Q\(8) & (\I0|Q\(9) & (!\I0|Q\(6) & !\I0|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(8),
	datab => \I0|Q\(9),
	datac => \I0|Q\(6),
	datad => \I0|Q\(7),
	combout => \Equal0~0_combout\);

\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\I0|Q\(5) & (!\I0|Q\(2) & (!\I0|Q\(3) & !\I0|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(5),
	datab => \I0|Q\(2),
	datac => \I0|Q\(3),
	datad => \I0|Q\(4),
	combout => \Equal0~1_combout\);

\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\I0|Q\(0) & !\I0|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I0|Q\(0),
	datad => \I0|Q\(1),
	combout => \Equal0~2_combout\);

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

\RST_MOD800~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RST_MOD800~0_combout\ = ((\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \RST~input_o\,
	combout => \RST_MOD800~0_combout\);

\I0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \I0|Q[0]~10_combout\,
	clrn => \ALT_INV_RST_MOD800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(0));

\Cout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cout~1_combout\ = (\RST~input_o\ & !\I0|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datad => \I0|Q\(5),
	combout => \Cout~1_combout\);

\Cout~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cout~2_combout\ = (\I0|Q\(4) & (\Cout~0_combout\ & (\Equal0~0_combout\ & \Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(4),
	datab => \Cout~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Cout~1_combout\,
	combout => \Cout~2_combout\);

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


