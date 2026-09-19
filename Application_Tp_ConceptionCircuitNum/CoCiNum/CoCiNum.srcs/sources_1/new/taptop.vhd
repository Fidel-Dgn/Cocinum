library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MicrowaveTop is
    port(
        clk_i             : in  std_logic; 
        btn_center_i      : in  std_logic;  -- Start
        btn_up_i          : in  std_logic;  -- +1min
        btn_down_i        : in  std_logic;  -- -1min
        btn_left_i        : in  std_logic;  -- -30s
        btn_right_i       : in  std_logic;  -- +30s
        switches_i        : in  std_logic_vector(15 downto 0); -- SW0 porte, SW15 stop
        leds_o            : out std_logic_vector(15 downto 0); -- LED0 buzzer, LED1 cuisson
        disp_segments_n_o : out std_logic_vector(0 to 6);
        disp_point_n_o    : out std_logic;
        disp_select_n_o   : out std_logic_vector(3 downto 0)
    );
end MicrowaveTop;

architecture Behavioral of MicrowaveTop is

    -- FSM states
    type t_state is (IDLE, CUISSON, DONE);
    signal state : t_state := IDLE;

    -- Temps restant en secondes
    signal temps_rest : integer range 0 to 5999 := 0;

    -- Top_1sec pour décrémenter le temps 
    signal top_1sec  : std_logic := '0';
    signal tick_1khz : std_logic := '0';  -- multiplex afficheur

    -- Sorties
    signal led_cuisson : std_logic := '0';
    signal buzzer : std_logic := '0';
    signal buzzer_counter : integer range 0 to 5 := 0; -- 5s buzzer (0..5)

    -- Affichage 7 segments
    signal digit_index : integer range 0 to 3 := 0;
    signal digit : integer range 0 to 9 := 0;
    signal segments : std_logic_vector(0 to 6);

    -- Synchronisation boutons (2-étages) + front
    signal start_sync1, start_sync2, start_prev : std_logic := '0';
    signal up_sync1, up_sync2, up_prev : std_logic := '0';
    signal down_sync1, down_sync2, down_prev : std_logic := '0';
    signal left_sync1, left_sync2, left_prev : std_logic := '0';
    signal right_sync1, right_sync2, right_prev : std_logic := '0';
    signal stop_sync1, stop_sync2, stop_prev : std_logic := '0';

    signal start_pulse, up_pulse, down_pulse, left_pulse, right_pulse, stop_pulse : std_logic := '0';

    -- Portes et stop
    signal porte_fermee : std_logic;
    signal stop_i : std_logic;

    -- signeaux sels
    signal sel1, sel2, sel3, sel4 : std_logic;

begin

    -- Map switches
    porte_fermee <= switches_i(0);
    stop_i <= switches_i(15);

    -- Assignation des sels
    sel1 <= right_pulse;  -- +30s
    sel2 <= up_pulse;     -- +1min
    sel3 <= left_pulse;   -- -30s
    sel4 <= down_pulse;   -- -1min

    ----------------------------------------------------------------
    -- DIVISEUR DE LA CLOCK pour top_1sec(tick1hz_inst) et multiplex
    ----------------------------------------------------------------
    tick1hz_inst : entity work.CounterModN
        generic map(N => 100_000_000)  -- 100 MHz -> 1 Hz
        port map(
            clk_i   => clk_i,
            reset_i => '0',
            inc_i   => '1',
            value_o => open,
            cycle_o => top_1sec
        );

    tick1khz_inst : entity work.CounterModN
        generic map(N => 100_000)  -- 100 MHz -> ~1 kHz
        port map(
            clk_i   => clk_i,
            reset_i => '0',
            inc_i   => '1',
            value_o => open,
            cycle_o => tick_1khz
        );

    ----------------------------------------------------------------
    -- Synchronisation en 2 étages + détection de front (pulses) sur nos boutons
    ----------------------------------------------------------------
    p_btn_sync : process(clk_i)
    begin
        if rising_edge(clk_i) then
            -- Start
            start_sync1 <= btn_center_i;
            start_sync2 <= start_sync1;
            start_pulse <= '0';
            if start_sync2 = '1' and start_prev = '0' then
                start_pulse <= '1';
            end if;
            start_prev <= start_sync2;

            -- Up
            up_sync1 <= btn_up_i;
            up_sync2 <= up_sync1;
            up_pulse <= '0';
            if up_sync2 = '1' and up_prev = '0' then up_pulse <= '1'; end if;
            up_prev <= up_sync2;

            -- Down
            down_sync1 <= btn_down_i;
            down_sync2 <= down_sync1;
            down_pulse <= '0';
            if down_sync2 = '1' and down_prev = '0' then down_pulse <= '1'; end if;
            down_prev <= down_sync2;

            -- Left
            left_sync1 <= btn_left_i;
            left_sync2 <= left_sync1;
            left_pulse <= '0';
            if left_sync2 = '1' and left_prev = '0' then left_pulse <= '1'; end if;
            left_prev <= left_sync2;

            -- Right
            right_sync1 <= btn_right_i;
            right_sync2 <= right_sync1;
            right_pulse <= '0';
            if right_sync2 = '1' and right_prev = '0' then right_pulse <= '1'; end if;
            right_prev <= right_sync2;

            -- Stop (du switch)
            stop_sync1 <= stop_i;
            stop_sync2 <= stop_sync1;
            stop_pulse <= '0';
            if stop_sync2 = '1' and stop_prev = '0' then stop_pulse <= '1'; end if;
            stop_prev <= stop_sync2;
        end if;
    end process;

    ----------------------------------------------------------------
    -- FSM principale
    ----------------------------------------------------------------
    p_fsm : process(clk_i)
    begin
        if rising_edge(clk_i) then

            -- Incrément/Décrément du temps par boutons (seulement dans IDLE)
            if state = IDLE then
                if sel2 = '1' then       -- +1min
                    if temps_rest + 60 <= 5999 then temps_rest <= temps_rest + 60; end if;
                end if;
                if sel4 = '1' then       -- -1min
                    if temps_rest >= 60 then temps_rest <= temps_rest - 60; else temps_rest <= 0; end if;
                end if;
                if sel1 = '1' then       -- +30s
                    if temps_rest + 30 <= 5999 then temps_rest <= temps_rest + 30; end if;
                end if;
                if sel3 = '1' then       -- -30s
                    if temps_rest >= 30 then temps_rest <= temps_rest - 30; else temps_rest <= 0; end if;
                end if;
            end if;

            -- Initialisation des sorties chaque cycle
            led_cuisson <= '0';
            buzzer <= '0';

            -- FSM
            case state is
                when IDLE =>
                    buzzer_counter <= 0;  -- reset du compteur du buzzer en idle
                    if start_pulse = '1' and porte_fermee = '1' and temps_rest > 0 then
                        state <= CUISSON;
                    end if;

                when CUISSON =>
                    led_cuisson <= '1';
                    if top_1sec = '1' and porte_fermee = '1' and temps_rest > 0 then
                        temps_rest <= temps_rest - 1;
                    end if;
                    if temps_rest = 0 then
                        state <= DONE;
                        buzzer_counter <= 0;
                    elsif porte_fermee = '0' or stop_pulse = '1' then
                        state <= IDLE;
                    end if;

                when DONE =>
                    if top_1sec = '1' then
                        buzzer_counter <= buzzer_counter + 1;
                    end if;
                    if (buzzer_counter mod 2) = 0 then
                        buzzer <= '1';
                    else
                        buzzer <= '0';
                    end if;
                    if buzzer_counter >= 5 then
                        buzzer <= '0';
                        state <= IDLE;
                    end if;
            end case;
        end if;
    end process;

    ----------------------------------------------------------------
    -- Sortie LEDs
    ----------------------------------------------------------------
    p_leds : process(led_cuisson, buzzer)
    begin
        leds_o <= (others => '0');
        leds_o(0) <= buzzer;
        leds_o(1) <= led_cuisson;
    end process;

    ----------------------------------------------------------------
    -- Affichage 7 segments MM:SS
    ----------------------------------------------------------------
    p_digit_index : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if tick_1khz = '1' then
                if digit_index = 3 then digit_index <= 0;
                else digit_index <= digit_index + 1;
                end if;
            end if;
        end if;
    end process;

    p_digit_value : process(digit_index, temps_rest)
        variable mins : integer;
        variable secs : integer;
    begin
        mins := temps_rest / 60;
        secs := temps_rest mod 60;
        case digit_index is
            when 3 => digit <= secs mod 10;       -- units secondes 
            when 2 => digit <= secs / 10;         -- dizaines secondes
            when 1 => digit <= mins mod 10;       -- units minutes
            when 0 => digit <= mins / 10;         -- dizaines minutes 
            when others => digit <= 0;
        end case;
    end process;

    decoder_inst : entity work.SegmentDecoder
        port map(
            digit_i    => digit,
            segments_o => segments
        );

    disp_segments_n_o <= not segments;  -- actif low
    disp_point_n_o <= '1';  -- dot off

    p_disp_select : process(digit_index)
    begin
        disp_select_n_o <= (others => '1');
        disp_select_n_o(3 - digit_index) <= '0';  -- inversion pour correspondre AN3..AN0
    end process;

end Behavioral;