
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Virgule_pkg.all;

package Computer_pkg is

    constant CLK_FREQUENCY_HZ : positive      := 100e6;

    constant MEM_ADDRESS      : byte_t        := x"00";
    constant MEM_CONTENT      : word_vector_t := work.SimpleIO_pkg.DATA;

    constant IO_ADDRESS       : byte_t        := x"80";

end Computer_pkg;
