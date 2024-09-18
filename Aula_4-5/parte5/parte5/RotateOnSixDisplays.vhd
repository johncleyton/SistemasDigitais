library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RotateOnSixDisplays is
    Port (
        clk   : in  std_logic;
        clear : in  std_logic;
        enable : in  std_logic;
        count : out std_logic_vector(2 downto 0);
		  hex00 : out std_logic;
		  hex01 : out std_logic;
		  hex02 : out std_logic;
		  hex03 : out std_logic;
		  hex04 : out std_logic;
		  hex05 : out std_logic;
		  hex06 : out std_logic;
		  hex10 : out std_logic;
		  hex11 : out std_logic;
		  hex12 : out std_logic;
		  hex13 : out std_logic;
		  hex14 : out std_logic;
		  hex15 : out std_logic;
		  hex16 : out std_logic;
		  hex20 : out std_logic;
		  hex21 : out std_logic;
		  hex22 : out std_logic;
		  hex23 : out std_logic;
		  hex24 : out std_logic;
		  hex25 : out std_logic;
		  hex26 : out std_logic;
		  hex30 : out std_logic;
		  hex31 : out std_logic;
		  hex32 : out std_logic;
		  hex33 : out std_logic;
		  hex34 : out std_logic;
		  hex35 : out std_logic;
		  hex36 : out std_logic;
		  hex40 : out std_logic;
		  hex41 : out std_logic;
		  hex42 : out std_logic;
		  hex43 : out std_logic;
		  hex44 : out std_logic;
		  hex45 : out std_logic;
		  hex46 : out std_logic;
		  hex50 : out std_logic;
		  hex51 : out std_logic;
		  hex52 : out std_logic;
		  hex53 : out std_logic;
		  hex54 : out std_logic;
		  hex55 : out std_logic;
		  hex56 : out std_logic
    );
end RotateOnSixDisplays;

architecture Behavioral of RotateOnSixDisplays is
    -- Representa o clock da FPGA
	 signal fpgaCounter     : std_logic_vector(25 downto 0);
	 -- Representa os números do display
	 signal displayCounter  : std_logic_vector(2 downto 0);
	 
	 signal display1 			: std_logic_vector(3 downto 0);
	 signal display2 			: std_logic_vector(3 downto 0);
	 signal display3 			: std_logic_vector(3 downto 0);
	 signal display4 			: std_logic_vector(3 downto 0);
	 signal display5 			: std_logic_vector(3 downto 0);
	 signal display6 			: std_logic_vector(3 downto 0);
	 
	 
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
					displayCounter <= "000";
            elsif (enable = '1') then
                fpgaCounter <= std_logic_vector(unsigned(fpgaCounter) + 1);
				-- 50MHz -> 50 milhões de 'ticks' da placa, ou seja, 1 segundo alterado no display
				if (fpgaCounter = "10111110101111000010000000") then
					if(displayCounter = "111") then
						displayCounter <= "000";
					end if;
					case displayCounter is
						 when "000"  => display1 <= "0000"; display2 <= "1110"; display3 <= "1101"; display4 <= "1111"; display5 <= "1111"; display6 <= "1111";
						 when "001"  => display1 <= "1111"; display2 <= "0000"; display3 <= "1110"; display4 <= "1101"; display5 <= "1111"; display6 <= "1111";
						 when "010"  => display1 <= "1111"; display2 <= "1111"; display3 <= "0000"; display4 <= "1110"; display5 <= "1101"; display6 <= "1111";
						 when "011"  => display1 <= "1111"; display2 <= "1111"; display3 <= "1111"; display4 <= "0000"; display5 <= "1110"; display6 <= "1101";
						 when "100"  => display1 <= "1101"; display2 <= "1111"; display3 <= "1111"; display4 <= "1111"; display5 <= "0000"; display6 <= "1110";
						 when "101"  => display1 <= "1110"; display2 <= "1101"; display3 <= "1111"; display4 <= "1111"; display5 <= "1111"; display6 <= "0000";
						 when others => display1 <= "0000"; display2 <= "1110"; display3 <= "1101"; display4 <= "1111"; display5 <= "1111"; display6 <= "1111";
					end case;

					displayCounter <= displayCounter + 1;
					fpgaCounter <= "00000000000000000000000000";
				end if;	
            else
                fpgaCounter <= fpgaCounter;
        end if;
		end if;
	end process;

		display_7_1 : entity work.display_7seg
				Port map (
					input1 => display1(0),
					input2 => display1(1),
					input3 => display1(2),
					input4 => display1(3),
					output0 => hex00,
					output1 => hex01,
					output2 => hex02,
					output3 => hex03,
					output4 => hex04,
					output5 => hex05,
					output6 => hex06
				);
				
		display_7_2 : entity work.display_7seg
				Port map (
					input1 => display2(0),
					input2 => display2(1),
					input3 => display2(2),
					input4 => display2(3),
					output0 => hex10,
					output1 => hex11,
					output2 => hex12,
					output3 => hex13,
					output4 => hex14,
					output5 => hex15,
					output6 => hex16
				);
				
		display_7_3 : entity work.display_7seg
				Port map (
					input1 => display3(0),
					input2 => display3(1),
					input3 => display3(2),
					input4 => display3(3),
					output0 => hex20,
					output1 => hex21,
					output2 => hex22,
					output3 => hex23,
					output4 => hex24,
					output5 => hex25,
					output6 => hex26
				);
		
		display_7_4 : entity work.display_7seg
				Port map (
					input1 => display4(0),
					input2 => display4(1),
					input3 => display4(2),
					input4 => display4(3),
					output0 => hex30,
					output1 => hex31,
					output2 => hex32,
					output3 => hex33,
					output4 => hex34,
					output5 => hex35,
					output6 => hex36
				);
				
		display_7_5 : entity work.display_7seg
				Port map (
					input1 => display5(0),
					input2 => display5(1),
					input3 => display5(2),
					input4 => display5(3),
					output0 => hex40,
					output1 => hex41,
					output2 => hex42,
					output3 => hex43,
					output4 => hex44,
					output5 => hex45,
					output6 => hex46
				);
				
		display_7_6 : entity work.display_7seg
				Port map (
					input1 => display6(0),
					input2 => display6(1),
					input3 => display6(2),
					input4 => display6(3),
					output0 => hex50,
					output1 => hex51,
					output2 => hex52,
					output3 => hex53,
					output4 => hex54,
					output5 => hex55,
					output6 => hex56
				);
	 
    count <= displayCounter;

end Behavioral;
