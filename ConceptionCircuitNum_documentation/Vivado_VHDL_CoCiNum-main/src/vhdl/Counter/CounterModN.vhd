
library ieee;
use ieee.std_logic_1164.all;

entity CounterModN is
    generic(
        N : positive
    );
    port(
        clk_i, reset_i, inc_i : in  std_logic;
        value_o               : out integer range 0 to N - 1;
        cycle_o               : out std_logic
    );
end CounterModN;

architecture Behavioral of CounterModN is
    signal value_reg, value_next : integer range 0 to N - 1;
begin
    p_value_reg : process(clk_i, reset_i)
    begin
        if reset_i = '1' then
            value_reg <= 0;
        elsif rising_edge(clk_i) then
            if inc_i = '1' then
                value_reg <= value_next;
            end if;
        end if;
    end process p_value_reg;

    value_next <= 0 when value_reg = N - 1 else value_reg + 1;

    value_o <= value_reg;
    cycle_o <= '1' when inc_i = '1' and value_reg = N - 1 else '0';
end Behavioral;
