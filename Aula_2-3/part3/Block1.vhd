LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY Block1 IS
PORT ( D, Clk : IN STD_LOGIC;
Q : OUT STD_LOGIC;
Q2 : OUT STD_LOGIC);
END Block1;
ARCHITECTURE Structural OF Block1 IS
SIGNAL R_g, S_g, Qa, Qb, S, R : STD_LOGIC ;
ATTRIBUTE KEEP : BOOLEAN;
ATTRIBUTE KEEP OF R_g, S_g, Qa, Qb : SIGNAL IS TRUE;
BEGIN
S <= D;
R <= NOT (D);
R_g <= NOT (R AND Clk);
S_g <= NOT (S AND Clk);
Qa <= NOT (S_g AND Qb);
Qb <= NOT (R_g AND Qa);
Q <= Qa;
Q2 <= Qb;
END Structural;