-- Inclusion de la bibliothèque IEEE standard
library ieee;
-- Utilisation des types logiques standards (std_logic, std_logic_vector)
use ieee.std_logic_1164.all;

-- Déclaration de l'entité StopWatch (chronomètre / compte à rebours)
entity StopWatch is
    port(
        -- Horloge principale du système
        clk_i             : in  std_logic;
        -- Boutons de commande
        btn_center_i, btn_up_i, btn_left_i, btn_right_i, btn_down_i      : in  std_logic;
        -- Entrées des switchs (interrupteurs)
        switches_i        : in  std_logic_vector(15 downto 0);
        -- Sorties LED
        leds_o            : out std_logic_vector(15 downto 0);
        -- Sorties pour les segments de l’afficheur 7 segments (actif bas)
        disp_segments_n_o : out std_logic_vector(0 to 6);
        -- Point décimal (actif bas)
        disp_point_n_o    : out std_logic;
        -- Sélection des digits de l’afficheur (actif bas)
        disp_select_n_o   : out std_logic_vector(3 downto 0)
    );
end StopWatch;
-- Architecture structurelle
architecture Structural of StopWatch is
    -- Declarations
    -- Signaux de division d’horloge (génération de cycles)
    signal cycle_5ms, cycle_20ms, cycle_1sec, cycle_10sec, cycle_1min, cycle_10min, inc_100ms : std_logic;
    signal cycle_down_10sec, cycle_down_1min, cycle_down_10min : std_logic;
    
    -- Signaux de division d’horloge (génération de cycles)
    signal btn_centers, btn_ups, btn_lefts, btn_rights, btn_downs : std_logic_vector(0 to 1);
    signal btn_center, btn_up, btn_left, btn_right, btn_down : std_logic;
    
    -- Gestion du buzzer
    signal timer_reg : std_logic;
    signal reset_buzzer : std_logic;
    signal timer_buzzer_value : integer range 0 to 29;
    
    -- Valeurs des digits affichés
    signal digit : integer range 0 to 16;
    signal digit_reg : integer range 0 to 16;
    signal digit_1sec, digit_1min : integer range 0 to 9;
    signal digit_10sec, digit_10min : integer range 0 to 5;
    
    -- Gestion de l’afficheur 7 segments
    signal digit_index, digit_select : integer range 0 to 3;
    signal segments : std_logic_vector(6 downto 0);
    signal clignotement_value : integer range 0 to 9;
    signal clignotement : std_logic;
    
    -- Signaux d’incrémentation et décrémentation des compteurs    
    signal inc_1s, dec_1s, inc_10s, dec_10s, inc_1min, dec_1min, inc_10min, dec_10min : std_logic;
    
    -- Signaux d’incrémentation et décrémentation des compteurs
    type state_t is (INIT, RUN, PAUSE, BUZZER);
    signal state_reg, state_next : state_t;  
      
    
begin
--------------------------------------------------------------------
-- MACHINE À ÉTATS
-------------------------------------------------------------------
    
-- Registre d’état : mémorisation de l’état courant
    
    
p_state_reg:    process(clk_i)
begin
    if rising_edge(clk_i) then
        state_reg <= state_next;
    end if;
end process;
 

-- Logique de transition d’état
p_state_next: process(state_reg, switches_i, btn_center, digit_1sec, digit_10sec, digit_1min, digit_10min, timer_buzzer_value)
begin
    -- valeur par défaut !
    state_next      <= state_reg;
    reset_buzzer    <= '0';

    case state_reg is
        when INIT =>
            if switches_i(0) = '1'
               and btn_center = '1'
               and not (digit_1sec=0 and digit_10sec=0 and digit_1min=0 and digit_10min=0)
            then
                state_next <= RUN;
            end if;

        when RUN =>
            if switches_i(0) = '0' then
                state_next <= PAUSE;

            elsif digit_1sec=0 and digit_10sec=0 and digit_1min=0 and digit_10min=0 then
                state_next   <= BUZZER;
                reset_buzzer <= '1';
            end if;

        when PAUSE =>
            if switches_i(0) = '1' then
                state_next <= INIT;
            end if;

        when BUZZER =>
            if timer_buzzer_value = 29 then
                state_next <= INIT;
            end if;
    end case;
end process;



--------------------------------------------------------------------
-- DIVISEURS D’HORLOGE
--------------------------------------------------------------------
    -- Génération d’un cycle toutes les 5 ms
    divider_5ms_inst : entity work.CounterModNx
        generic map(n => 500000)
        port map(clk_i => clk_i,
            reset_i => '0',
            inc_i => '1',
            dec_i => '0',
            cycle_up_o => cycle_5ms);
            
    -- Génération d’un cycle toutes les 20 ms + index d’affichage       
    divider20ms_inst : entity work.CounterModNx
        generic map(n => 4)
        port map(clk_i => clk_i,
            reset_i => '0',
            inc_i => cycle_5ms,
            dec_i => '0',
            value_o => digit_index,
            cycle_up_o => cycle_20ms);
            
     -- Compteur pour le clignotement       
    divider_200ms_inst : entity work.CounterModNx
        generic map(n => 10)
        port map(clk_i => clk_i,
            reset_i => '0',
            inc_i => cycle_20ms,
            dec_i => '0',
            value_o => clignotement_value);
            
      
     -- Timer du buzzer      
    divider_buzzer_inst : entity work.CounterModNx
        generic map(n => 30)
        port map(clk_i => clk_i,
            reset_i => reset_buzzer,
            inc_i => cycle_20ms,
            dec_i => '0',
            value_o => timer_buzzer_value);
    
    -- Génération d’un cycle d’1 seconde       
    divider_1s_inst : entity work.CounterModNx
        generic map(n => 50)
        port map(clk_i => clk_i,
            reset_i => '0',
            inc_i => cycle_20ms,
            dec_i => '0',
            cycle_up_o => cycle_1sec);
    
--------------------------------------------------------------------
-- COMPTEURS DU TEMPS
---------------------------------------------------------------------

    -- Secondes unités
    counter_10x1s_inst : entity work.CounterModNx
        generic map(n => 10)
        port map(clk_i => clk_i,
            reset_i => '0',
            inc_i => inc_1s,
            dec_i => dec_1s,
            value_o => digit_1sec,
            cycle_up_o => cycle_10sec,
            cycle_down_o => cycle_down_10sec);
    
    -- Secondes dizaines        
    counter_6x10sec_inst : entity work.CounterModNx
        generic map(n => 6)
        port map(clk_i => clk_i,
            reset_i => '0',
            inc_i => inc_10s,
            dec_i => dec_10s,
            value_o => digit_10sec,
            cycle_up_o => cycle_1min,
            cycle_down_o => cycle_down_1min);
     -- Minutes unités      
     counter_10x1min_inst : entity work.CounterModNx
        generic map(n => 10)
        port map(clk_i => clk_i,
            reset_i => '0',
            inc_i => inc_1min,
            dec_i => dec_1min,
            value_o => digit_1min,
            cycle_up_o => cycle_10min,
            cycle_down_o => cycle_down_10min);
     -- Minutes dizaines       
     counter_6x10min_inst : entity work.CounterModNx
        generic map(n => 6)
        port map(clk_i => clk_i,
            reset_i => '0',
            inc_i => inc_10min,
            dec_i => dec_10min,
            value_o => digit_10min);
     


--------------------------------------------------------------------
-- GESTION DES BOUTONS (détection de front montant)
--------------------------------------------------------------------    
     -- BOUTON --------------------------------------------------------------------------
     btn_p : process(clk_i)
     begin
        if rising_edge(clk_i) then
            -- Synchronisation + détection front montant bouton center
            btn_centers(0) <= btn_center_i;
            btn_centers(1) <= btn_centers(0);
            btn_center <= btn_centers(0) and (not btn_centers(1));
            
                        
            -- Même principe pour les autres boutons
            btn_lefts(0) <= btn_left_i;
            btn_lefts(1) <= btn_lefts(0);
            btn_left <= btn_lefts(0) and (not btn_lefts(1));
            
            btn_rights(0) <= btn_right_i;
            btn_rights(1) <= btn_rights(0);
            btn_right <= btn_rights(0) and (not btn_rights(1));
            
            btn_ups(0) <= btn_up_i;
            btn_ups(1) <= btn_ups(0);
            btn_up <= btn_ups(0) and (not btn_ups(1));
            
            btn_downs(0) <= btn_down_i;
            btn_downs(1) <= btn_downs(0);
            btn_down <= btn_downs(0) and (not btn_downs(1));
        end if;
     end process;
     
--------------------------------------------------------------------
-- AFFICHAGE 7 SEGMENTS
--------------------------------------------------------------------

    -- Décodage chiffre → segments
     decoder_inst : entity work.SegmentDecoderx
        port map(digit_i => digit,
            segments_o => segments);
           
           
           -- Sélection du chiffre à afficher selon l’index
        with digit_index select 
            digit_reg <= digit_1sec  when 0,
                     digit_10sec when 1,
                     digit_1min  when 2,
                     digit_10min when 3,
                     16          when others;  -- valeur éteinte
            
     with digit_index select
     digit_reg <= digit_1sec when 0,
              digit_10sec when 1,
              digit_1min when 2,
              digit_10min when 3;
     
     -- Gestion du clignotement en mode INIT                
     clignotement <= '1' when (clignotement_value >= 5 and digit_index = digit_select and state_reg = INIT)else '0';
     -- Clignotement : si sélectionné ET clignote → digit éteint (16)
     digit <= 16 when (clignotement = '1') else digit_reg;
     
     -- Sélection du digit actif (actif bas)
     disp_select_n_o(0) <= '0' when (digit_index = 0) else '1';
     disp_select_n_o(1) <= '0' when (digit_index = 1) else '1';
     disp_select_n_o(2) <= '0' when (digit_index = 2) else '1';
     disp_select_n_o(3) <= '0' when (digit_index = 3) else '1';

     -- Inversion des segments (afficheur actif bas)
     disp_segments_n_o <= segments xor "1111111";
     disp_point_n_o <= '1';
     
--------------------------------------------------------------------
-- LEDS
--------------------------------------------------------------------
     
     -- led  BUZZER trois clignontement
     leds_o(0) <= '1' when ((timer_buzzer_value mod 10) >= 5 and state_reg = BUZZER) else '0';
     -- led PORTE
     leds_o(1) <= '1' when switches_i(0) = '1' else '0';
     
     -- Définition des leds representant chaque ETATS
     leds_o(2) <= '1' when state_reg = INIT else '0';
     leds_o(3) <= '1' when state_reg = RUN else '0';
     leds_o(4) <= '1' when state_reg = PAUSE else '0';
     leds_o(5) <= '1' when state_reg = BUZZER else '0';
     
     leds_o(6) <= '1' when btn_left_i = '1' else '0';

--------------------------------------------------------------------
    -- SÉLECTION ET MODIFICATION DES DIGITS
--------------------------------------------------------------------


     -- SELECTION de l'afficheur 7segments----------------------------------------------------------------------------
     counter_select_inst : entity work.CounterModNx
        generic map(n => 4)
        port map(clk_i => clk_i,
            reset_i => '0',
            inc_i => btn_left,
            dec_i => btn_right,
            value_o => digit_select);
     -- Logique d’incrémentation / décrémentation
     inc_1s <= '1' when (digit_select = 0 and btn_up = '1' and state_reg = INIT) else '0';
     dec_1s <= '1' when (digit_select = 0 and btn_down = '1' and state_reg = INIT) or (cycle_1sec = '1' and state_reg = RUN)  else '0';
    
     inc_10s <= '1' when (digit_select = 1 and btn_up = '1' and state_reg = INIT) or (cycle_10sec = '1') else '0';
     dec_10s <= '1' when (digit_select = 1 and btn_down = '1' and state_reg = INIT) or (cycle_down_10sec = '1') else '0';
     
     inc_1min <= '1' when (digit_select = 2 and btn_up = '1' and state_reg = INIT) or (cycle_1min = '1') else '0';
     dec_1min <= '1' when (digit_select = 2 and btn_down = '1' and state_reg = INIT) or (cycle_down_1min = '1') else '0';
     
     inc_10min <= '1' when (digit_select = 3 and btn_up = '1' and state_reg = INIT) or (cycle_10min = '1') else '0';
     dec_10min <= '1' when (digit_select = 3 and btn_down = '1' and state_reg = INIT) or (cycle_down_10min = '1') else '0';
         
end Structural;
