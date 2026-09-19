
library ieee;
use ieee.std_logic_1164.all;

entity SegmentDecoder is
    port(
        digit_i    : in  natural range 0 to 15;
        segments_o : out std_logic_vector(0 to 6)
    );
end SegmentDecoder;

architecture TruthTable of SegmentDecoder is
begin
    with digit_i select
        segments_o <= "1111110" when 0,
                      "0110000" when 1,
                      "1101101" when 2,
                      "1111001" when 3,
                      "0110011" when 4,
                      "1011011" when 5,
                      "1011111" when 6,
                      "1110000" when 7,
                      "1111111" when 8,
                      "1111011" when 9,
                      "1110111" when 10,
                      "0011111" when 11,
                      "1001110" when 12,
                      "0111101" when 13,
                      "1001111" when 14,
                      "1000111" when 15;
end TruthTable;
