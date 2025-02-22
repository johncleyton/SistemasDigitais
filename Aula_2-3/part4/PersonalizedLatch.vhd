LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY PersonalizedLatch IS
PORT ( D, Clk : IN STD_LOGIC;
Q : OUT STD_LOGIC);
END PersonalizedLatch;
ARCHITECTURE Structural OF PersonalizedLatch IS
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
END Structural;