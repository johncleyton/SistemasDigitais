library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity morse_code is
    port (
        SW    : in  std_logic_vector(2 downto 0); 	-- Seleção da letra
        KEY0  : in  std_logic;    						-- Reset
        KEY1  : in  std_logic;    						-- Habilita escrita                
        CLK   : in  std_logic;                    	-- Clock da FPGA
        LEDR0 : out std_logic                     	-- Led que escreve os símbolos
    );
end morse_code;

architecture Behavioral of morse_code is
    type MorseLengthsArray is array (0 to 7) of integer;
    
    type MorseTable is array(0 to 7) of std_logic_vector(3 downto 0);
    
	 signal morse_codes : MorseTable := (
        "0010", -- A . -
        "0001", -- B - . . .
        "0101", -- C - . - .
        "0001", -- D - . .
        "0000", -- E .
        "0100", -- F . . - .
        "0011", -- G - - .
        "0000"  -- H . . . .
    );
    
    signal morse_lengths : MorseLengthsArray := (2, 4, 4, 3, 1, 4, 3, 4);

    signal current_code : std_logic_vector(3 downto 0);
    signal bit_index : integer := 0;
    signal interval_counter : integer := 0;
    signal interval_duration : integer := 0; 
    signal pause_duration : integer := 25000000; 
    signal state : std_logic_vector(1 downto 0) := "00"; 
    signal led_on : std_logic := '0'; 
    signal activate : boolean := false;
begin

    process (CLK, KEY0)
    begin
        if (KEY0 = '0') then	-- Quando resetado, apaga o LED e define o estado como de leitura
            bit_index <= 0;
            LEDR0 <= '0';
            interval_counter <= 0;
            state <= "00"; 
            activate <= false; 
        elsif rising_edge(CLK) then
            if (KEY1 = '0') and (not activate) then
                activate <= true;
                state <= "00";	-- Define o estado como de leitura
            end if;

            if (activate) then
                case state is
					     -- Lê código
                    when "00" =>
                        current_code <= morse_codes(to_integer(unsigned(SW)));
                        bit_index <= 0;
                        interval_counter <= 0;
                        state <= "01";	-- Vai para o estado de escrita

						  -- Printa ponto ou traço
                    when "01" =>
                        if (bit_index < morse_lengths(to_integer(unsigned(SW)))) then
                            if (current_code(bit_index) = '0') then
                                interval_duration <= 25000000; -- Ponto (0,5s)
                            else
                                interval_duration <= 75000000; -- Traço (1,5s)
                            end if;
                            
                            if (interval_counter < interval_duration) then
                                LEDR0 <= '1';
                                interval_counter <= interval_counter + 1;
                            else
                                LEDR0 <= '0';
                                interval_counter <= 0;
                                state <= "10"; -- Vai para o estado de pausa
                            end if;
                        else
                            activate <= false;
                        end if;

						  -- Pausa entre símbolos
                    when "10" =>
                        if (interval_counter < pause_duration) then
                            interval_counter <= interval_counter + 1;
                        else
                            interval_counter <= 0;
                            bit_index <= bit_index + 1; 	-- Vai para o símbolo seguinte do vetor
                            state <= "01"; 					-- Vai para o estado de escrita
                        end if;

                    when others =>
                        state <= "00"; -- Vai para o estado de leitura
                end case;
            end if;
        end if;
    end process;
end Behavioral;
