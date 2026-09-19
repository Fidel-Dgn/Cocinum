
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Virgule_pkg.all;
use work.Computer_pkg.all;

entity Computer is
    port(
        clk_i        : in  std_logic;
        btn_center_i : in  std_logic;
        switches_i   : in  std_logic_vector(15 downto 0);
        leds_o       : out std_logic_vector(15 downto 0)
    );
end Computer;

architecture Structural of Computer is
    signal sync_reset    : std_logic;

    signal core_valid    : std_logic;
    signal core_ready    : std_logic;
    signal core_address  : word_t;
    signal core_rdata    : word_t;
    signal core_wdata    : word_t;
    signal core_write    : std_logic_vector(3 downto 0);
    signal core_irq      : std_logic;

    alias dev_address    : byte_t is core_address(31 downto 24);

    signal mem_valid     : std_logic;
    signal mem_ready     : std_logic;
    signal mem_rdata     : word_t;

    signal io_valid      : std_logic;
    signal io_ready      : std_logic;
    signal io_rdata      : word_t;
begin
    -- Concurrent statements
end Structural;
