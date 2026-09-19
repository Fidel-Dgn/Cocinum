
library ieee;
use ieee.std_logic_1164.all;

entity TimePressed is
    generic(
        CLK_FREQUENCY_HZ : positive
    );
    port(
        clk_i        : in  std_logic;
        btn_center_i : in  std_logic;
        leds_o       : out std_logic_vector(15 downto 0)
    );
end TimePressed;

architecture Behavioral of TimePressed is
    -- Declarations
begin
    -- Concurrent statements
end Behavioral;
