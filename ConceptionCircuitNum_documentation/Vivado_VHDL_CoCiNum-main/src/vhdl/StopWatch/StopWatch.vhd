
library ieee;
use ieee.std_logic_1164.all;

entity StopWatch is
    port(
        clk_i             : in  std_logic;
        btn_center_i      : in  std_logic;
        switches_i        : in  std_logic_vector(15 downto 0);
        leds_o            : out std_logic_vector(15 downto 0);
        disp_segments_n_o : out std_logic_vector(0 to 6);
        disp_point_n_o    : out std_logic;
        disp_select_n_o   : out std_logic_vector(3 downto 0)
    );
end StopWatch;

architecture Structural of StopWatch is
    -- Declarations
begin
    -- Concurrent statements

    leds_o <= "0000000000000000";
end Structural;
