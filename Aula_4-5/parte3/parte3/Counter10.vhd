library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter10 is
    Port (
        clk   : in  std_logic;
        clear : in  std_logic;
        enable : in  std_logic;
        count : out std_logic_vector(3 downto 0);
		  hex00 : out std_logic;
		  hex01 : out std_logic;
		  hex02 : out std_logic;
		  hex03 : out std_logic;
		  hex04 : out std_logic;
		  hex05 : out std_logic;
		  hex06 : out std_logic
    );
end Counter10;

architecture Behavioral of Counter10 is
    -- Representa o clock da FPGA
	 signal fpgaCounter     : std_logic_vector(25 downto 0);
	 -- Representa os números do display
	 signal displayCounter  : std_logic_vector(3 downto 0);
	 
	 
	 component display_7seg is 
	 Port
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
	 end component;

begin
	process(clk)
		begin
        if (rising_edge(clk)) then
            if (Clear = '0') then
               fpgaCounter <= "00000000000000000000000000";
					displayCounter <= "0000";
            elsif (enable = '1') then
                fpgaCounter <= std_logic_vector(unsigned(fpgaCounter) + 1);
				-- 50MHz -> 50 milhões de 'ticks' da placa, ou seja, 1 segundo alterado no display
				if (fpgaCounter = "10111110101111000010000000") then
					-- printar no máximo até 9
					if (displayCounter = "1001") then
						displayCounter <= "0000";
                else 
						displayCounter <= displayCounter + 1;
					end if;
					fpgaCounter <= "00000000000000000000000000";
				end if;	
            else
                fpgaCounter <= fpgaCounter;
        end if;
		end if;
	end process;

		display_7_1 : entity work.display_7seg
				Port map (
					input1 => displayCounter(0),
					input2 => displayCounter(1),
					input3 => displayCounter(2),
					input4 => displayCounter(3),
					output0 => hex00,
					output1 => hex01,
					output2 => hex02,
					output3 => hex03,
					output4 => hex04,
					output5 => hex05,
					output6 => hex06
				);
	 
    count <= displayCounter;

end Behavioral;
