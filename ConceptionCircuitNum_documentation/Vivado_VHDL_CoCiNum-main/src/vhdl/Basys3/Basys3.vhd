
library ieee;
use ieee.std_logic_1164.all;

--
-- Cette entité déclare toutes les entrées/sorties du FPGA
-- de la carte Basys3.
--
-- En pratique, il est recommandé de créer votre propre entité
-- qui ne déclarera que les ports nécessaires à votre application,
-- et de sélectionner les fichiers de contraintes correspondants.
--

entity Basys3 is
    port(
        -- Horloge à 100 MHz.
        -- Fichier de contraintes : Basys3_Clock.xdc
        clk_i : in std_logic;

        -- Boutons-poussoirs (fichier de contraintes : Basys3_Buttons.xdc)
        btn_center_i : in std_logic;
        btn_up_i     : in std_logic;
        btn_left_i   : in std_logic;
        btn_right_i  : in std_logic;
        btn_down_i   : in std_logic;

        -- Interrupteurs.
        -- Fichier de contraintes : Basys3_Switches.xdc
        switches_i : in std_logic_vector(15 downto 0);

        -- Voyants
        -- Fichier de contraintes : Basys3_LEDs.xdc
        leds_o : out std_logic_vector(15 downto 0);

        -- Afficheurs 7 segments.
        -- Fichier de contraintes : Basys3_SegmentDisplay.xdc
        disp_segments_n_o : out std_logic_vector(0 to 6);
        disp_point_n_o    : out std_logic;
        disp_select_n_o   : out std_logic_vector(3 downto 0);

        -- Interface série asynchrone.
        -- Fichier de contraintes : Basys3_UART.xdc
        uart_rx_i : in  std_logic;
        uart_tx_o : out std_logic;

        -- Port VGA.
        -- Fichier de contraintes : Basys3_VGA.xdc
        vga_red_o     : out std_logic_vector(3 downto 0);
        vga_green_o   : out std_logic_vector(3 downto 0);
        vga_blue_o    : out std_logic_vector(3 downto 0);
        vga_hsync_n_o : out std_logic;
        vga_vsync_n_o : out std_logic;

        -- Interface compatible PS/2 pour clavier ou souris.
        -- Fichier de contraintes : Basys3_PS2.xdc
        ps2_sclk_io  : inout std_logic;
        ps2_sdata_io : inout std_logic;

        -- Connecteur d'extension JA.
        -- Modifiez le mode de chaque port (in, out, inout) en fonction du
        -- module qui sera relié à ce connecteur.
        -- Fichier de contraintes : Basys3_PmodA.xdc
        pmod_a1  : inout std_logic;
        pmod_a2  : inout std_logic;
        pmod_a3  : inout std_logic;
        pmod_a4  : inout std_logic;
        pmod_a7  : inout std_logic;
        pmod_a8  : inout std_logic;
        pmod_a9  : inout std_logic;
        pmod_a10 : inout std_logic;

        -- Connecteur d'extension JB.
        -- Fichier de contraintes : Basys3_PmodB.xdc
        --
        -- Modifiez le mode de chaque port (in, out, inout) en fonction du
        -- module qui sera relié à ce connecteur.
        pmod_b1  : inout std_logic;
        pmod_b2  : inout std_logic;
        pmod_b3  : inout std_logic;
        pmod_b4  : inout std_logic;
        pmod_b7  : inout std_logic;
        pmod_b8  : inout std_logic;
        pmod_b9  : inout std_logic;
        pmod_b10 : inout std_logic;

        -- Connecteur d'extension JC.
        -- Fichier de contraintes : Basys3_PmodC.xdc
        --
        -- Modifiez le mode de chaque port (in, out, inout) en fonction du
        -- module qui sera relié à ce connecteur.
        pmod_c1  : inout std_logic;
        pmod_c2  : inout std_logic;
        pmod_c3  : inout std_logic;
        pmod_c4  : inout std_logic;
        pmod_c7  : inout std_logic;
        pmod_c8  : inout std_logic;
        pmod_c9  : inout std_logic;
        pmod_c10 : inout std_logic;

        -- Connecteur d'extension JXADC.
        -- Fichier de contraintes : Basys3_PmodXADC.xdc
        --
        -- Modifiez le mode de chaque port (in, out, inout) en fonction du
        -- module qui sera relié à ce connecteur.
        pmod_xadc1  : inout std_logic;
        pmod_xadc2  : inout std_logic;
        pmod_xadc3  : inout std_logic;
        pmod_xadc4  : inout std_logic;
        pmod_xadc7  : inout std_logic;
        pmod_xadc8  : inout std_logic;
        pmod_xadc9  : inout std_logic;
        pmod_xadc10 : inout std_logic
    );
end Basys3;
