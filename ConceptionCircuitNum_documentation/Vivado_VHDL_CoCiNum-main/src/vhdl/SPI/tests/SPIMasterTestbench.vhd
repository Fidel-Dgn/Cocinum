
--
-- Copyright (C), 2021, ESEO
-- Guillaume Savaton <guillaume.savaton@eseo.fr>
--

entity SPIMasterTestbench is
end SPIMasterTestbench;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Virgule_pkg.all;
use work.SPIMasterTestbench_pkg.all;

architecture Simulation of SPIMasterTestbench is
    constant CLK_PERIOD          : time      := 1 sec / CLK_FREQUENCY_HZ;
    constant SERIAL_CLOCK_PERIOD : time      := CYCLES_PER_BIT * CLK_PERIOD;
    signal clk                   : std_logic := '0';
    signal reset                 : std_logic := '1';
    signal valid                 : std_logic := '0';
    signal ready                 : std_logic;
    signal address               : std_logic_vector(1 downto 0);
    signal rdata                 : byte_t;
    signal wdata                 : byte_t;
    signal write                 : std_logic := '0';
    signal evt                   : std_logic;
    signal miso                  : std_logic;
    signal mosi                  : std_logic;
    signal sclk                  : std_logic;
    signal cs_n                  : std_logic;

    function to_string(slv : std_logic_vector) return string is
        variable img    : string(1 to 3);
        variable result : string(1 to slv'length + 2);
        variable j      : integer range 1 to slv'length + 2;
    begin
        result(1) := '"';
        j := 2;
        for i in slv'range loop
            img := std_logic'image(slv(i));
            result(j) := img(2);
            j := j + 1;
        end loop;
        result(slv'length + 2) := '"';
        return result;
    end to_string;
begin
    master_inst : entity work.SPIMaster
        port map(
            clk_i     => clk,
            reset_i   => reset,
            valid_i   => valid,
            ready_o   => ready,
            address_i => address,
            rdata_o   => rdata,
            wdata_i   => wdata,
            write_i   => write,
            evt_o     => evt,
            mosi_o    => mosi,
            miso_i    => miso,
            sclk_o    => sclk,
            cs_n_o    => cs_n
        );

    clk   <= not clk after CLK_PERIOD / 2;
    reset <= '0'     after CLK_PERIOD;

    p_master : process
    begin
        -- Configure serial communication speed.
        wait until rising_edge(clk) and reset = '0';
        assert cs_n = '1'
            report "cs_n: " & std_logic'image(cs_n) & "; expected: '1'"
            severity ERROR;

        valid   <= '1';
        address <= "10";
        wdata   <= std_logic_vector(to_unsigned(CYCLES_PER_BIT - 1, 8));
        write   <= '1';
        wait until rising_edge(clk) and ready = '1';

        -- Configure polarity and phase, select device.
        address <= "01";
        wdata   <= "00000" & POLARITY & PHASE & '1';
        wait until rising_edge(clk) and ready = '1';

        -- Send a byte.
        address <= "00";
        wdata   <= DATA_TO_SLAVE;
        wait until rising_edge(clk) and ready = '1';

        assert cs_n = '0'
            report "cs_n: " & std_logic'image(cs_n) & "; expected: '0'"
            severity ERROR;


        valid <= '0';
        write <= '0';

        -- Check received data
        wait until rising_edge(clk) and evt = '1';

        valid <= '1';
        wait until rising_edge(clk) and ready = '1';

        assert rdata = DATA_FROM_SLAVE
            report "rpdata: " & to_string(rdata) & "; expected: " & to_string(DATA_FROM_SLAVE)
            severity ERROR;

        -- Deselect device.
        wait until rising_edge(clk);
        address <= "01";
        wdata   <= "00000" & POLARITY & PHASE & '0';
        write   <= '1';
        wait until rising_edge(clk) and ready = '1';

        valid <= '0';
        write <= '0';
    end process p_master;

    p_check_mosi : process
    begin
        wait until cs_n = '0';

        for i in 7 downto 0 loop
            if PHASE = '0' then
                wait until sclk'event and sclk /= POLARITY;
            else
                wait until sclk'event and sclk = POLARITY;
            end if;

            assert mosi = DATA_TO_SLAVE(i)
                report "mosi: " & std_logic'image(mosi) & "; expected: " & std_logic'image(DATA_TO_SLAVE(i))
                severity ERROR;

            assert mosi'stable
                report "mosi: unstable"
                severity ERROR;
        end loop;
    end process p_check_mosi;

    p_check_sclk : process
        variable t : time;
    begin
        wait until cs_n = '0';
        assert sclk = POLARITY
            report "sclk: " & std_logic'image(sclk) & "; expected: " & std_logic'image(POLARITY)
            severity ERROR;

        wait until sclk'event;
        t := now;

        for i in 1 to 15 loop
            wait until sclk'event;

            assert now = t + SERIAL_CLOCK_PERIOD / 2
                report "sclk, invalid period: " & time'image((now - t) * 2) & "; expected: " & time'image(SERIAL_CLOCK_PERIOD)
                severity ERROR;

            t := now;
        end loop;
    end process p_check_sclk;

    p_miso : process
    begin
        wait until cs_n = '0';

        for i in 7 downto 0 loop
            if PHASE = '0' then
                miso <= DATA_FROM_SLAVE(i);
                wait until sclk'event and sclk = POLARITY;
            else
                wait until sclk'event and sclk /= POLARITY;
                miso <= DATA_FROM_SLAVE(i);
            end if;
        end loop;

        wait;
    end process p_miso;
end Simulation;
