
--
-- Copyright (C), 2020, ESEO
-- Guillaume Savaton <guillaume.savaton@eseo.fr>
--

library ieee;
use ieee.std_logic_1164.all;

package SPIMasterTestbench_pkg is
    constant CLK_FREQUENCY_HZ : positive                     := 100e6;
    constant CYCLES_PER_BIT   : positive                     := 10;
    constant POLARITY         : std_logic                    := '0';
    constant PHASE            : std_logic                    := '0';
    constant DATA_TO_SLAVE    : std_logic_vector(7 downto 0) := "11001010";
    constant DATA_FROM_SLAVE  : std_logic_vector(7 downto 0) := "10101100";
end SPIMasterTestbench_pkg;
