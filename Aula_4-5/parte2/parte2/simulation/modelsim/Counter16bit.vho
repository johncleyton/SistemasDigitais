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

-- DATE "09/16/2024 21:03:15"

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

ENTITY 	Counter16bit IS
    PORT (
	clk : IN std_logic;
	clear : IN std_logic;
	enable : IN std_logic;
	count : BUFFER std_logic_vector(15 DOWNTO 0);
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
	hex16 : BUFFER std_logic;
	hex20 : BUFFER std_logic;
	hex21 : BUFFER std_logic;
	hex22 : BUFFER std_logic;
	hex23 : BUFFER std_logic;
	hex24 : BUFFER std_logic;
	hex25 : BUFFER std_logic;
	hex26 : BUFFER std_logic;
	hex30 : BUFFER std_logic;
	hex31 : BUFFER std_logic;
	hex32 : BUFFER std_logic;
	hex33 : BUFFER std_logic;
	hex34 : BUFFER std_logic;
	hex35 : BUFFER std_logic;
	hex36 : BUFFER std_logic
	);
END Counter16bit;

-- Design Ports Information
-- count[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[7]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[8]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[9]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[10]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[11]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[12]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[13]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[14]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[15]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- hex20	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex21	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex22	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex23	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex24	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex25	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex26	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex30	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex31	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex32	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex33	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex34	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex35	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex36	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter16bit IS
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
SIGNAL ww_count : std_logic_vector(15 DOWNTO 0);
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
SIGNAL ww_hex20 : std_logic;
SIGNAL ww_hex21 : std_logic;
SIGNAL ww_hex22 : std_logic;
SIGNAL ww_hex23 : std_logic;
SIGNAL ww_hex24 : std_logic;
SIGNAL ww_hex25 : std_logic;
SIGNAL ww_hex26 : std_logic;
SIGNAL ww_hex30 : std_logic;
SIGNAL ww_hex31 : std_logic;
SIGNAL ww_hex32 : std_logic;
SIGNAL ww_hex33 : std_logic;
SIGNAL ww_hex34 : std_logic;
SIGNAL ww_hex35 : std_logic;
SIGNAL ww_hex36 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Q[0]~0_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \display_7_1|output0~0_combout\ : std_logic;
SIGNAL \display_7_1|output1~0_combout\ : std_logic;
SIGNAL \display_7_1|output2~0_combout\ : std_logic;
SIGNAL \display_7_1|output3~0_combout\ : std_logic;
SIGNAL \display_7_1|output4~0_combout\ : std_logic;
SIGNAL \display_7_1|output5~0_combout\ : std_logic;
SIGNAL \display_7_1|output6~combout\ : std_logic;
SIGNAL \display_7_2|output0~0_combout\ : std_logic;
SIGNAL \display_7_2|output1~0_combout\ : std_logic;
SIGNAL \display_7_2|output2~0_combout\ : std_logic;
SIGNAL \display_7_2|output3~0_combout\ : std_logic;
SIGNAL \display_7_2|output4~0_combout\ : std_logic;
SIGNAL \display_7_2|output5~0_combout\ : std_logic;
SIGNAL \display_7_2|output6~combout\ : std_logic;
SIGNAL \display_7_3|output0~0_combout\ : std_logic;
SIGNAL \display_7_3|output1~0_combout\ : std_logic;
SIGNAL \display_7_3|output2~0_combout\ : std_logic;
SIGNAL \display_7_3|output3~0_combout\ : std_logic;
SIGNAL \display_7_3|output4~0_combout\ : std_logic;
SIGNAL \display_7_3|output5~0_combout\ : std_logic;
SIGNAL \display_7_3|output6~combout\ : std_logic;
SIGNAL \display_7_4|output0~0_combout\ : std_logic;
SIGNAL \display_7_4|output1~0_combout\ : std_logic;
SIGNAL \display_7_4|output2~0_combout\ : std_logic;
SIGNAL \display_7_4|output3~0_combout\ : std_logic;
SIGNAL \display_7_4|output4~0_combout\ : std_logic;
SIGNAL \display_7_4|output5~0_combout\ : std_logic;
SIGNAL \display_7_4|output6~combout\ : std_logic;
SIGNAL Q : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_Q : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

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
hex20 <= ww_hex20;
hex21 <= ww_hex21;
hex22 <= ww_hex22;
hex23 <= ww_hex23;
hex24 <= ww_hex24;
hex25 <= ww_hex25;
hex26 <= ww_hex26;
hex30 <= ww_hex30;
hex31 <= ww_hex31;
hex32 <= ww_hex32;
hex33 <= ww_hex33;
hex34 <= ww_hex34;
hex35 <= ww_hex35;
hex36 <= ww_hex36;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_Q(2) <= NOT Q(2);
ALT_INV_Q(1) <= NOT Q(1);
ALT_INV_Q(0) <= NOT Q(0);
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
ALT_INV_Q(15) <= NOT Q(15);
ALT_INV_Q(14) <= NOT Q(14);
ALT_INV_Q(13) <= NOT Q(13);
ALT_INV_Q(12) <= NOT Q(12);
ALT_INV_Q(11) <= NOT Q(11);
ALT_INV_Q(10) <= NOT Q(10);
ALT_INV_Q(9) <= NOT Q(9);
ALT_INV_Q(8) <= NOT Q(8);
ALT_INV_Q(7) <= NOT Q(7);
ALT_INV_Q(6) <= NOT Q(6);
ALT_INV_Q(5) <= NOT Q(5);
ALT_INV_Q(4) <= NOT Q(4);
ALT_INV_Q(3) <= NOT Q(3);

-- Location: IOOBUF_X43_Y0_N2
\count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(0),
	devoe => ww_devoe,
	o => ww_count(0));

-- Location: IOOBUF_X48_Y0_N59
\count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(1),
	devoe => ww_devoe,
	o => ww_count(1));

-- Location: IOOBUF_X38_Y0_N2
\count[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(2),
	devoe => ww_devoe,
	o => ww_count(2));

-- Location: IOOBUF_X52_Y0_N19
\count[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(3),
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
	i => Q(4),
	devoe => ww_devoe,
	o => ww_count(4));

-- Location: IOOBUF_X52_Y0_N36
\count[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(5),
	devoe => ww_devoe,
	o => ww_count(5));

-- Location: IOOBUF_X34_Y0_N36
\count[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(6),
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
	i => Q(7),
	devoe => ww_devoe,
	o => ww_count(7));

-- Location: IOOBUF_X36_Y0_N36
\count[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(8),
	devoe => ww_devoe,
	o => ww_count(8));

-- Location: IOOBUF_X36_Y0_N53
\count[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(9),
	devoe => ww_devoe,
	o => ww_count(9));

-- Location: IOOBUF_X34_Y0_N19
\count[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(10),
	devoe => ww_devoe,
	o => ww_count(10));

-- Location: IOOBUF_X36_Y0_N2
\count[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(11),
	devoe => ww_devoe,
	o => ww_count(11));

-- Location: IOOBUF_X50_Y0_N2
\count[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(12),
	devoe => ww_devoe,
	o => ww_count(12));

-- Location: IOOBUF_X50_Y0_N19
\count[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(13),
	devoe => ww_devoe,
	o => ww_count(13));

-- Location: IOOBUF_X44_Y0_N19
\count[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(14),
	devoe => ww_devoe,
	o => ww_count(14));

-- Location: IOOBUF_X34_Y0_N53
\count[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q(15),
	devoe => ww_devoe,
	o => ww_count(15));

-- Location: IOOBUF_X52_Y0_N53
\hex00~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_1|output0~0_combout\,
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
	i => \display_7_1|output1~0_combout\,
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
	i => \display_7_1|output2~0_combout\,
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
	i => \display_7_1|output3~0_combout\,
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
	i => \display_7_1|output4~0_combout\,
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
	i => \display_7_1|output5~0_combout\,
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
	i => \display_7_1|output6~combout\,
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
	i => \display_7_2|output0~0_combout\,
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
	i => \display_7_2|output1~0_combout\,
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
	i => \display_7_2|output2~0_combout\,
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
	i => \display_7_2|output3~0_combout\,
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
	i => \display_7_2|output4~0_combout\,
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
	i => \display_7_2|output5~0_combout\,
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
	i => \display_7_2|output6~combout\,
	devoe => ww_devoe,
	o => ww_hex16);

-- Location: IOOBUF_X48_Y0_N42
\hex20~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_3|output0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex20);

-- Location: IOOBUF_X38_Y0_N53
\hex21~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_3|output1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex21);

-- Location: IOOBUF_X22_Y0_N53
\hex22~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_3|output2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex22);

-- Location: IOOBUF_X36_Y0_N19
\hex23~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_3|output3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex23);

-- Location: IOOBUF_X38_Y0_N19
\hex24~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_3|output4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex24);

-- Location: IOOBUF_X46_Y0_N53
\hex25~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_3|output5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex25);

-- Location: IOOBUF_X40_Y0_N76
\hex26~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_3|output6~combout\,
	devoe => ww_devoe,
	o => ww_hex26);

-- Location: IOOBUF_X40_Y0_N59
\hex30~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_4|output0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex30);

-- Location: IOOBUF_X46_Y0_N2
\hex31~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_4|output1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex31);

-- Location: IOOBUF_X40_Y0_N42
\hex32~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_4|output2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex32);

-- Location: IOOBUF_X46_Y0_N19
\hex33~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_4|output3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex33);

-- Location: IOOBUF_X52_Y0_N2
\hex34~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_4|output4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex34);

-- Location: IOOBUF_X51_Y0_N2
\hex35~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_4|output5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex35);

-- Location: IOOBUF_X51_Y0_N19
\hex36~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_4|output6~combout\,
	devoe => ww_devoe,
	o => ww_hex36);

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

-- Location: LABCELL_X44_Y1_N54
\Q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q[0]~0_combout\ = !Q(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Q(0),
	combout => \Q[0]~0_combout\);

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

-- Location: FF_X44_Y1_N56
\Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Q[0]~0_combout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(0));

-- Location: LABCELL_X44_Y1_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( Q(0) ) + ( Q(1) ) + ( !VCC ))
-- \Add0~2\ = CARRY(( Q(0) ) + ( Q(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Q(1),
	datad => ALT_INV_Q(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X44_Y1_N53
\Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~1_sumout\,
	clrn => \clear~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(1));

-- Location: LABCELL_X44_Y1_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( Q(2) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( Q(2) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Q(2),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X44_Y1_N5
\Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(2));

-- Location: LABCELL_X44_Y1_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( Q(3) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( Q(3) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Q(3),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X44_Y1_N8
\Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(3));

-- Location: LABCELL_X44_Y1_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( Q(4) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( Q(4) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Q(4),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X44_Y1_N11
\Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(4));

-- Location: LABCELL_X44_Y1_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( Q(5) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( Q(5) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Q(5),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X44_Y1_N14
\Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(5));

-- Location: LABCELL_X44_Y1_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( Q(6) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( Q(6) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Q(6),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X44_Y1_N17
\Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(6));

-- Location: LABCELL_X44_Y1_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( Q(7) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( Q(7) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Q(7),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X44_Y1_N20
\Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(7));

-- Location: LABCELL_X44_Y1_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( Q(8) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( Q(8) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Q(8),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X44_Y1_N23
\Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(8));

-- Location: LABCELL_X44_Y1_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( Q(9) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( Q(9) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Q(9),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X44_Y1_N26
\Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(9));

-- Location: LABCELL_X44_Y1_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( Q(10) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( Q(10) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Q(10),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X44_Y1_N29
\Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(10));

-- Location: LABCELL_X44_Y1_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( Q(11) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( Q(11) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Q(11),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X44_Y1_N32
\Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(11));

-- Location: LABCELL_X44_Y1_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( Q(12) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( Q(12) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(12),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X44_Y1_N35
\Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(12));

-- Location: LABCELL_X44_Y1_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( Q(13) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( Q(13) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Q(13),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X44_Y1_N38
\Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(13));

-- Location: LABCELL_X44_Y1_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( Q(14) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( Q(14) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Q(14),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X44_Y1_N41
\Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(14));

-- Location: LABCELL_X44_Y1_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( Q(15) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Q(15),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\);

-- Location: FF_X44_Y1_N44
\Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \clear~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(15));

-- Location: MLABCELL_X45_Y1_N39
\display_7_1|output0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|output0~0_combout\ = (!Q(2) & (Q(0) & (!Q(1) $ (Q(3))))) # (Q(2) & (!Q(1) & (!Q(0) $ (Q(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000110010010000000011001001000000001100100100000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(2),
	datab => ALT_INV_Q(1),
	datac => ALT_INV_Q(0),
	datad => ALT_INV_Q(3),
	combout => \display_7_1|output0~0_combout\);

-- Location: MLABCELL_X45_Y1_N36
\display_7_1|output1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|output1~0_combout\ = (!Q(1) & (Q(2) & (!Q(3) $ (!Q(0))))) # (Q(1) & ((!Q(0) & (Q(2))) # (Q(0) & ((Q(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000011000101010100001100010101010000110001010101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(2),
	datab => ALT_INV_Q(1),
	datac => ALT_INV_Q(3),
	datad => ALT_INV_Q(0),
	combout => \display_7_1|output1~0_combout\);

-- Location: MLABCELL_X45_Y1_N6
\display_7_1|output2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|output2~0_combout\ = (!Q(2) & (Q(1) & (!Q(3) & !Q(0)))) # (Q(2) & (Q(3) & ((!Q(0)) # (Q(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100000001001001010000000100100101000000010010010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(2),
	datab => ALT_INV_Q(1),
	datac => ALT_INV_Q(3),
	datad => ALT_INV_Q(0),
	combout => \display_7_1|output2~0_combout\);

-- Location: MLABCELL_X45_Y1_N15
\display_7_1|output3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|output3~0_combout\ = ( Q(1) & ( (!Q(2) & (!Q(0) & Q(3))) # (Q(2) & (Q(0))) ) ) # ( !Q(1) & ( (!Q(3) & (!Q(2) $ (!Q(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(2),
	datab => ALT_INV_Q(0),
	datad => ALT_INV_Q(3),
	dataf => ALT_INV_Q(1),
	combout => \display_7_1|output3~0_combout\);

-- Location: MLABCELL_X45_Y1_N12
\display_7_1|output4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|output4~0_combout\ = ( Q(1) & ( (Q(0) & !Q(3)) ) ) # ( !Q(1) & ( (!Q(2) & (Q(0))) # (Q(2) & ((!Q(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110000001111110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Q(0),
	datac => ALT_INV_Q(2),
	datad => ALT_INV_Q(3),
	dataf => ALT_INV_Q(1),
	combout => \display_7_1|output4~0_combout\);

-- Location: MLABCELL_X45_Y1_N9
\display_7_1|output5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|output5~0_combout\ = ( \Add0~1_sumout\ & ( (!Q(2) & (((!Q(3))))) # (Q(2) & (Q(0) & (!Q(1) $ (!Q(3))))) ) ) # ( !\Add0~1_sumout\ & ( (Q(0) & ((!Q(1) & (Q(2) & Q(3))) # (Q(1) & ((!Q(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000100000000110000010010101011000001001010101100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(2),
	datab => ALT_INV_Q(1),
	datac => ALT_INV_Q(0),
	datad => ALT_INV_Q(3),
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \display_7_1|output5~0_combout\);

-- Location: MLABCELL_X45_Y1_N45
\display_7_1|output6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|output6~combout\ = ( Q(1) & ( (Q(2) & (Q(0) & !Q(3))) ) ) # ( !Q(1) & ( (!Q(2) & ((!Q(3)))) # (Q(2) & (!Q(0) & Q(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010000101010100101000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(2),
	datac => ALT_INV_Q(0),
	datad => ALT_INV_Q(3),
	dataf => ALT_INV_Q(1),
	combout => \display_7_1|output6~combout\);

-- Location: LABCELL_X44_Y1_N57
\display_7_2|output0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output0~0_combout\ = ( Q(6) & ( (!Q(5) & (!Q(7) $ (Q(4)))) ) ) # ( !Q(6) & ( (Q(4) & (!Q(7) $ (Q(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(7),
	datab => ALT_INV_Q(4),
	datac => ALT_INV_Q(5),
	dataf => ALT_INV_Q(6),
	combout => \display_7_2|output0~0_combout\);

-- Location: MLABCELL_X45_Y1_N48
\display_7_2|output1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output1~0_combout\ = ( Q(7) & ( (!Q(4) & ((Q(6)))) # (Q(4) & (Q(5))) ) ) # ( !Q(7) & ( (Q(6) & (!Q(5) $ (!Q(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Q(5),
	datac => ALT_INV_Q(6),
	datad => ALT_INV_Q(4),
	dataf => ALT_INV_Q(7),
	combout => \display_7_2|output1~0_combout\);

-- Location: MLABCELL_X45_Y1_N51
\display_7_2|output2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output2~0_combout\ = ( Q(7) & ( (Q(6) & ((!Q(4)) # (Q(5)))) ) ) # ( !Q(7) & ( (!Q(6) & (Q(5) & !Q(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(6),
	datac => ALT_INV_Q(5),
	datad => ALT_INV_Q(4),
	dataf => ALT_INV_Q(7),
	combout => \display_7_2|output2~0_combout\);

-- Location: LABCELL_X44_Y1_N51
\display_7_2|output3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output3~0_combout\ = ( Q(6) & ( (!Q(5) & (!Q(7) & !Q(4))) # (Q(5) & ((Q(4)))) ) ) # ( !Q(6) & ( (!Q(7) & (!Q(5) & Q(4))) # (Q(7) & (Q(5) & !Q(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(7),
	datab => ALT_INV_Q(5),
	datac => ALT_INV_Q(4),
	dataf => ALT_INV_Q(6),
	combout => \display_7_2|output3~0_combout\);

-- Location: LABCELL_X44_Y1_N48
\display_7_2|output4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output4~0_combout\ = ( Q(4) & ( (!Q(7)) # ((!Q(5) & !Q(6))) ) ) # ( !Q(4) & ( (!Q(7) & (!Q(5) & Q(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(7),
	datab => ALT_INV_Q(5),
	datac => ALT_INV_Q(6),
	dataf => ALT_INV_Q(4),
	combout => \display_7_2|output4~0_combout\);

-- Location: MLABCELL_X45_Y1_N30
\display_7_2|output5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output5~0_combout\ = ( Q(7) & ( (Q(6) & (!Q(5) & Q(4))) ) ) # ( !Q(7) & ( (!Q(6) & ((Q(4)) # (Q(5)))) # (Q(6) & (Q(5) & Q(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(6),
	datab => ALT_INV_Q(5),
	datac => ALT_INV_Q(4),
	dataf => ALT_INV_Q(7),
	combout => \display_7_2|output5~0_combout\);

-- Location: MLABCELL_X45_Y1_N33
\display_7_2|output6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output6~combout\ = ( Q(7) & ( (Q(6) & (!Q(5) & !Q(4))) ) ) # ( !Q(7) & ( (!Q(6) & (!Q(5))) # (Q(6) & (Q(5) & Q(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100101101000001010010101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(6),
	datac => ALT_INV_Q(5),
	datad => ALT_INV_Q(4),
	dataf => ALT_INV_Q(7),
	combout => \display_7_2|output6~combout\);

-- Location: MLABCELL_X45_Y1_N3
\display_7_3|output0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output0~0_combout\ = ( Q(11) & ( (Q(8) & (!Q(9) $ (!Q(10)))) ) ) # ( !Q(11) & ( (!Q(9) & (!Q(8) $ (!Q(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(9),
	datab => ALT_INV_Q(8),
	datac => ALT_INV_Q(10),
	dataf => ALT_INV_Q(11),
	combout => \display_7_3|output0~0_combout\);

-- Location: MLABCELL_X37_Y1_N15
\display_7_3|output1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output1~0_combout\ = ( Q(11) & ( Q(9) & ( (Q(8)) # (Q(10)) ) ) ) # ( !Q(11) & ( Q(9) & ( (Q(10) & !Q(8)) ) ) ) # ( Q(11) & ( !Q(9) & ( (Q(10) & !Q(8)) ) ) ) # ( !Q(11) & ( !Q(9) & ( (Q(10) & Q(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000001010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(10),
	datac => ALT_INV_Q(8),
	datae => ALT_INV_Q(11),
	dataf => ALT_INV_Q(9),
	combout => \display_7_3|output1~0_combout\);

-- Location: MLABCELL_X37_Y1_N30
\display_7_3|output2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output2~0_combout\ = ( Q(11) & ( Q(8) & ( (Q(9) & Q(10)) ) ) ) # ( Q(11) & ( !Q(8) & ( Q(10) ) ) ) # ( !Q(11) & ( !Q(8) & ( (Q(9) & !Q(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000011110000111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(9),
	datac => ALT_INV_Q(10),
	datae => ALT_INV_Q(11),
	dataf => ALT_INV_Q(8),
	combout => \display_7_3|output2~0_combout\);

-- Location: MLABCELL_X37_Y1_N0
\display_7_3|output3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output3~0_combout\ = ( Q(11) & ( Q(8) & ( (Q(9) & Q(10)) ) ) ) # ( !Q(11) & ( Q(8) & ( !Q(9) $ (Q(10)) ) ) ) # ( Q(11) & ( !Q(8) & ( (Q(9) & !Q(10)) ) ) ) # ( !Q(11) & ( !Q(8) & ( (!Q(9) & Q(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010100000101000010100101101001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(9),
	datac => ALT_INV_Q(10),
	datae => ALT_INV_Q(11),
	dataf => ALT_INV_Q(8),
	combout => \display_7_3|output3~0_combout\);

-- Location: MLABCELL_X37_Y1_N45
\display_7_3|output4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output4~0_combout\ = ( !Q(11) & ( Q(9) & ( Q(8) ) ) ) # ( Q(11) & ( !Q(9) & ( (!Q(10) & Q(8)) ) ) ) # ( !Q(11) & ( !Q(9) & ( (Q(8)) # (Q(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000010100000101000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(10),
	datac => ALT_INV_Q(8),
	datae => ALT_INV_Q(11),
	dataf => ALT_INV_Q(9),
	combout => \display_7_3|output4~0_combout\);

-- Location: MLABCELL_X45_Y1_N0
\display_7_3|output5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output5~0_combout\ = ( Q(11) & ( (!Q(9) & (Q(8) & Q(10))) ) ) # ( !Q(11) & ( (!Q(9) & (Q(8) & !Q(10))) # (Q(9) & ((!Q(10)) # (Q(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(9),
	datab => ALT_INV_Q(8),
	datad => ALT_INV_Q(10),
	dataf => ALT_INV_Q(11),
	combout => \display_7_3|output5~0_combout\);

-- Location: LABCELL_X40_Y1_N39
\display_7_3|output6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output6~combout\ = ( !Q(11) & ( Q(8) & ( !Q(10) $ (Q(9)) ) ) ) # ( Q(11) & ( !Q(8) & ( (Q(10) & !Q(9)) ) ) ) # ( !Q(11) & ( !Q(8) & ( (!Q(10) & !Q(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000010100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(10),
	datac => ALT_INV_Q(9),
	datae => ALT_INV_Q(11),
	dataf => ALT_INV_Q(8),
	combout => \display_7_3|output6~combout\);

-- Location: MLABCELL_X45_Y1_N18
\display_7_4|output0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_4|output0~0_combout\ = ( Q(15) & ( (Q(12) & (!Q(13) $ (!Q(14)))) ) ) # ( !Q(15) & ( (!Q(13) & (!Q(12) $ (!Q(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(13),
	datab => ALT_INV_Q(12),
	datad => ALT_INV_Q(14),
	dataf => ALT_INV_Q(15),
	combout => \display_7_4|output0~0_combout\);

-- Location: MLABCELL_X45_Y1_N42
\display_7_4|output1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_4|output1~0_combout\ = ( Q(13) & ( (!Q(12) & (Q(14))) # (Q(12) & ((Q(15)))) ) ) # ( !Q(13) & ( (Q(14) & (!Q(15) $ (!Q(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Q(14),
	datac => ALT_INV_Q(15),
	datad => ALT_INV_Q(12),
	dataf => ALT_INV_Q(13),
	combout => \display_7_4|output1~0_combout\);

-- Location: MLABCELL_X45_Y1_N21
\display_7_4|output2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_4|output2~0_combout\ = ( Q(15) & ( (Q(14) & ((!Q(12)) # (Q(13)))) ) ) # ( !Q(15) & ( (Q(13) & (!Q(12) & !Q(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(13),
	datab => ALT_INV_Q(12),
	datac => ALT_INV_Q(14),
	dataf => ALT_INV_Q(15),
	combout => \display_7_4|output2~0_combout\);

-- Location: MLABCELL_X45_Y1_N27
\display_7_4|output3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_4|output3~0_combout\ = ( Q(15) & ( (Q(13) & (!Q(12) $ (Q(14)))) ) ) # ( !Q(15) & ( (!Q(13) & (!Q(12) $ (!Q(14)))) # (Q(13) & (Q(12) & Q(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(13),
	datab => ALT_INV_Q(12),
	datac => ALT_INV_Q(14),
	dataf => ALT_INV_Q(15),
	combout => \display_7_4|output3~0_combout\);

-- Location: MLABCELL_X45_Y1_N54
\display_7_4|output4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_4|output4~0_combout\ = ( Q(15) & ( (!Q(13) & (Q(12) & !Q(14))) ) ) # ( !Q(15) & ( ((!Q(13) & Q(14))) # (Q(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110111011001100111011101100100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(13),
	datab => ALT_INV_Q(12),
	datad => ALT_INV_Q(14),
	dataf => ALT_INV_Q(15),
	combout => \display_7_4|output4~0_combout\);

-- Location: MLABCELL_X45_Y1_N57
\display_7_4|output5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_4|output5~0_combout\ = ( Q(15) & ( (!Q(13) & (Q(12) & Q(14))) ) ) # ( !Q(15) & ( (!Q(13) & (Q(12) & !Q(14))) # (Q(13) & ((!Q(14)) # (Q(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(13),
	datab => ALT_INV_Q(12),
	datac => ALT_INV_Q(14),
	dataf => ALT_INV_Q(15),
	combout => \display_7_4|output5~0_combout\);

-- Location: MLABCELL_X45_Y1_N24
\display_7_4|output6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_4|output6~combout\ = ( Q(15) & ( (!Q(13) & (!Q(12) & Q(14))) ) ) # ( !Q(15) & ( (!Q(13) & ((!Q(14)))) # (Q(13) & (Q(12) & Q(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000010001101010100001000100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Q(13),
	datab => ALT_INV_Q(12),
	datad => ALT_INV_Q(14),
	dataf => ALT_INV_Q(15),
	combout => \display_7_4|output6~combout\);

-- Location: MLABCELL_X37_Y8_N3
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


