library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.virgule_pkg.all;
entity I2CMaster is
  generic (
    CLK_FREQUENCY_HZ: positive := 100000000;
    I2C_FREQUENCY_HZ: positive := 100e3
  );
  port (
    clk_i: in std_logic;
    reset_i: in std_logic;
    valid_i: in std_logic;
    ready_o: out std_logic;
    address_i: in std_logic;
    rdata_o: out word_t;
    wdata_i: in word_t;
    write_i: in std_logic_vector (3 downto 0);
    evt_o: out std_logic;
    error_o: out std_logic;
    scl_io: inout std_logic;
    sda_io: inout std_logic
  );
end I2CMaster;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

architecture rtl of i2cmaster is
  signal wrap_clk_i: std_logic;
  signal wrap_reset_i: std_logic;
  signal wrap_valid_i: std_logic;
  signal wrap_address_i: std_logic;
  subtype typwrap_wdata_i is std_logic_vector (31 downto 0);
  signal wrap_wdata_i: typwrap_wdata_i;
  subtype typwrap_write_i is std_logic_vector (3 downto 0);
  signal wrap_write_i: typwrap_write_i;
  signal wrap_ready_o: std_logic;
  subtype typwrap_rdata_o is std_logic_vector (31 downto 0);
  signal wrap_rdata_o: typwrap_rdata_o;
  signal wrap_evt_o: std_logic;
  signal wrap_error_o: std_logic;
  signal n4_o : std_logic;
  signal n4_oport : std_logic;
  signal n5_o : std_logic;
  signal n5_oport : std_logic;
  signal start : std_logic;
  signal sda_i : std_logic;
  signal sda_o : std_logic;
  signal scl_i : std_logic;
  signal scl_o : std_logic;
  signal scl_low_pulse : std_logic;
  signal scl_high_pulse : std_logic;
  signal slave_address_reg : std_logic_vector (6 downto 0);
  signal send_len_reg : std_logic_vector (2 downto 0);
  signal recv_len_reg : std_logic_vector (2 downto 0);
  signal buffer_reg : std_logic_vector (39 downto 0);
  signal timer_reg : std_logic_vector (8 downto 0);
  signal bit_index_reg : std_logic_vector (2 downto 0);
  signal byte_index_reg : std_logic_vector (1 downto 0);
  signal arb_error : std_logic;
  signal state_reg : std_logic_vector (3 downto 0);
  signal scl_state_reg : std_logic_vector (1 downto 0);
  signal n8_o : std_logic;
  signal n10_o : std_logic;
  signal n11_o : std_logic;
  signal n12_o : std_logic;
  signal n13_o : std_logic_vector (2 downto 0);
  signal n16_o : std_logic;
  signal n17_o : std_logic_vector (2 downto 0);
  signal n20_o : std_logic;
  signal n21_o : std_logic_vector (6 downto 0);
  signal n23_o : std_logic;
  signal n24_o : std_logic;
  signal n25_o : std_logic;
  signal n30_o : std_logic_vector (6 downto 0);
  signal n31_q : std_logic_vector (6 downto 0);
  signal n32_o : std_logic_vector (2 downto 0);
  signal n33_q : std_logic_vector (2 downto 0);
  signal n34_o : std_logic_vector (2 downto 0);
  signal n35_q : std_logic_vector (2 downto 0);
  signal n36_o : std_logic_vector (31 downto 0);
  signal n38_o : std_logic;
  signal n39_o : std_logic;
  signal n42_o : std_logic;
  signal n43_o : std_logic;
  signal n45_o : std_logic;
  signal n47_o : std_logic;
  signal n48_o : std_logic;
  signal n49_o : std_logic;
  signal n53_o : std_logic_vector (31 downto 0);
  signal n55_o : std_logic;
  signal n56_o : std_logic_vector (31 downto 0);
  signal n58_o : std_logic;
  signal n59_o : std_logic;
  signal n62_o : std_logic_vector (3 downto 0);
  signal n63_o : std_logic_vector (3 downto 0);
  signal n65_o : std_logic;
  signal n66_o : std_logic;
  signal n68_o : std_logic_vector (3 downto 0);
  signal n70_o : std_logic;
  signal n71_o : std_logic;
  signal n72_o : std_logic;
  signal n73_o : std_logic;
  signal n74_o : std_logic_vector (31 downto 0);
  signal n76_o : std_logic;
  signal n78_o : std_logic_vector (3 downto 0);
  signal n80_o : std_logic_vector (3 downto 0);
  signal n82_o : std_logic;
  signal n83_o : std_logic_vector (31 downto 0);
  signal n85_o : std_logic;
  signal n88_o : std_logic_vector (3 downto 0);
  signal n89_o : std_logic_vector (3 downto 0);
  signal n91_o : std_logic;
  signal n92_o : std_logic_vector (31 downto 0);
  signal n94_o : std_logic;
  signal n95_o : std_logic;
  signal n97_o : std_logic_vector (3 downto 0);
  signal n99_o : std_logic_vector (3 downto 0);
  signal n101_o : std_logic;
  signal n102_o : std_logic;
  signal n103_o : std_logic_vector (31 downto 0);
  signal n104_o : std_logic_vector (31 downto 0);
  signal n105_o : std_logic;
  signal n106_o : std_logic_vector (31 downto 0);
  signal n108_o : std_logic;
  signal n111_o : std_logic_vector (3 downto 0);
  signal n113_o : std_logic_vector (3 downto 0);
  signal n114_o : std_logic_vector (3 downto 0);
  signal n116_o : std_logic_vector (3 downto 0);
  signal n118_o : std_logic;
  signal n120_o : std_logic_vector (3 downto 0);
  signal n122_o : std_logic_vector (3 downto 0);
  signal n124_o : std_logic;
  signal n126_o : std_logic_vector (3 downto 0);
  signal n128_o : std_logic;
  signal n129_o : std_logic_vector (31 downto 0);
  signal n131_o : std_logic;
  signal n132_o : std_logic;
  signal n134_o : std_logic_vector (3 downto 0);
  signal n136_o : std_logic_vector (3 downto 0);
  signal n138_o : std_logic;
  signal n139_o : std_logic;
  signal n141_o : std_logic_vector (3 downto 0);
  signal n143_o : std_logic_vector (3 downto 0);
  signal n145_o : std_logic;
  signal n146_o : std_logic_vector (31 downto 0);
  signal n148_o : std_logic;
  signal n149_o : std_logic;
  signal n151_o : std_logic_vector (3 downto 0);
  signal n153_o : std_logic;
  signal n154_o : std_logic_vector (31 downto 0);
  signal n155_o : std_logic_vector (31 downto 0);
  signal n156_o : std_logic;
  signal n159_o : std_logic_vector (3 downto 0);
  signal n160_o : std_logic_vector (3 downto 0);
  signal n162_o : std_logic;
  signal n164_o : std_logic_vector (3 downto 0);
  signal n166_o : std_logic;
  signal n167_o : std_logic_vector (31 downto 0);
  signal n169_o : std_logic;
  signal n171_o : std_logic_vector (3 downto 0);
  signal n173_o : std_logic;
  signal n175_o : std_logic;
  signal n177_o : std_logic;
  signal n178_o : std_logic;
  signal n179_o : std_logic_vector (14 downto 0);
  signal n182_o : std_logic_vector (3 downto 0);
  signal n185_q : std_logic_vector (3 downto 0);
  signal n188_o : std_logic;
  signal n189_o : std_logic;
  signal n193_o : std_logic;
  signal n194_o : std_logic;
  signal n198_o : std_logic_vector (31 downto 0);
  signal n200_o : std_logic;
  signal n201_o : std_logic_vector (31 downto 0);
  signal n203_o : std_logic_vector (31 downto 0);
  signal n204_o : std_logic_vector (8 downto 0);
  signal n206_o : std_logic_vector (8 downto 0);
  signal n208_o : std_logic;
  signal n210_o : std_logic;
  signal n211_o : std_logic;
  signal n213_o : std_logic;
  signal n214_o : std_logic;
  signal n215_o : std_logic_vector (31 downto 0);
  signal n217_o : std_logic;
  signal n218_o : std_logic_vector (31 downto 0);
  signal n220_o : std_logic_vector (31 downto 0);
  signal n221_o : std_logic_vector (8 downto 0);
  signal n222_o : std_logic_vector (8 downto 0);
  signal n224_o : std_logic;
  signal n225_o : std_logic;
  signal n226_o : std_logic_vector (31 downto 0);
  signal n228_o : std_logic;
  signal n229_o : std_logic;
  signal n230_o : std_logic_vector (31 downto 0);
  signal n232_o : std_logic_vector (31 downto 0);
  signal n233_o : std_logic_vector (8 downto 0);
  signal n235_o : std_logic_vector (8 downto 0);
  signal n237_o : std_logic;
  signal n239_o : std_logic;
  signal n241_o : std_logic;
  signal n242_o : std_logic;
  signal n243_o : std_logic_vector (2 downto 0);
  signal n246_o : std_logic_vector (8 downto 0);
  signal n248_o : std_logic;
  signal n250_o : std_logic;
  signal n251_o : std_logic;
  signal n253_o : std_logic;
  signal n254_o : std_logic;
  signal n256_o : std_logic;
  signal n257_o : std_logic;
  signal n259_o : std_logic;
  signal n260_o : std_logic;
  signal n262_o : std_logic;
  signal n263_o : std_logic;
  signal n265_o : std_logic;
  signal n266_o : std_logic;
  signal n268_o : std_logic;
  signal n269_o : std_logic;
  signal n271_o : std_logic;
  signal n272_o : std_logic;
  signal n273_o : std_logic_vector (1 downto 0);
  signal n275_o : std_logic_vector (8 downto 0);
  signal n278_q : std_logic_vector (8 downto 0);
  signal n282_o : std_logic;
  signal n283_o : std_logic_vector (31 downto 0);
  signal n285_o : std_logic;
  signal n286_o : std_logic;
  signal n288_o : std_logic_vector (1 downto 0);
  signal n290_o : std_logic;
  signal n291_o : std_logic_vector (31 downto 0);
  signal n293_o : std_logic;
  signal n295_o : std_logic_vector (1 downto 0);
  signal n297_o : std_logic;
  signal n299_o : std_logic_vector (1 downto 0);
  signal n301_o : std_logic;
  signal n302_o : std_logic;
  signal n303_o : std_logic_vector (31 downto 0);
  signal n305_o : std_logic;
  signal n306_o : std_logic;
  signal n308_o : std_logic_vector (1 downto 0);
  signal n310_o : std_logic;
  signal n311_o : std_logic_vector (3 downto 0);
  signal n313_o : std_logic_vector (1 downto 0);
  signal n315_o : std_logic;
  signal n317_o : std_logic;
  signal n318_o : std_logic;
  signal n320_o : std_logic;
  signal n321_o : std_logic;
  signal n323_o : std_logic;
  signal n324_o : std_logic;
  signal n326_o : std_logic;
  signal n327_o : std_logic;
  signal n329_o : std_logic;
  signal n330_o : std_logic;
  signal n332_o : std_logic;
  signal n333_o : std_logic;
  signal n335_o : std_logic;
  signal n336_o : std_logic;
  signal n338_o : std_logic;
  signal n339_o : std_logic;
  signal n341_o : std_logic;
  signal n342_o : std_logic;
  signal n344_o : std_logic_vector (1 downto 0);
  signal n347_q : std_logic_vector (1 downto 0);
  signal n350_o : std_logic;
  signal n351_o : std_logic;
  signal n355_o : std_logic;
  signal n356_o : std_logic_vector (31 downto 0);
  signal n358_o : std_logic;
  signal n359_o : std_logic;
  signal n360_o : std_logic;
  signal n364_o : std_logic;
  signal n365_o : std_logic_vector (31 downto 0);
  signal n367_o : std_logic;
  signal n368_o : std_logic;
  signal n369_o : std_logic;
  signal n373_o : std_logic;
  signal n375_o : std_logic;
  signal n376_o : std_logic;
  signal n378_o : std_logic;
  signal n379_o : std_logic;
  signal n381_o : std_logic;
  signal n382_o : std_logic;
  signal n384_o : std_logic;
  signal n385_o : std_logic;
  signal n386_o : std_logic;
  signal n388_o : std_logic;
  signal n390_o : std_logic;
  signal n391_o : std_logic;
  signal n393_o : std_logic_vector (1 downto 0);
  signal n394_o : std_logic;
  signal n396_o : std_logic;
  signal n397_o : std_logic;
  signal n398_o : std_logic;
  signal n403_o : std_logic_vector (31 downto 0);
  signal n405_o : std_logic;
  signal n408_o : std_logic;
  signal n409_o : std_logic_vector (7 downto 0);
  signal n410_o : std_logic_vector (39 downto 0);
  signal n411_o : std_logic_vector (39 downto 0);
  signal n414_o : std_logic;
  signal n416_o : std_logic_vector (7 downto 0);
  signal n418_o : std_logic;
  signal n419_o : std_logic_vector (38 downto 0);
  signal n421_o : std_logic_vector (39 downto 0);
  signal n422_o : std_logic_vector (39 downto 0);
  signal n424_o : std_logic;
  signal n426_o : std_logic;
  signal n427_o : std_logic;
  signal n428_o : std_logic_vector (38 downto 0);
  signal n429_o : std_logic_vector (39 downto 0);
  signal n430_o : std_logic_vector (39 downto 0);
  signal n432_o : std_logic;
  signal n433_o : std_logic_vector (3 downto 0);
  signal n434_o : std_logic_vector (31 downto 0);
  signal n435_o : std_logic_vector (31 downto 0);
  signal n436_o : std_logic_vector (31 downto 0);
  signal n437_o : std_logic_vector (31 downto 0);
  signal n438_o : std_logic_vector (31 downto 0);
  signal n439_o : std_logic_vector (7 downto 0);
  signal n440_o : std_logic_vector (7 downto 0);
  signal n441_o : std_logic_vector (7 downto 0);
  signal n442_o : std_logic_vector (7 downto 0);
  signal n443_o : std_logic_vector (7 downto 0);
  signal n445_o : std_logic_vector (39 downto 0);
  signal n449_q : std_logic_vector (39 downto 0);
  signal n454_o : std_logic;
  signal n455_o : std_logic_vector (31 downto 0);
  signal n457_o : std_logic;
  signal n458_o : std_logic_vector (31 downto 0);
  signal n460_o : std_logic_vector (31 downto 0);
  signal n461_o : std_logic_vector (2 downto 0);
  signal n463_o : std_logic_vector (2 downto 0);
  signal n464_o : std_logic_vector (2 downto 0);
  signal n466_o : std_logic;
  signal n468_o : std_logic;
  signal n469_o : std_logic;
  signal n471_o : std_logic;
  signal n472_o : std_logic;
  signal n473_o : std_logic_vector (31 downto 0);
  signal n474_o : std_logic_vector (31 downto 0);
  signal n475_o : std_logic;
  signal n476_o : std_logic;
  signal n477_o : std_logic_vector (31 downto 0);
  signal n479_o : std_logic_vector (31 downto 0);
  signal n480_o : std_logic_vector (1 downto 0);
  signal n481_o : std_logic_vector (1 downto 0);
  signal n483_o : std_logic;
  signal n485_o : std_logic;
  signal n486_o : std_logic;
  signal n488_o : std_logic;
  signal n489_o : std_logic_vector (31 downto 0);
  signal n490_o : std_logic_vector (31 downto 0);
  signal n491_o : std_logic;
  signal n492_o : std_logic;
  signal n493_o : std_logic_vector (31 downto 0);
  signal n495_o : std_logic_vector (31 downto 0);
  signal n496_o : std_logic_vector (1 downto 0);
  signal n497_o : std_logic_vector (1 downto 0);
  signal n499_o : std_logic;
  signal n500_o : std_logic_vector (4 downto 0);
  signal n502_o : std_logic_vector (2 downto 0);
  signal n505_o : std_logic_vector (1 downto 0);
  signal n509_q : std_logic_vector (2 downto 0);
  signal n510_q : std_logic_vector (1 downto 0);
begin
  wrap_clk_i <= clk_i;
  wrap_reset_i <= reset_i;
  wrap_valid_i <= valid_i;
  wrap_address_i <= address_i;
  wrap_wdata_i <= wdata_i;
  wrap_write_i <= write_i;
  ready_o <= wrap_ready_o;
  rdata_o <= wrap_rdata_o;
  evt_o <= wrap_evt_o;
  error_o <= wrap_error_o;
  wrap_ready_o <= wrap_valid_i;
  wrap_rdata_o <= n36_o;
  wrap_evt_o <= n194_o;
  wrap_error_o <= n189_o;
  scl_io <= n4_oport;
  sda_io <= n5_oport;
  -- I2CMaster.vhd:23:9
  n4_oport <= n39_o; -- (inout - port)
  n4_o <= scl_io; -- (inout - read)
  -- I2CMaster.vhd:24:9
  n5_oport <= n43_o; -- (inout - port)
  n5_o <= sda_io; -- (inout - read)
  -- I2CMaster.vhd:30:12
  start <= n49_o; -- (signal)
  -- I2CMaster.vhd:32:12
  sda_i <= n5_o; -- (signal)
  -- I2CMaster.vhd:32:19
  sda_o <= n394_o; -- (signal)
  -- I2CMaster.vhd:33:12
  scl_i <= n4_o; -- (signal)
  -- I2CMaster.vhd:33:19
  scl_o <= n351_o; -- (signal)
  -- I2CMaster.vhd:35:12
  scl_low_pulse <= n360_o; -- (signal)
  -- I2CMaster.vhd:36:12
  scl_high_pulse <= n369_o; -- (signal)
  -- I2CMaster.vhd:38:12
  slave_address_reg <= n31_q; -- (signal)
  -- I2CMaster.vhd:39:12
  send_len_reg <= n33_q; -- (signal)
  -- I2CMaster.vhd:40:12
  recv_len_reg <= n35_q; -- (signal)
  -- I2CMaster.vhd:43:12
  buffer_reg <= n449_q; -- (signal)
  -- I2CMaster.vhd:46:12
  timer_reg <= n278_q; -- (signal)
  -- I2CMaster.vhd:48:12
  bit_index_reg <= n509_q; -- (signal)
  -- I2CMaster.vhd:49:12
  byte_index_reg <= n510_q; -- (signal)
  -- I2CMaster.vhd:51:12
  arb_error <= n398_o; -- (signal)
  -- I2CMaster.vhd:63:12
  state_reg <= n185_q; -- (signal)
  -- I2CMaster.vhd:66:12
  scl_state_reg <= n347_q; -- (signal)
  -- I2CMaster.vhd:71:30
  n8_o <= wrap_valid_i and wrap_address_i;
  -- I2CMaster.vhd:71:64
  n10_o <= '1' when state_reg = "0000" else '0';
  -- I2CMaster.vhd:71:50
  n11_o <= n8_o and n10_o;
  -- I2CMaster.vhd:72:27
  n12_o <= wrap_write_i (2);
  -- I2CMaster.vhd:73:64
  n13_o <= wrap_wdata_i (18 downto 16);
  -- I2CMaster.vhd:75:27
  n16_o <= wrap_write_i (1);
  -- I2CMaster.vhd:76:64
  n17_o <= wrap_wdata_i (10 downto 8);
  -- I2CMaster.vhd:78:27
  n20_o <= wrap_write_i (0);
  -- I2CMaster.vhd:79:49
  n21_o <= wrap_wdata_i (6 downto 0);
  -- I2CMaster.vhd:71:13
  n23_o <= n11_o and n20_o;
  -- I2CMaster.vhd:71:13
  n24_o <= n11_o and n12_o;
  -- I2CMaster.vhd:71:13
  n25_o <= n11_o and n16_o;
  -- I2CMaster.vhd:70:9
  n30_o <= slave_address_reg when n23_o = '0' else n21_o;
  -- I2CMaster.vhd:70:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n31_q <= n30_o;
    end if;
  end process;
  -- I2CMaster.vhd:70:9
  n32_o <= send_len_reg when n24_o = '0' else n13_o;
  -- I2CMaster.vhd:70:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n33_q <= n32_o;
    end if;
  end process;
  -- I2CMaster.vhd:70:9
  n34_o <= recv_len_reg when n25_o = '0' else n17_o;
  -- I2CMaster.vhd:70:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n35_q <= n34_o;
    end if;
  end process;
  -- I2CMaster.vhd:85:26
  n36_o <= buffer_reg (31 downto 0);
  -- I2CMaster.vhd:89:30
  n38_o <= not scl_o;
  -- I2CMaster.vhd:89:19
  n39_o <= 'Z' when n38_o = '0' else '0';
  -- I2CMaster.vhd:90:30
  n42_o <= not sda_o;
  -- I2CMaster.vhd:90:19
  n43_o <= 'Z' when n42_o = '0' else '0';
  -- I2CMaster.vhd:97:37
  n45_o <= not wrap_address_i;
  -- I2CMaster.vhd:97:55
  n47_o <= '1' when wrap_write_i /= "0000" else '0';
  -- I2CMaster.vhd:97:43
  n48_o <= n45_o and n47_o;
  -- I2CMaster.vhd:97:22
  n49_o <= '0' when n48_o = '0' else wrap_valid_i;
  -- I2CMaster.vhd:108:41
  n53_o <= "00000000000000000000000000000" & send_len_reg;  --  uext
  -- I2CMaster.vhd:108:41
  n55_o <= '1' when n53_o = "00000000000000000000000000000000" else '0';
  -- I2CMaster.vhd:108:62
  n56_o <= "00000000000000000000000000000" & recv_len_reg;  --  uext
  -- I2CMaster.vhd:108:62
  n58_o <= '1' when n56_o = "00000000000000000000000000000000" else '0';
  -- I2CMaster.vhd:108:45
  n59_o <= n55_o and n58_o;
  -- I2CMaster.vhd:108:25
  n62_o <= "0001" when n59_o = '0' else "1111";
  -- I2CMaster.vhd:107:21
  n63_o <= state_reg when start = '0' else n62_o;
  -- I2CMaster.vhd:104:17
  n65_o <= '1' when state_reg = "0000" else '0';
  -- I2CMaster.vhd:117:36
  n66_o <= scl_i and sda_i;
  -- I2CMaster.vhd:117:21
  n68_o <= state_reg when n66_o = '0' else "0010";
  -- I2CMaster.vhd:115:17
  n70_o <= '1' when state_reg = "0001" else '0';
  -- I2CMaster.vhd:124:30
  n71_o <= not scl_i;
  -- I2CMaster.vhd:124:45
  n72_o <= not sda_i;
  -- I2CMaster.vhd:124:36
  n73_o <= n71_o or n72_o;
  -- I2CMaster.vhd:126:37
  n74_o <= "00000000000000000000000" & timer_reg;  --  uext
  -- I2CMaster.vhd:126:37
  n76_o <= '1' when n74_o = "00000000000000000000000111110011" else '0';
  -- I2CMaster.vhd:126:21
  n78_o <= state_reg when n76_o = '0' else "0011";
  -- I2CMaster.vhd:124:21
  n80_o <= n78_o when n73_o = '0' else "0001";
  -- I2CMaster.vhd:121:17
  n82_o <= '1' when state_reg = "0010" else '0';
  -- I2CMaster.vhd:134:41
  n83_o <= "00000000000000000000000000000" & send_len_reg;  --  uext
  -- I2CMaster.vhd:134:41
  n85_o <= '1' when signed (n83_o) > signed'("00000000000000000000000000000000") else '0';
  -- I2CMaster.vhd:134:25
  n88_o <= "1000" when n85_o = '0' else "0100";
  -- I2CMaster.vhd:133:21
  n89_o <= state_reg when scl_low_pulse = '0' else n88_o;
  -- I2CMaster.vhd:130:17
  n91_o <= '1' when state_reg = "0011" else '0';
  -- I2CMaster.vhd:147:65
  n92_o <= "00000000000000000000000000000" & bit_index_reg;  --  uext
  -- I2CMaster.vhd:147:65
  n94_o <= '1' when n92_o = "00000000000000000000000000000111" else '0';
  -- I2CMaster.vhd:147:47
  n95_o <= scl_low_pulse and n94_o;
  -- I2CMaster.vhd:147:21
  n97_o <= state_reg when n95_o = '0' else "0101";
  -- I2CMaster.vhd:145:21
  n99_o <= n97_o when arb_error = '0' else "1110";
  -- I2CMaster.vhd:141:17
  n101_o <= '1' when state_reg = "0100" else '0';
  -- I2CMaster.vhd:156:36
  n102_o <= scl_i and sda_i;
  -- I2CMaster.vhd:159:43
  n103_o <= "000000000000000000000000000000" & byte_index_reg;  --  uext
  -- I2CMaster.vhd:159:43
  n104_o <= "00000000000000000000000000000" & send_len_reg;  --  uext
  -- I2CMaster.vhd:159:43
  n105_o <= '1' when n103_o /= n104_o else '0';
  -- I2CMaster.vhd:161:44
  n106_o <= "00000000000000000000000000000" & recv_len_reg;  --  uext
  -- I2CMaster.vhd:161:44
  n108_o <= '1' when n106_o = "00000000000000000000000000000000" else '0';
  -- I2CMaster.vhd:161:25
  n111_o <= "0110" when n108_o = '0' else "1100";
  -- I2CMaster.vhd:159:25
  n113_o <= n111_o when n105_o = '0' else "0100";
  -- I2CMaster.vhd:158:21
  n114_o <= state_reg when scl_low_pulse = '0' else n113_o;
  -- I2CMaster.vhd:156:21
  n116_o <= n114_o when n102_o = '0' else "1110";
  -- I2CMaster.vhd:151:17
  n118_o <= '1' when state_reg = "0101" else '0';
  -- I2CMaster.vhd:175:21
  n120_o <= state_reg when scl_high_pulse = '0' else "0111";
  -- I2CMaster.vhd:173:21
  n122_o <= n120_o when arb_error = '0' else "1110";
  -- I2CMaster.vhd:168:17
  n124_o <= '1' when state_reg = "0110" else '0';
  -- I2CMaster.vhd:182:21
  n126_o <= state_reg when scl_low_pulse = '0' else "1000";
  -- I2CMaster.vhd:179:17
  n128_o <= '1' when state_reg = "0111" else '0';
  -- I2CMaster.vhd:192:65
  n129_o <= "00000000000000000000000000000" & bit_index_reg;  --  uext
  -- I2CMaster.vhd:192:65
  n131_o <= '1' when n129_o = "00000000000000000000000000000111" else '0';
  -- I2CMaster.vhd:192:47
  n132_o <= scl_low_pulse and n131_o;
  -- I2CMaster.vhd:192:21
  n134_o <= state_reg when n132_o = '0' else "1001";
  -- I2CMaster.vhd:190:21
  n136_o <= n134_o when arb_error = '0' else "1110";
  -- I2CMaster.vhd:186:17
  n138_o <= '1' when state_reg = "1000" else '0';
  -- I2CMaster.vhd:199:36
  n139_o <= scl_i and sda_i;
  -- I2CMaster.vhd:201:21
  n141_o <= state_reg when scl_low_pulse = '0' else "1010";
  -- I2CMaster.vhd:199:21
  n143_o <= n141_o when n139_o = '0' else "1110";
  -- I2CMaster.vhd:196:17
  n145_o <= '1' when state_reg = "1001" else '0';
  -- I2CMaster.vhd:208:62
  n146_o <= "00000000000000000000000000000" & bit_index_reg;  --  uext
  -- I2CMaster.vhd:208:62
  n148_o <= '1' when n146_o = "00000000000000000000000000000111" else '0';
  -- I2CMaster.vhd:208:44
  n149_o <= scl_low_pulse and n148_o;
  -- I2CMaster.vhd:208:21
  n151_o <= state_reg when n149_o = '0' else "1011";
  -- I2CMaster.vhd:205:17
  n153_o <= '1' when state_reg = "1010" else '0';
  -- I2CMaster.vhd:218:43
  n154_o <= "000000000000000000000000000000" & byte_index_reg;  --  uext
  -- I2CMaster.vhd:218:43
  n155_o <= "00000000000000000000000000000" & recv_len_reg;  --  uext
  -- I2CMaster.vhd:218:43
  n156_o <= '1' when n154_o /= n155_o else '0';
  -- I2CMaster.vhd:218:25
  n159_o <= "1100" when n156_o = '0' else "1010";
  -- I2CMaster.vhd:217:21
  n160_o <= state_reg when scl_low_pulse = '0' else n159_o;
  -- I2CMaster.vhd:212:17
  n162_o <= '1' when state_reg = "1011" else '0';
  -- I2CMaster.vhd:228:21
  n164_o <= state_reg when scl_high_pulse = '0' else "1101";
  -- I2CMaster.vhd:225:17
  n166_o <= '1' when state_reg = "1100" else '0';
  -- I2CMaster.vhd:235:34
  n167_o <= "00000000000000000000000" & timer_reg;  --  uext
  -- I2CMaster.vhd:235:34
  n169_o <= '1' when n167_o = "00000000000000000000000111110011" else '0';
  -- I2CMaster.vhd:235:21
  n171_o <= state_reg when n169_o = '0' else "1111";
  -- I2CMaster.vhd:232:17
  n173_o <= '1' when state_reg = "1101" else '0';
  -- I2CMaster.vhd:239:17
  n175_o <= '1' when state_reg = "1110" else '0';
  -- I2CMaster.vhd:239:34
  n177_o <= '1' when state_reg = "1111" else '0';
  -- I2CMaster.vhd:239:34
  n178_o <= n175_o or n177_o;
  n179_o <= n178_o & n173_o & n166_o & n162_o & n153_o & n145_o & n138_o & n128_o & n124_o & n118_o & n101_o & n91_o & n82_o & n70_o & n65_o;
  -- I2CMaster.vhd:103:13
  with n179_o select n182_o <=
    "0000" when "100000000000000",
    n171_o when "010000000000000",
    n164_o when "001000000000000",
    n160_o when "000100000000000",
    n151_o when "000010000000000",
    n143_o when "000001000000000",
    n136_o when "000000100000000",
    n126_o when "000000010000000",
    n122_o when "000000001000000",
    n116_o when "000000000100000",
    n99_o when "000000000010000",
    n89_o when "000000000001000",
    n80_o when "000000000000100",
    n68_o when "000000000000010",
    n63_o when "000000000000001",
    "XXXX" when others;
  -- I2CMaster.vhd:102:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n185_q <= n182_o;
    end if;
  end process;
  -- I2CMaster.vhd:248:35
  n188_o <= '1' when state_reg = "1110" else '0';
  -- I2CMaster.vhd:248:20
  n189_o <= '0' when n188_o = '0' else '1';
  -- I2CMaster.vhd:252:33
  n193_o <= '1' when state_reg = "1111" else '0';
  -- I2CMaster.vhd:252:18
  n194_o <= '0' when n193_o = '0' else '1';
  -- I2CMaster.vhd:264:34
  n198_o <= "00000000000000000000000" & timer_reg;  --  uext
  -- I2CMaster.vhd:264:34
  n200_o <= '1' when signed (n198_o) < signed'("00000000000000000000000111110011") else '0';
  -- I2CMaster.vhd:265:48
  n201_o <= "00000000000000000000000" & timer_reg;  --  uext
  -- I2CMaster.vhd:265:48
  n203_o <= std_logic_vector (unsigned (n201_o) + unsigned'("00000000000000000000000000000001"));
  -- I2CMaster.vhd:265:38
  n204_o <= n203_o (8 downto 0);  --  trunc
  -- I2CMaster.vhd:264:21
  n206_o <= "000000000" when n200_o = '0' else n204_o;
  -- I2CMaster.vhd:260:17
  n208_o <= '1' when state_reg = "0010" else '0';
  -- I2CMaster.vhd:260:45
  n210_o <= '1' when state_reg = "0011" else '0';
  -- I2CMaster.vhd:260:45
  n211_o <= n208_o or n210_o;
  -- I2CMaster.vhd:260:63
  n213_o <= '1' when state_reg = "1101" else '0';
  -- I2CMaster.vhd:260:63
  n214_o <= n211_o or n213_o;
  -- I2CMaster.vhd:280:42
  n215_o <= "00000000000000000000000" & timer_reg;  --  uext
  -- I2CMaster.vhd:280:42
  n217_o <= '1' when signed (n215_o) < signed'("00000000000000000000000111110011") else '0';
  -- I2CMaster.vhd:281:56
  n218_o <= "00000000000000000000000" & timer_reg;  --  uext
  -- I2CMaster.vhd:281:56
  n220_o <= std_logic_vector (unsigned (n218_o) + unsigned'("00000000000000000000000000000001"));
  -- I2CMaster.vhd:281:46
  n221_o <= n220_o (8 downto 0);  --  trunc
  -- I2CMaster.vhd:280:29
  n222_o <= timer_reg when n217_o = '0' else n221_o;
  -- I2CMaster.vhd:277:25
  n224_o <= '1' when scl_state_reg = "01" else '0';
  -- I2CMaster.vhd:288:38
  n225_o <= not scl_i;
  -- I2CMaster.vhd:288:57
  n226_o <= "00000000000000000000000" & timer_reg;  --  uext
  -- I2CMaster.vhd:288:57
  n228_o <= '1' when n226_o = "00000000000000000000000111110011" else '0';
  -- I2CMaster.vhd:288:44
  n229_o <= n225_o or n228_o;
  -- I2CMaster.vhd:291:56
  n230_o <= "00000000000000000000000" & timer_reg;  --  uext
  -- I2CMaster.vhd:291:56
  n232_o <= std_logic_vector (unsigned (n230_o) + unsigned'("00000000000000000000000000000001"));
  -- I2CMaster.vhd:291:46
  n233_o <= n232_o (8 downto 0);  --  trunc
  -- I2CMaster.vhd:288:29
  n235_o <= n233_o when n229_o = '0' else "000000000";
  -- I2CMaster.vhd:284:25
  n237_o <= '1' when scl_state_reg = "11" else '0';
  -- I2CMaster.vhd:294:25
  n239_o <= '1' when scl_state_reg = "00" else '0';
  -- I2CMaster.vhd:294:39
  n241_o <= '1' when scl_state_reg = "10" else '0';
  -- I2CMaster.vhd:294:39
  n242_o <= n239_o or n241_o;
  n243_o <= n242_o & n237_o & n224_o;
  -- I2CMaster.vhd:276:21
  with n243_o select n246_o <=
    "000000000" when "100",
    n235_o when "010",
    n222_o when "001",
    (8 downto 0 => 'X') when others;
  -- I2CMaster.vhd:270:17
  n248_o <= '1' when state_reg = "0100" else '0';
  -- I2CMaster.vhd:270:35
  n250_o <= '1' when state_reg = "0101" else '0';
  -- I2CMaster.vhd:270:35
  n251_o <= n248_o or n250_o;
  -- I2CMaster.vhd:270:54
  n253_o <= '1' when state_reg = "0110" else '0';
  -- I2CMaster.vhd:270:54
  n254_o <= n251_o or n253_o;
  -- I2CMaster.vhd:271:47
  n256_o <= '1' when state_reg = "0111" else '0';
  -- I2CMaster.vhd:271:47
  n257_o <= n254_o or n256_o;
  -- I2CMaster.vhd:271:74
  n259_o <= '1' when state_reg = "1000" else '0';
  -- I2CMaster.vhd:271:74
  n260_o <= n257_o or n259_o;
  -- I2CMaster.vhd:272:38
  n262_o <= '1' when state_reg = "1001" else '0';
  -- I2CMaster.vhd:272:38
  n263_o <= n260_o or n262_o;
  -- I2CMaster.vhd:272:60
  n265_o <= '1' when state_reg = "1010" else '0';
  -- I2CMaster.vhd:272:60
  n266_o <= n263_o or n265_o;
  -- I2CMaster.vhd:273:37
  n268_o <= '1' when state_reg = "1011" else '0';
  -- I2CMaster.vhd:273:37
  n269_o <= n266_o or n268_o;
  -- I2CMaster.vhd:273:51
  n271_o <= '1' when state_reg = "1100" else '0';
  -- I2CMaster.vhd:273:51
  n272_o <= n269_o or n271_o;
  n273_o <= n272_o & n214_o;
  -- I2CMaster.vhd:259:13
  with n273_o select n275_o <=
    n246_o when "10",
    n206_o when "01",
    "000000000" when others;
  -- I2CMaster.vhd:258:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n278_q <= n275_o;
    end if;
  end process;
  -- I2CMaster.vhd:322:42
  n282_o <= '1' when state_reg = "0011" else '0';
  -- I2CMaster.vhd:322:74
  n283_o <= "00000000000000000000000" & timer_reg;  --  uext
  -- I2CMaster.vhd:322:74
  n285_o <= '1' when n283_o = "00000000000000000000000111110011" else '0';
  -- I2CMaster.vhd:322:60
  n286_o <= n282_o and n285_o;
  -- I2CMaster.vhd:322:29
  n288_o <= scl_state_reg when n286_o = '0' else "01";
  -- I2CMaster.vhd:319:25
  n290_o <= '1' when scl_state_reg = "00" else '0';
  -- I2CMaster.vhd:328:42
  n291_o <= "00000000000000000000000" & timer_reg;  --  uext
  -- I2CMaster.vhd:328:42
  n293_o <= '1' when n291_o = "00000000000000000000000111110011" else '0';
  -- I2CMaster.vhd:328:29
  n295_o <= scl_state_reg when n293_o = '0' else "10";
  -- I2CMaster.vhd:326:25
  n297_o <= '1' when scl_state_reg = "01" else '0';
  -- I2CMaster.vhd:334:29
  n299_o <= scl_state_reg when scl_i = '0' else "11";
  -- I2CMaster.vhd:332:25
  n301_o <= '1' when scl_state_reg = "10" else '0';
  -- I2CMaster.vhd:342:38
  n302_o <= not scl_i;
  -- I2CMaster.vhd:342:57
  n303_o <= "00000000000000000000000" & timer_reg;  --  uext
  -- I2CMaster.vhd:342:57
  n305_o <= '1' when n303_o = "00000000000000000000000111110011" else '0';
  -- I2CMaster.vhd:342:44
  n306_o <= n302_o or n305_o;
  -- I2CMaster.vhd:342:29
  n308_o <= scl_state_reg when n306_o = '0' else "01";
  -- I2CMaster.vhd:338:25
  n310_o <= '1' when scl_state_reg = "11" else '0';
  n311_o <= n310_o & n301_o & n297_o & n290_o;
  -- I2CMaster.vhd:318:21
  with n311_o select n313_o <=
    n308_o when "1000",
    n299_o when "0100",
    n295_o when "0010",
    n288_o when "0001",
    "XX" when others;
  -- I2CMaster.vhd:311:17
  n315_o <= '1' when state_reg = "0011" else '0';
  -- I2CMaster.vhd:311:38
  n317_o <= '1' when state_reg = "0100" else '0';
  -- I2CMaster.vhd:311:38
  n318_o <= n315_o or n317_o;
  -- I2CMaster.vhd:311:53
  n320_o <= '1' when state_reg = "0101" else '0';
  -- I2CMaster.vhd:311:53
  n321_o <= n318_o or n320_o;
  -- I2CMaster.vhd:311:72
  n323_o <= '1' when state_reg = "0110" else '0';
  -- I2CMaster.vhd:311:72
  n324_o <= n321_o or n323_o;
  -- I2CMaster.vhd:312:47
  n326_o <= '1' when state_reg = "0111" else '0';
  -- I2CMaster.vhd:312:47
  n327_o <= n324_o or n326_o;
  -- I2CMaster.vhd:312:74
  n329_o <= '1' when state_reg = "1000" else '0';
  -- I2CMaster.vhd:312:74
  n330_o <= n327_o or n329_o;
  -- I2CMaster.vhd:313:38
  n332_o <= '1' when state_reg = "1001" else '0';
  -- I2CMaster.vhd:313:38
  n333_o <= n330_o or n332_o;
  -- I2CMaster.vhd:313:60
  n335_o <= '1' when state_reg = "1010" else '0';
  -- I2CMaster.vhd:313:60
  n336_o <= n333_o or n335_o;
  -- I2CMaster.vhd:314:37
  n338_o <= '1' when state_reg = "1011" else '0';
  -- I2CMaster.vhd:314:37
  n339_o <= n336_o or n338_o;
  -- I2CMaster.vhd:314:51
  n341_o <= '1' when state_reg = "1100" else '0';
  -- I2CMaster.vhd:314:51
  n342_o <= n339_o or n341_o;
  -- I2CMaster.vhd:310:13
  with n342_o select n344_o <=
    n313_o when '1',
    "00" when others;
  -- I2CMaster.vhd:309:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n347_q <= n344_o;
    end if;
  end process;
  -- I2CMaster.vhd:356:37
  n350_o <= '1' when scl_state_reg = "01" else '0';
  -- I2CMaster.vhd:356:18
  n351_o <= '1' when n350_o = '0' else '0';
  -- I2CMaster.vhd:361:46
  n355_o <= '1' when scl_state_reg = "01" else '0';
  -- I2CMaster.vhd:361:71
  n356_o <= "00000000000000000000000" & timer_reg;  --  uext
  -- I2CMaster.vhd:361:71
  n358_o <= '1' when n356_o = "00000000000000000000000011111001" else '0';
  -- I2CMaster.vhd:361:57
  n359_o <= n355_o and n358_o;
  -- I2CMaster.vhd:361:27
  n360_o <= '0' when n359_o = '0' else '1';
  -- I2CMaster.vhd:362:46
  n364_o <= '1' when scl_state_reg = "11" else '0';
  -- I2CMaster.vhd:362:71
  n365_o <= "00000000000000000000000" & timer_reg;  --  uext
  -- I2CMaster.vhd:362:71
  n367_o <= '1' when n365_o = "00000000000000000000000011111001" else '0';
  -- I2CMaster.vhd:362:57
  n368_o <= n364_o and n367_o;
  -- I2CMaster.vhd:362:27
  n369_o <= '0' when n368_o = '0' else '1';
  -- I2CMaster.vhd:369:17
  n373_o <= '1' when state_reg = "0011" else '0';
  -- I2CMaster.vhd:369:38
  n375_o <= '1' when state_reg = "0111" else '0';
  -- I2CMaster.vhd:369:38
  n376_o <= n373_o or n375_o;
  -- I2CMaster.vhd:369:65
  n378_o <= '1' when state_reg = "1011" else '0';
  -- I2CMaster.vhd:369:65
  n379_o <= n376_o or n378_o;
  -- I2CMaster.vhd:369:79
  n381_o <= '1' when state_reg = "1100" else '0';
  -- I2CMaster.vhd:369:79
  n382_o <= n379_o or n381_o;
  -- I2CMaster.vhd:369:106
  n384_o <= '1' when state_reg = "1101" else '0';
  -- I2CMaster.vhd:369:106
  n385_o <= n382_o or n384_o;
  -- I2CMaster.vhd:370:23
  n386_o <= buffer_reg (39);
  -- I2CMaster.vhd:370:40
  n388_o <= '1' when state_reg = "0100" else '0';
  -- I2CMaster.vhd:370:58
  n390_o <= '1' when state_reg = "1000" else '0';
  -- I2CMaster.vhd:370:58
  n391_o <= n388_o or n390_o;
  n393_o <= n391_o & n385_o;
  -- I2CMaster.vhd:367:5
  with n393_o select n394_o <=
    n386_o when "10",
    '0' when "01",
    '1' when others;
  -- I2CMaster.vhd:376:49
  n396_o <= '1' when sda_i /= sda_o else '0';
  -- I2CMaster.vhd:376:39
  n397_o <= scl_i and n396_o;
  -- I2CMaster.vhd:376:22
  n398_o <= '0' when n397_o = '0' else '1';
  -- I2CMaster.vhd:390:41
  n403_o <= "00000000000000000000000000000" & send_len_reg;  --  uext
  -- I2CMaster.vhd:390:41
  n405_o <= '1' when n403_o = "00000000000000000000000000000000" else '0';
  -- I2CMaster.vhd:390:25
  n408_o <= '0' when n405_o = '0' else '1';
  -- I2CMaster.vhd:395:57
  n409_o <= slave_address_reg & n408_o;
  -- I2CMaster.vhd:395:62
  n410_o <= n409_o & wrap_wdata_i;
  -- I2CMaster.vhd:389:21
  n411_o <= buffer_reg when start = '0' else n410_o;
  -- I2CMaster.vhd:385:17
  n414_o <= '1' when state_reg = "0000" else '0';
  -- I2CMaster.vhd:401:91
  n416_o <= slave_address_reg & '1';
  -- I2CMaster.vhd:398:17
  n418_o <= '1' when state_reg = "0111" else '0';
  -- I2CMaster.vhd:407:49
  n419_o <= buffer_reg (38 downto 0);
  -- I2CMaster.vhd:407:75
  n421_o <= n419_o & '0';
  -- I2CMaster.vhd:406:21
  n422_o <= buffer_reg when scl_low_pulse = '0' else n421_o;
  -- I2CMaster.vhd:403:17
  n424_o <= '1' when state_reg = "0100" else '0';
  -- I2CMaster.vhd:403:35
  n426_o <= '1' when state_reg = "1000" else '0';
  -- I2CMaster.vhd:403:35
  n427_o <= n424_o or n426_o;
  -- I2CMaster.vhd:415:49
  n428_o <= buffer_reg (38 downto 0);
  -- I2CMaster.vhd:415:75
  n429_o <= n428_o & sda_i;
  -- I2CMaster.vhd:414:21
  n430_o <= buffer_reg when scl_high_pulse = '0' else n429_o;
  -- I2CMaster.vhd:410:17
  n432_o <= '1' when state_reg = "1010" else '0';
  n433_o <= n432_o & n427_o & n418_o & n414_o;
  n434_o <= n411_o (31 downto 0);
  n435_o <= n422_o (31 downto 0);
  n436_o <= n430_o (31 downto 0);
  n437_o <= buffer_reg (31 downto 0);
  -- I2CMaster.vhd:384:13
  with n433_o select n438_o <=
    n436_o when "1000",
    n435_o when "0100",
    n437_o when "0010",
    n434_o when "0001",
    n437_o when others;
  n439_o <= n411_o (39 downto 32);
  n440_o <= n422_o (39 downto 32);
  n441_o <= n430_o (39 downto 32);
  n442_o <= buffer_reg (39 downto 32);
  -- I2CMaster.vhd:384:13
  with n433_o select n443_o <=
    n441_o when "1000",
    n440_o when "0100",
    n416_o when "0010",
    n439_o when "0001",
    n442_o when others;
  n445_o <= n443_o & n438_o;
  -- I2CMaster.vhd:383:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n449_q <= n445_o;
    end if;
  end process;
  -- I2CMaster.vhd:428:17
  n454_o <= '1' when state_reg = "0000" else '0';
  -- I2CMaster.vhd:436:42
  n455_o <= "00000000000000000000000000000" & bit_index_reg;  --  uext
  -- I2CMaster.vhd:436:42
  n457_o <= '1' when n455_o /= "00000000000000000000000000000111" else '0';
  -- I2CMaster.vhd:437:60
  n458_o <= "00000000000000000000000000000" & bit_index_reg;  --  uext
  -- I2CMaster.vhd:437:60
  n460_o <= std_logic_vector (unsigned (n458_o) + unsigned'("00000000000000000000000000000001"));
  -- I2CMaster.vhd:437:46
  n461_o <= n460_o (2 downto 0);  --  trunc
  -- I2CMaster.vhd:436:25
  n463_o <= "000" when n457_o = '0' else n461_o;
  -- I2CMaster.vhd:435:21
  n464_o <= bit_index_reg when scl_low_pulse = '0' else n463_o;
  -- I2CMaster.vhd:432:17
  n466_o <= '1' when state_reg = "0100" else '0';
  -- I2CMaster.vhd:432:35
  n468_o <= '1' when state_reg = "1000" else '0';
  -- I2CMaster.vhd:432:35
  n469_o <= n466_o or n468_o;
  -- I2CMaster.vhd:432:53
  n471_o <= '1' when state_reg = "1010" else '0';
  -- I2CMaster.vhd:432:53
  n472_o <= n469_o or n471_o;
  -- I2CMaster.vhd:446:63
  n473_o <= "000000000000000000000000000000" & byte_index_reg;  --  uext
  -- I2CMaster.vhd:446:63
  n474_o <= "00000000000000000000000000000" & send_len_reg;  --  uext
  -- I2CMaster.vhd:446:63
  n475_o <= '1' when n473_o /= n474_o else '0';
  -- I2CMaster.vhd:446:44
  n476_o <= scl_low_pulse and n475_o;
  -- I2CMaster.vhd:447:58
  n477_o <= "000000000000000000000000000000" & byte_index_reg;  --  uext
  -- I2CMaster.vhd:447:58
  n479_o <= std_logic_vector (unsigned (n477_o) + unsigned'("00000000000000000000000000000001"));
  -- I2CMaster.vhd:447:43
  n480_o <= n479_o (1 downto 0);  --  trunc
  -- I2CMaster.vhd:446:21
  n481_o <= byte_index_reg when n476_o = '0' else n480_o;
  -- I2CMaster.vhd:443:17
  n483_o <= '1' when state_reg = "0101" else '0';
  -- I2CMaster.vhd:443:39
  n485_o <= '1' when state_reg = "1001" else '0';
  -- I2CMaster.vhd:443:39
  n486_o <= n483_o or n485_o;
  -- I2CMaster.vhd:450:17
  n488_o <= '1' when state_reg = "0110" else '0';
  -- I2CMaster.vhd:457:63
  n489_o <= "000000000000000000000000000000" & byte_index_reg;  --  uext
  -- I2CMaster.vhd:457:63
  n490_o <= "00000000000000000000000000000" & recv_len_reg;  --  uext
  -- I2CMaster.vhd:457:63
  n491_o <= '1' when n489_o /= n490_o else '0';
  -- I2CMaster.vhd:457:44
  n492_o <= scl_low_pulse and n491_o;
  -- I2CMaster.vhd:458:58
  n493_o <= "000000000000000000000000000000" & byte_index_reg;  --  uext
  -- I2CMaster.vhd:458:58
  n495_o <= std_logic_vector (unsigned (n493_o) + unsigned'("00000000000000000000000000000001"));
  -- I2CMaster.vhd:458:43
  n496_o <= n495_o (1 downto 0);  --  trunc
  -- I2CMaster.vhd:457:21
  n497_o <= byte_index_reg when n492_o = '0' else n496_o;
  -- I2CMaster.vhd:454:17
  n499_o <= '1' when state_reg = "1011" else '0';
  n500_o <= n499_o & n488_o & n486_o & n472_o & n454_o;
  -- I2CMaster.vhd:427:13
  with n500_o select n502_o <=
    bit_index_reg when "10000",
    bit_index_reg when "01000",
    bit_index_reg when "00100",
    n464_o when "00010",
    "000" when "00001",
    bit_index_reg when others;
  -- I2CMaster.vhd:427:13
  with n500_o select n505_o <=
    n497_o when "10000",
    "00" when "01000",
    n481_o when "00100",
    byte_index_reg when "00010",
    "00" when "00001",
    byte_index_reg when others;
  -- I2CMaster.vhd:426:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n509_q <= n502_o;
    end if;
  end process;
  -- I2CMaster.vhd:426:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n510_q <= n505_o;
    end if;
  end process;
end rtl;
