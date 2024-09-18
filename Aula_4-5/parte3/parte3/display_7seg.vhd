LIBRARY ieee;
USE ieee.std_logic_1164.all; 

Library work;

ENTITY display_7seg IS 
	PORT
	(
		input1 :  IN  STD_LOGIC;
		input2 :  IN  STD_LOGIC;
		input3 :  IN  STD_LOGIC;
		input4 :  IN  STD_LOGIC;
		output0 :  OUT  STD_LOGIC;
		output1 :  OUT  STD_LOGIC;
		output2 :  OUT  STD_LOGIC;
		output3 :  OUT  STD_LOGIC;
		output4 :  OUT  STD_LOGIC;
		output5 :  OUT  STD_LOGIC;
		output6 :  OUT  STD_LOGIC
	);
END display_7seg;

ARCHITECTURE bdf_type OF display_7seg IS 

SIGNAL	FIO1 :  STD_LOGIC;
SIGNAL	FIO2 :  STD_LOGIC;
SIGNAL	FIO3 :  STD_LOGIC;
SIGNAL	FIO4 :  STD_LOGIC;
SIGNAL	fio_final0 :  STD_LOGIC;
SIGNAL	fio_final1 :  STD_LOGIC;
SIGNAL	fio_final2 :  STD_LOGIC;
SIGNAL	fio_final3 :  STD_LOGIC;
SIGNAL	fio_final4 :  STD_LOGIC;
SIGNAL	fio_final5 :  STD_LOGIC;
SIGNAL	fio_final6 :  STD_LOGIC;
SIGNAL	fio_numero0 :  STD_LOGIC;
SIGNAL	fio_numero1 :  STD_LOGIC;
SIGNAL	fio_numero2 :  STD_LOGIC;
SIGNAL	fio_numero3 :  STD_LOGIC;
SIGNAL	fio_numero4 :  STD_LOGIC;
SIGNAL	fio_numero5 :  STD_LOGIC;
SIGNAL	fio_numero6 :  STD_LOGIC;
SIGNAL	fio_numero7 :  STD_LOGIC;
SIGNAL	fio_numero8 :  STD_LOGIC;
SIGNAL	fio_numero9 :  STD_LOGIC;
SIGNAL	fio_numeroA :  STD_LOGIC;
SIGNAL	fio_numeroB :  STD_LOGIC;
SIGNAL	fio_numeroC :  STD_LOGIC;
SIGNAL	fio_numeroD :  STD_LOGIC;
SIGNAL	fio_numeroE :  STD_LOGIC;
SIGNAL	fio_numeroF :  STD_LOGIC;
SIGNAL	NOT1 :  STD_LOGIC;
SIGNAL	NOT2 :  STD_LOGIC;
SIGNAL	NOT3 :  STD_LOGIC;
SIGNAL	NOT4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 

NOT1 <= NOT(FIO1);
NOT2 <= NOT(FIO2);
NOT3 <= NOT(FIO3);
NOT4 <= NOT(FIO4);


fio_final0 <= fio_numero1 OR fio_numeroB OR fio_numeroD OR fio_numero4;
fio_final1 <= fio_numero5 OR fio_numeroB OR fio_numero6 OR fio_numeroC OR fio_numeroE OR fio_numeroF;
fio_final2 <= fio_numero2 OR fio_numeroE OR fio_numeroF OR fio_numeroC;
SYNTHESIZED_WIRE_0 <= fio_numero4 OR fio_numero1;
fio_final3 <= SYNTHESIZED_WIRE_0 OR fio_numeroA OR fio_numeroF OR fio_numero7;
fio_final4 <= fio_numero1 OR fio_numero4 OR fio_numero3 OR fio_numero5 OR fio_numero7 OR fio_numero9;
SYNTHESIZED_WIRE_1 <= fio_numero2 OR fio_numero1;
fio_final5 <= SYNTHESIZED_WIRE_1 OR fio_numero7 OR fio_numeroD OR fio_numero3;
fio_final6 <= fio_numero0 OR fio_numero7 OR fio_numeroC OR fio_numero1;


fio_numero0 <= NOT1 AND NOT2 AND NOT3 AND NOT4;
fio_numero1 <= FIO1 AND NOT2 AND NOT3 AND NOT4;
fio_numero2 <= NOT1 AND FIO2 AND NOT3 AND NOT4;
fio_numero3 <= FIO1 AND FIO2 AND NOT3 AND NOT4;
fio_numero4 <= NOT1 AND NOT2 AND FIO3 AND NOT4;
fio_numero5 <= FIO1 AND NOT2 AND FIO3 AND NOT4;
fio_numero6 <= NOT1 AND FIO2 AND FIO3 AND NOT4;
fio_numero7 <= FIO1 AND FIO2 AND FIO3 AND NOT4;
fio_numero9 <= FIO1 AND NOT2 AND NOT3 AND FIO4;
fio_numeroA <= NOT1 AND FIO2 AND NOT3 AND FIO4;
fio_numeroB <= FIO1 AND FIO2 AND NOT3 AND FIO4;
fio_numeroC <= NOT1 AND NOT2 AND FIO3 AND FIO4;
fio_numeroD <= FIO1 AND NOT2 AND FIO3 AND FIO4;
fio_numeroE <= NOT1 AND FIO2 AND FIO3 AND FIO4;
fio_numeroF <= FIO1 AND FIO2 AND FIO3 AND FIO4;


output0 <= fio_final0;
FIO1 <= input1;
FIO2 <= input2;
FIO3 <= input3;
FIO4 <= input4;
output1 <= fio_final1;
output2 <= fio_final2;
output3 <= fio_final3;
output4 <= fio_final4;
output5 <= fio_final5;
output6 <= fio_final6;

END bdf_type;