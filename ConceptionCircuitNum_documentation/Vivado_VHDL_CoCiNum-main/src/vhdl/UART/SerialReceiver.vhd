
library ieee;
use ieee.std_logic_1164.all;

use work.Virgule_pkg.all;

entity SerialReceiver is
    generic(
        CLK_FREQUENCY_HZ : positive;
        BIT_RATE_HZ      : positive
    );
    port(
        clk_i   : in  std_logic;
        reset_i : in  std_logic;
        rdata_o : out byte_t;
        evt_o   : out std_logic;
        rx_i    : in  std_logic
    );
end SerialReceiver;

architecture Behavioral of SerialReceiver is
    type state_t is (IDLE_STATE, START_STATE, DATA_STATE, STOP_STATE);
    signal state_reg   : state_t;

    constant TIMER_MAX : integer := CLK_FREQUENCY_HZ / BIT_RATE_HZ - 1;
    signal timer_reg   : natural range 0 to TIMER_MAX;

    signal index_reg   : natural range 0 to 7;
    signal data_reg    : byte_t;
begin
    p_state_reg : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                state_reg <= IDLE_STATE;
            else
                case state_reg is
                    when IDLE_STATE =>
                        if rx_i = '0' then
                            state_reg <= START_STATE;
                        end if;
                    when START_STATE =>
                        if timer_reg = TIMER_MAX then
                            state_reg <= DATA_STATE;
                        end if;
                    when DATA_STATE =>
                        if timer_reg = TIMER_MAX and index_reg = 7 then
                            state_reg <= STOP_STATE;
                        end if;
                    when STOP_STATE =>
                        if rx_i = '1' then
                            state_reg <= IDLE_STATE;
                        end if;
                end case;
            end if;
        end if;
    end process p_state_reg;

    p_timer_reg : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if state_reg = IDLE_STATE or timer_reg = TIMER_MAX then
                timer_reg <= 0;
            else
                timer_reg <= timer_reg + 1;
            end if;
        end if;
    end process p_timer_reg;

    p_index_reg : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if state_reg = IDLE_STATE then
                index_reg <= 0;
            elsif state_reg = DATA_STATE and timer_reg = TIMER_MAX and index_reg < 7 then
                index_reg <= index_reg + 1;
            end if;
        end if;
    end process p_index_reg;

    p_data_reg : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if state_reg = DATA_STATE and timer_reg = TIMER_MAX / 2 then
                data_reg(index_reg) <= rx_i;
            end if;
        end if;
    end process p_data_reg;

    p_data_done_o : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if state_reg = DATA_STATE and timer_reg = TIMER_MAX and index_reg = 7 then
                rdata_o <= data_reg;
                evt_o   <= '1';
            else
                evt_o   <= '0';
            end if;
        end if;
    end process p_data_done_o;
end Behavioral;
