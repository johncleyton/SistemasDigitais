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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"
-- CREATED		"Tue Aug 27 13:37:46 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY part3 IS 
	PORT
	(
		D :  IN  STD_LOGIC;
		Clock :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC;
		Q2 :  OUT  STD_LOGIC
	);
END part3;

ARCHITECTURE bdf_type OF part3 IS 

COMPONENT Block1
	PORT(D : IN STD_LOGIC;
		 Clk : IN STD_LOGIC;
		 Q : OUT STD_LOGIC;
		 Q2 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	Qm :  STD_LOGIC;
SIGNAL	Qs :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



b2v_inst : Block1
PORT MAP(D => D,
		 Clk => SYNTHESIZED_WIRE_0,
		 Q => Qm);


SYNTHESIZED_WIRE_0 <= NOT(Clock);



b2v_inst4 : Block1
PORT MAP(D => Qm,
		 Clk => Clock,
		 Q => Qs,
		 Q2 => Q2);


Q <= Qs;

END bdf_type;