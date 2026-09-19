
library ieee;
use ieee.std_logic_1164.all;

entity CounterDemo is
    port(
        clk_i             : in  std_logic;
        btn_center_i      : in  std_logic;
        disp_segments_n_o : out std_logic_vector(0 to 6);
        disp_point_n_o    : out std_logic;
        disp_select_n_o   : out std_logic_vector(3 downto 0)
    );
end CounterDemo;

architecture Structural of CounterDemo is
    signal sec_inc   : std_logic;
    signal sec_value : natural range 0 to 15;
    signal segments  : std_logic_vector(0 to 6);
begin
    div_counter_inst : entity work.CounterModN(Behavioral)
        generic map(
            N => 100e6
        )
        port map(
            clk_i   => clk_i,
            reset_i => '0',
            inc_i   => '1',
            value_o => open,
            cycle_o => sec_inc
        );

    sec_counter_inst : entity work.CounterModN(Behavioral)
        generic map(
            N => 16
        )
        port map(
            clk_i   => clk_i,
            reset_i => btn_center_i,
            inc_i   => sec_inc,
            value_o => sec_value,
            cycle_o => open
        );

    decoder_inst : entity work.SegmentDecoder(TruthTable)
        port map(
            digit_i    => sec_value,
            segments_o => segments
        );

    disp_segments_n_o <= not segments;
    disp_point_n_o    <= '1';
    disp_select_n_o   <= "1110";
end Structural;
