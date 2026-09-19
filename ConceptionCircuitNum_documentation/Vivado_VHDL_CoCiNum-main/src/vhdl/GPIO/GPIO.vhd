
library ieee;
use ieee.std_logic_1164.all;

use work.Virgule_pkg.all;

entity GPIO is
    generic(
        SRC_WIDTH          : positive range 1 to 32;
        DEST_WIDTH         : positive range 1 to 32;
        DEBOUNCER_DURATION : positive
    );
    port(
        clk_i     : in  std_logic;
        reset_i   : in  std_logic;
        valid_i   : in  std_logic;
        ready_o   : out std_logic;
        address_i : in std_logic_vector(2 downto 0);
        rdata_o   : out word_t;
        wdata_i   : in  word_t;
        write_i   : in  std_logic_vector(3 downto 0);
        evt_o     : out std_logic;
        src_i     : in  std_logic_vector(SRC_WIDTH  - 1 downto 0);
        dest_o    : out std_logic_vector(DEST_WIDTH - 1 downto 0)
    );
end GPIO;

architecture Structural of GPIO is
    signal src_on_evt, src_off_evt                 : std_logic_vector(SRC_WIDTH - 1 downto 0);
    signal src_on_valid, src_off_valid             : std_logic;
    signal src_on_ready, src_off_ready             : std_logic;
    signal src_on_irq, src_off_irq                 : std_logic;
    signal src_on_rdata, src_off_rdata, src_status : word_t;
    signal dest_reg                                : word_t := WORD0;
begin
    debouncer_gen : for n in 0 to SRC_WIDTH - 1 generate
        debouncer_inst : entity work.EventDetector(Debouncer)
            generic map(
                DURATION => DEBOUNCER_DURATION
            )
            port map(
                clk_i     => clk_i,
                src_i     => src_i(n),
                on_evt_o  => src_on_evt(n),
                off_evt_o => src_off_evt(n),
                status_o  => src_status(n)
            );
    end generate debouncer_gen;

    src_on_valid <= valid_i when address_i(2 downto 1) = "01" else '0';

    src_on_inst : entity work.VInterruptController
        port map(
            clk_i     => clk_i,
            reset_i   => reset_i,
            valid_i   => src_on_valid,
            ready_o   => src_on_ready,
            address_i => address_i(0),
            rdata_o   => src_on_rdata,
            wdata_i   => wdata_i,
            write_i   => write_i,
            irq_o     => src_on_irq,
            events_i  => src_on_evt
        );

    src_off_valid <= valid_i when address_i(2 downto 1) = "10" else '0';

    src_off_inst : entity work.VInterruptController
        port map(
            clk_i     => clk_i,
            reset_i   => reset_i,
            valid_i   => src_off_valid,
            ready_o   => src_off_ready,
            address_i => address_i(0),
            rdata_o   => src_off_rdata,
            wdata_i   => wdata_i,
            write_i   => write_i,
            irq_o     => src_off_irq,
            events_i  => src_off_evt
        );

    evt_o <= src_on_irq or src_off_irq;

    p_dest_reg : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if reset_i = '1' then
                dest_reg <= WORD0;
            elsif valid_i = '1' and address_i = "001" then
                update_word(dest_reg, wdata_i, write_i);
            end if;
        end if;
    end process p_dest_reg;

    dest_o <= dest_reg(DEST_WIDTH - 1 downto 0);

    with address_i select
        rdata_o <= src_status    when "000",
                   dest_reg      when "001",
                   src_on_rdata  when "010" | "011",
                   src_off_rdata when "100" | "101",
                   WORD0         when others;

    with address_i select
        ready_o <= src_on_ready  when "010" | "011",
                   src_off_ready when "100" | "101",
                   valid_i       when others;
end Structural;
