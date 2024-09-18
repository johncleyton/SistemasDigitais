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

-- DATE "09/16/2024 19:28:46"

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
	count : BUFFER std_logic_vector(7 DOWNTO 0);
	hex00 : BUFFER std_logic;
	hex01 : BUFFER std_logic;
	hex02 : BUFFER std_logic;
	hex03 : BUFFER std_logic;
	hex04 : BUFFER std_logic;
	hex05 : BUFFER std_logic;
	hex06 : BUFFER std_logic;
	hex10 : BUFFER std_logic;
	hex11 : BUFFER std_logic;
	hex12 : BUFFER std_logic;
	hex13 : BUFFER std_logic;
	hex14 : BUFFER std_logic;
	hex15 : BUFFER std_logic;
	hex16 : BUFFER std_logic
	);
END Counter8bit;

-- Design Ports Information
-- count[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[6]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[7]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex00	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex01	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex02	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex03	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex04	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex05	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex06	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex10	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex11	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex12	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex13	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex14	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex15	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex16	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_count : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex00 : std_logic;
SIGNAL ww_hex01 : std_logic;
SIGNAL ww_hex02 : std_logic;
SIGNAL ww_hex03 : std_logic;
SIGNAL ww_hex04 : std_logic;
SIGNAL ww_hex05 : std_logic;
SIGNAL ww_hex06 : std_logic;
SIGNAL ww_hex10 : std_logic;
SIGNAL ww_hex11 : std_logic;
SIGNAL ww_hex12 : std_logic;
SIGNAL ww_hex13 : std_logic;
SIGNAL ww_hex14 : std_logic;
SIGNAL ww_hex15 : std_logic;
SIGNAL ww_hex16 : std_logic;
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
SIGNAL \gen_ff:4:T_FF_inst|Q_int~0_combout\ : std_logic;
SIGNAL \gen_ff:4:T_FF_inst|Q_int~q\ : std_logic;
SIGNAL \gen_ff:5:T_FF_inst|Q_int~0_combout\ : std_logic;
SIGNAL \gen_ff:5:T_FF_inst|Q_int~q\ : std_logic;
SIGNAL \gen_ff:6:T_FF_inst|Q_int~0_combout\ : std_logic;
SIGNAL \gen_ff:6:T_FF_inst|Q_int~q\ : std_logic;
SIGNAL \gen_ff:7:T_FF_inst|Q_int~0_combout\ : std_logic;
SIGNAL \gen_ff:7:T_FF_inst|Q_int~q\ : std_logic;
SIGNAL \display_7_min|output0~0_combout\ : std_logic;
SIGNAL \display_7_min|output1~0_combout\ : std_logic;
SIGNAL \display_7_min|output2~0_combout\ : std_logic;
SIGNAL \display_7_min|output3~0_combout\ : std_logic;
SIGNAL \display_7_min|output4~0_combout\ : std_logic;
SIGNAL \display_7_min|output5~0_combout\ : std_logic;
SIGNAL \display_7_min|output6~combout\ : std_logic;
SIGNAL \display_7_max|output0~0_combout\ : std_logic;
SIGNAL \display_7_max|output1~0_combout\ : std_logic;
SIGNAL \display_7_max|output2~0_combout\ : std_logic;
SIGNAL \display_7_max|output3~0_combout\ : std_logic;
SIGNAL \display_7_max|output4~0_combout\ : std_logic;
SIGNAL \display_7_max|output5~0_combout\ : std_logic;
SIGNAL \display_7_max|output6~combout\ : std_logic;
SIGNAL enable_internal : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL ALT_INV_enable_internal : std_logic_vector(4 DOWNTO 4);
SIGNAL \gen_ff:7:T_FF_inst|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \gen_ff:6:T_FF_inst|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \gen_ff:5:T_FF_inst|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \gen_ff:4:T_FF_inst|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clear <= clear;
ww_enable <= enable;
count <= ww_count;
hex00 <= ww_hex00;
hex01 <= ww_hex01;
hex02 <= ww_hex02;
hex03 <= ww_hex03;
hex04 <= ww_hex04;
hex05 <= ww_hex05;
hex06 <= ww_hex06;
hex10 <= ww_hex10;
hex11 <= ww_hex11;
hex12 <= ww_hex12;
hex13 <= ww_hex13;
hex14 <= ww_hex14;
hex15 <= ww_hex15;
hex16 <= ww_hex16;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
ALT_INV_enable_internal(4) <= NOT enable_internal(4);
\gen_ff:7:T_FF_inst|ALT_INV_Q_int~q\ <= NOT \gen_ff:7:T_FF_inst|Q_int~q\;
\gen_ff:6:T_FF_inst|ALT_INV_Q_int~q\ <= NOT \gen_ff:6:T_FF_inst|Q_int~q\;
\gen_ff:5:T_FF_inst|ALT_INV_Q_int~q\ <= NOT \gen_ff:5:T_FF_inst|Q_int~q\;
\gen_ff:4:T_FF_inst|ALT_INV_Q_int~q\ <= NOT \gen_ff:4:T_FF_inst|Q_int~q\;
\gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\ <= NOT \gen_ff:3:T_FF_inst|Q_int~q\;
\gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\ <= NOT \gen_ff:2:T_FF_inst|Q_int~q\;
\gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\ <= NOT \gen_ff:1:T_FF_inst|Q_int~q\;
\gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\ <= NOT \gen_ff:0:T_FF_inst|Q_int~q\;

-- Location: IOOBUF_X48_Y0_N42
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

-- Location: IOOBUF_X46_Y0_N19
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

-- Location: IOOBUF_X48_Y0_N59
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X43_Y0_N19
\count[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_ff:4:T_FF_inst|Q_int~q\,
	devoe => ww_devoe,
	o => ww_count(4));

-- Location: IOOBUF_X44_Y0_N19
\count[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_ff:5:T_FF_inst|Q_int~q\,
	devoe => ww_devoe,
	o => ww_count(5));

-- Location: IOOBUF_X43_Y0_N2
\count[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_ff:6:T_FF_inst|Q_int~q\,
	devoe => ww_devoe,
	o => ww_count(6));

-- Location: IOOBUF_X44_Y0_N2
\count[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_ff:7:T_FF_inst|Q_int~q\,
	devoe => ww_devoe,
	o => ww_count(7));

-- Location: IOOBUF_X52_Y0_N53
\hex00~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_min|output0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex00);

-- Location: IOOBUF_X51_Y0_N36
\hex01~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_min|output1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex01);

-- Location: IOOBUF_X48_Y0_N76
\hex02~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_min|output2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex02);

-- Location: IOOBUF_X50_Y0_N36
\hex03~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_min|output3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex03);

-- Location: IOOBUF_X48_Y0_N93
\hex04~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_min|output4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex04);

-- Location: IOOBUF_X50_Y0_N53
\hex05~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_min|output5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex05);

-- Location: IOOBUF_X46_Y0_N36
\hex06~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_min|output6~combout\,
	devoe => ww_devoe,
	o => ww_hex06);

-- Location: IOOBUF_X44_Y0_N36
\hex10~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_max|output0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex10);

-- Location: IOOBUF_X40_Y0_N93
\hex11~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_max|output1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex11);

-- Location: IOOBUF_X44_Y0_N53
\hex12~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_max|output2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex12);

-- Location: IOOBUF_X43_Y0_N36
\hex13~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_max|output3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex13);

-- Location: IOOBUF_X38_Y0_N36
\hex14~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_max|output4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex14);

-- Location: IOOBUF_X43_Y0_N53
\hex15~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_max|output5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex15);

-- Location: IOOBUF_X51_Y0_N53
\hex16~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_max|output6~combout\,
	devoe => ww_devoe,
	o => ww_hex16);

-- Location: IOIBUF_X10_Y0_N92
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X33_Y0_N58
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LABCELL_X44_Y1_N39
\gen_ff:0:T_FF_inst|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_ff:0:T_FF_inst|Q_int~0_combout\ = !\enable~input_o\ $ (!\gen_ff:0:T_FF_inst|Q_int~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datad => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \gen_ff:0:T_FF_inst|Q_int~0_combout\);

-- Location: IOIBUF_X33_Y0_N41
\clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: FF_X44_Y1_N41
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

-- Location: LABCELL_X44_Y1_N27
\gen_ff:1:T_FF_inst|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_ff:1:T_FF_inst|Q_int~0_combout\ = ( \enable~input_o\ & ( !\gen_ff:0:T_FF_inst|Q_int~q\ $ (!\gen_ff:1:T_FF_inst|Q_int~q\) ) ) # ( !\enable~input_o\ & ( \gen_ff:1:T_FF_inst|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \ALT_INV_enable~input_o\,
	combout => \gen_ff:1:T_FF_inst|Q_int~0_combout\);

-- Location: FF_X44_Y1_N29
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

-- Location: LABCELL_X44_Y1_N48
\gen_ff:2:T_FF_inst|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_ff:2:T_FF_inst|Q_int~0_combout\ = ( \gen_ff:1:T_FF_inst|Q_int~q\ & ( !\gen_ff:2:T_FF_inst|Q_int~q\ $ (((!\gen_ff:0:T_FF_inst|Q_int~q\) # (!\enable~input_o\))) ) ) # ( !\gen_ff:1:T_FF_inst|Q_int~q\ & ( \gen_ff:2:T_FF_inst|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	datac => \ALT_INV_enable~input_o\,
	datad => \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \gen_ff:2:T_FF_inst|Q_int~0_combout\);

-- Location: FF_X44_Y1_N50
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

-- Location: LABCELL_X44_Y1_N33
\gen_ff:3:T_FF_inst|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_ff:3:T_FF_inst|Q_int~0_combout\ = ( \gen_ff:3:T_FF_inst|Q_int~q\ & ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( (!\enable~input_o\) # ((!\gen_ff:0:T_FF_inst|Q_int~q\) # (!\gen_ff:1:T_FF_inst|Q_int~q\)) ) ) ) # ( !\gen_ff:3:T_FF_inst|Q_int~q\ & ( 
-- \gen_ff:2:T_FF_inst|Q_int~q\ & ( (\enable~input_o\ & (\gen_ff:0:T_FF_inst|Q_int~q\ & \gen_ff:1:T_FF_inst|Q_int~q\)) ) ) ) # ( \gen_ff:3:T_FF_inst|Q_int~q\ & ( !\gen_ff:2:T_FF_inst|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datac => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	datae => \gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \gen_ff:3:T_FF_inst|Q_int~0_combout\);

-- Location: FF_X44_Y1_N35
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

-- Location: LABCELL_X44_Y1_N6
\gen_ff:4:T_FF_inst|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_ff:4:T_FF_inst|Q_int~0_combout\ = ( \gen_ff:4:T_FF_inst|Q_int~q\ & ( \gen_ff:3:T_FF_inst|Q_int~q\ & ( (!\gen_ff:1:T_FF_inst|Q_int~q\) # ((!\enable~input_o\) # ((!\gen_ff:2:T_FF_inst|Q_int~q\) # (!\gen_ff:0:T_FF_inst|Q_int~q\))) ) ) ) # ( 
-- !\gen_ff:4:T_FF_inst|Q_int~q\ & ( \gen_ff:3:T_FF_inst|Q_int~q\ & ( (\gen_ff:1:T_FF_inst|Q_int~q\ & (\enable~input_o\ & (\gen_ff:2:T_FF_inst|Q_int~q\ & \gen_ff:0:T_FF_inst|Q_int~q\))) ) ) ) # ( \gen_ff:4:T_FF_inst|Q_int~q\ & ( !\gen_ff:3:T_FF_inst|Q_int~q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	datab => \ALT_INV_enable~input_o\,
	datac => \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	datae => \gen_ff:4:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \gen_ff:4:T_FF_inst|Q_int~0_combout\);

-- Location: FF_X44_Y1_N8
\gen_ff:4:T_FF_inst|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \gen_ff:4:T_FF_inst|Q_int~0_combout\,
	clrn => \clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ff:4:T_FF_inst|Q_int~q\);

-- Location: LABCELL_X44_Y1_N42
\enable_internal[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- enable_internal(4) = ( \gen_ff:1:T_FF_inst|Q_int~q\ & ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( (\enable~input_o\ & (\gen_ff:3:T_FF_inst|Q_int~q\ & \gen_ff:0:T_FF_inst|Q_int~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable~input_o\,
	datac => \gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	datae => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\,
	combout => enable_internal(4));

-- Location: LABCELL_X44_Y1_N15
\gen_ff:5:T_FF_inst|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_ff:5:T_FF_inst|Q_int~0_combout\ = ( enable_internal(4) & ( !\gen_ff:4:T_FF_inst|Q_int~q\ $ (!\gen_ff:5:T_FF_inst|Q_int~q\) ) ) # ( !enable_internal(4) & ( \gen_ff:5:T_FF_inst|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gen_ff:4:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:5:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => ALT_INV_enable_internal(4),
	combout => \gen_ff:5:T_FF_inst|Q_int~0_combout\);

-- Location: FF_X44_Y1_N17
\gen_ff:5:T_FF_inst|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \gen_ff:5:T_FF_inst|Q_int~0_combout\,
	clrn => \clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ff:5:T_FF_inst|Q_int~q\);

-- Location: LABCELL_X44_Y1_N21
\gen_ff:6:T_FF_inst|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_ff:6:T_FF_inst|Q_int~0_combout\ = ( \gen_ff:6:T_FF_inst|Q_int~q\ & ( enable_internal(4) & ( (!\gen_ff:5:T_FF_inst|Q_int~q\) # (!\gen_ff:4:T_FF_inst|Q_int~q\) ) ) ) # ( !\gen_ff:6:T_FF_inst|Q_int~q\ & ( enable_internal(4) & ( 
-- (\gen_ff:5:T_FF_inst|Q_int~q\ & \gen_ff:4:T_FF_inst|Q_int~q\) ) ) ) # ( \gen_ff:6:T_FF_inst|Q_int~q\ & ( !enable_internal(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_ff:5:T_FF_inst|ALT_INV_Q_int~q\,
	datac => \gen_ff:4:T_FF_inst|ALT_INV_Q_int~q\,
	datae => \gen_ff:6:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => ALT_INV_enable_internal(4),
	combout => \gen_ff:6:T_FF_inst|Q_int~0_combout\);

-- Location: FF_X44_Y1_N23
\gen_ff:6:T_FF_inst|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \gen_ff:6:T_FF_inst|Q_int~0_combout\,
	clrn => \clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ff:6:T_FF_inst|Q_int~q\);

-- Location: LABCELL_X44_Y1_N12
\gen_ff:7:T_FF_inst|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_ff:7:T_FF_inst|Q_int~0_combout\ = ( enable_internal(4) & ( !\gen_ff:7:T_FF_inst|Q_int~q\ $ (((!\gen_ff:6:T_FF_inst|Q_int~q\) # ((!\gen_ff:4:T_FF_inst|Q_int~q\) # (!\gen_ff:5:T_FF_inst|Q_int~q\)))) ) ) # ( !enable_internal(4) & ( 
-- \gen_ff:7:T_FF_inst|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ff:6:T_FF_inst|ALT_INV_Q_int~q\,
	datab => \gen_ff:4:T_FF_inst|ALT_INV_Q_int~q\,
	datac => \gen_ff:5:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:7:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => ALT_INV_enable_internal(4),
	combout => \gen_ff:7:T_FF_inst|Q_int~0_combout\);

-- Location: FF_X44_Y1_N14
\gen_ff:7:T_FF_inst|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \gen_ff:7:T_FF_inst|Q_int~0_combout\,
	clrn => \clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ff:7:T_FF_inst|Q_int~q\);

-- Location: LABCELL_X48_Y1_N12
\display_7_min|output0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_min|output0~0_combout\ = ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:0:T_FF_inst|Q_int~q\ & ( (!\gen_ff:1:T_FF_inst|Q_int~q\ & \gen_ff:3:T_FF_inst|Q_int~q\) ) ) ) # ( !\gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:0:T_FF_inst|Q_int~q\ & ( 
-- !\gen_ff:1:T_FF_inst|Q_int~q\ $ (\gen_ff:3:T_FF_inst|Q_int~q\) ) ) ) # ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( !\gen_ff:0:T_FF_inst|Q_int~q\ & ( (!\gen_ff:1:T_FF_inst|Q_int~q\ & !\gen_ff:3:T_FF_inst|Q_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000011110000110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	datac => \gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\,
	datae => \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_min|output0~0_combout\);

-- Location: LABCELL_X48_Y1_N45
\display_7_min|output1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_min|output1~0_combout\ = ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:1:T_FF_inst|Q_int~q\ & ( (!\gen_ff:0:T_FF_inst|Q_int~q\) # (\gen_ff:3:T_FF_inst|Q_int~q\) ) ) ) # ( !\gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:1:T_FF_inst|Q_int~q\ & ( 
-- (\gen_ff:3:T_FF_inst|Q_int~q\ & \gen_ff:0:T_FF_inst|Q_int~q\) ) ) ) # ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( !\gen_ff:1:T_FF_inst|Q_int~q\ & ( !\gen_ff:3:T_FF_inst|Q_int~q\ $ (!\gen_ff:0:T_FF_inst|Q_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	datae => \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_min|output1~0_combout\);

-- Location: LABCELL_X48_Y1_N36
\display_7_min|output2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_min|output2~0_combout\ = ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:0:T_FF_inst|Q_int~q\ & ( (\gen_ff:1:T_FF_inst|Q_int~q\ & \gen_ff:3:T_FF_inst|Q_int~q\) ) ) ) # ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( !\gen_ff:0:T_FF_inst|Q_int~q\ & ( 
-- \gen_ff:3:T_FF_inst|Q_int~q\ ) ) ) # ( !\gen_ff:2:T_FF_inst|Q_int~q\ & ( !\gen_ff:0:T_FF_inst|Q_int~q\ & ( (\gen_ff:1:T_FF_inst|Q_int~q\ & !\gen_ff:3:T_FF_inst|Q_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000011110000111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	datac => \gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\,
	datae => \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_min|output2~0_combout\);

-- Location: LABCELL_X48_Y1_N6
\display_7_min|output3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_min|output3~0_combout\ = ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:0:T_FF_inst|Q_int~q\ & ( \gen_ff:1:T_FF_inst|Q_int~q\ ) ) ) # ( !\gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:0:T_FF_inst|Q_int~q\ & ( (!\gen_ff:1:T_FF_inst|Q_int~q\ & 
-- !\gen_ff:3:T_FF_inst|Q_int~q\) ) ) ) # ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( !\gen_ff:0:T_FF_inst|Q_int~q\ & ( (!\gen_ff:1:T_FF_inst|Q_int~q\ & !\gen_ff:3:T_FF_inst|Q_int~q\) ) ) ) # ( !\gen_ff:2:T_FF_inst|Q_int~q\ & ( !\gen_ff:0:T_FF_inst|Q_int~q\ & ( 
-- (\gen_ff:1:T_FF_inst|Q_int~q\ & \gen_ff:3:T_FF_inst|Q_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000001100000011000000110000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	datac => \gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\,
	datae => \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_min|output3~0_combout\);

-- Location: LABCELL_X48_Y1_N3
\display_7_min|output4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_min|output4~0_combout\ = ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:1:T_FF_inst|Q_int~q\ & ( (!\gen_ff:3:T_FF_inst|Q_int~q\ & \gen_ff:0:T_FF_inst|Q_int~q\) ) ) ) # ( !\gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:1:T_FF_inst|Q_int~q\ & ( 
-- (!\gen_ff:3:T_FF_inst|Q_int~q\ & \gen_ff:0:T_FF_inst|Q_int~q\) ) ) ) # ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( !\gen_ff:1:T_FF_inst|Q_int~q\ & ( !\gen_ff:3:T_FF_inst|Q_int~q\ ) ) ) # ( !\gen_ff:2:T_FF_inst|Q_int~q\ & ( !\gen_ff:1:T_FF_inst|Q_int~q\ & ( 
-- \gen_ff:0:T_FF_inst|Q_int~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111101010101010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	datae => \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_min|output4~0_combout\);

-- Location: LABCELL_X48_Y1_N33
\display_7_min|output5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_min|output5~0_combout\ = ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:1:T_FF_inst|Q_int~q\ & ( (!\gen_ff:3:T_FF_inst|Q_int~q\ & \gen_ff:0:T_FF_inst|Q_int~q\) ) ) ) # ( !\gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:1:T_FF_inst|Q_int~q\ & ( 
-- !\gen_ff:3:T_FF_inst|Q_int~q\ ) ) ) # ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( !\gen_ff:1:T_FF_inst|Q_int~q\ & ( (\gen_ff:3:T_FF_inst|Q_int~q\ & \gen_ff:0:T_FF_inst|Q_int~q\) ) ) ) # ( !\gen_ff:2:T_FF_inst|Q_int~q\ & ( !\gen_ff:1:T_FF_inst|Q_int~q\ & ( 
-- (!\gen_ff:3:T_FF_inst|Q_int~q\ & \gen_ff:0:T_FF_inst|Q_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000101010110101010101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	datae => \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_min|output5~0_combout\);

-- Location: LABCELL_X48_Y1_N24
\display_7_min|output6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_min|output6~combout\ = ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:0:T_FF_inst|Q_int~q\ & ( (\gen_ff:1:T_FF_inst|Q_int~q\ & !\gen_ff:3:T_FF_inst|Q_int~q\) ) ) ) # ( !\gen_ff:2:T_FF_inst|Q_int~q\ & ( \gen_ff:0:T_FF_inst|Q_int~q\ & ( 
-- (!\gen_ff:1:T_FF_inst|Q_int~q\ & !\gen_ff:3:T_FF_inst|Q_int~q\) ) ) ) # ( \gen_ff:2:T_FF_inst|Q_int~q\ & ( !\gen_ff:0:T_FF_inst|Q_int~q\ & ( (!\gen_ff:1:T_FF_inst|Q_int~q\ & \gen_ff:3:T_FF_inst|Q_int~q\) ) ) ) # ( !\gen_ff:2:T_FF_inst|Q_int~q\ & ( 
-- !\gen_ff:0:T_FF_inst|Q_int~q\ & ( (!\gen_ff:1:T_FF_inst|Q_int~q\ & !\gen_ff:3:T_FF_inst|Q_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110011000000110000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_ff:1:T_FF_inst|ALT_INV_Q_int~q\,
	datac => \gen_ff:3:T_FF_inst|ALT_INV_Q_int~q\,
	datae => \gen_ff:2:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:0:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_min|output6~combout\);

-- Location: LABCELL_X44_Y1_N24
\display_7_max|output0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_max|output0~0_combout\ = ( \gen_ff:4:T_FF_inst|Q_int~q\ & ( (!\gen_ff:6:T_FF_inst|Q_int~q\ & (!\gen_ff:5:T_FF_inst|Q_int~q\ $ (\gen_ff:7:T_FF_inst|Q_int~q\))) # (\gen_ff:6:T_FF_inst|Q_int~q\ & (!\gen_ff:5:T_FF_inst|Q_int~q\ & 
-- \gen_ff:7:T_FF_inst|Q_int~q\)) ) ) # ( !\gen_ff:4:T_FF_inst|Q_int~q\ & ( (\gen_ff:6:T_FF_inst|Q_int~q\ & (!\gen_ff:5:T_FF_inst|Q_int~q\ & !\gen_ff:7:T_FF_inst|Q_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010000110100001101000011010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ff:6:T_FF_inst|ALT_INV_Q_int~q\,
	datab => \gen_ff:5:T_FF_inst|ALT_INV_Q_int~q\,
	datac => \gen_ff:7:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:4:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_max|output0~0_combout\);

-- Location: LABCELL_X44_Y1_N51
\display_7_max|output1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_max|output1~0_combout\ = ( \gen_ff:5:T_FF_inst|Q_int~q\ & ( (!\gen_ff:4:T_FF_inst|Q_int~q\ & (\gen_ff:6:T_FF_inst|Q_int~q\)) # (\gen_ff:4:T_FF_inst|Q_int~q\ & ((\gen_ff:7:T_FF_inst|Q_int~q\))) ) ) # ( !\gen_ff:5:T_FF_inst|Q_int~q\ & ( 
-- (\gen_ff:6:T_FF_inst|Q_int~q\ & (!\gen_ff:4:T_FF_inst|Q_int~q\ $ (!\gen_ff:7:T_FF_inst|Q_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ff:6:T_FF_inst|ALT_INV_Q_int~q\,
	datac => \gen_ff:4:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:7:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:5:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_max|output1~0_combout\);

-- Location: LABCELL_X44_Y1_N0
\display_7_max|output2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_max|output2~0_combout\ = ( \gen_ff:5:T_FF_inst|Q_int~q\ & ( (!\gen_ff:6:T_FF_inst|Q_int~q\ & (!\gen_ff:4:T_FF_inst|Q_int~q\ & !\gen_ff:7:T_FF_inst|Q_int~q\)) # (\gen_ff:6:T_FF_inst|Q_int~q\ & ((\gen_ff:7:T_FF_inst|Q_int~q\))) ) ) # ( 
-- !\gen_ff:5:T_FF_inst|Q_int~q\ & ( (\gen_ff:6:T_FF_inst|Q_int~q\ & (!\gen_ff:4:T_FF_inst|Q_int~q\ & \gen_ff:7:T_FF_inst|Q_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ff:6:T_FF_inst|ALT_INV_Q_int~q\,
	datab => \gen_ff:4:T_FF_inst|ALT_INV_Q_int~q\,
	datac => \gen_ff:7:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:5:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_max|output2~0_combout\);

-- Location: LABCELL_X44_Y1_N54
\display_7_max|output3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_max|output3~0_combout\ = ( \gen_ff:4:T_FF_inst|Q_int~q\ & ( (!\gen_ff:5:T_FF_inst|Q_int~q\ & (!\gen_ff:7:T_FF_inst|Q_int~q\ & !\gen_ff:6:T_FF_inst|Q_int~q\)) # (\gen_ff:5:T_FF_inst|Q_int~q\ & ((\gen_ff:6:T_FF_inst|Q_int~q\))) ) ) # ( 
-- !\gen_ff:4:T_FF_inst|Q_int~q\ & ( (!\gen_ff:5:T_FF_inst|Q_int~q\ & (!\gen_ff:7:T_FF_inst|Q_int~q\ & \gen_ff:6:T_FF_inst|Q_int~q\)) # (\gen_ff:5:T_FF_inst|Q_int~q\ & (\gen_ff:7:T_FF_inst|Q_int~q\ & !\gen_ff:6:T_FF_inst|Q_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ff:5:T_FF_inst|ALT_INV_Q_int~q\,
	datab => \gen_ff:7:T_FF_inst|ALT_INV_Q_int~q\,
	datac => \gen_ff:6:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:4:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_max|output3~0_combout\);

-- Location: LABCELL_X44_Y1_N3
\display_7_max|output4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_max|output4~0_combout\ = ( \gen_ff:5:T_FF_inst|Q_int~q\ & ( (\gen_ff:4:T_FF_inst|Q_int~q\ & !\gen_ff:7:T_FF_inst|Q_int~q\) ) ) # ( !\gen_ff:5:T_FF_inst|Q_int~q\ & ( (!\gen_ff:6:T_FF_inst|Q_int~q\ & (\gen_ff:4:T_FF_inst|Q_int~q\)) # 
-- (\gen_ff:6:T_FF_inst|Q_int~q\ & ((!\gen_ff:7:T_FF_inst|Q_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100100010011101110010001000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ff:6:T_FF_inst|ALT_INV_Q_int~q\,
	datab => \gen_ff:4:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:7:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:5:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_max|output4~0_combout\);

-- Location: LABCELL_X44_Y1_N57
\display_7_max|output5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_max|output5~0_combout\ = ( \gen_ff:4:T_FF_inst|Q_int~q\ & ( !\gen_ff:7:T_FF_inst|Q_int~q\ $ (((!\gen_ff:5:T_FF_inst|Q_int~q\ & \gen_ff:6:T_FF_inst|Q_int~q\))) ) ) # ( !\gen_ff:4:T_FF_inst|Q_int~q\ & ( (!\gen_ff:7:T_FF_inst|Q_int~q\ & 
-- (\gen_ff:5:T_FF_inst|Q_int~q\ & !\gen_ff:6:T_FF_inst|Q_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011001100001111001100110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_ff:7:T_FF_inst|ALT_INV_Q_int~q\,
	datac => \gen_ff:5:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:6:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:4:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_max|output5~0_combout\);

-- Location: LABCELL_X44_Y1_N36
\display_7_max|output6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_max|output6~combout\ = ( \gen_ff:4:T_FF_inst|Q_int~q\ & ( (!\gen_ff:7:T_FF_inst|Q_int~q\ & (!\gen_ff:5:T_FF_inst|Q_int~q\ $ (\gen_ff:6:T_FF_inst|Q_int~q\))) ) ) # ( !\gen_ff:4:T_FF_inst|Q_int~q\ & ( (!\gen_ff:5:T_FF_inst|Q_int~q\ & 
-- (!\gen_ff:7:T_FF_inst|Q_int~q\ $ (\gen_ff:6:T_FF_inst|Q_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_ff:7:T_FF_inst|ALT_INV_Q_int~q\,
	datac => \gen_ff:5:T_FF_inst|ALT_INV_Q_int~q\,
	datad => \gen_ff:6:T_FF_inst|ALT_INV_Q_int~q\,
	dataf => \gen_ff:4:T_FF_inst|ALT_INV_Q_int~q\,
	combout => \display_7_max|output6~combout\);

-- Location: MLABCELL_X28_Y28_N3
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


