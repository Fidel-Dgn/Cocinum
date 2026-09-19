
library ieee;
use ieee.std_logic_1164.all;

entity Chaser is
    generic(
        CLK_FREQUENCY_HZ : positive
    );
    port(
        clk_i      : in std_logic;
        switches_i : in std_logic_vector(15 downto 0);
        leds_o     : out std_logic_vector(15 downto 0)
    );
end Chaser;

architecture Behavioral of Chaser is
    -- Declarations
begin
    -- Concurrent statements
end Behavioral;
