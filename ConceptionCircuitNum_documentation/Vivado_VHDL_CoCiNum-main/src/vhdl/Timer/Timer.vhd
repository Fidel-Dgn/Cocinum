
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Virgule_pkg.all;

entity Timer is
    port(
        clk_i     : in  std_logic;
        reset_i   : in  std_logic;
        valid_i   : in  std_logic;
        ready_o   : out std_logic;
        address_i : in  std_logic;
        rdata_o   : out word_t;
        wdata_i   : in  word_t;
        write_i   : in  std_logic_vector(3 downto 0);
        evt_o     : out std_logic
    );
end Timer;

architecture Behavioral of Timer is
    signal limit_reg, count_reg : unsigned_word_t := unsigned(WORD0);
begin
    p_limit_reg : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                limit_reg <= unsigned(WORD0);
            elsif valid_i = '1' and address_i = '0' then
                update_unsigned_word(limit_reg, wdata_i, write_i);
            end if;
        end if;
    end process p_limit_reg;

    p_count_reg : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                count_reg <= unsigned(WORD0);
            elsif valid_i = '1' and address_i = '1' and write_i /= "0000" then
                update_unsigned_word(count_reg, wdata_i, write_i);
            elsif count_reg >= limit_reg then
                count_reg <= unsigned(WORD0);
            else
                count_reg <= count_reg + 1;
            end if;
        end if;
    end process p_count_reg;

    rdata_o <= word_t(limit_reg) when address_i = '0' else
               word_t(count_reg);
    evt_o   <= '1' when count_reg >= limit_reg and limit_reg > 0 else '0';
    ready_o <= valid_i;
end Behavioral;
