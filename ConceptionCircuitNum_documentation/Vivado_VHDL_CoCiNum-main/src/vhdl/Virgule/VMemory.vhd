
library ieee;
use ieee.std_logic_1164.all;

use work.Virgule_pkg.all;

entity VMemory is
    generic(
        CONTENT : word_vector_t
    );
    port (
        clk_i     : in  std_logic;
        reset_i   : in  std_logic;
        valid_i   : in  std_logic;
        ready_o   : out std_logic;
        address_i : in  word_address_t;
        rdata_o   : out word_t;
        wdata_i   : in  word_t;
        write_i   : in  std_logic_vector(3 downto 0)
    );
end VMemory;

architecture Behavioral of VMemory is
    signal data_reg  : word_vector_t(CONTENT'range) := CONTENT;
    signal ready_reg : std_logic := '0';
begin
    p_data_reg_o : process(clk_i)
        variable index : natural range CONTENT'range;
    begin
        if rising_edge(clk_i) then
            if valid_i = '1' then
                index   := to_natural(address_i);
                rdata_o <= data_reg(index);
                for i in write_i'range loop
                    if write_i(i) = '1' then
                        data_reg(index)(i * 8 + 7 downto i * 8) <= wdata_i(i * 8 + 7 downto i * 8);
                    end if;
                end loop;
            end if;
        end if;
    end process p_data_reg_o;

    p_ready_reg : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                ready_reg <= '0';
            elsif valid_i = '1' and write_i = "0000" then
                ready_reg <= not ready_reg;
            end if;
        end if;
    end process p_ready_reg;

    ready_o <= ready_reg when write_i = "0000" else valid_i;
end Behavioral;
