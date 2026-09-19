
library ieee;
use ieee.std_logic_1164.all;

entity UpDownCounter is
    generic(
        VALUE_MAX : positive
    );
    port(
        clk_i, reset_i : in std_logic;
        up_i, down_i   : in std_logic;
        value_o        : out integer range 0 to VALUE_MAX;
        cycle_o        : out std_logic
    );
end UpDownCounter;

architecture Behavioral of UpDownCounter is
   -- Declarations.
begin
   -- Concurrent statements.
end Behavioral;
