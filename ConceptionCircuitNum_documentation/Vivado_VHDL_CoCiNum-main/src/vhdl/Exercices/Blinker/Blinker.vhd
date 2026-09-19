
library ieee;
use ieee.std_logic_1164.all;

entity Blinker is
    generic(
        CLK_FREQUENCY_HZ : positive
    );
    port(
        clk_i  : in  std_logic;
        leds_o : out std_logic_vector(15 downto 0)
    );
end Blinker;

architecture Behavioral of Blinker is
    -- Declarations
begin
    -- Concurrent statements.
end Behavioral;
