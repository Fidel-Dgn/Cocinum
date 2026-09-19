
library ieee;
use ieee.std_logic_1164.all;

entity EventDetector is
    generic(
        DURATION : positive := 1
    );
    port(
        clk_i     : in  std_logic;
        src_i     : in  std_logic;
        on_evt_o  : out std_logic;
        off_evt_o : out std_logic;
        status_o  : out std_logic
    );
end EventDetector;
