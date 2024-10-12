library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MemoryBlocks3 is
	PORT ( 
		DataOut : INOUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		clk: in std_logic;
		switches: in std_logic_vector(9 downto 0);
		HEX0: out std_logic_vector(6 downto 0);
		HEX2: out std_logic_vector(6 downto 0);
		HEX4: out std_logic_vector(6 downto 0);
		HEX5: out std_logic_vector(6 downto 0)
		
	);
end MemoryBlocks3;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ram32x4 is
	 Port
	 (
		address	: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q			: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	 );
end ram32x4;

architecture memoriaRam of ram32x4 is
	TYPE mem IS ARRAY(0 TO 31) OF STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL memory_array : mem;
	begin
	process (clock)
	begin 
		if (rising_edge(clock)) then
			if (wren = '1') then
				memory_array(conv_integer(address)) <= data;
			end if;
				q <= memory_array(conv_integer(address)) ;
		end if;
	end process;
end architecture;

architecture Behavioral of MemoryBlocks3 is
	 
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
	memoria : entity work.ram32x4(memoriaRam)
			port map(address(0) => switches(4), address(1) => switches(5), address(2) => switches(6), address(3) => switches(7), address(4) => switches(8), clock => clk, data(0) => switches(0), data(1) => switches(1), data(2) => switches(2), data(3) => switches(3), wren => switches(9), q => DataOut);
	display0 : display_7seg
		port map(input1 => DataOut(0), input2 => DataOut(1), input3 => DataOut(2), input4 => DataOut(3), output0 => HEX0(0), output1 => HEX0(1), output2 => HEX0(2), output3 => HEX0(3), output4 => HEX0(4), output5 => HEX0(5), output6 => HEX0(6));
		
	display2 : display_7seg
		port map(input1 => switches(0), input2 => switches(1), input3 => switches(2), input4 => switches(3), output0 => HEX2(0), output1 => HEX2(1), output2 => HEX2(2), output3 => HEX2(3), output4 => HEX2(4), output5 => HEX2(5), output6 => HEX2(6));
	
	display4 : display_7seg
		port map(input1 => switches(4), input2 => switches(5), input3 => switches(6), input4 => switches(7), output0 => HEX4(0), output1 => HEX4(1), output2 => HEX4(2), output3 => HEX4(3), output4 => HEX4(4), output5 => HEX4(5), output6 => HEX4(6));
		
	display5 : display_7seg
		port map(input1 => switches(8), input2 => '0', input3 => '0', input4 => '0', output0 => HEX5(0), output1 => HEX5(1), output2 => HEX5(2), output3 => HEX5(3), output4 => HEX5(4), output5 => HEX5(5), output6 => HEX5(6));

end architecture;