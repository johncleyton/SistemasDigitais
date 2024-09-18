library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter16bit is
    Port (
        clk   : in  std_logic;
        clear : in  std_logic;
        enable : in  std_logic;
        count : out std_logic_vector(15 downto 0);
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
		  hex36 : out std_logic
    );
end Counter16bit;

architecture Behavioral of Counter16bit is
    signal Q     : std_logic_vector(15 downto 0);
	 
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
			 if clear = '0' then
				  Q <= "0000000000000000";
			 elsif rising_edge(clk) then
				  if enable = '1' then
						Q <= std_logic_vector(unsigned(Q) + 1);
				  end if;
			 end if;
		end process;


		display_7_1 : entity work.display_7seg
				Port map (
					input1 => Q(0),
					input2 => Q(1),
					input3 => Q(2),
					input4 => Q(3),
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
				input1 => Q(4),
				input2 => Q(5),
				input3 => Q(6),
				input4 => Q(7),
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
					input1 => Q(8),
					input2 => Q(9),
					input3 => Q(10),
					input4 => Q(11),
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
				input1 => Q(12),
				input2 => Q(13),
				input3 => Q(14),
				input4 => Q(15),
				output0 => hex30,
				output1 => hex31,
				output2 => hex32,
				output3 => hex33,
				output4 => hex34,
				output5 => hex35,
				output6 => hex36
			);
	 
    count <= Q;

end Behavioral;
