library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.virgule_pkg.all;
entity SPIMaster is
  port (
    clk_i: in std_logic;
    reset_i: in std_logic;
    valid_i: in std_logic;
    ready_o: out std_logic;
    address_i: in std_logic_vector (1 downto 0);
    rdata_o: out byte_t;
    wdata_i: in byte_t;
    write_i: in std_logic;
    evt_o: out std_logic;
    miso_i: in std_logic;
    mosi_o: out std_logic;
    sclk_o: out std_logic;
    cs_n_o: out std_logic
  );
end SPIMaster;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

architecture rtl of spimaster is
  signal wrap_clk_i: std_logic;
  signal wrap_reset_i: std_logic;
  signal wrap_valid_i: std_logic;
  subtype typwrap_address_i is std_logic_vector (1 downto 0);
  signal wrap_address_i: typwrap_address_i;
  subtype typwrap_wdata_i is std_logic_vector (7 downto 0);
  signal wrap_wdata_i: typwrap_wdata_i;
  signal wrap_write_i: std_logic;
  signal wrap_miso_i: std_logic;
  signal wrap_ready_o: std_logic;
  subtype typwrap_rdata_o is std_logic_vector (7 downto 0);
  signal wrap_rdata_o: typwrap_rdata_o;
  signal wrap_evt_o: std_logic;
  signal wrap_mosi_o: std_logic;
  signal wrap_sclk_o: std_logic;
  signal wrap_cs_n_o: std_logic;
  signal start : std_logic;
  signal busy_reg : std_logic;
  signal polarity_reg : std_logic;
  signal phase_reg : std_logic;
  signal cs_reg : std_logic;
  signal timer_max_reg : std_logic_vector (7 downto 0);
  signal timer_reg : std_logic_vector (7 downto 0);
  signal bit_index_reg : std_logic_vector (2 downto 0);
  signal data_reg : std_logic_vector (7 downto 0);
  signal sclk_half : std_logic;
  signal sclk_cycle : std_logic;
  signal sclk_reg : std_logic;
  signal n13_o : std_logic;
  signal n15_o : std_logic;
  signal n16_o : std_logic;
  signal n17_o : std_logic;
  signal n18_o : std_logic;
  signal n20_o : std_logic;
  signal n23_o : std_logic;
  signal n24_o : std_logic_vector (2 downto 0);
  signal n25_o : std_logic;
  signal n26_o : std_logic;
  signal n27_o : std_logic;
  signal n28_o : std_logic_vector (7 downto 0);
  signal n29_o : std_logic_vector (7 downto 0);
  signal n30_o : std_logic;
  signal n31_o : std_logic;
  signal n32_o : std_logic;
  signal n33_o : std_logic;
  signal n34_o : std_logic_vector (6 downto 0);
  signal n35_o : std_logic_vector (7 downto 0);
  signal n36_o : std_logic_vector (7 downto 0);
  signal n37_o : std_logic;
  signal n38_o : std_logic;
  signal n39_o : std_logic;
  signal n40_o : std_logic_vector (7 downto 0);
  signal n41_o : std_logic_vector (7 downto 0);
  signal n43_o : std_logic;
  signal n45_o : std_logic;
  signal n47_o : std_logic;
  signal n49_o : std_logic_vector (7 downto 0);
  signal n50_o : std_logic_vector (7 downto 0);
  signal n57_q : std_logic := '0';
  signal n58_q : std_logic := '0';
  signal n59_q : std_logic := '0';
  signal n60_q : std_logic_vector (7 downto 0);
  signal n61_q : std_logic_vector (7 downto 0);
  signal n63_o : std_logic;
  signal n65_o : std_logic_vector (5 downto 0);
  signal n66_o : std_logic_vector (6 downto 0);
  signal n67_o : std_logic_vector (7 downto 0);
  signal n69_o : std_logic;
  signal n72_o : std_logic;
  signal n74_o : std_logic_vector (2 downto 0);
  signal n75_o : std_logic_vector (7 downto 0);
  signal n76_o : std_logic;
  signal n78_o : std_logic;
  signal n79_o : std_logic;
  signal n83_o : std_logic_vector (31 downto 0);
  signal n85_o : std_logic;
  signal n86_o : std_logic;
  signal n88_o : std_logic;
  signal n90_o : std_logic;
  signal n92_o : std_logic;
  signal n95_q : std_logic := '0';
  signal n98_o : std_logic_vector (31 downto 0);
  signal n100_o : std_logic;
  signal n102_o : std_logic;
  signal n104_o : std_logic;
  signal n107_q : std_logic;
  signal n110_o : std_logic_vector (31 downto 0);
  signal n112_o : std_logic_vector (31 downto 0);
  signal n113_o : std_logic_vector (7 downto 0);
  signal n115_o : std_logic_vector (7 downto 0);
  signal n116_o : std_logic_vector (7 downto 0);
  signal n118_o : std_logic_vector (7 downto 0);
  signal n121_q : std_logic_vector (7 downto 0);
  signal n124_o : std_logic_vector (31 downto 0);
  signal n126_o : std_logic;
  signal n127_o : std_logic_vector (31 downto 0);
  signal n129_o : std_logic_vector (31 downto 0);
  signal n130_o : std_logic_vector (2 downto 0);
  signal n132_o : std_logic_vector (2 downto 0);
  signal n133_o : std_logic_vector (2 downto 0);
  signal n135_o : std_logic_vector (2 downto 0);
  signal n138_q : std_logic_vector (2 downto 0);
  signal n140_o : std_logic_vector (31 downto 0);
  signal n141_o : std_logic_vector (31 downto 0);
  signal n143_o : std_logic_vector (31 downto 0);
  signal n144_o : std_logic;
  signal n145_o : std_logic;
  signal n148_o : std_logic_vector (31 downto 0);
  signal n149_o : std_logic_vector (31 downto 0);
  signal n150_o : std_logic;
  signal n151_o : std_logic;
  signal n155_o : std_logic;
  signal n156_o : std_logic;
  signal n157_o : std_logic;
  signal n158_o : std_logic;
  signal n159_o : std_logic;
  signal n160_o : std_logic;
  signal n163_q : std_logic := '0';
  signal n166_o : std_logic;
  signal n167_o : std_logic;
  signal n168_o : std_logic;
  signal n169_o : std_logic;
  signal n170_o : std_logic;
  signal n171_o : std_logic;
  signal n172_o : std_logic;
  signal n173_o : std_logic;
  signal n174_o : std_logic;
  signal n175_o : std_logic;
  signal n178_q : std_logic;
  signal n179_o : std_logic;
begin
  wrap_clk_i <= clk_i;
  wrap_reset_i <= reset_i;
  wrap_valid_i <= valid_i;
  wrap_address_i <= address_i;
  wrap_wdata_i <= wdata_i;
  wrap_write_i <= write_i;
  wrap_miso_i <= miso_i;
  ready_o <= wrap_ready_o;
  rdata_o <= wrap_rdata_o;
  evt_o <= wrap_evt_o;
  mosi_o <= wrap_mosi_o;
  sclk_o <= wrap_sclk_o;
  cs_n_o <= wrap_cs_n_o;
  wrap_ready_o <= wrap_valid_i;
  wrap_rdata_o <= n75_o;
  wrap_evt_o <= n107_q;
  wrap_mosi_o <= n178_q;
  wrap_sclk_o <= sclk_reg;
  wrap_cs_n_o <= n179_o;
  -- SPIMaster.vhd:34:12
  start <= n79_o; -- (signal)
  -- SPIMaster.vhd:35:12
  busy_reg <= n95_q; -- (isignal)
  -- SPIMaster.vhd:37:12
  polarity_reg <= n57_q; -- (isignal)
  -- SPIMaster.vhd:38:12
  phase_reg <= n58_q; -- (isignal)
  -- SPIMaster.vhd:39:12
  cs_reg <= n59_q; -- (isignal)
  -- SPIMaster.vhd:40:12
  timer_max_reg <= n60_q; -- (signal)
  -- SPIMaster.vhd:41:12
  timer_reg <= n121_q; -- (signal)
  -- SPIMaster.vhd:42:12
  bit_index_reg <= n138_q; -- (signal)
  -- SPIMaster.vhd:43:12
  data_reg <= n61_q; -- (signal)
  -- SPIMaster.vhd:45:12
  sclk_half <= n145_o; -- (signal)
  -- SPIMaster.vhd:46:12
  sclk_cycle <= n151_o; -- (signal)
  -- SPIMaster.vhd:47:12
  sclk_reg <= n163_q; -- (isignal)
  -- SPIMaster.vhd:57:33
  n13_o <= wrap_valid_i and wrap_write_i;
  -- SPIMaster.vhd:59:21
  n15_o <= '1' when wrap_address_i = "00" else '0';
  -- SPIMaster.vhd:60:58
  n16_o <= wrap_wdata_i (2);
  -- SPIMaster.vhd:61:58
  n17_o <= wrap_wdata_i (1);
  -- SPIMaster.vhd:62:58
  n18_o <= wrap_wdata_i (0);
  -- SPIMaster.vhd:60:21
  n20_o <= '1' when wrap_address_i = "01" else '0';
  -- SPIMaster.vhd:63:21
  n23_o <= '1' when wrap_address_i = "10" else '0';
  n24_o <= n23_o & n20_o & n15_o;
  -- SPIMaster.vhd:58:17
  with n24_o select n25_o <=
    polarity_reg when "100",
    n16_o when "010",
    polarity_reg when "001",
    polarity_reg when others;
  -- SPIMaster.vhd:58:17
  with n24_o select n26_o <=
    phase_reg when "100",
    n17_o when "010",
    phase_reg when "001",
    phase_reg when others;
  -- SPIMaster.vhd:58:17
  with n24_o select n27_o <=
    cs_reg when "100",
    n18_o when "010",
    cs_reg when "001",
    cs_reg when others;
  -- SPIMaster.vhd:58:17
  with n24_o select n28_o <=
    wrap_wdata_i when "100",
    timer_max_reg when "010",
    timer_max_reg when "001",
    timer_max_reg when others;
  -- SPIMaster.vhd:58:17
  with n24_o select n29_o <=
    data_reg when "100",
    data_reg when "010",
    wrap_wdata_i when "001",
    data_reg when others;
  -- SPIMaster.vhd:66:50
  n30_o <= not phase_reg;
  -- SPIMaster.vhd:66:36
  n31_o <= sclk_half and n30_o;
  -- SPIMaster.vhd:66:78
  n32_o <= sclk_cycle and phase_reg;
  -- SPIMaster.vhd:66:57
  n33_o <= n31_o or n32_o;
  -- SPIMaster.vhd:67:37
  n34_o <= data_reg (6 downto 0);
  -- SPIMaster.vhd:67:50
  n35_o <= n34_o & wrap_miso_i;
  -- SPIMaster.vhd:66:13
  n36_o <= data_reg when n33_o = '0' else n35_o;
  -- SPIMaster.vhd:57:13
  n37_o <= polarity_reg when n13_o = '0' else n25_o;
  -- SPIMaster.vhd:57:13
  n38_o <= phase_reg when n13_o = '0' else n26_o;
  -- SPIMaster.vhd:57:13
  n39_o <= cs_reg when n13_o = '0' else n27_o;
  -- SPIMaster.vhd:57:13
  n40_o <= timer_max_reg when n13_o = '0' else n28_o;
  -- SPIMaster.vhd:57:13
  n41_o <= n36_o when n13_o = '0' else n29_o;
  -- SPIMaster.vhd:52:13
  n43_o <= n37_o when wrap_reset_i = '0' else '0';
  -- SPIMaster.vhd:52:13
  n45_o <= n38_o when wrap_reset_i = '0' else '0';
  -- SPIMaster.vhd:52:13
  n47_o <= n39_o when wrap_reset_i = '0' else '0';
  -- SPIMaster.vhd:52:13
  n49_o <= n40_o when wrap_reset_i = '0' else "11111111";
  -- SPIMaster.vhd:52:13
  n50_o <= n41_o when wrap_reset_i = '0' else data_reg;
  -- SPIMaster.vhd:51:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n57_q <= n43_o;
    end if;
  end process;
  -- SPIMaster.vhd:51:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n58_q <= n45_o;
    end if;
  end process;
  -- SPIMaster.vhd:51:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n59_q <= n47_o;
    end if;
  end process;
  -- SPIMaster.vhd:51:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n60_q <= n49_o;
    end if;
  end process;
  -- SPIMaster.vhd:51:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n61_q <= n50_o;
    end if;
  end process;
  -- SPIMaster.vhd:73:68
  n63_o <= '1' when wrap_address_i = "00" else '0';
  -- SPIMaster.vhd:74:28
  n65_o <= "00000" & polarity_reg;
  -- SPIMaster.vhd:74:43
  n66_o <= n65_o & phase_reg;
  -- SPIMaster.vhd:74:55
  n67_o <= n66_o & cs_reg;
  -- SPIMaster.vhd:74:68
  n69_o <= '1' when wrap_address_i = "01" else '0';
  -- SPIMaster.vhd:75:68
  n72_o <= '1' when wrap_address_i = "10" else '0';
  n74_o <= n72_o & n69_o & n63_o;
  -- SPIMaster.vhd:72:5
  with n74_o select n75_o <=
    timer_max_reg when "100",
    n67_o when "010",
    data_reg when "001",
    "00000000" when others;
  -- SPIMaster.vhd:79:24
  n76_o <= wrap_valid_i and wrap_write_i;
  -- SPIMaster.vhd:79:51
  n78_o <= '1' when wrap_address_i = "00" else '0';
  -- SPIMaster.vhd:79:36
  n79_o <= '0' when n78_o = '0' else n76_o;
  -- SPIMaster.vhd:88:54
  n83_o <= "00000000000000000000000000000" & bit_index_reg;  --  uext
  -- SPIMaster.vhd:88:54
  n85_o <= '1' when n83_o = "00000000000000000000000000000111" else '0';
  -- SPIMaster.vhd:88:36
  n86_o <= sclk_cycle and n85_o;
  -- SPIMaster.vhd:88:13
  n88_o <= busy_reg when n86_o = '0' else '0';
  -- SPIMaster.vhd:86:13
  n90_o <= n88_o when start = '0' else '1';
  -- SPIMaster.vhd:84:13
  n92_o <= n90_o when wrap_reset_i = '0' else '0';
  -- SPIMaster.vhd:83:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n95_q <= n92_o;
    end if;
  end process;
  -- SPIMaster.vhd:99:33
  n98_o <= "00000000000000000000000000000" & bit_index_reg;  --  uext
  -- SPIMaster.vhd:99:33
  n100_o <= '1' when n98_o = "00000000000000000000000000000111" else '0';
  -- SPIMaster.vhd:99:13
  n102_o <= '0' when n100_o = '0' else sclk_cycle;
  -- SPIMaster.vhd:97:13
  n104_o <= n102_o when wrap_reset_i = '0' else '0';
  -- SPIMaster.vhd:96:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n107_q <= n104_o;
    end if;
  end process;
  -- SPIMaster.vhd:116:44
  n110_o <= "000000000000000000000000" & timer_reg;  --  uext
  -- SPIMaster.vhd:116:44
  n112_o <= std_logic_vector (unsigned (n110_o) + unsigned'("00000000000000000000000000000001"));
  -- SPIMaster.vhd:116:34
  n113_o <= n112_o (7 downto 0);  --  trunc
  -- SPIMaster.vhd:113:17
  n115_o <= n113_o when sclk_cycle = '0' else "00000000";
  -- SPIMaster.vhd:112:13
  n116_o <= timer_reg when busy_reg = '0' else n115_o;
  -- SPIMaster.vhd:110:13
  n118_o <= n116_o when wrap_reset_i = '0' else "00000000";
  -- SPIMaster.vhd:109:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n121_q <= n118_o;
    end if;
  end process;
  -- SPIMaster.vhd:128:34
  n124_o <= "00000000000000000000000000000" & bit_index_reg;  --  uext
  -- SPIMaster.vhd:128:34
  n126_o <= '1' when n124_o = "00000000000000000000000000000111" else '0';
  -- SPIMaster.vhd:131:52
  n127_o <= "00000000000000000000000000000" & bit_index_reg;  --  uext
  -- SPIMaster.vhd:131:52
  n129_o <= std_logic_vector (unsigned (n127_o) + unsigned'("00000000000000000000000000000001"));
  -- SPIMaster.vhd:131:38
  n130_o <= n129_o (2 downto 0);  --  trunc
  -- SPIMaster.vhd:128:17
  n132_o <= n130_o when n126_o = '0' else "000";
  -- SPIMaster.vhd:127:13
  n133_o <= bit_index_reg when sclk_cycle = '0' else n132_o;
  -- SPIMaster.vhd:125:13
  n135_o <= n133_o when wrap_reset_i = '0' else "000";
  -- SPIMaster.vhd:124:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n138_q <= n135_o;
    end if;
  end process;
  -- SPIMaster.vhd:137:38
  n140_o <= "000000000000000000000000" & timer_reg;  --  uext
  -- SPIMaster.vhd:137:54
  n141_o <= "000000000000000000000000" & timer_max_reg;  --  uext
  -- SPIMaster.vhd:137:54
  n143_o <= std_logic_vector (signed (n141_o) / signed'("00000000000000000000000000000010"));
  -- SPIMaster.vhd:137:38
  n144_o <= '1' when n140_o = n143_o else '0';
  -- SPIMaster.vhd:137:23
  n145_o <= '0' when n144_o = '0' else '1';
  -- SPIMaster.vhd:138:38
  n148_o <= "000000000000000000000000" & timer_reg;  --  uext
  -- SPIMaster.vhd:138:38
  n149_o <= "000000000000000000000000" & timer_max_reg;  --  uext
  -- SPIMaster.vhd:138:38
  n150_o <= '1' when n148_o = n149_o else '0';
  -- SPIMaster.vhd:138:23
  n151_o <= '0' when n150_o = '0' else '1';
  -- SPIMaster.vhd:143:42
  n155_o <= not busy_reg;
  -- SPIMaster.vhd:143:30
  n156_o <= wrap_reset_i or n155_o;
  -- SPIMaster.vhd:145:35
  n157_o <= sclk_half or sclk_cycle;
  -- SPIMaster.vhd:146:29
  n158_o <= not sclk_reg;
  -- SPIMaster.vhd:145:13
  n159_o <= sclk_reg when n157_o = '0' else n158_o;
  -- SPIMaster.vhd:143:13
  n160_o <= n159_o when n156_o = '0' else polarity_reg;
  -- SPIMaster.vhd:142:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n163_q <= n160_o;
    end if;
  end process;
  -- SPIMaster.vhd:154:42
  n166_o <= not phase_reg;
  -- SPIMaster.vhd:154:28
  n167_o <= start and n166_o;
  -- SPIMaster.vhd:155:34
  n168_o <= wrap_wdata_i (7);
  -- SPIMaster.vhd:156:51
  n169_o <= not phase_reg;
  -- SPIMaster.vhd:156:37
  n170_o <= sclk_cycle and n169_o;
  -- SPIMaster.vhd:156:78
  n171_o <= sclk_half and phase_reg;
  -- SPIMaster.vhd:156:58
  n172_o <= n170_o or n171_o;
  -- SPIMaster.vhd:157:35
  n173_o <= data_reg (7);
  -- SPIMaster.vhd:156:13
  n174_o <= n178_q when n172_o = '0' else n173_o;
  -- SPIMaster.vhd:154:13
  n175_o <= n174_o when n167_o = '0' else n168_o;
  -- SPIMaster.vhd:153:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n178_q <= n175_o;
    end if;
  end process;
  -- SPIMaster.vhd:162:16
  n179_o <= not cs_reg;
end rtl;
