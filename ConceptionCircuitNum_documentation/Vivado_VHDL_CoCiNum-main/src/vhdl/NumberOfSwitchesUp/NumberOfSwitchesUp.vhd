
library ieee;
use ieee.std_logic_1164.all;

entity NumberOfSwitchesUp is
    port(
        switches_i        : in  std_logic_vector(15 downto 0);
        disp_segments_n_o : out std_logic_vector(0 to 6);
        disp_point_n_o    : out std_logic;
        disp_select_n_o   : out std_logic_vector(3 downto 0)
    );
end NumberOfSwitchesUp;

architecture Behavioral of NumberOfSwitchesUp is
    signal count    : integer range 0 to 16;
    signal digit    : integer range 0 to 15;
    signal segments : std_logic_vector(0 to 6);
begin
    -- Affichage du nombre sur l'afficheur le plus à droite
    decoder_inst : entity work.SegmentDecoder(TruthTable)
        port map(
            digit_i    => digit,
            segments_o => segments
        );

    -- Afficher 0 si count dépasse 15.
    digit <= 0 when count > 15 else count;

    disp_segments_n_o <= not segments;
    disp_point_n_o    <= '0' when count > 15 else '1';
    disp_select_n_o   <= "1110";

    -- Comptage du nombre de bits à '1' dans le vecteur switches_i
    p_count : process(switches_i)
        variable n : integer range 0 to 16;
    begin
        n := 0;
        for k in 0 to 15 loop
            if switches_i(k) = '1' then
                n := n + 1;
            end if;
        end loop;
        count <= n;
    end process p_count;
end Behavioral;
