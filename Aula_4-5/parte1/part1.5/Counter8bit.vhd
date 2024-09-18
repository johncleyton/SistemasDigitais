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
        count : out std_logic_vector(3 downto 0)
    );
end Counter8bit;

architecture Behavioral of Counter8bit is
    signal Q     : std_logic_vector(3 downto 0);
    signal Q_n   : std_logic_vector(3 downto 0);
    signal enable_internal : std_logic_vector(3 downto 0);

begin
    -- Generate enable signals for each flip-flop
    enable_internal(0) <= enable;  -- First flip-flop
    enable_internal(1) <= Q(0) and enable_internal(0);
    enable_internal(2) <= Q(1) and enable_internal(1);
    enable_internal(3) <= Q(2) and enable_internal(2);

    -- Instantiate 8 T flip-flops
    gen_ff: for i in 0 to 3 generate
        T_FF_inst : entity work.T_FF
            Port map (
                clk    => clk,
                clear  => clear,
                T => enable_internal(i),
                Q      => Q(i),
                Q_n    => Q_n(i)
            );
    end generate;

    count <= Q;

end Behavioral;
