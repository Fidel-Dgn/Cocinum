
library ieee;
use ieee.std_logic_1164.all;

entity GCD is
    port(
        clk_i, load_i : in  std_logic;
        a_i, b_i      : in  positive range 1 to 255;
        g_o           : out positive range 1 to 255;
        done_o        : out std_logic
    );
end GCD;

architecture Detailed of GCD is
    signal a_next, b_next : positive;
    signal a_reg, b_reg   : positive;
begin
    -- Registres a_reg et b_reg mis à jour sur front montant de clk_i
    p_ab_reg : process(clk_i)
    begin
        if rising_edge(clk_i) then
            a_reg <= a_next;
            b_reg <= b_next;
        end if;
    end process p_ab_reg;

    -- Calcul de la valeur suivante de a_reg
    a_next <= a_i           when load_i = '1'  else
              a_reg - b_reg when a_reg > b_reg else
              a_reg;

    -- Calcul de la valeur suivante de b_reg
    b_next <= b_i           when load_i = '1'  else
              b_reg - a_reg when b_reg > a_reg else
              b_reg;

    -- Affectation des sorties
    g_o    <= a_reg;
    done_o <= '1' when a_reg = b_reg else '0';
end Detailed;
