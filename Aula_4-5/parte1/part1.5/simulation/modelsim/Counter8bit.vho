-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "09/16/2024 19:33:19"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Counter8bit IS
    PORT (
	clk : IN std_logic;
	clear : IN std_logic;
	enable : IN std_logic;
	count : OUT std_logic_vector(3 DOWNTO 0)
	);
END Counter8bit;

-- Design Ports Information
-- count[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter8bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \gen_ff:0:T_FF_inst|Q_int~0_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \gen_ff:0:T_FF_inst|Q_int~q\ : std_logic;
SIGNAL \gen_ff:1:T_FF_inst|Q_int~0_combout\ : std_logic;
SIGNAL \gen_ff:1:T_FF_inst|Q_int~q\ : std_logic;
SIGNAL \gen_ff:2:T_FF_inst|Q_int~0_combout\ : std_logic;
SIGNAL \gen_ff:2:T_FF_inst|Q_int~q\ : std_logic;
SIGNAL \gen_ff:3:T_FF_inst|Q_int~0_combout\ : std_logic;
SIGNAL \gen_ff:3:T_FF_inst|Q_int~q\ : std_logic;
SIGNAL \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clear <= clear;
ww_enable <= enable;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\ <= NOT \gen_ff:1:T_FF_inst|Q_int~q\;
\gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\ <= NOT \gen_ff:0:T_FF_inst|Q_int~q\;
\gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\ <= NOT \gen_ff:3:T_FF_inst|Q_int~q\;
\gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\ <= NOT \gen_ff:2:T_FF_inst|Q_int~q\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;

-- Location: IOOBUF_X54_Y18_N79
\count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_ff:0:T_FF_inst|Q_int~q\,
	devoe => ww_devoe,
	o => ww_count(0));

-- Location: IOOBUF_X54_Y19_N22
\count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_ff:1:T_FF_inst|Q_int~q\,
	devoe => ww_devoe,
	o => ww_count(1));

-- Location: IOOBUF_X54_Y20_N5
\count[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_ff:2:T_FF_inst|Q_int~q\,
	devoe => ww_devoe,
	o => ww_count(2));

-- Location: IOOBUF_X54_Y19_N56
\count[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_ff:3:T_FF_inst|Q_int~q\,
	devoe => ww_devoe,
	o => ww_count(3));

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y19_N4
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LABCELL_X53_Y19_N9
\gen_ff:0:T_FF_inst|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_ff:0:T_FF_inst|Q_int~0_combout\ = ( \gen_ff:0:T_FF_inst|Q_int~q\ & ( !\enable~input_o\ ) ) # ( !\gen_ff:0:T_FF_inst|Q_int~q\ & ( \enable~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable~input_o\,
	datae => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \gen_ff:0:T_FF_inst|Q_int~0_combout\);

-- Location: IOIBUF_X54_Y19_N38
\clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: FF_X53_Y19_N11
\gen_ff:0:T_FF_inst|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \gen_ff:0:T_FF_inst|Q_int~0_combout\,
	clrn => \clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ff:0:T_FF_inst|Q_int~q\);

-- Location: LABCELL_X53_Y19_N33
\gen_ff:1:T_FF_inst|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_ff:1:T_FF_inst|Q_int~0_combout\ = ( \gen_ff:1:T_FF_inst|Q_int~q\ & ( \gen_ff:0:T_FF_inst|Q_int~q\ & ( !\enable~input_o\ ) ) ) # ( !\gen_ff:1:T_FF_inst|Q_int~q\ & ( \gen_ff:0:T_FF_inst|Q_int~q\ & ( \enable~input_o\ ) ) ) # ( 
-- \gen_ff:1:T_FF_inst|Q_int~q\ & ( !\gen_ff:0:T_FF_inst|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable~input_o\,
	datae => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \gen_ff:1:T_FF_inst|Q_int~0_combout\);

-- Location: FF_X53_Y19_N35
\gen_ff:1:T_FF_inst|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \gen_ff:1:T_FF_inst|Q_int~0_combout\,
	clrn => \clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ff:1:T_FF_inst|Q_int~q\);

-- Location: LABCELL_X53_Y19_N54
\gen_ff:2:T_FF_inst|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_ff:2:T_FF_inst|Q_int~0_combout\ = ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:1:T_FF_inst|Q_int~q\ & ( (!\enable~input_o\) # (!\gen_ff:0:T_FF_inst|Q_int~q\) ) ) ) # ( !\gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:1:T_FF_inst|Q_int~q\ & ( (\enable~input_o\ 
-- & \gen_ff:0:T_FF_inst|Q_int~q\) ) ) ) # ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( !\gen_ff:1:T_FF_inst|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001100111111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable~input_o\,
	datad => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	datae => \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \gen_ff:2:T_FF_inst|Q_int~0_combout\);

-- Location: FF_X53_Y19_N56
\gen_ff:2:T_FF_inst|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \gen_ff:2:T_FF_inst|Q_int~0_combout\,
	clrn => \clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ff:2:T_FF_inst|Q_int~q\);

-- Location: LABCELL_X53_Y19_N24
\gen_ff:3:T_FF_inst|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_ff:3:T_FF_inst|Q_int~0_combout\ = ( \gen_ff:3:T_FF_inst|Q_int~q\ & ( \gen_ff:1:T_FF_inst|Q_int~q\ & ( (!\enable~input_o\) # ((!\gen_ff:2:T_FF_inst|Q_int~q\) # (!\gen_ff:0:T_FF_inst|Q_int~q\)) ) ) ) # ( !\gen_ff:3:T_FF_inst|Q_int~q\ & ( 
-- \gen_ff:1:T_FF_inst|Q_int~q\ & ( (\enable~input_o\ & (\gen_ff:2:T_FF_inst|Q_int~q\ & \gen_ff:0:T_FF_inst|Q_int~q\)) ) ) ) # ( \gen_ff:3:T_FF_inst|Q_int~q\ & ( !\gen_ff:1:T_FF_inst|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable~input_o\,
	datac => \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	datae => \gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \gen_ff:3:T_FF_inst|Q_int~0_combout\);

-- Location: FF_X53_Y19_N25
\gen_ff:3:T_FF_inst|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \gen_ff:3:T_FF_inst|Q_int~0_combout\,
	clrn => \clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ff:3:T_FF_inst|Q_int~q\);

-- Location: MLABCELL_X37_Y14_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


