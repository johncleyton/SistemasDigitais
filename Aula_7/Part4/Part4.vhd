library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Part4 is
	PORT ( 
		DataOut : INOUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		clk: in std_logic;
		reset: in std_logic;
		switches: in std_logic_vector(9 downto 0);
		HEX0: out std_logic_vector(6 downto 0);
		HEX1: out std_logic_vector(6 downto 0);
		HEX2: out std_logic_vector(6 downto 0);
		HEX3: out std_logic_vector(6 downto 0);
		HEX4: out std_logic_vector(6 downto 0);
		HEX5: out std_logic_vector(6 downto 0)
		
	);
end Part4;



architecture Behavioral of Part4 is
	
	component ram32x4 is
	 Port
	 (
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		wraddress		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	 );
	 end component;
	 
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

signal clock50 : integer range 0 to 50000000;
signal num : integer range 0 to 31;																  
signal display : std_logic_vector(0 to 4);
signal Clear :std_logic := '0';

begin
	process(Clk)
	begin
		if(rising_edge(Clk)) then
			if(Clear='1') then
				clock50 <= 0;
				Clear <= '0';
			else
				clock50 <= clock50 + 1;
				
				if(clock50=50000000) then
					Clear <= '1';
					num <= num + 1;
					if(num=31) then
						num <= 0;
					end if;
				else
					Clear <= '0';
				end if;
			end if;
		end if;

	end process;
	
	display <= std_logic_vector(to_unsigned(num, 5));
	 
	memoria : ram32x4
	port map(wraddress(0) => switches(4), wraddress(1) => switches(5), wraddress(2) => switches(6), wraddress(3) => switches(7), wraddress(4) => switches(8), clock => Clk, 
		data(0) => switches(0), data(1) => switches(1), data(2) => switches(2), data(3) => switches(3), q => DataOut, rdaddress => display, wren => switches(9));
	
	display0 : display_7seg
		port map(input1 => DataOut(0), input2 => DataOut(1), input3 => DataOut(2), input4 => DataOut(3), output0 => HEX0(0), output1 => HEX0(1), output2 => HEX0(2), output3 => HEX0(3), output4 => HEX0(4), output5 => HEX0(5), output6 => HEX0(6));
		
	display1 : display_7seg
		port map(input1 => switches(0), input2 => switches(1), input3 => switches(2), input4 => switches(3), output0 => HEX1(0), output1 => HEX1(1), output2 => HEX1(2), output3 => HEX1(3), output4 => HEX1(4), output5 => HEX1(5), output6 => HEX1(6));
	
	display2 : display_7seg
		port map(input1 => display(4), input2 => display(3), input3 => display(2), input4 => display(1), output0 => HEX2(0), output1 => HEX2(1), output2 => HEX2(2), output3 => HEX2(3), output4 => HEX2(4), output5 => HEX2(5), output6 => HEX2(6));
	
	display3 : display_7seg
		port map(input1 => display(0), input2 => '0', input3 => '0', input4 => '0', output0 => HEX3(0), output1 => HEX3(1), output2 => HEX3(2), output3 => HEX3(3), output4 => HEX3(4), output5 => HEX3(5), output6 => HEX3(6));
	
	display4 : display_7seg
		port map(input1 => switches(4), input2 => switches(5), input3 => switches(6), input4 => switches(7), output0 => HEX4(0), output1 => HEX4(1), output2 => HEX4(2), output3 => HEX4(3), output4 => HEX4(4), output5 => HEX4(5), output6 => HEX4(6));
		
	display5 : display_7seg
		port map(input1 => switches(8), input2 => '0', input3 => '0', input4 => '0', output0 => HEX5(0), output1 => HEX5(1), output2 => HEX5(2), output3 => HEX5(3), output4 => HEX5(4), output5 => HEX5(5), output6 => HEX5(6));

end architecture;