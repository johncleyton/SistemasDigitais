library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity T_FF is
    Port (
        clk    : in  std_logic;
        clear  : in  std_logic;  -- Synchronous clear
        T		: in  std_logic;  -- Enable to toggle
        Q      : out std_logic;
        Q_n    : out std_logic
    );
end T_FF;

architecture Behavioral of T_FF is
    signal Q_int : std_logic := '0';
begin
    process(clk, clear)
    begin
        if clear = '0' then
            Q_int <= '0';
        elsif rising_edge(clk) then
            if T = '1' then
                Q_int <= not Q_int;
            end if;
        end if;
    end process;

    Q     <= Q_int;
    Q_n   <= not Q_int;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Counter8bit is
    Port (
        clk   : in  std_logic;
        clear : in  std_logic;
        enable : in  std_logic;
        count : out std_logic_vector(7 downto 0);
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
		  hex16 : out std_logic
    );
end Counter8bit;

architecture Behavioral of Counter8bit is
    signal Q     : std_logic_vector(7 downto 0);
    signal Q_n   : std_logic_vector(7 downto 0);
    signal enable_internal : std_logic_vector(7 downto 0);
	 
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
    -- Generate enable signals for each flip-flop
    enable_internal(0) <= enable;  -- First flip-flop
    enable_internal(1) <= Q(0) and enable_internal(0);
    enable_internal(2) <= Q(1) and enable_internal(1);
    enable_internal(3) <= Q(2) and enable_internal(2);
    enable_internal(4) <= Q(3) and enable_internal(3);
    enable_internal(5) <= Q(4) and enable_internal(4);
    enable_internal(6) <= Q(5) and enable_internal(5);
    enable_internal(7) <= Q(6) and enable_internal(6);

    -- Instantiate 8 T flip-flops
    gen_ff: for i in 0 to 7 generate
        T_FF_inst : entity work.T_FF
            Port map (
                clk    => clk,
                clear  => clear,
                T => enable_internal(i),
                Q      => Q(i),
                Q_n    => Q_n(i)
            );
    end generate;

	 display_7_min : entity work.display_7seg
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
		display_7_max : entity work.display_7seg
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
	 
    count <= Q;

end Behavioral;
