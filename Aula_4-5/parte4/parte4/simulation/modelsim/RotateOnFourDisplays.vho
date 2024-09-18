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

-- DATE "09/17/2024 13:40:09"

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

ENTITY 	RotateOnFourDisplays IS
    PORT (
	clk : IN std_logic;
	clear : IN std_logic;
	enable : IN std_logic;
	count : OUT std_logic_vector(1 DOWNTO 0);
	hex00 : OUT std_logic;
	hex01 : OUT std_logic;
	hex02 : OUT std_logic;
	hex03 : OUT std_logic;
	hex04 : OUT std_logic;
	hex05 : OUT std_logic;
	hex06 : OUT std_logic;
	hex10 : OUT std_logic;
	hex11 : OUT std_logic;
	hex12 : OUT std_logic;
	hex13 : OUT std_logic;
	hex14 : OUT std_logic;
	hex15 : OUT std_logic;
	hex16 : OUT std_logic;
	hex20 : OUT std_logic;
	hex21 : OUT std_logic;
	hex22 : OUT std_logic;
	hex23 : OUT std_logic;
	hex24 : OUT std_logic;
	hex25 : OUT std_logic;
	hex26 : OUT std_logic
	);
END RotateOnFourDisplays;

-- Design Ports Information
-- count[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- clear	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RotateOnFourDisplays IS
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
SIGNAL ww_count : std_logic_vector(1 DOWNTO 0);
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \displayCounter~0_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \fpgaCounter[8]~1_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \fpgaCounter[8]~0_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \displayCounter[0]~1_combout\ : std_logic;
SIGNAL \displayCounter~2_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \display1[2]~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \display_7_1|fio_numero6~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \display_7_1|output1~0_combout\ : std_logic;
SIGNAL \display_7_1|output2~0_combout\ : std_logic;
SIGNAL \display_7_1|output3~0_combout\ : std_logic;
SIGNAL \display_7_1|output4~0_combout\ : std_logic;
SIGNAL \display_7_1|output5~0_combout\ : std_logic;
SIGNAL \display_7_1|output6~0_combout\ : std_logic;
SIGNAL \display2[1]~0_combout\ : std_logic;
SIGNAL \display_7_2|output0~0_combout\ : std_logic;
SIGNAL \display2[2]~1_combout\ : std_logic;
SIGNAL \display_7_2|output1~0_combout\ : std_logic;
SIGNAL \display_7_2|output2~0_combout\ : std_logic;
SIGNAL \display_7_2|output3~0_combout\ : std_logic;
SIGNAL \display_7_2|output4~0_combout\ : std_logic;
SIGNAL \display_7_2|output5~0_combout\ : std_logic;
SIGNAL \display_7_2|output6~0_combout\ : std_logic;
SIGNAL \display_7_3|output0~0_combout\ : std_logic;
SIGNAL \display3[2]~0_combout\ : std_logic;
SIGNAL \display_7_3|output1~0_combout\ : std_logic;
SIGNAL \display_7_3|output2~0_combout\ : std_logic;
SIGNAL \display_7_3|output3~0_combout\ : std_logic;
SIGNAL \display_7_3|output4~0_combout\ : std_logic;
SIGNAL \display_7_3|output5~0_combout\ : std_logic;
SIGNAL \display_7_3|output6~0_combout\ : std_logic;
SIGNAL fpgaCounter : std_logic_vector(25 DOWNTO 0);
SIGNAL displayCounter : std_logic_vector(1 DOWNTO 0);
SIGNAL display1 : std_logic_vector(3 DOWNTO 0);
SIGNAL display2 : std_logic_vector(3 DOWNTO 0);
SIGNAL display3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_clear~input_o\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \display_7_3|ALT_INV_output5~0_combout\ : std_logic;
SIGNAL \display_7_3|ALT_INV_output4~0_combout\ : std_logic;
SIGNAL \display_7_3|ALT_INV_output3~0_combout\ : std_logic;
SIGNAL ALT_INV_display3 : std_logic_vector(2 DOWNTO 2);
SIGNAL \display_7_3|ALT_INV_output0~0_combout\ : std_logic;
SIGNAL ALT_INV_display2 : std_logic_vector(2 DOWNTO 1);
SIGNAL ALT_INV_display1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_displayCounter : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_fpgaCounter : std_logic_vector(25 DOWNTO 0);

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_clear~input_o\ <= NOT \clear~input_o\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\display_7_3|ALT_INV_output5~0_combout\ <= NOT \display_7_3|output5~0_combout\;
\display_7_3|ALT_INV_output4~0_combout\ <= NOT \display_7_3|output4~0_combout\;
\display_7_3|ALT_INV_output3~0_combout\ <= NOT \display_7_3|output3~0_combout\;
ALT_INV_display3(2) <= NOT display3(2);
\display_7_3|ALT_INV_output0~0_combout\ <= NOT \display_7_3|output0~0_combout\;
ALT_INV_display2(2) <= NOT display2(2);
ALT_INV_display2(1) <= NOT display2(1);
ALT_INV_display1(2) <= NOT display1(2);
ALT_INV_display1(1) <= NOT display1(1);
ALT_INV_display1(0) <= NOT display1(0);
ALT_INV_displayCounter(1) <= NOT displayCounter(1);
ALT_INV_displayCounter(0) <= NOT displayCounter(0);
ALT_INV_fpgaCounter(18) <= NOT fpgaCounter(18);
ALT_INV_fpgaCounter(17) <= NOT fpgaCounter(17);
ALT_INV_fpgaCounter(16) <= NOT fpgaCounter(16);
ALT_INV_fpgaCounter(15) <= NOT fpgaCounter(15);
ALT_INV_fpgaCounter(14) <= NOT fpgaCounter(14);
ALT_INV_fpgaCounter(4) <= NOT fpgaCounter(4);
ALT_INV_fpgaCounter(13) <= NOT fpgaCounter(13);
ALT_INV_fpgaCounter(12) <= NOT fpgaCounter(12);
ALT_INV_fpgaCounter(11) <= NOT fpgaCounter(11);
ALT_INV_fpgaCounter(10) <= NOT fpgaCounter(10);
ALT_INV_fpgaCounter(9) <= NOT fpgaCounter(9);
ALT_INV_fpgaCounter(8) <= NOT fpgaCounter(8);
ALT_INV_fpgaCounter(25) <= NOT fpgaCounter(25);
ALT_INV_fpgaCounter(24) <= NOT fpgaCounter(24);
ALT_INV_fpgaCounter(23) <= NOT fpgaCounter(23);
ALT_INV_fpgaCounter(21) <= NOT fpgaCounter(21);
ALT_INV_fpgaCounter(20) <= NOT fpgaCounter(20);
ALT_INV_fpgaCounter(19) <= NOT fpgaCounter(19);
ALT_INV_fpgaCounter(5) <= NOT fpgaCounter(5);
ALT_INV_fpgaCounter(22) <= NOT fpgaCounter(22);
ALT_INV_fpgaCounter(3) <= NOT fpgaCounter(3);
ALT_INV_fpgaCounter(2) <= NOT fpgaCounter(2);
ALT_INV_fpgaCounter(1) <= NOT fpgaCounter(1);
ALT_INV_fpgaCounter(0) <= NOT fpgaCounter(0);
ALT_INV_fpgaCounter(7) <= NOT fpgaCounter(7);
ALT_INV_fpgaCounter(6) <= NOT fpgaCounter(6);

-- Location: IOOBUF_X34_Y0_N36
\count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => displayCounter(0),
	devoe => ww_devoe,
	o => ww_count(0));

-- Location: IOOBUF_X34_Y0_N53
\count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => displayCounter(1),
	devoe => ww_devoe,
	o => ww_count(1));

-- Location: IOOBUF_X52_Y0_N53
\hex00~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_7_1|fio_numero6~0_combout\,
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
	i => \display_7_1|output6~0_combout\,
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
	i => \display_7_2|output6~0_combout\,
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
	i => \display_7_3|ALT_INV_output0~0_combout\,
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
	i => \display_7_3|ALT_INV_output3~0_combout\,
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
	i => \display_7_3|ALT_INV_output4~0_combout\,
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
	i => \display_7_3|ALT_INV_output5~0_combout\,
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
	i => \display_7_3|output6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex26);

-- Location: IOIBUF_X38_Y45_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G12
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

-- Location: LABCELL_X35_Y2_N39
\displayCounter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \displayCounter~0_combout\ = ( !displayCounter(0) & ( \clear~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_displayCounter(0),
	dataf => \ALT_INV_clear~input_o\,
	combout => \displayCounter~0_combout\);

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

-- Location: LABCELL_X36_Y2_N30
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( fpgaCounter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~10\ = CARRY(( fpgaCounter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fpgaCounter(0),
	cin => GND,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X36_Y2_N33
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( fpgaCounter(1) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( fpgaCounter(1) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fpgaCounter(1),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X36_Y2_N36
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( fpgaCounter(2) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( fpgaCounter(2) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fpgaCounter(2),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X36_Y2_N9
\fpgaCounter[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fpgaCounter[8]~1_combout\ = (!\clear~input_o\) # (\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clear~input_o\,
	datad => \ALT_INV_enable~input_o\,
	combout => \fpgaCounter[8]~1_combout\);

-- Location: FF_X36_Y2_N38
\fpgaCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(2));

-- Location: LABCELL_X36_Y2_N39
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( fpgaCounter(3) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( fpgaCounter(3) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fpgaCounter(3),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X36_Y2_N41
\fpgaCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(3));

-- Location: LABCELL_X36_Y2_N42
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( fpgaCounter(4) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~82\ = CARRY(( fpgaCounter(4) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fpgaCounter(4),
	cin => \Add0~22\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X36_Y2_N44
\fpgaCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(4));

-- Location: LABCELL_X36_Y2_N45
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( fpgaCounter(5) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~30\ = CARRY(( fpgaCounter(5) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fpgaCounter(5),
	cin => \Add0~82\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X36_Y2_N47
\fpgaCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(5));

-- Location: LABCELL_X36_Y2_N48
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( fpgaCounter(6) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~2\ = CARRY(( fpgaCounter(6) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fpgaCounter(6),
	cin => \Add0~30\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X36_Y2_N50
\fpgaCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(6));

-- Location: LABCELL_X36_Y2_N51
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( fpgaCounter(7) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( fpgaCounter(7) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fpgaCounter(7),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X36_Y2_N53
\fpgaCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(7));

-- Location: LABCELL_X36_Y2_N54
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( fpgaCounter(8) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~58\ = CARRY(( fpgaCounter(8) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fpgaCounter(8),
	cin => \Add0~6\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X36_Y2_N56
\fpgaCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(8));

-- Location: LABCELL_X36_Y2_N57
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( fpgaCounter(9) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( fpgaCounter(9) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fpgaCounter(9),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X36_Y2_N59
\fpgaCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(9));

-- Location: LABCELL_X36_Y1_N0
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( fpgaCounter(10) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( fpgaCounter(10) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fpgaCounter(10),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X36_Y1_N2
\fpgaCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(10));

-- Location: LABCELL_X36_Y1_N3
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( fpgaCounter(11) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( fpgaCounter(11) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fpgaCounter(11),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X36_Y1_N5
\fpgaCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(11));

-- Location: LABCELL_X36_Y1_N6
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( fpgaCounter(12) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( fpgaCounter(12) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fpgaCounter(12),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X36_Y1_N8
\fpgaCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(12));

-- Location: LABCELL_X36_Y1_N9
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( fpgaCounter(13) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( fpgaCounter(13) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fpgaCounter(13),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X36_Y1_N11
\fpgaCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(13));

-- Location: LABCELL_X36_Y1_N12
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( fpgaCounter(14) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~86\ = CARRY(( fpgaCounter(14) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fpgaCounter(14),
	cin => \Add0~78\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X36_Y1_N14
\fpgaCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(14));

-- Location: LABCELL_X36_Y1_N15
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( fpgaCounter(15) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( fpgaCounter(15) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fpgaCounter(15),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X36_Y1_N17
\fpgaCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(15));

-- Location: LABCELL_X36_Y1_N18
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( fpgaCounter(16) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( fpgaCounter(16) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fpgaCounter(16),
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X36_Y1_N20
\fpgaCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(16));

-- Location: LABCELL_X36_Y1_N21
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( fpgaCounter(17) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( fpgaCounter(17) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fpgaCounter(17),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X36_Y1_N23
\fpgaCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(17));

-- Location: LABCELL_X36_Y1_N24
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( fpgaCounter(18) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( fpgaCounter(18) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fpgaCounter(18),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X36_Y1_N26
\fpgaCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(18));

-- Location: LABCELL_X36_Y1_N27
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( fpgaCounter(19) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~34\ = CARRY(( fpgaCounter(19) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_fpgaCounter(19),
	cin => \Add0~102\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X36_Y1_N29
\fpgaCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(19));

-- Location: LABCELL_X36_Y1_N30
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( fpgaCounter(20) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( fpgaCounter(20) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fpgaCounter(20),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X36_Y1_N32
\fpgaCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(20));

-- Location: LABCELL_X36_Y1_N33
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( fpgaCounter(21) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( fpgaCounter(21) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fpgaCounter(21),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X36_Y1_N35
\fpgaCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(21));

-- Location: LABCELL_X36_Y1_N36
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( fpgaCounter(22) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~26\ = CARRY(( fpgaCounter(22) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fpgaCounter(22),
	cin => \Add0~42\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X36_Y1_N38
\fpgaCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(22));

-- Location: LABCELL_X36_Y1_N39
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( fpgaCounter(23) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~46\ = CARRY(( fpgaCounter(23) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fpgaCounter(23),
	cin => \Add0~26\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X36_Y1_N41
\fpgaCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(23));

-- Location: LABCELL_X36_Y1_N42
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( fpgaCounter(24) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( fpgaCounter(24) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fpgaCounter(24),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X36_Y1_N44
\fpgaCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(24));

-- Location: LABCELL_X36_Y1_N45
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( fpgaCounter(25) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fpgaCounter(25),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\);

-- Location: FF_X36_Y1_N47
\fpgaCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(25));

-- Location: LABCELL_X36_Y1_N48
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( fpgaCounter(25) & ( fpgaCounter(20) & ( (fpgaCounter(19) & (!fpgaCounter(24) & (fpgaCounter(21) & fpgaCounter(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fpgaCounter(19),
	datab => ALT_INV_fpgaCounter(24),
	datac => ALT_INV_fpgaCounter(21),
	datad => ALT_INV_fpgaCounter(23),
	datae => ALT_INV_fpgaCounter(25),
	dataf => ALT_INV_fpgaCounter(20),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X36_Y2_N3
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( fpgaCounter(7) & ( !fpgaCounter(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fpgaCounter(6),
	dataf => ALT_INV_fpgaCounter(7),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X36_Y2_N18
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !fpgaCounter(11) & ( fpgaCounter(13) & ( (!fpgaCounter(8) & (!fpgaCounter(9) & (fpgaCounter(12) & !fpgaCounter(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fpgaCounter(8),
	datab => ALT_INV_fpgaCounter(9),
	datac => ALT_INV_fpgaCounter(12),
	datad => ALT_INV_fpgaCounter(10),
	datae => ALT_INV_fpgaCounter(11),
	dataf => ALT_INV_fpgaCounter(13),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X36_Y2_N12
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( fpgaCounter(14) & ( !fpgaCounter(18) & ( (fpgaCounter(15) & (fpgaCounter(17) & (!fpgaCounter(16) & !fpgaCounter(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fpgaCounter(15),
	datab => ALT_INV_fpgaCounter(17),
	datac => ALT_INV_fpgaCounter(16),
	datad => ALT_INV_fpgaCounter(4),
	datae => ALT_INV_fpgaCounter(14),
	dataf => ALT_INV_fpgaCounter(18),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X36_Y1_N54
\fpgaCounter[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fpgaCounter[8]~0_combout\ = ( \Equal0~3_combout\ & ( \Equal0~4_combout\ & ( (!\clear~input_o\) # ((\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\))) ) ) ) # ( !\Equal0~3_combout\ & ( \Equal0~4_combout\ & ( !\clear~input_o\ ) ) ) # ( 
-- \Equal0~3_combout\ & ( !\Equal0~4_combout\ & ( !\clear~input_o\ ) ) ) # ( !\Equal0~3_combout\ & ( !\Equal0~4_combout\ & ( !\clear~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \ALT_INV_clear~input_o\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \fpgaCounter[8]~0_combout\);

-- Location: FF_X36_Y2_N32
\fpgaCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(0));

-- Location: FF_X36_Y2_N35
\fpgaCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \fpgaCounter[8]~0_combout\,
	ena => \fpgaCounter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fpgaCounter(1));

-- Location: LABCELL_X36_Y2_N24
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !fpgaCounter(5) & ( fpgaCounter(22) & ( (!fpgaCounter(1) & (!fpgaCounter(0) & (!fpgaCounter(2) & !fpgaCounter(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fpgaCounter(1),
	datab => ALT_INV_fpgaCounter(0),
	datac => ALT_INV_fpgaCounter(2),
	datad => ALT_INV_fpgaCounter(3),
	datae => ALT_INV_fpgaCounter(5),
	dataf => ALT_INV_fpgaCounter(22),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X36_Y2_N6
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~2_combout\ & ( (\Equal0~1_combout\ & (\Equal0~4_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X35_Y2_N21
\displayCounter[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \displayCounter[0]~1_combout\ = ( \Equal0~5_combout\ & ( (!\clear~input_o\) # (\enable~input_o\) ) ) # ( !\Equal0~5_combout\ & ( !\clear~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clear~input_o\,
	datad => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \displayCounter[0]~1_combout\);

-- Location: FF_X35_Y2_N41
\displayCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \displayCounter~0_combout\,
	ena => \displayCounter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => displayCounter(0));

-- Location: LABCELL_X35_Y2_N18
\displayCounter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \displayCounter~2_combout\ = ( displayCounter(0) & ( (\clear~input_o\ & !displayCounter(1)) ) ) # ( !displayCounter(0) & ( (\clear~input_o\ & displayCounter(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clear~input_o\,
	datad => ALT_INV_displayCounter(1),
	dataf => ALT_INV_displayCounter(0),
	combout => \displayCounter~2_combout\);

-- Location: FF_X35_Y2_N20
\displayCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \displayCounter~2_combout\,
	ena => \displayCounter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => displayCounter(1));

-- Location: LABCELL_X35_Y2_N27
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( !displayCounter(0) & ( displayCounter(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_displayCounter(1),
	dataf => ALT_INV_displayCounter(0),
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X36_Y2_N0
\display1[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1[2]~0_combout\ = ( \Equal0~5_combout\ & ( (\clear~input_o\ & \enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clear~input_o\,
	datac => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \display1[2]~0_combout\);

-- Location: FF_X36_Y2_N23
\display1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mux2~1_combout\,
	sload => VCC,
	ena => \display1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display1(1));

-- Location: LABCELL_X35_Y2_N9
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( displayCounter(0) & ( !displayCounter(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_displayCounter(1),
	dataf => ALT_INV_displayCounter(0),
	combout => \Mux2~0_combout\);

-- Location: FF_X36_Y2_N5
\display1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Mux2~0_combout\,
	sload => VCC,
	ena => \display1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display1(0));

-- Location: MLABCELL_X42_Y2_N12
\display_7_1|fio_numero6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|fio_numero6~0_combout\ = ( !display1(1) & ( display1(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_display1(1),
	dataf => ALT_INV_display1(0),
	combout => \display_7_1|fio_numero6~0_combout\);

-- Location: LABCELL_X35_Y2_N57
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( displayCounter(0) & ( !displayCounter(1) ) ) # ( !displayCounter(0) & ( displayCounter(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_displayCounter(1),
	dataf => ALT_INV_displayCounter(0),
	combout => \Add1~0_combout\);

-- Location: FF_X36_Y2_N2
\display1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~0_combout\,
	sload => VCC,
	ena => \display1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display1(2));

-- Location: MLABCELL_X42_Y2_N57
\display_7_1|output1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|output1~0_combout\ = ( display1(2) & ( display1(0) & ( display1(1) ) ) ) # ( display1(2) & ( !display1(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display1(1),
	datae => ALT_INV_display1(2),
	dataf => ALT_INV_display1(0),
	combout => \display_7_1|output1~0_combout\);

-- Location: MLABCELL_X42_Y2_N0
\display_7_1|output2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|output2~0_combout\ = ( display1(0) & ( (display1(1) & display1(2)) ) ) # ( !display1(0) & ( (display1(2)) # (display1(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display1(1),
	datac => ALT_INV_display1(2),
	dataf => ALT_INV_display1(0),
	combout => \display_7_1|output2~0_combout\);

-- Location: MLABCELL_X42_Y2_N9
\display_7_1|output3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|output3~0_combout\ = ( display1(2) & ( display1(0) & ( display1(1) ) ) ) # ( !display1(2) & ( display1(0) & ( !display1(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display1(1),
	datae => ALT_INV_display1(2),
	dataf => ALT_INV_display1(0),
	combout => \display_7_1|output3~0_combout\);

-- Location: MLABCELL_X42_Y2_N51
\display_7_1|output4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|output4~0_combout\ = ( display1(0) & ( !display1(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display1(2),
	dataf => ALT_INV_display1(0),
	combout => \display_7_1|output4~0_combout\);

-- Location: MLABCELL_X42_Y2_N30
\display_7_1|output5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|output5~0_combout\ = ( display1(0) & ( (!display1(1)) # (!display1(2)) ) ) # ( !display1(0) & ( (display1(1) & !display1(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display1(1),
	datac => ALT_INV_display1(2),
	dataf => ALT_INV_display1(0),
	combout => \display_7_1|output5~0_combout\);

-- Location: MLABCELL_X42_Y2_N24
\display_7_1|output6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_1|output6~0_combout\ = ( display1(0) & ( (!display1(1) & !display1(2)) ) ) # ( !display1(0) & ( !display1(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display1(1),
	datac => ALT_INV_display1(2),
	dataf => ALT_INV_display1(0),
	combout => \display_7_1|output6~0_combout\);

-- Location: LABCELL_X35_Y2_N54
\display2[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2[1]~0_combout\ = !\Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~0_combout\,
	combout => \display2[1]~0_combout\);

-- Location: FF_X36_Y2_N26
\display2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \display2[1]~0_combout\,
	sload => VCC,
	ena => \display1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display2(1));

-- Location: MLABCELL_X42_Y2_N21
\display_7_2|output0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output0~0_combout\ = ( !display2(1) & ( display1(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display1(1),
	dataf => ALT_INV_display2(1),
	combout => \display_7_2|output0~0_combout\);

-- Location: LABCELL_X35_Y2_N6
\display2[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2[2]~1_combout\ = ( !\Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \display2[2]~1_combout\);

-- Location: FF_X36_Y2_N29
\display2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \display2[2]~1_combout\,
	sload => VCC,
	ena => \display1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display2(2));

-- Location: MLABCELL_X42_Y2_N27
\display_7_2|output1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output1~0_combout\ = ( display2(2) & ( (!display1(1)) # (display2(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display1(1),
	datac => ALT_INV_display2(1),
	dataf => ALT_INV_display2(2),
	combout => \display_7_2|output1~0_combout\);

-- Location: MLABCELL_X42_Y2_N18
\display_7_2|output2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output2~0_combout\ = ( display2(1) & ( (!display1(1)) # (display2(2)) ) ) # ( !display2(1) & ( (!display1(1) & display2(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display1(1),
	datac => ALT_INV_display2(2),
	dataf => ALT_INV_display2(1),
	combout => \display_7_2|output2~0_combout\);

-- Location: MLABCELL_X42_Y2_N39
\display_7_2|output3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output3~0_combout\ = ( display1(1) & ( display2(2) & ( display2(1) ) ) ) # ( display1(1) & ( !display2(2) & ( !display2(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display2(1),
	datae => ALT_INV_display1(1),
	dataf => ALT_INV_display2(2),
	combout => \display_7_2|output3~0_combout\);

-- Location: MLABCELL_X42_Y2_N3
\display_7_2|output4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output4~0_combout\ = ( !display2(2) & ( display1(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display1(1),
	dataf => ALT_INV_display2(2),
	combout => \display_7_2|output4~0_combout\);

-- Location: MLABCELL_X42_Y2_N48
\display_7_2|output5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output5~0_combout\ = ( display2(1) & ( !display2(2) ) ) # ( !display2(1) & ( display1(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display2(2),
	datad => ALT_INV_display1(1),
	dataf => ALT_INV_display2(1),
	combout => \display_7_2|output5~0_combout\);

-- Location: MLABCELL_X42_Y2_N33
\display_7_2|output6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_2|output6~0_combout\ = ( display2(2) & ( (!display1(1) & !display2(1)) ) ) # ( !display2(2) & ( !display2(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display1(1),
	datac => ALT_INV_display2(1),
	dataf => ALT_INV_display2(2),
	combout => \display_7_2|output6~0_combout\);

-- Location: MLABCELL_X42_Y2_N45
\display_7_3|output0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output0~0_combout\ = ( display1(0) ) # ( !display1(0) & ( !display2(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display2(1),
	dataf => ALT_INV_display1(0),
	combout => \display_7_3|output0~0_combout\);

-- Location: LABCELL_X35_Y2_N24
\display3[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3[2]~0_combout\ = !\Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux2~1_combout\,
	combout => \display3[2]~0_combout\);

-- Location: FF_X36_Y2_N8
\display3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \display3[2]~0_combout\,
	sload => VCC,
	ena => \display1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display3(2));

-- Location: LABCELL_X35_Y2_N3
\display_7_3|output1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output1~0_combout\ = ( display1(0) & ( display2(1) & ( display3(2) ) ) ) # ( display1(0) & ( !display2(1) & ( display3(2) ) ) ) # ( !display1(0) & ( !display2(1) & ( display3(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display3(2),
	datae => ALT_INV_display1(0),
	dataf => ALT_INV_display2(1),
	combout => \display_7_3|output1~0_combout\);

-- Location: LABCELL_X35_Y2_N42
\display_7_3|output2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output2~0_combout\ = ( display1(0) & ( display2(1) & ( display3(2) ) ) ) # ( display1(0) & ( !display2(1) ) ) # ( !display1(0) & ( !display2(1) & ( display3(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display3(2),
	datae => ALT_INV_display1(0),
	dataf => ALT_INV_display2(1),
	combout => \display_7_3|output2~0_combout\);

-- Location: LABCELL_X35_Y2_N12
\display_7_3|output3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output3~0_combout\ = ( display1(0) & ( display2(1) & ( !display3(2) ) ) ) # ( !display1(0) & ( display2(1) & ( display3(2) ) ) ) # ( display1(0) & ( !display2(1) ) ) # ( !display1(0) & ( !display2(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_display3(2),
	datae => ALT_INV_display1(0),
	dataf => ALT_INV_display2(1),
	combout => \display_7_3|output3~0_combout\);

-- Location: LABCELL_X35_Y2_N30
\display_7_3|output4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output4~0_combout\ = ( display3(2) & ( display2(1) ) ) # ( display3(2) & ( !display2(1) ) ) # ( !display3(2) & ( !display2(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_display3(2),
	dataf => ALT_INV_display2(1),
	combout => \display_7_3|output4~0_combout\);

-- Location: LABCELL_X35_Y2_N48
\display_7_3|output5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output5~0_combout\ = ( display2(1) & ( (display1(0) & display3(2)) ) ) # ( !display2(1) & ( (!display1(0)) # (display3(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display1(0),
	datac => ALT_INV_display3(2),
	dataf => ALT_INV_display2(1),
	combout => \display_7_3|output5~0_combout\);

-- Location: LABCELL_X35_Y2_N51
\display_7_3|output6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_7_3|output6~0_combout\ = (!display1(0) & ((!display2(1)) # (!display3(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101010101000100010101010100010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display1(0),
	datab => ALT_INV_display2(1),
	datad => ALT_INV_display3(2),
	combout => \display_7_3|output6~0_combout\);

-- Location: LABCELL_X47_Y27_N0
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


