library ieee;
use ieee.std_logic_1164.all;

entity CounterModNx is
    generic(
        N : positive
    );
    port(
        clk_i, reset_i, inc_i, dec_i    : in  std_logic;
        value_o                         : out integer range 0 to N - 1;
        cycle_up_o, cycle_down_o        : out std_logic
    );
end CounterModNx;

architecture Behavioral of CounterModNx is
    signal value_reg, value_next_up, value_next_down : integer range 0 to N - 1;
begin

    p_value_reg : process(clk_i, reset_i)
    begin
        if reset_i = '1' then
            value_reg <= 0;
        elsif rising_edge(clk_i) then
            if inc_i = '1' then
                value_reg <= value_next_up;
            end if;
            if dec_i = '1' then
                value_reg <= value_next_down;
            end if;
        end if;
    end process p_value_reg;

    value_next_up <= 0 when value_reg = N - 1 else value_reg + 1;
    value_next_down <= N - 1 when value_reg = 0 else value_reg - 1;

    value_o <= value_reg;
    cycle_up_o <= '1' when inc_i = '1' and value_reg = N - 1 else '0';
    cycle_down_o <= '1' when dec_i = '1' and value_reg = 0 else '0';
end Behavioral;
