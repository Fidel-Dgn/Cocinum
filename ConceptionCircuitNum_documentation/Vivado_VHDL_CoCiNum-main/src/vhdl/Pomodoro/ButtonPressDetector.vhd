
library ieee;
use ieee.std_logic_1164.all;

entity ButtonPressDetector is
  port(
    clk_i, reset_i : in std_logic;
    btn_i          : in std_logic;
    evt_o          : out std_logic
  );
end ButtonPressDetector;

architecture Behavioral of ButtonPressDetector is
    signal btn_reg : std_logic_vector(0 to 1);
begin
    -- Concurrent statements.
end Behavioral;
