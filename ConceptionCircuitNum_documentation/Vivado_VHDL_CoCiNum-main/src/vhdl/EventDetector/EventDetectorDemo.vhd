
--
-- Copyright (C), 2020, ESEO
-- Guillaume Savaton <guillaume.savaton@eseo.fr>
--

library ieee;
use ieee.std_logic_1164.all;

entity EventDetectorDemo is
    port(
        clk_i             : in std_logic;
        btn_center_i      : in std_logic;
        disp_segments_n_o : out std_logic_vector(0 to 6);
        disp_point_n_o    : out std_logic;
        disp_select_n_o   : out std_logic_vector(3 downto 0)
    );
end EventDetectorDemo;

architecture Structural of EventDetectorDemo is
    signal on_evt   : std_logic;
    signal count    : natural range 0 to 15;
    signal segments : std_logic_vector(0 to 6);
begin
    detector_inst : entity work.EventDetector(Simple)
        port map(
            clk_i     => clk_i,
            src_i     => btn_center_i,
            on_evt_o  => on_evt,
            off_evt_o => open,
            status_o  => open
        );

    counter_inst : entity work.CounterModN
        generic map(
            N => 16
        )
        port map(
            clk_i   => clk_i,
            reset_i => '0',
            inc_i   => on_evt,
            value_o => count,
            cycle_o => open
        );

    decoder_inst : entity work.SegmentDecoder
        port map(
            digit_i    => count,
            segments_o => segments
        );

    disp_segments_n_o <= not segments;
    disp_point_n_o    <= '1';
    disp_select_n_o   <= "1110";
end Structural;
