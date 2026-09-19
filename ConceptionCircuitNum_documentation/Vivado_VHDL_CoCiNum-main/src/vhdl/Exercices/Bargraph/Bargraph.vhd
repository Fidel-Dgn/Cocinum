
library ieee;
use ieee.std_logic_1164.all;

entity Bargraph is
    port(
        switches_i : in  std_logic_vector(15 downto 0);
        leds_o     : out std_logic_vector(15 downto 0)
    );
end Bargraph;

architecture Behavioral of Bargraph is
    -- Declarations
begin
    -- Concurrent statements
end Behavioral;
