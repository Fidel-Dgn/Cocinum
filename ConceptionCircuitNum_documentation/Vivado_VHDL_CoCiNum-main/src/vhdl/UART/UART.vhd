
library ieee;
use ieee.std_logic_1164.all;

use work.Virgule_pkg.all;

entity UART is
    generic(
        CLK_FREQUENCY_HZ : positive;
        BIT_RATE_HZ      : positive
    );
    port(
        clk_i    : in  std_logic;
        reset_i  : in  std_logic;
        valid_i  : in  std_logic;
        ready_o  : out std_logic;
        rdata_o  : out byte_t;
        wdata_i  : in  byte_t;
        write_i  : in  std_logic;
        rx_evt_o : out std_logic;
        tx_evt_o : out std_logic;
        rx_i     : in  std_logic;
        tx_o     : out std_logic
    );
end UART;

architecture Structural of UART is
    signal tx_write : std_logic;
begin
    rx_inst : entity work.SerialReceiver
        generic map(
            CLK_FREQUENCY_HZ => CLK_FREQUENCY_HZ,
            BIT_RATE_HZ      => BIT_RATE_HZ
        )
        port map(
            clk_i   => clk_i,
            reset_i => reset_i,
            rdata_o => rdata_o,
            evt_o   => rx_evt_o,
            rx_i    => rx_i
        );

    tx_inst : entity work.SerialTransmitter
        generic map(
            CLK_FREQUENCY_HZ => CLK_FREQUENCY_HZ,
            BIT_RATE_HZ      => BIT_RATE_HZ
        )
        port map(
            clk_i   => clk_i,
            reset_i => reset_i,
            wdata_i => wdata_i,
            write_i => tx_write,
            evt_o   => tx_evt_o,
            tx_o    => tx_o
        );

    tx_write <= valid_i and write_i;
    ready_o  <= valid_i;
end Structural;
