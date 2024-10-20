library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity StateMachine2 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           w : in STD_LOGIC;
           z : out STD_LOGIC;
           LEDR : out STD_LOGIC_VECTOR (8 downto 0));
end StateMachine2;

architecture Behavioral of StateMachine2 is
    signal y : STD_LOGIC_VECTOR (8 downto 0);
    signal next_y : STD_LOGIC_VECTOR (8 downto 0);
	 

begin
    process(clk, reset)
    begin
        if reset = '0' and rising_edge(clk) then
            y <= "000000000";
        elsif rising_edge(clk) then
            y <= next_y;
        end if;
    end process;

    process(y, w)
    begin
        next_y <= y;
        if y = "000000000" then
            if w = '0' then
                next_y <= "000000011";
            elsif w = '1' then
                next_y <= "000100001";
            end if;

        elsif y = "000000011" and w = '0' then
            next_y <= "000000101";
        elsif y = "000000101" and w = '0' then
            next_y <= "000001001";
        elsif y = "000001001" and w = '0' then
            next_y <= "000010001";
		  elsif y = "000010001" and w = '0' then
				next_y <= "000010001";
		  elsif (y = "000010001" or y = "000001001" or y = "000000101" or y = "000000011") and w = '1' then
				next_y <= "000100001";

        elsif y = "000100001" and w = '1' then
            next_y <= "001000001";
        elsif y = "001000001" and w = '1' then
            next_y <= "010000001";
        elsif y = "010000001" and w = '1' then
            next_y <= "100000001";
        elsif y = "100000001" and w = '1' then
				next_y <= "100000001";
		  elsif (y = "100000001" or y = "010000001" or y = "001000001" or y = "000100001") and w = '0' then
				next_y <= "000000011";
				
        end if;
    end process;

    z <= '1' when (y = "000010001") or (y = "100000001") else '0';

    LEDR <= y;

end Behavioral;
