
library ieee;
use ieee.std_logic_1164.all;

entity Metronome is
    generic(
        CLK_FREQUENCY_HZ : positive
    );
    port(
        clk_i        : in  std_logic;
        btn_center_i : in  std_logic;
        leds_o       : out std_logic_vector(15 downto 0)
    );
end Metronome;

architecture Behavioral of Metronome is
    -- Declarations
begin
    -- Concurrent statements
end Behavioral;
