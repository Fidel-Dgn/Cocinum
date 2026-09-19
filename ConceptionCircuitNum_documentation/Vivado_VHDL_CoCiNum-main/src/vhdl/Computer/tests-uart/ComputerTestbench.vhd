
library ieee;
use ieee.std_logic_1164.all;

use work.Virgule_pkg.all;
use work.Computer_pkg.all;

entity ComputerTestbench is
    port(
        clk_i        : in std_logic;
        btn_center_i : in std_logic;
        tx_data_o    : out byte_t;
        tx_evt_o     : out std_logic;
        rx_data_i    : in byte_t;
        rx_write_i   : in std_logic;
        rx_evt_o     : out std_logic
    );
end ComputerTestbench;

architecture Simulation of ComputerTestbench is
    signal rx, tx : std_logic;
begin
    comp_inst : entity work.Computer
        port map (
            clk_i        => clk_i,
            btn_center_i => btn_center_i,
            switches_i   => (others => '0'),
            leds_o       => open,
            uart_rx_i    => rx,
            uart_tx_o    => tx
        );

    rx_inst : entity work.SerialReceiver
        generic map(
            CLK_FREQUENCY_HZ => CLK_FREQUENCY_HZ,
            BIT_RATE_HZ      => UART_BIT_RATE_HZ
        )
        port map(
            clk_i   => clk_i,
            reset_i => btn_center_i,
            rdata_o => tx_data_o,
            evt_o   => tx_evt_o,
            rx_i    => tx
        );

    tx_inst : entity work.SerialTransmitter
        generic map(
            CLK_FREQUENCY_HZ => CLK_FREQUENCY_HZ,
            BIT_RATE_HZ      => UART_BIT_RATE_HZ
        )
        port map(
            clk_i   => clk_i,
            reset_i => btn_center_i,
            wdata_i => rx_data_i,
            write_i => rx_write_i,
            evt_o   => rx_evt_o,
            tx_o    => rx
        );
end Simulation;
