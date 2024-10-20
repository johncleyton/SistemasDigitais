library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity StateMachine is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           w : in STD_LOGIC;
           z : out STD_LOGIC;
           LEDR : out STD_LOGIC_VECTOR (8 downto 0));
end StateMachine;

architecture Behavioral of StateMachine is
    signal y : STD_LOGIC_VECTOR (8 downto 0);
    signal next_y : STD_LOGIC_VECTOR (8 downto 0);
	 

begin
    process(clk, reset)
    begin
        if reset = '0' and rising_edge(clk) then
            y <= "000000001";
        elsif rising_edge(clk) then
            y <= next_y;
        end if;
    end process;

    process(y, w)
    begin
        next_y <= y;
        if y = "000000001" then
            if w = '0' then
                next_y <= "000000010";
            elsif w = '1' then
                next_y <= "000100000";
            end if;

        elsif y = "000000010" and w = '0' then
            next_y <= "000000100";
        elsif y = "000000100" and w = '0' then
            next_y <= "000001000";
        elsif y = "000001000" and w = '0' then
            next_y <= "000010000";
		  elsif y = "000010000" and w = '0' then
				next_y <= "000010000";
		  elsif (y = "000010000" or y = "000001000" or y = "000000100" or y="000000010") and w = '1' then
				next_y <= "000100000";

        elsif y = "000100000" and w = '1' then
            next_y <= "001000000";
        elsif y = "001000000" and w = '1' then
            next_y <= "010000000";
        elsif y = "010000000" and w = '1' then
            next_y <= "100000000";
        elsif y = "100000000" and w = '1' then
				next_y <= "100000000";
		  elsif (y = "100000000" or y = "010000000" or y = "001000000" or y = "000100000") and w = '0' then
				next_y <= "000000010";
				
        end if;
    end process;

    z <= '1' when (y = "000010000") or (y = "100000000") else '0';

    LEDR <= y;

end Behavioral;
