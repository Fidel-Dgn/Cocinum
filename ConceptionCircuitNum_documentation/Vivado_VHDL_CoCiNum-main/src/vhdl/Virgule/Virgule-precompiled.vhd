library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.virgule_pkg.all;
entity Virgule is
  port (
    clk_i: in std_logic;
    reset_i: in std_logic;
    valid_o: out std_logic;
    ready_i: in std_logic;
    address_o: out word_t;
    write_o: out std_logic_vector (3 downto 0);
    rdata_i: in word_t;
    wdata_o: out word_t;
    irq_i: in std_logic
  );
end Virgule;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vloadstoreunit is
  port (
    funct3_i : in std_logic_vector (2 downto 0);
    address_i : in std_logic_vector (31 downto 0);
    store_enable_i : in std_logic;
    store_data_i : in std_logic_vector (31 downto 0);
    rdata_i : in std_logic_vector (31 downto 0);
    load_data_o : out std_logic_vector (31 downto 0);
    wdata_o : out std_logic_vector (31 downto 0);
    write_o : out std_logic_vector (3 downto 0));
end entity vloadstoreunit;

architecture rtl of vloadstoreunit is
  signal align : std_logic_vector (1 downto 0);
  signal aligned_data : std_logic_vector (31 downto 0);
  signal size : std_logic_vector (2 downto 0);
  signal n931_o : std_logic_vector (7 downto 0);
  signal n932_o : std_logic_vector (15 downto 0);
  signal n934_o : std_logic_vector (1 downto 0);
  signal n940_o : std_logic_vector (31 downto 0);
  signal n942_o : std_logic_vector (31 downto 0);
  signal n943_o : std_logic_vector (30 downto 0);
  signal n944_o : std_logic_vector (31 downto 0);
  signal n947_o : std_logic;
  signal n949_o : std_logic;
  signal n950_o : std_logic;
  signal n953_o : std_logic;
  signal n955_o : std_logic;
  signal n956_o : std_logic;
  signal n959_o : std_logic;
  signal n961_o : std_logic_vector (2 downto 0);
  signal n962_o : std_logic_vector (2 downto 0);
  signal n964_o : std_logic_vector (31 downto 0);
  signal n966_o : std_logic;
  signal n967_o : std_logic;
  signal n968_o : std_logic_vector (31 downto 0);
  signal n969_o : std_logic_vector (31 downto 0);
  signal n970_o : std_logic_vector (31 downto 0);
  signal n972_o : std_logic;
  signal n973_o : std_logic;
  signal n974_o : std_logic;
  signal n977_o : std_logic_vector (31 downto 0);
  signal n979_o : std_logic;
  signal n980_o : std_logic;
  signal n981_o : std_logic_vector (31 downto 0);
  signal n982_o : std_logic_vector (31 downto 0);
  signal n983_o : std_logic_vector (31 downto 0);
  signal n985_o : std_logic;
  signal n986_o : std_logic;
  signal n987_o : std_logic;
  signal n990_o : std_logic_vector (31 downto 0);
  signal n992_o : std_logic;
  signal n993_o : std_logic;
  signal n994_o : std_logic_vector (31 downto 0);
  signal n995_o : std_logic_vector (31 downto 0);
  signal n996_o : std_logic_vector (31 downto 0);
  signal n998_o : std_logic;
  signal n999_o : std_logic;
  signal n1000_o : std_logic;
  signal n1003_o : std_logic_vector (31 downto 0);
  signal n1005_o : std_logic;
  signal n1006_o : std_logic;
  signal n1007_o : std_logic_vector (31 downto 0);
  signal n1008_o : std_logic_vector (31 downto 0);
  signal n1009_o : std_logic_vector (31 downto 0);
  signal n1011_o : std_logic;
  signal n1012_o : std_logic;
  signal n1013_o : std_logic;
  signal n1015_o : std_logic_vector (15 downto 0);
  signal n1016_o : std_logic_vector (23 downto 0);
  signal n1017_o : std_logic_vector (31 downto 0);
  signal n1019_o : std_logic;
  signal n1020_o : std_logic_vector (31 downto 0);
  signal n1022_o : std_logic;
  signal n1023_o : std_logic_vector (1 downto 0);
  signal n1024_o : std_logic_vector (31 downto 0);
  signal n1030_o : std_logic_vector (7 downto 0);
  signal n1031_o : std_logic_vector (31 downto 0);
  signal n1033_o : std_logic;
  signal n1039_o : std_logic_vector (15 downto 0);
  signal n1040_o : std_logic_vector (31 downto 0);
  signal n1042_o : std_logic;
  signal n1048_o : std_logic_vector (7 downto 0);
  signal n1049_o : std_logic_vector (31 downto 0);
  signal n1051_o : std_logic;
  signal n1057_o : std_logic_vector (15 downto 0);
  signal n1058_o : std_logic_vector (31 downto 0);
  signal n1060_o : std_logic;
  signal n1061_o : std_logic_vector (3 downto 0);
  signal n1062_o : std_logic_vector (31 downto 0);
  signal n1063_o : std_logic_vector (3 downto 0);
begin
  load_data_o <= n1062_o;
  wdata_o <= n1024_o;
  write_o <= n1063_o;
  -- VLoadStoreUnit.vhd:23:12
  align <= n934_o; -- (signal)
  -- VLoadStoreUnit.vhd:24:12
  aligned_data <= n944_o; -- (signal)
  -- VLoadStoreUnit.vhd:25:12
  size <= n962_o; -- (signal)
  n931_o <= store_data_i (7 downto 0);
  n932_o <= store_data_i (15 downto 0);
  -- VLoadStoreUnit.vhd:32:41
  n934_o <= address_i (1 downto 0);
  -- VLoadStoreUnit.vhd:33:65
  n940_o <= "000000000000000000000000000000" & align;  --  uext
  -- VLoadStoreUnit.vhd:33:65
  n942_o <= std_logic_vector (resize (signed (n940_o & "000"), 32));
  -- VLoadStoreUnit.vhd:33:59
  n943_o <= n942_o (30 downto 0);  --  trunc
  -- VLoadStoreUnit.vhd:33:28
  n944_o <= std_logic_vector (shift_right (unsigned (rdata_i), to_integer(unsigned (n943_o))));
  -- VLoadStoreUnit.vhd:36:19
  n947_o <= '1' when funct3_i = "000" else '0';
  -- VLoadStoreUnit.vhd:36:33
  n949_o <= '1' when funct3_i = "100" else '0';
  -- VLoadStoreUnit.vhd:36:33
  n950_o <= n947_o or n949_o;
  -- VLoadStoreUnit.vhd:37:19
  n953_o <= '1' when funct3_i = "001" else '0';
  -- VLoadStoreUnit.vhd:37:33
  n955_o <= '1' when funct3_i = "101" else '0';
  -- VLoadStoreUnit.vhd:37:33
  n956_o <= n953_o or n955_o;
  -- VLoadStoreUnit.vhd:38:19
  n959_o <= '1' when funct3_i = "010" else '0';
  n961_o <= n959_o & n956_o & n950_o;
  -- VLoadStoreUnit.vhd:35:5
  with n961_o select n962_o <=
    "100" when "100",
    "010" when "010",
    "001" when "001",
    "000" when others;
  -- VLoadStoreUnit.vhd:42:53
  n964_o <= "000000000000000000000000000000" & align;  --  uext
  -- VLoadStoreUnit.vhd:42:53
  n966_o <= '1' when signed'("00000000000000000000000000000011") >= signed (n964_o) else '0';
  -- VLoadStoreUnit.vhd:42:47
  n967_o <= store_enable_i and n966_o;
  -- VLoadStoreUnit.vhd:42:76
  n968_o <= "000000000000000000000000000000" & align;  --  uext
  -- VLoadStoreUnit.vhd:42:76
  n969_o <= "00000000000000000000000000000" & size;  --  uext
  -- VLoadStoreUnit.vhd:42:76
  n970_o <= std_logic_vector (unsigned (n968_o) + unsigned (n969_o));
  -- VLoadStoreUnit.vhd:42:68
  n972_o <= '1' when signed'("00000000000000000000000000000011") < signed (n970_o) else '0';
  -- VLoadStoreUnit.vhd:42:62
  n973_o <= n967_o and n972_o;
  -- VLoadStoreUnit.vhd:42:27
  n974_o <= '0' when n973_o = '0' else '1';
  -- VLoadStoreUnit.vhd:42:53
  n977_o <= "000000000000000000000000000000" & align;  --  uext
  -- VLoadStoreUnit.vhd:42:53
  n979_o <= '1' when signed'("00000000000000000000000000000010") >= signed (n977_o) else '0';
  -- VLoadStoreUnit.vhd:42:47
  n980_o <= store_enable_i and n979_o;
  -- VLoadStoreUnit.vhd:42:76
  n981_o <= "000000000000000000000000000000" & align;  --  uext
  -- VLoadStoreUnit.vhd:42:76
  n982_o <= "00000000000000000000000000000" & size;  --  uext
  -- VLoadStoreUnit.vhd:42:76
  n983_o <= std_logic_vector (unsigned (n981_o) + unsigned (n982_o));
  -- VLoadStoreUnit.vhd:42:68
  n985_o <= '1' when signed'("00000000000000000000000000000010") < signed (n983_o) else '0';
  -- VLoadStoreUnit.vhd:42:62
  n986_o <= n980_o and n985_o;
  -- VLoadStoreUnit.vhd:42:27
  n987_o <= '0' when n986_o = '0' else '1';
  -- VLoadStoreUnit.vhd:42:53
  n990_o <= "000000000000000000000000000000" & align;  --  uext
  -- VLoadStoreUnit.vhd:42:53
  n992_o <= '1' when signed'("00000000000000000000000000000001") >= signed (n990_o) else '0';
  -- VLoadStoreUnit.vhd:42:47
  n993_o <= store_enable_i and n992_o;
  -- VLoadStoreUnit.vhd:42:76
  n994_o <= "000000000000000000000000000000" & align;  --  uext
  -- VLoadStoreUnit.vhd:42:76
  n995_o <= "00000000000000000000000000000" & size;  --  uext
  -- VLoadStoreUnit.vhd:42:76
  n996_o <= std_logic_vector (unsigned (n994_o) + unsigned (n995_o));
  -- VLoadStoreUnit.vhd:42:68
  n998_o <= '1' when signed'("00000000000000000000000000000001") < signed (n996_o) else '0';
  -- VLoadStoreUnit.vhd:42:62
  n999_o <= n993_o and n998_o;
  -- VLoadStoreUnit.vhd:42:27
  n1000_o <= '0' when n999_o = '0' else '1';
  -- VLoadStoreUnit.vhd:42:53
  n1003_o <= "000000000000000000000000000000" & align;  --  uext
  -- VLoadStoreUnit.vhd:42:53
  n1005_o <= '1' when signed'("00000000000000000000000000000000") >= signed (n1003_o) else '0';
  -- VLoadStoreUnit.vhd:42:47
  n1006_o <= store_enable_i and n1005_o;
  -- VLoadStoreUnit.vhd:42:76
  n1007_o <= "000000000000000000000000000000" & align;  --  uext
  -- VLoadStoreUnit.vhd:42:76
  n1008_o <= "00000000000000000000000000000" & size;  --  uext
  -- VLoadStoreUnit.vhd:42:76
  n1009_o <= std_logic_vector (unsigned (n1007_o) + unsigned (n1008_o));
  -- VLoadStoreUnit.vhd:42:68
  n1011_o <= '1' when signed'("00000000000000000000000000000000") < signed (n1009_o) else '0';
  -- VLoadStoreUnit.vhd:42:62
  n1012_o <= n1006_o and n1011_o;
  -- VLoadStoreUnit.vhd:42:27
  n1013_o <= '0' when n1012_o = '0' else '1';
  -- VLoadStoreUnit.vhd:46:31
  n1015_o <= n931_o & n931_o;
  -- VLoadStoreUnit.vhd:46:44
  n1016_o <= n1015_o & n931_o;
  -- VLoadStoreUnit.vhd:46:57
  n1017_o <= n1016_o & n931_o;
  -- VLoadStoreUnit.vhd:46:70
  n1019_o <= '1' when funct3_i = "000" else '0';
  -- VLoadStoreUnit.vhd:47:44
  n1020_o <= n932_o & n932_o;
  -- VLoadStoreUnit.vhd:47:70
  n1022_o <= '1' when funct3_i = "001" else '0';
  n1023_o <= n1022_o & n1019_o;
  -- VLoadStoreUnit.vhd:45:5
  with n1023_o select n1024_o <=
    n1020_o when "10",
    n1017_o when "01",
    store_data_i when others;
  n1030_o <= aligned_data (7 downto 0);
  -- Virgule_pkg.vhd:53:23
  n1031_o <= std_logic_vector (resize (signed (n1030_o), 32));  --  sext
  -- VLoadStoreUnit.vhd:51:52
  n1033_o <= '1' when funct3_i = "000" else '0';
  n1039_o <= aligned_data (15 downto 0);
  -- Virgule_pkg.vhd:53:23
  n1040_o <= std_logic_vector (resize (signed (n1039_o), 32));  --  sext
  -- VLoadStoreUnit.vhd:52:52
  n1042_o <= '1' when funct3_i = "001" else '0';
  n1048_o <= aligned_data (7 downto 0);
  -- Virgule_pkg.vhd:43:23
  n1049_o <= "000000000000000000000000" & n1048_o;  --  uext
  -- VLoadStoreUnit.vhd:53:52
  n1051_o <= '1' when funct3_i = "100" else '0';
  n1057_o <= aligned_data (15 downto 0);
  -- Virgule_pkg.vhd:43:23
  n1058_o <= "0000000000000000" & n1057_o;  --  uext
  -- VLoadStoreUnit.vhd:54:52
  n1060_o <= '1' when funct3_i = "101" else '0';
  n1061_o <= n1060_o & n1051_o & n1042_o & n1033_o;
  -- VLoadStoreUnit.vhd:50:5
  with n1061_o select n1062_o <=
    n1058_o when "1000",
    n1049_o when "0100",
    n1040_o when "0010",
    n1031_o when "0001",
    rdata_i when others;
  n1063_o <= n974_o & n987_o & n1000_o & n1013_o;
end rtl;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vbranchunit is
  port (
    clk_i : in std_logic;
    reset_i : in std_logic;
    enable_i : in std_logic;
    irq_i : in std_logic;
    instr_i_funct3 : in std_logic_vector (2 downto 0);
    instr_i_imm : in std_logic_vector (31 downto 0);
    instr_i_rs1 : in std_logic_vector (4 downto 0);
    instr_i_rs2 : in std_logic_vector (4 downto 0);
    instr_i_rd : in std_logic_vector (4 downto 0);
    instr_i_use_pc : in std_logic;
    instr_i_use_imm : in std_logic;
    instr_i_alu_fn : in std_logic_vector (3 downto 0);
    instr_i_is_load : in std_logic;
    instr_i_is_store : in std_logic;
    instr_i_is_mret : in std_logic;
    instr_i_is_jump : in std_logic;
    instr_i_is_branch : in std_logic;
    instr_i_has_rd : in std_logic;
    instr_i_is_invalid : in std_logic;
    xs1_i : in std_logic_vector (31 downto 0);
    xs2_i : in std_logic_vector (31 downto 0);
    address_i : in std_logic_vector (31 downto 0);
    pc_next_i : in std_logic_vector (31 downto 0);
    pc_o : out std_logic_vector (31 downto 0));
end entity vbranchunit;

architecture rtl of vbranchunit is
  signal n865_o : std_logic_vector (62 downto 0);
  signal taken : std_logic;
  signal mepc_reg : std_logic_vector (31 downto 0);
  signal pc_target : std_logic_vector (31 downto 0);
  signal irq_state_reg : std_logic;
  signal accept_irq : std_logic;
  signal n867_o : std_logic_vector (2 downto 0);
  signal n868_o : std_logic;
  signal n870_o : std_logic;
  signal n871_o : std_logic;
  signal n873_o : std_logic;
  signal n874_o : std_logic;
  signal n876_o : std_logic;
  signal n877_o : std_logic;
  signal n879_o : std_logic;
  signal n880_o : std_logic;
  signal n882_o : std_logic;
  signal n883_o : std_logic;
  signal n885_o : std_logic;
  signal n887_o : std_logic_vector (5 downto 0);
  signal n888_o : std_logic;
  signal n889_o : std_logic;
  signal n890_o : std_logic_vector (31 downto 0);
  signal n891_o : std_logic_vector (29 downto 0);
  signal n893_o : std_logic_vector (31 downto 0);
  signal n894_o : std_logic;
  signal n895_o : std_logic_vector (31 downto 0);
  signal n896_o : std_logic_vector (29 downto 0);
  signal n898_o : std_logic_vector (31 downto 0);
  signal n899_o : std_logic;
  signal n900_o : std_logic;
  signal n901_o : std_logic_vector (31 downto 0);
  signal n904_o : std_logic;
  signal n906_o : std_logic;
  signal n908_o : std_logic;
  signal n909_o : std_logic;
  signal n911_o : std_logic;
  signal n914_q : std_logic;
  signal n915_o : std_logic;
  signal n916_o : std_logic;
  signal n919_o : std_logic;
  signal n920_o : std_logic_vector (31 downto 0);
  signal n922_o : std_logic_vector (31 downto 0);
  signal n925_q : std_logic_vector (31 downto 0) := "00000000000000000000000000000000";
  signal n927_o : std_logic_vector (31 downto 0);
begin
  pc_o <= n927_o;
  -- VArithmeticAndLogicUnit.vhd:45:11
  n865_o <= instr_i_is_invalid & instr_i_has_rd & instr_i_is_branch & instr_i_is_jump & instr_i_is_mret & instr_i_is_store & instr_i_is_load & instr_i_alu_fn & instr_i_use_imm & instr_i_use_pc & instr_i_rd & instr_i_rs2 & instr_i_rs1 & instr_i_imm & instr_i_funct3;
  -- VBranchUnit.vhd:26:12
  taken <= n888_o; -- (signal)
  -- VBranchUnit.vhd:27:12
  mepc_reg <= n925_q; -- (isignal)
  -- VBranchUnit.vhd:28:12
  pc_target <= n890_o; -- (signal)
  -- VBranchUnit.vhd:29:12
  irq_state_reg <= n914_q; -- (signal)
  -- VBranchUnit.vhd:30:12
  accept_irq <= n916_o; -- (signal)
  -- VBranchUnit.vhd:32:18
  n867_o <= n865_o (2 downto 0);
  -- VBranchUnit.vhd:33:29
  n868_o <= '1' when xs1_i = xs2_i else '0';
  -- VBranchUnit.vhd:33:48
  n870_o <= '1' when n867_o = "000" else '0';
  -- VBranchUnit.vhd:34:29
  n871_o <= '1' when xs1_i /= xs2_i else '0';
  -- VBranchUnit.vhd:34:48
  n873_o <= '1' when n867_o = "001" else '0';
  -- VBranchUnit.vhd:35:29
  n874_o <= '1' when signed (xs1_i) < signed (xs2_i) else '0';
  -- VBranchUnit.vhd:35:48
  n876_o <= '1' when n867_o = "100" else '0';
  -- VBranchUnit.vhd:36:29
  n877_o <= '1' when signed (xs1_i) >= signed (xs2_i) else '0';
  -- VBranchUnit.vhd:36:48
  n879_o <= '1' when n867_o = "101" else '0';
  -- VBranchUnit.vhd:37:29
  n880_o <= '1' when unsigned (xs1_i) < unsigned (xs2_i) else '0';
  -- VBranchUnit.vhd:37:48
  n882_o <= '1' when n867_o = "110" else '0';
  -- VBranchUnit.vhd:38:29
  n883_o <= '1' when unsigned (xs1_i) >= unsigned (xs2_i) else '0';
  -- VBranchUnit.vhd:38:48
  n885_o <= '1' when n867_o = "111" else '0';
  n887_o <= n885_o & n882_o & n879_o & n876_o & n873_o & n870_o;
  -- VBranchUnit.vhd:32:5
  with n887_o select n888_o <=
    n883_o when "100000",
    n880_o when "010000",
    n877_o when "001000",
    n874_o when "000100",
    n871_o when "000010",
    n868_o when "000001",
    '0' when others;
  -- VBranchUnit.vhd:41:61
  n889_o <= n865_o (58);
  -- VBranchUnit.vhd:41:48
  n890_o <= n895_o when n889_o = '0' else mepc_reg;
  -- VBranchUnit.vhd:42:27
  n891_o <= address_i (31 downto 2);
  -- VBranchUnit.vhd:42:41
  n893_o <= n891_o & "00";
  -- VBranchUnit.vhd:42:61
  n894_o <= n865_o (59);
  -- VBranchUnit.vhd:41:81
  n895_o <= n901_o when n894_o = '0' else n893_o;
  -- VBranchUnit.vhd:43:27
  n896_o <= address_i (31 downto 2);
  -- VBranchUnit.vhd:43:41
  n898_o <= n896_o & "00";
  -- VBranchUnit.vhd:43:61
  n899_o <= n865_o (60);
  -- VBranchUnit.vhd:43:71
  n900_o <= n899_o and taken;
  -- VBranchUnit.vhd:42:81
  n901_o <= pc_next_i when n900_o = '0' else n898_o;
  -- VBranchUnit.vhd:52:28
  n904_o <= n865_o (58);
  -- VBranchUnit.vhd:54:17
  n906_o <= irq_state_reg when irq_i = '0' else '1';
  -- VBranchUnit.vhd:52:17
  n908_o <= n906_o when n904_o = '0' else '0';
  -- VBranchUnit.vhd:51:13
  n909_o <= irq_state_reg when enable_i = '0' else n908_o;
  -- VBranchUnit.vhd:49:13
  n911_o <= n909_o when reset_i = '0' else '0';
  -- VBranchUnit.vhd:48:9
  process (clk_i)
  begin
    if rising_edge (clk_i) then
      n914_q <= n911_o;
    end if;
  end process;
  -- VBranchUnit.vhd:61:35
  n915_o <= not irq_state_reg;
  -- VBranchUnit.vhd:61:31
  n916_o <= irq_i and n915_o;
  -- VBranchUnit.vhd:68:28
  n919_o <= enable_i and accept_irq;
  -- VBranchUnit.vhd:68:13
  n920_o <= mepc_reg when n919_o = '0' else pc_target;
  -- VBranchUnit.vhd:66:13
  n922_o <= n920_o when reset_i = '0' else "00000000000000000000000000000000";
  -- VBranchUnit.vhd:65:9
  process (clk_i)
  begin
    if rising_edge (clk_i) then
      n925_q <= n922_o;
    end if;
  end process;
  -- VBranchUnit.vhd:74:24
  n927_o <= pc_target when accept_irq = '0' else "00000000000000000000000000000100";
end rtl;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity varithmeticandlogicunit is
  port (
    fn_i : in std_logic_vector (3 downto 0);
    a_i : in std_logic_vector (31 downto 0);
    b_i : in std_logic_vector (31 downto 0);
    r_o : out std_logic_vector (31 downto 0));
end entity varithmeticandlogicunit;

architecture rtl of varithmeticandlogicunit is
  signal sa : std_logic_vector (31 downto 0);
  signal sb : std_logic_vector (31 downto 0);
  signal ua : std_logic_vector (31 downto 0);
  signal ub : std_logic_vector (31 downto 0);
  signal slt : std_logic_vector (31 downto 0);
  signal sltu : std_logic_vector (31 downto 0);
  signal sh : std_logic_vector (4 downto 0);
  signal n822_o : std_logic_vector (4 downto 0);
  signal n825_o : std_logic;
  signal n826_o : std_logic_vector (31 downto 0);
  signal n827_o : std_logic;
  signal n828_o : std_logic_vector (31 downto 0);
  signal n830_o : std_logic;
  signal n831_o : std_logic_vector (31 downto 0);
  signal n833_o : std_logic;
  signal n834_o : std_logic_vector (31 downto 0);
  signal n836_o : std_logic;
  signal n838_o : std_logic;
  signal n840_o : std_logic;
  signal n841_o : std_logic_vector (31 downto 0);
  signal n843_o : std_logic;
  signal n844_o : std_logic_vector (31 downto 0);
  signal n846_o : std_logic;
  signal n847_o : std_logic_vector (31 downto 0);
  signal n849_o : std_logic;
  signal n850_o : std_logic_vector (30 downto 0);
  signal n851_o : std_logic_vector (31 downto 0);
  signal n853_o : std_logic;
  signal n854_o : std_logic_vector (30 downto 0);
  signal n855_o : std_logic_vector (31 downto 0);
  signal n857_o : std_logic;
  signal n858_o : std_logic_vector (30 downto 0);
  signal n859_o : std_logic_vector (31 downto 0);
  signal n861_o : std_logic;
  signal n862_o : std_logic_vector (10 downto 0);
  signal n864_o : std_logic_vector (31 downto 0);
begin
  r_o <= n864_o;
  -- VArithmeticAndLogicUnit.vhd:36:12
  sa <= a_i; -- (signal)
  -- VArithmeticAndLogicUnit.vhd:36:16
  sb <= b_i; -- (signal)
  -- VArithmeticAndLogicUnit.vhd:37:12
  ua <= a_i; -- (signal)
  -- VArithmeticAndLogicUnit.vhd:37:16
  ub <= b_i; -- (signal)
  -- VArithmeticAndLogicUnit.vhd:38:12
  slt <= n826_o; -- (signal)
  -- VArithmeticAndLogicUnit.vhd:38:17
  sltu <= n828_o; -- (signal)
  -- VArithmeticAndLogicUnit.vhd:39:12
  sh <= n822_o; -- (signal)
  -- VArithmeticAndLogicUnit.vhd:45:34
  n822_o <= b_i (4 downto 0);
  -- VArithmeticAndLogicUnit.vhd:47:27
  n825_o <= '1' when signed (sa) < signed (sb) else '0';
  -- VArithmeticAndLogicUnit.vhd:47:19
  n826_o <= "00000000000000000000000000000000" when n825_o = '0' else "00000000000000000000000000000001";
  -- VArithmeticAndLogicUnit.vhd:48:27
  n827_o <= '1' when unsigned (ua) < unsigned (ub) else '0';
  -- VArithmeticAndLogicUnit.vhd:48:19
  n828_o <= "00000000000000000000000000000000" when n827_o = '0' else "00000000000000000000000000000001";
  -- VArithmeticAndLogicUnit.vhd:51:44
  n830_o <= '1' when fn_i = "0000" else '0';
  -- VArithmeticAndLogicUnit.vhd:52:26
  n831_o <= std_logic_vector (unsigned (sa) + unsigned (sb));
  -- VArithmeticAndLogicUnit.vhd:52:44
  n833_o <= '1' when fn_i = "0001" else '0';
  -- VArithmeticAndLogicUnit.vhd:53:26
  n834_o <= std_logic_vector (unsigned (sa) - unsigned (sb));
  -- VArithmeticAndLogicUnit.vhd:53:44
  n836_o <= '1' when fn_i = "0010" else '0';
  -- VArithmeticAndLogicUnit.vhd:54:44
  n838_o <= '1' when fn_i = "0011" else '0';
  -- VArithmeticAndLogicUnit.vhd:55:44
  n840_o <= '1' when fn_i = "0100" else '0';
  -- VArithmeticAndLogicUnit.vhd:56:20
  n841_o <= a_i xor b_i;
  -- VArithmeticAndLogicUnit.vhd:56:44
  n843_o <= '1' when fn_i = "0101" else '0';
  -- VArithmeticAndLogicUnit.vhd:57:20
  n844_o <= a_i or b_i;
  -- VArithmeticAndLogicUnit.vhd:57:44
  n846_o <= '1' when fn_i = "0110" else '0';
  -- VArithmeticAndLogicUnit.vhd:58:20
  n847_o <= a_i and b_i;
  -- VArithmeticAndLogicUnit.vhd:58:44
  n849_o <= '1' when fn_i = "0111" else '0';
  -- VArithmeticAndLogicUnit.vhd:59:39
  n850_o <= "00000000000000000000000000" & sh;  --  uext
  -- VArithmeticAndLogicUnit.vhd:59:23
  n851_o <= std_logic_vector (shift_left (unsigned (ua), to_integer (unsigned (n850_o))));
  -- VArithmeticAndLogicUnit.vhd:59:44
  n853_o <= '1' when fn_i = "1000" else '0';
  -- VArithmeticAndLogicUnit.vhd:60:39
  n854_o <= "00000000000000000000000000" & sh;  --  uext
  -- VArithmeticAndLogicUnit.vhd:60:23
  n855_o <= std_logic_vector (shift_right (unsigned (ua), to_integer(unsigned (n854_o))));
  -- VArithmeticAndLogicUnit.vhd:60:44
  n857_o <= '1' when fn_i = "1001" else '0';
  -- VArithmeticAndLogicUnit.vhd:61:39
  n858_o <= "00000000000000000000000000" & sh;  --  uext
  -- VArithmeticAndLogicUnit.vhd:61:23
  n859_o <= std_logic_vector (shift_right (signed (sa), to_integer (unsigned (n858_o))));
  -- VArithmeticAndLogicUnit.vhd:61:44
  n861_o <= '1' when fn_i = "1010" else '0';
  n862_o <= n861_o & n857_o & n853_o & n849_o & n846_o & n843_o & n840_o & n838_o & n836_o & n833_o & n830_o;
  -- VArithmeticAndLogicUnit.vhd:50:5
  with n862_o select n864_o <=
    n859_o when "10000000000",
    n855_o when "01000000000",
    n851_o when "00100000000",
    n847_o when "00010000000",
    n844_o when "00001000000",
    n841_o when "00000100000",
    sltu when "00000010000",
    slt when "00000001000",
    n834_o when "00000000100",
    n831_o when "00000000010",
    b_i when "00000000001",
    (31 downto 0 => 'X') when others;
end rtl;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vregisters is
  port (
    clk_i : in std_logic;
    reset_i : in std_logic;
    write_i : in std_logic;
    rs1_i : in std_logic_vector (4 downto 0);
    rs2_i : in std_logic_vector (4 downto 0);
    rd_i : in std_logic_vector (4 downto 0);
    xd_i : in std_logic_vector (31 downto 0);
    xs1_o : out std_logic_vector (31 downto 0);
    xs2_o : out std_logic_vector (31 downto 0));
end entity vregisters;

architecture rtl of vregisters is
  signal x_reg : std_logic_vector (1023 downto 0);
  signal n523_o : std_logic_vector (4 downto 0);
  signal n527_o : std_logic_vector (4 downto 0);
  signal n532_o : std_logic_vector (31 downto 0);
  signal n534_o : std_logic;
  signal n535_o : std_logic;
  signal n537_o : std_logic_vector (4 downto 0);
  signal n542_o : std_logic_vector (1023 downto 0);
  signal n545_q : std_logic_vector (1023 downto 0);
  signal n546_o : std_logic_vector (31 downto 0);
  signal n547_o : std_logic_vector (31 downto 0);
  signal n548_o : std_logic_vector (31 downto 0);
  signal n549_o : std_logic_vector (31 downto 0);
  signal n550_o : std_logic_vector (31 downto 0);
  signal n551_o : std_logic_vector (31 downto 0);
  signal n552_o : std_logic_vector (31 downto 0);
  signal n553_o : std_logic_vector (31 downto 0);
  signal n554_o : std_logic_vector (31 downto 0);
  signal n555_o : std_logic_vector (31 downto 0);
  signal n556_o : std_logic_vector (31 downto 0);
  signal n557_o : std_logic_vector (31 downto 0);
  signal n558_o : std_logic_vector (31 downto 0);
  signal n559_o : std_logic_vector (31 downto 0);
  signal n560_o : std_logic_vector (31 downto 0);
  signal n561_o : std_logic_vector (31 downto 0);
  signal n562_o : std_logic_vector (31 downto 0);
  signal n563_o : std_logic_vector (31 downto 0);
  signal n564_o : std_logic_vector (31 downto 0);
  signal n565_o : std_logic_vector (31 downto 0);
  signal n566_o : std_logic_vector (31 downto 0);
  signal n567_o : std_logic_vector (31 downto 0);
  signal n568_o : std_logic_vector (31 downto 0);
  signal n569_o : std_logic_vector (31 downto 0);
  signal n570_o : std_logic_vector (31 downto 0);
  signal n571_o : std_logic_vector (31 downto 0);
  signal n572_o : std_logic_vector (31 downto 0);
  signal n573_o : std_logic_vector (31 downto 0);
  signal n574_o : std_logic_vector (31 downto 0);
  signal n575_o : std_logic_vector (31 downto 0);
  signal n576_o : std_logic_vector (31 downto 0);
  signal n577_o : std_logic_vector (31 downto 0);
  signal n578_o : std_logic_vector (1 downto 0);
  signal n579_o : std_logic_vector (31 downto 0);
  signal n580_o : std_logic_vector (1 downto 0);
  signal n581_o : std_logic_vector (31 downto 0);
  signal n582_o : std_logic_vector (1 downto 0);
  signal n583_o : std_logic_vector (31 downto 0);
  signal n584_o : std_logic_vector (1 downto 0);
  signal n585_o : std_logic_vector (31 downto 0);
  signal n586_o : std_logic_vector (1 downto 0);
  signal n587_o : std_logic_vector (31 downto 0);
  signal n588_o : std_logic_vector (1 downto 0);
  signal n589_o : std_logic_vector (31 downto 0);
  signal n590_o : std_logic_vector (1 downto 0);
  signal n591_o : std_logic_vector (31 downto 0);
  signal n592_o : std_logic_vector (1 downto 0);
  signal n593_o : std_logic_vector (31 downto 0);
  signal n594_o : std_logic_vector (1 downto 0);
  signal n595_o : std_logic_vector (31 downto 0);
  signal n596_o : std_logic_vector (1 downto 0);
  signal n597_o : std_logic_vector (31 downto 0);
  signal n598_o : std_logic;
  signal n599_o : std_logic_vector (31 downto 0);
  signal n600_o : std_logic_vector (31 downto 0);
  signal n601_o : std_logic_vector (31 downto 0);
  signal n602_o : std_logic_vector (31 downto 0);
  signal n603_o : std_logic_vector (31 downto 0);
  signal n604_o : std_logic_vector (31 downto 0);
  signal n605_o : std_logic_vector (31 downto 0);
  signal n606_o : std_logic_vector (31 downto 0);
  signal n607_o : std_logic_vector (31 downto 0);
  signal n608_o : std_logic_vector (31 downto 0);
  signal n609_o : std_logic_vector (31 downto 0);
  signal n610_o : std_logic_vector (31 downto 0);
  signal n611_o : std_logic_vector (31 downto 0);
  signal n612_o : std_logic_vector (31 downto 0);
  signal n613_o : std_logic_vector (31 downto 0);
  signal n614_o : std_logic_vector (31 downto 0);
  signal n615_o : std_logic_vector (31 downto 0);
  signal n616_o : std_logic_vector (31 downto 0);
  signal n617_o : std_logic_vector (31 downto 0);
  signal n618_o : std_logic_vector (31 downto 0);
  signal n619_o : std_logic_vector (31 downto 0);
  signal n620_o : std_logic_vector (31 downto 0);
  signal n621_o : std_logic_vector (31 downto 0);
  signal n622_o : std_logic_vector (31 downto 0);
  signal n623_o : std_logic_vector (31 downto 0);
  signal n624_o : std_logic_vector (31 downto 0);
  signal n625_o : std_logic_vector (31 downto 0);
  signal n626_o : std_logic_vector (31 downto 0);
  signal n627_o : std_logic_vector (31 downto 0);
  signal n628_o : std_logic_vector (31 downto 0);
  signal n629_o : std_logic_vector (31 downto 0);
  signal n630_o : std_logic_vector (31 downto 0);
  signal n631_o : std_logic_vector (31 downto 0);
  signal n632_o : std_logic_vector (1 downto 0);
  signal n633_o : std_logic_vector (31 downto 0);
  signal n634_o : std_logic_vector (1 downto 0);
  signal n635_o : std_logic_vector (31 downto 0);
  signal n636_o : std_logic_vector (1 downto 0);
  signal n637_o : std_logic_vector (31 downto 0);
  signal n638_o : std_logic_vector (1 downto 0);
  signal n639_o : std_logic_vector (31 downto 0);
  signal n640_o : std_logic_vector (1 downto 0);
  signal n641_o : std_logic_vector (31 downto 0);
  signal n642_o : std_logic_vector (1 downto 0);
  signal n643_o : std_logic_vector (31 downto 0);
  signal n644_o : std_logic_vector (1 downto 0);
  signal n645_o : std_logic_vector (31 downto 0);
  signal n646_o : std_logic_vector (1 downto 0);
  signal n647_o : std_logic_vector (31 downto 0);
  signal n648_o : std_logic_vector (1 downto 0);
  signal n649_o : std_logic_vector (31 downto 0);
  signal n650_o : std_logic_vector (1 downto 0);
  signal n651_o : std_logic_vector (31 downto 0);
  signal n652_o : std_logic;
  signal n653_o : std_logic_vector (31 downto 0);
  signal n654_o : std_logic;
  signal n655_o : std_logic;
  signal n656_o : std_logic;
  signal n657_o : std_logic;
  signal n658_o : std_logic;
  signal n659_o : std_logic;
  signal n660_o : std_logic;
  signal n661_o : std_logic;
  signal n662_o : std_logic;
  signal n663_o : std_logic;
  signal n664_o : std_logic;
  signal n665_o : std_logic;
  signal n666_o : std_logic;
  signal n667_o : std_logic;
  signal n668_o : std_logic;
  signal n669_o : std_logic;
  signal n670_o : std_logic;
  signal n671_o : std_logic;
  signal n672_o : std_logic;
  signal n673_o : std_logic;
  signal n674_o : std_logic;
  signal n675_o : std_logic;
  signal n676_o : std_logic;
  signal n677_o : std_logic;
  signal n678_o : std_logic;
  signal n679_o : std_logic;
  signal n680_o : std_logic;
  signal n681_o : std_logic;
  signal n682_o : std_logic;
  signal n683_o : std_logic;
  signal n684_o : std_logic;
  signal n685_o : std_logic;
  signal n686_o : std_logic;
  signal n687_o : std_logic;
  signal n688_o : std_logic;
  signal n689_o : std_logic;
  signal n690_o : std_logic;
  signal n691_o : std_logic;
  signal n692_o : std_logic;
  signal n693_o : std_logic;
  signal n694_o : std_logic;
  signal n695_o : std_logic;
  signal n696_o : std_logic;
  signal n697_o : std_logic;
  signal n698_o : std_logic;
  signal n699_o : std_logic;
  signal n700_o : std_logic;
  signal n701_o : std_logic;
  signal n702_o : std_logic;
  signal n703_o : std_logic;
  signal n704_o : std_logic;
  signal n705_o : std_logic;
  signal n706_o : std_logic;
  signal n707_o : std_logic;
  signal n708_o : std_logic;
  signal n709_o : std_logic;
  signal n710_o : std_logic;
  signal n711_o : std_logic;
  signal n712_o : std_logic;
  signal n713_o : std_logic;
  signal n714_o : std_logic;
  signal n715_o : std_logic;
  signal n716_o : std_logic;
  signal n717_o : std_logic;
  signal n718_o : std_logic;
  signal n719_o : std_logic;
  signal n720_o : std_logic;
  signal n721_o : std_logic;
  signal n722_o : std_logic;
  signal n723_o : std_logic;
  signal n724_o : std_logic_vector (31 downto 0);
  signal n725_o : std_logic;
  signal n726_o : std_logic_vector (31 downto 0);
  signal n727_o : std_logic_vector (31 downto 0);
  signal n728_o : std_logic;
  signal n729_o : std_logic_vector (31 downto 0);
  signal n730_o : std_logic_vector (31 downto 0);
  signal n731_o : std_logic;
  signal n732_o : std_logic_vector (31 downto 0);
  signal n733_o : std_logic_vector (31 downto 0);
  signal n734_o : std_logic;
  signal n735_o : std_logic_vector (31 downto 0);
  signal n736_o : std_logic_vector (31 downto 0);
  signal n737_o : std_logic;
  signal n738_o : std_logic_vector (31 downto 0);
  signal n739_o : std_logic_vector (31 downto 0);
  signal n740_o : std_logic;
  signal n741_o : std_logic_vector (31 downto 0);
  signal n742_o : std_logic_vector (31 downto 0);
  signal n743_o : std_logic;
  signal n744_o : std_logic_vector (31 downto 0);
  signal n745_o : std_logic_vector (31 downto 0);
  signal n746_o : std_logic;
  signal n747_o : std_logic_vector (31 downto 0);
  signal n748_o : std_logic_vector (31 downto 0);
  signal n749_o : std_logic;
  signal n750_o : std_logic_vector (31 downto 0);
  signal n751_o : std_logic_vector (31 downto 0);
  signal n752_o : std_logic;
  signal n753_o : std_logic_vector (31 downto 0);
  signal n754_o : std_logic_vector (31 downto 0);
  signal n755_o : std_logic;
  signal n756_o : std_logic_vector (31 downto 0);
  signal n757_o : std_logic_vector (31 downto 0);
  signal n758_o : std_logic;
  signal n759_o : std_logic_vector (31 downto 0);
  signal n760_o : std_logic_vector (31 downto 0);
  signal n761_o : std_logic;
  signal n762_o : std_logic_vector (31 downto 0);
  signal n763_o : std_logic_vector (31 downto 0);
  signal n764_o : std_logic;
  signal n765_o : std_logic_vector (31 downto 0);
  signal n766_o : std_logic_vector (31 downto 0);
  signal n767_o : std_logic;
  signal n768_o : std_logic_vector (31 downto 0);
  signal n769_o : std_logic_vector (31 downto 0);
  signal n770_o : std_logic;
  signal n771_o : std_logic_vector (31 downto 0);
  signal n772_o : std_logic_vector (31 downto 0);
  signal n773_o : std_logic;
  signal n774_o : std_logic_vector (31 downto 0);
  signal n775_o : std_logic_vector (31 downto 0);
  signal n776_o : std_logic;
  signal n777_o : std_logic_vector (31 downto 0);
  signal n778_o : std_logic_vector (31 downto 0);
  signal n779_o : std_logic;
  signal n780_o : std_logic_vector (31 downto 0);
  signal n781_o : std_logic_vector (31 downto 0);
  signal n782_o : std_logic;
  signal n783_o : std_logic_vector (31 downto 0);
  signal n784_o : std_logic_vector (31 downto 0);
  signal n785_o : std_logic;
  signal n786_o : std_logic_vector (31 downto 0);
  signal n787_o : std_logic_vector (31 downto 0);
  signal n788_o : std_logic;
  signal n789_o : std_logic_vector (31 downto 0);
  signal n790_o : std_logic_vector (31 downto 0);
  signal n791_o : std_logic;
  signal n792_o : std_logic_vector (31 downto 0);
  signal n793_o : std_logic_vector (31 downto 0);
  signal n794_o : std_logic;
  signal n795_o : std_logic_vector (31 downto 0);
  signal n796_o : std_logic_vector (31 downto 0);
  signal n797_o : std_logic;
  signal n798_o : std_logic_vector (31 downto 0);
  signal n799_o : std_logic_vector (31 downto 0);
  signal n800_o : std_logic;
  signal n801_o : std_logic_vector (31 downto 0);
  signal n802_o : std_logic_vector (31 downto 0);
  signal n803_o : std_logic;
  signal n804_o : std_logic_vector (31 downto 0);
  signal n805_o : std_logic_vector (31 downto 0);
  signal n806_o : std_logic;
  signal n807_o : std_logic_vector (31 downto 0);
  signal n808_o : std_logic_vector (31 downto 0);
  signal n809_o : std_logic;
  signal n810_o : std_logic_vector (31 downto 0);
  signal n811_o : std_logic_vector (31 downto 0);
  signal n812_o : std_logic;
  signal n813_o : std_logic_vector (31 downto 0);
  signal n814_o : std_logic_vector (31 downto 0);
  signal n815_o : std_logic;
  signal n816_o : std_logic_vector (31 downto 0);
  signal n817_o : std_logic_vector (31 downto 0);
  signal n818_o : std_logic;
  signal n819_o : std_logic_vector (31 downto 0);
  signal n820_o : std_logic_vector (1023 downto 0);
begin
  xs1_o <= n599_o;
  xs2_o <= n653_o;
  -- VRegisters.vhd:20:12
  x_reg <= n545_q; -- (signal)
  -- VRegisters.vhd:22:19
  n523_o <= std_logic_vector (unsigned'("11111") - unsigned (rs1_i));
  -- VRegisters.vhd:23:19
  n527_o <= std_logic_vector (unsigned'("11111") - unsigned (rs2_i));
  -- VRegisters.vhd:30:36
  n532_o <= "000000000000000000000000000" & rd_i;  --  uext
  -- VRegisters.vhd:30:36
  n534_o <= '1' when n532_o /= "00000000000000000000000000000000" else '0';
  -- VRegisters.vhd:30:27
  n535_o <= write_i and n534_o;
  -- VRegisters.vhd:31:22
  n537_o <= std_logic_vector (unsigned'("11111") - unsigned (rd_i));
  -- VRegisters.vhd:28:13
  n542_o <= n820_o when reset_i = '0' else "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  -- VRegisters.vhd:27:9
  process (clk_i)
  begin
    if rising_edge (clk_i) then
      n545_q <= n542_o;
    end if;
  end process;
  -- VRegisters.vhd:14:16
  n546_o <= x_reg (31 downto 0);
  -- VRegisters.vhd:14:9
  n547_o <= x_reg (63 downto 32);
  -- Virgule_pkg.vhd:33:14
  n548_o <= x_reg (95 downto 64);
  -- VRegisters.vhd:25:5
  n549_o <= x_reg (127 downto 96);
  -- VRegisters.vhd:27:9
  n550_o <= x_reg (159 downto 128);
  -- Virgule_pkg.vhd:33:14
  n551_o <= x_reg (191 downto 160);
  -- Virgule_pkg.vhd:31:14
  n552_o <= x_reg (223 downto 192);
  -- Virgule_pkg.vhd:31:14
  n553_o <= x_reg (255 downto 224);
  n554_o <= x_reg (287 downto 256);
  -- Virgule_pkg.vhd:31:14
  n555_o <= x_reg (319 downto 288);
  -- Virgule_pkg.vhd:31:14
  n556_o <= x_reg (351 downto 320);
  -- Virgule_pkg.vhd:31:14
  n557_o <= x_reg (383 downto 352);
  n558_o <= x_reg (415 downto 384);
  -- Virgule_pkg.vhd:31:14
  n559_o <= x_reg (447 downto 416);
  -- Virgule_pkg.vhd:31:14
  n560_o <= x_reg (479 downto 448);
  -- Virgule_pkg.vhd:31:14
  n561_o <= x_reg (511 downto 480);
  n562_o <= x_reg (543 downto 512);
  -- Virgule_pkg.vhd:31:14
  n563_o <= x_reg (575 downto 544);
  -- Virgule_pkg.vhd:31:14
  n564_o <= x_reg (607 downto 576);
  -- Virgule_pkg.vhd:31:14
  n565_o <= x_reg (639 downto 608);
  n566_o <= x_reg (671 downto 640);
  -- Virgule_pkg.vhd:31:14
  n567_o <= x_reg (703 downto 672);
  n568_o <= x_reg (735 downto 704);
  n569_o <= x_reg (767 downto 736);
  n570_o <= x_reg (799 downto 768);
  n571_o <= x_reg (831 downto 800);
  n572_o <= x_reg (863 downto 832);
  n573_o <= x_reg (895 downto 864);
  n574_o <= x_reg (927 downto 896);
  n575_o <= x_reg (959 downto 928);
  n576_o <= x_reg (991 downto 960);
  n577_o <= x_reg (1023 downto 992);
  -- VRegisters.vhd:22:19
  n578_o <= n523_o (1 downto 0);
  -- VRegisters.vhd:22:19
  with n578_o select n579_o <=
    n546_o when "00",
    n547_o when "01",
    n548_o when "10",
    n549_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:22:19
  n580_o <= n523_o (1 downto 0);
  -- VRegisters.vhd:22:19
  with n580_o select n581_o <=
    n550_o when "00",
    n551_o when "01",
    n552_o when "10",
    n553_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:22:19
  n582_o <= n523_o (1 downto 0);
  -- VRegisters.vhd:22:19
  with n582_o select n583_o <=
    n554_o when "00",
    n555_o when "01",
    n556_o when "10",
    n557_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:22:19
  n584_o <= n523_o (1 downto 0);
  -- VRegisters.vhd:22:19
  with n584_o select n585_o <=
    n558_o when "00",
    n559_o when "01",
    n560_o when "10",
    n561_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:22:19
  n586_o <= n523_o (1 downto 0);
  -- VRegisters.vhd:22:19
  with n586_o select n587_o <=
    n562_o when "00",
    n563_o when "01",
    n564_o when "10",
    n565_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:22:19
  n588_o <= n523_o (1 downto 0);
  -- VRegisters.vhd:22:19
  with n588_o select n589_o <=
    n566_o when "00",
    n567_o when "01",
    n568_o when "10",
    n569_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:22:19
  n590_o <= n523_o (1 downto 0);
  -- VRegisters.vhd:22:19
  with n590_o select n591_o <=
    n570_o when "00",
    n571_o when "01",
    n572_o when "10",
    n573_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:22:19
  n592_o <= n523_o (1 downto 0);
  -- VRegisters.vhd:22:19
  with n592_o select n593_o <=
    n574_o when "00",
    n575_o when "01",
    n576_o when "10",
    n577_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:22:19
  n594_o <= n523_o (3 downto 2);
  -- VRegisters.vhd:22:19
  with n594_o select n595_o <=
    n579_o when "00",
    n581_o when "01",
    n583_o when "10",
    n585_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:22:19
  n596_o <= n523_o (3 downto 2);
  -- VRegisters.vhd:22:19
  with n596_o select n597_o <=
    n587_o when "00",
    n589_o when "01",
    n591_o when "10",
    n593_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:22:19
  n598_o <= n523_o (4);
  -- VRegisters.vhd:22:19
  n599_o <= n595_o when n598_o = '0' else n597_o;
  -- VRegisters.vhd:22:20
  n600_o <= x_reg (31 downto 0);
  -- VRegisters.vhd:22:19
  n601_o <= x_reg (63 downto 32);
  n602_o <= x_reg (95 downto 64);
  n603_o <= x_reg (127 downto 96);
  n604_o <= x_reg (159 downto 128);
  n605_o <= x_reg (191 downto 160);
  n606_o <= x_reg (223 downto 192);
  n607_o <= x_reg (255 downto 224);
  n608_o <= x_reg (287 downto 256);
  n609_o <= x_reg (319 downto 288);
  n610_o <= x_reg (351 downto 320);
  n611_o <= x_reg (383 downto 352);
  n612_o <= x_reg (415 downto 384);
  n613_o <= x_reg (447 downto 416);
  n614_o <= x_reg (479 downto 448);
  n615_o <= x_reg (511 downto 480);
  n616_o <= x_reg (543 downto 512);
  n617_o <= x_reg (575 downto 544);
  n618_o <= x_reg (607 downto 576);
  n619_o <= x_reg (639 downto 608);
  n620_o <= x_reg (671 downto 640);
  n621_o <= x_reg (703 downto 672);
  n622_o <= x_reg (735 downto 704);
  n623_o <= x_reg (767 downto 736);
  n624_o <= x_reg (799 downto 768);
  n625_o <= x_reg (831 downto 800);
  n626_o <= x_reg (863 downto 832);
  n627_o <= x_reg (895 downto 864);
  n628_o <= x_reg (927 downto 896);
  n629_o <= x_reg (959 downto 928);
  n630_o <= x_reg (991 downto 960);
  n631_o <= x_reg (1023 downto 992);
  -- VRegisters.vhd:23:19
  n632_o <= n527_o (1 downto 0);
  -- VRegisters.vhd:23:19
  with n632_o select n633_o <=
    n600_o when "00",
    n601_o when "01",
    n602_o when "10",
    n603_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:23:19
  n634_o <= n527_o (1 downto 0);
  -- VRegisters.vhd:23:19
  with n634_o select n635_o <=
    n604_o when "00",
    n605_o when "01",
    n606_o when "10",
    n607_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:23:19
  n636_o <= n527_o (1 downto 0);
  -- VRegisters.vhd:23:19
  with n636_o select n637_o <=
    n608_o when "00",
    n609_o when "01",
    n610_o when "10",
    n611_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:23:19
  n638_o <= n527_o (1 downto 0);
  -- VRegisters.vhd:23:19
  with n638_o select n639_o <=
    n612_o when "00",
    n613_o when "01",
    n614_o when "10",
    n615_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:23:19
  n640_o <= n527_o (1 downto 0);
  -- VRegisters.vhd:23:19
  with n640_o select n641_o <=
    n616_o when "00",
    n617_o when "01",
    n618_o when "10",
    n619_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:23:19
  n642_o <= n527_o (1 downto 0);
  -- VRegisters.vhd:23:19
  with n642_o select n643_o <=
    n620_o when "00",
    n621_o when "01",
    n622_o when "10",
    n623_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:23:19
  n644_o <= n527_o (1 downto 0);
  -- VRegisters.vhd:23:19
  with n644_o select n645_o <=
    n624_o when "00",
    n625_o when "01",
    n626_o when "10",
    n627_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:23:19
  n646_o <= n527_o (1 downto 0);
  -- VRegisters.vhd:23:19
  with n646_o select n647_o <=
    n628_o when "00",
    n629_o when "01",
    n630_o when "10",
    n631_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:23:19
  n648_o <= n527_o (3 downto 2);
  -- VRegisters.vhd:23:19
  with n648_o select n649_o <=
    n633_o when "00",
    n635_o when "01",
    n637_o when "10",
    n639_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:23:19
  n650_o <= n527_o (3 downto 2);
  -- VRegisters.vhd:23:19
  with n650_o select n651_o <=
    n641_o when "00",
    n643_o when "01",
    n645_o when "10",
    n647_o when "11",
    (31 downto 0 => 'X') when others;
  -- VRegisters.vhd:23:19
  n652_o <= n527_o (4);
  -- VRegisters.vhd:23:19
  n653_o <= n649_o when n652_o = '0' else n651_o;
  -- VRegisters.vhd:30:13
  n654_o <= n537_o (4);
  -- VRegisters.vhd:30:13
  n655_o <= not n654_o;
  -- VRegisters.vhd:30:13
  n656_o <= n537_o (3);
  -- VRegisters.vhd:30:13
  n657_o <= not n656_o;
  -- VRegisters.vhd:30:13
  n658_o <= n655_o and n657_o;
  -- VRegisters.vhd:30:13
  n659_o <= n655_o and n656_o;
  -- VRegisters.vhd:30:13
  n660_o <= n654_o and n657_o;
  -- VRegisters.vhd:30:13
  n661_o <= n654_o and n656_o;
  -- VRegisters.vhd:30:13
  n662_o <= n537_o (2);
  -- VRegisters.vhd:30:13
  n663_o <= not n662_o;
  -- VRegisters.vhd:30:13
  n664_o <= n658_o and n663_o;
  -- VRegisters.vhd:30:13
  n665_o <= n658_o and n662_o;
  -- VRegisters.vhd:30:13
  n666_o <= n659_o and n663_o;
  -- VRegisters.vhd:30:13
  n667_o <= n659_o and n662_o;
  -- VRegisters.vhd:30:13
  n668_o <= n660_o and n663_o;
  -- VRegisters.vhd:30:13
  n669_o <= n660_o and n662_o;
  -- VRegisters.vhd:30:13
  n670_o <= n661_o and n663_o;
  -- VRegisters.vhd:30:13
  n671_o <= n661_o and n662_o;
  -- VRegisters.vhd:30:13
  n672_o <= n537_o (1);
  -- VRegisters.vhd:30:13
  n673_o <= not n672_o;
  -- VRegisters.vhd:30:13
  n674_o <= n664_o and n673_o;
  -- VRegisters.vhd:30:13
  n675_o <= n664_o and n672_o;
  -- VRegisters.vhd:30:13
  n676_o <= n665_o and n673_o;
  -- VRegisters.vhd:30:13
  n677_o <= n665_o and n672_o;
  -- VRegisters.vhd:30:13
  n678_o <= n666_o and n673_o;
  -- VRegisters.vhd:30:13
  n679_o <= n666_o and n672_o;
  -- VRegisters.vhd:30:13
  n680_o <= n667_o and n673_o;
  -- VRegisters.vhd:30:13
  n681_o <= n667_o and n672_o;
  -- VRegisters.vhd:30:13
  n682_o <= n668_o and n673_o;
  -- VRegisters.vhd:30:13
  n683_o <= n668_o and n672_o;
  -- VRegisters.vhd:30:13
  n684_o <= n669_o and n673_o;
  -- VRegisters.vhd:30:13
  n685_o <= n669_o and n672_o;
  -- VRegisters.vhd:30:13
  n686_o <= n670_o and n673_o;
  -- VRegisters.vhd:30:13
  n687_o <= n670_o and n672_o;
  -- VRegisters.vhd:30:13
  n688_o <= n671_o and n673_o;
  -- VRegisters.vhd:30:13
  n689_o <= n671_o and n672_o;
  -- VRegisters.vhd:30:13
  n690_o <= n537_o (0);
  -- VRegisters.vhd:30:13
  n691_o <= not n690_o;
  -- VRegisters.vhd:30:13
  n692_o <= n674_o and n691_o;
  -- VRegisters.vhd:30:13
  n693_o <= n674_o and n690_o;
  -- VRegisters.vhd:30:13
  n694_o <= n675_o and n691_o;
  -- VRegisters.vhd:30:13
  n695_o <= n675_o and n690_o;
  -- VRegisters.vhd:30:13
  n696_o <= n676_o and n691_o;
  -- VRegisters.vhd:30:13
  n697_o <= n676_o and n690_o;
  -- VRegisters.vhd:30:13
  n698_o <= n677_o and n691_o;
  -- VRegisters.vhd:30:13
  n699_o <= n677_o and n690_o;
  -- VRegisters.vhd:30:13
  n700_o <= n678_o and n691_o;
  -- VRegisters.vhd:30:13
  n701_o <= n678_o and n690_o;
  -- VRegisters.vhd:30:13
  n702_o <= n679_o and n691_o;
  -- VRegisters.vhd:30:13
  n703_o <= n679_o and n690_o;
  -- VRegisters.vhd:30:13
  n704_o <= n680_o and n691_o;
  -- VRegisters.vhd:30:13
  n705_o <= n680_o and n690_o;
  -- VRegisters.vhd:30:13
  n706_o <= n681_o and n691_o;
  -- VRegisters.vhd:30:13
  n707_o <= n681_o and n690_o;
  -- VRegisters.vhd:30:13
  n708_o <= n682_o and n691_o;
  -- VRegisters.vhd:30:13
  n709_o <= n682_o and n690_o;
  -- VRegisters.vhd:30:13
  n710_o <= n683_o and n691_o;
  -- VRegisters.vhd:30:13
  n711_o <= n683_o and n690_o;
  -- VRegisters.vhd:30:13
  n712_o <= n684_o and n691_o;
  -- VRegisters.vhd:30:13
  n713_o <= n684_o and n690_o;
  -- VRegisters.vhd:30:13
  n714_o <= n685_o and n691_o;
  -- VRegisters.vhd:30:13
  n715_o <= n685_o and n690_o;
  -- VRegisters.vhd:30:13
  n716_o <= n686_o and n691_o;
  -- VRegisters.vhd:30:13
  n717_o <= n686_o and n690_o;
  -- VRegisters.vhd:30:13
  n718_o <= n687_o and n691_o;
  -- VRegisters.vhd:30:13
  n719_o <= n687_o and n690_o;
  -- VRegisters.vhd:30:13
  n720_o <= n688_o and n691_o;
  -- VRegisters.vhd:30:13
  n721_o <= n688_o and n690_o;
  -- VRegisters.vhd:30:13
  n722_o <= n689_o and n691_o;
  -- VRegisters.vhd:30:13
  n723_o <= n689_o and n690_o;
  n724_o <= x_reg (31 downto 0);
  -- VRegisters.vhd:30:13
  n725_o <= n692_o and n535_o;
  -- VRegisters.vhd:30:13
  n726_o <= n724_o when n725_o = '0' else xd_i;
  n727_o <= x_reg (63 downto 32);
  -- VRegisters.vhd:30:13
  n728_o <= n693_o and n535_o;
  -- VRegisters.vhd:30:13
  n729_o <= n727_o when n728_o = '0' else xd_i;
  n730_o <= x_reg (95 downto 64);
  -- VRegisters.vhd:30:13
  n731_o <= n694_o and n535_o;
  -- VRegisters.vhd:30:13
  n732_o <= n730_o when n731_o = '0' else xd_i;
  n733_o <= x_reg (127 downto 96);
  -- VRegisters.vhd:30:13
  n734_o <= n695_o and n535_o;
  -- VRegisters.vhd:30:13
  n735_o <= n733_o when n734_o = '0' else xd_i;
  n736_o <= x_reg (159 downto 128);
  -- VRegisters.vhd:30:13
  n737_o <= n696_o and n535_o;
  -- VRegisters.vhd:30:13
  n738_o <= n736_o when n737_o = '0' else xd_i;
  n739_o <= x_reg (191 downto 160);
  -- VRegisters.vhd:30:13
  n740_o <= n697_o and n535_o;
  -- VRegisters.vhd:30:13
  n741_o <= n739_o when n740_o = '0' else xd_i;
  n742_o <= x_reg (223 downto 192);
  -- VRegisters.vhd:30:13
  n743_o <= n698_o and n535_o;
  -- VRegisters.vhd:30:13
  n744_o <= n742_o when n743_o = '0' else xd_i;
  n745_o <= x_reg (255 downto 224);
  -- VRegisters.vhd:30:13
  n746_o <= n699_o and n535_o;
  -- VRegisters.vhd:30:13
  n747_o <= n745_o when n746_o = '0' else xd_i;
  n748_o <= x_reg (287 downto 256);
  -- VRegisters.vhd:30:13
  n749_o <= n700_o and n535_o;
  -- VRegisters.vhd:30:13
  n750_o <= n748_o when n749_o = '0' else xd_i;
  n751_o <= x_reg (319 downto 288);
  -- VRegisters.vhd:30:13
  n752_o <= n701_o and n535_o;
  -- VRegisters.vhd:30:13
  n753_o <= n751_o when n752_o = '0' else xd_i;
  n754_o <= x_reg (351 downto 320);
  -- VRegisters.vhd:30:13
  n755_o <= n702_o and n535_o;
  -- VRegisters.vhd:30:13
  n756_o <= n754_o when n755_o = '0' else xd_i;
  n757_o <= x_reg (383 downto 352);
  -- VRegisters.vhd:30:13
  n758_o <= n703_o and n535_o;
  -- VRegisters.vhd:30:13
  n759_o <= n757_o when n758_o = '0' else xd_i;
  n760_o <= x_reg (415 downto 384);
  -- VRegisters.vhd:30:13
  n761_o <= n704_o and n535_o;
  -- VRegisters.vhd:30:13
  n762_o <= n760_o when n761_o = '0' else xd_i;
  n763_o <= x_reg (447 downto 416);
  -- VRegisters.vhd:30:13
  n764_o <= n705_o and n535_o;
  -- VRegisters.vhd:30:13
  n765_o <= n763_o when n764_o = '0' else xd_i;
  n766_o <= x_reg (479 downto 448);
  -- VRegisters.vhd:30:13
  n767_o <= n706_o and n535_o;
  -- VRegisters.vhd:30:13
  n768_o <= n766_o when n767_o = '0' else xd_i;
  n769_o <= x_reg (511 downto 480);
  -- VRegisters.vhd:30:13
  n770_o <= n707_o and n535_o;
  -- VRegisters.vhd:30:13
  n771_o <= n769_o when n770_o = '0' else xd_i;
  n772_o <= x_reg (543 downto 512);
  -- VRegisters.vhd:30:13
  n773_o <= n708_o and n535_o;
  -- VRegisters.vhd:30:13
  n774_o <= n772_o when n773_o = '0' else xd_i;
  n775_o <= x_reg (575 downto 544);
  -- VRegisters.vhd:30:13
  n776_o <= n709_o and n535_o;
  -- VRegisters.vhd:30:13
  n777_o <= n775_o when n776_o = '0' else xd_i;
  n778_o <= x_reg (607 downto 576);
  -- VRegisters.vhd:30:13
  n779_o <= n710_o and n535_o;
  -- VRegisters.vhd:30:13
  n780_o <= n778_o when n779_o = '0' else xd_i;
  n781_o <= x_reg (639 downto 608);
  -- VRegisters.vhd:30:13
  n782_o <= n711_o and n535_o;
  -- VRegisters.vhd:30:13
  n783_o <= n781_o when n782_o = '0' else xd_i;
  n784_o <= x_reg (671 downto 640);
  -- VRegisters.vhd:30:13
  n785_o <= n712_o and n535_o;
  -- VRegisters.vhd:30:13
  n786_o <= n784_o when n785_o = '0' else xd_i;
  n787_o <= x_reg (703 downto 672);
  -- VRegisters.vhd:30:13
  n788_o <= n713_o and n535_o;
  -- VRegisters.vhd:30:13
  n789_o <= n787_o when n788_o = '0' else xd_i;
  n790_o <= x_reg (735 downto 704);
  -- VRegisters.vhd:30:13
  n791_o <= n714_o and n535_o;
  -- VRegisters.vhd:30:13
  n792_o <= n790_o when n791_o = '0' else xd_i;
  n793_o <= x_reg (767 downto 736);
  -- VRegisters.vhd:30:13
  n794_o <= n715_o and n535_o;
  -- VRegisters.vhd:30:13
  n795_o <= n793_o when n794_o = '0' else xd_i;
  n796_o <= x_reg (799 downto 768);
  -- VRegisters.vhd:30:13
  n797_o <= n716_o and n535_o;
  -- VRegisters.vhd:30:13
  n798_o <= n796_o when n797_o = '0' else xd_i;
  n799_o <= x_reg (831 downto 800);
  -- VRegisters.vhd:30:13
  n800_o <= n717_o and n535_o;
  -- VRegisters.vhd:30:13
  n801_o <= n799_o when n800_o = '0' else xd_i;
  n802_o <= x_reg (863 downto 832);
  -- VRegisters.vhd:30:13
  n803_o <= n718_o and n535_o;
  -- VRegisters.vhd:30:13
  n804_o <= n802_o when n803_o = '0' else xd_i;
  n805_o <= x_reg (895 downto 864);
  -- VRegisters.vhd:30:13
  n806_o <= n719_o and n535_o;
  -- VRegisters.vhd:30:13
  n807_o <= n805_o when n806_o = '0' else xd_i;
  n808_o <= x_reg (927 downto 896);
  -- VRegisters.vhd:30:13
  n809_o <= n720_o and n535_o;
  -- VRegisters.vhd:30:13
  n810_o <= n808_o when n809_o = '0' else xd_i;
  n811_o <= x_reg (959 downto 928);
  -- VRegisters.vhd:30:13
  n812_o <= n721_o and n535_o;
  -- VRegisters.vhd:30:13
  n813_o <= n811_o when n812_o = '0' else xd_i;
  n814_o <= x_reg (991 downto 960);
  -- VRegisters.vhd:30:13
  n815_o <= n722_o and n535_o;
  -- VRegisters.vhd:30:13
  n816_o <= n814_o when n815_o = '0' else xd_i;
  n817_o <= x_reg (1023 downto 992);
  -- VRegisters.vhd:30:13
  n818_o <= n723_o and n535_o;
  -- VRegisters.vhd:30:13
  n819_o <= n817_o when n818_o = '0' else xd_i;
  n820_o <= n819_o & n816_o & n813_o & n810_o & n807_o & n804_o & n801_o & n798_o & n795_o & n792_o & n789_o & n786_o & n783_o & n780_o & n777_o & n774_o & n771_o & n768_o & n765_o & n762_o & n759_o & n756_o & n753_o & n750_o & n747_o & n744_o & n741_o & n738_o & n735_o & n732_o & n729_o & n726_o;
end rtl;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vdecoder is
  port (
    data_i : in std_logic_vector (31 downto 0);
    instr_o_funct3 : out std_logic_vector (2 downto 0);
    instr_o_imm : out std_logic_vector (31 downto 0);
    instr_o_rs1 : out std_logic_vector (4 downto 0);
    instr_o_rs2 : out std_logic_vector (4 downto 0);
    instr_o_rd : out std_logic_vector (4 downto 0);
    instr_o_use_pc : out std_logic;
    instr_o_use_imm : out std_logic;
    instr_o_alu_fn : out std_logic_vector (3 downto 0);
    instr_o_is_load : out std_logic;
    instr_o_is_store : out std_logic;
    instr_o_is_mret : out std_logic;
    instr_o_is_jump : out std_logic;
    instr_o_is_branch : out std_logic;
    instr_o_has_rd : out std_logic;
    instr_o_is_invalid : out std_logic);
end entity vdecoder;

architecture rtl of vdecoder is
  signal n165_o : std_logic_vector (2 downto 0);
  signal n166_o : std_logic_vector (31 downto 0);
  signal n167_o : std_logic_vector (4 downto 0);
  signal n168_o : std_logic_vector (4 downto 0);
  signal n169_o : std_logic_vector (4 downto 0);
  signal n170_o : std_logic;
  signal n171_o : std_logic;
  signal n172_o : std_logic_vector (3 downto 0);
  signal n173_o : std_logic;
  signal n174_o : std_logic;
  signal n175_o : std_logic;
  signal n176_o : std_logic;
  signal n177_o : std_logic;
  signal n178_o : std_logic;
  signal n179_o : std_logic;
  signal n180_o : std_logic_vector (6 downto 0);
  signal n181_o : std_logic_vector (4 downto 0);
  signal n182_o : std_logic_vector (4 downto 0);
  signal n183_o : std_logic_vector (2 downto 0);
  signal n184_o : std_logic_vector (4 downto 0);
  signal n185_o : std_logic_vector (6 downto 0);
  signal n186_o : std_logic_vector (11 downto 0);
  signal n187_o : std_logic_vector (6 downto 0);
  signal n188_o : std_logic_vector (4 downto 0);
  signal n189_o : std_logic;
  signal n190_o : std_logic_vector (5 downto 0);
  signal n191_o : std_logic_vector (3 downto 0);
  signal n192_o : std_logic;
  signal n193_o : std_logic_vector (19 downto 0);
  signal n194_o : std_logic;
  signal n195_o : std_logic_vector (9 downto 0);
  signal n196_o : std_logic;
  signal n197_o : std_logic_vector (7 downto 0);
  signal imm : std_logic_vector (31 downto 0);
  signal n199_o : std_logic_vector (31 downto 0);
  signal n201_o : std_logic;
  signal n203_o : std_logic;
  signal n204_o : std_logic;
  signal n206_o : std_logic_vector (8 downto 0);
  signal n207_o : std_logic_vector (9 downto 0);
  signal n208_o : std_logic_vector (19 downto 0);
  signal n210_o : std_logic_vector (20 downto 0);
  signal n215_o : std_logic_vector (31 downto 0);
  signal n217_o : std_logic;
  signal n223_o : std_logic_vector (31 downto 0);
  signal n225_o : std_logic;
  signal n227_o : std_logic;
  signal n228_o : std_logic;
  signal n230_o : std_logic;
  signal n231_o : std_logic;
  signal n233_o : std_logic;
  signal n234_o : std_logic;
  signal n236_o : std_logic_vector (1 downto 0);
  signal n237_o : std_logic_vector (7 downto 0);
  signal n238_o : std_logic_vector (11 downto 0);
  signal n240_o : std_logic_vector (12 downto 0);
  signal n245_o : std_logic_vector (31 downto 0);
  signal n247_o : std_logic;
  signal n249_o : std_logic_vector (11 downto 0);
  signal n254_o : std_logic_vector (31 downto 0);
  signal n256_o : std_logic;
  signal n257_o : std_logic_vector (4 downto 0);
  signal n258_o : std_logic_vector (31 downto 0);
  signal n279_o : std_logic;
  signal n281_o : std_logic;
  signal n282_o : std_logic;
  signal n284_o : std_logic;
  signal n285_o : std_logic;
  signal n287_o : std_logic;
  signal n289_o : std_logic;
  signal n293_o : std_logic;
  signal n295_o : std_logic;
  signal n297_o : std_logic;
  signal n298_o : std_logic;
  signal n301_o : std_logic_vector (3 downto 0);
  signal n303_o : std_logic;
  signal n306_o : std_logic;
  signal n309_o : std_logic;
  signal n312_o : std_logic;
  signal n315_o : std_logic;
  signal n318_o : std_logic;
  signal n321_o : std_logic;
  signal n323_o : std_logic;
  signal n326_o : std_logic_vector (3 downto 0);
  signal n328_o : std_logic;
  signal n330_o : std_logic_vector (7 downto 0);
  signal n331_o : std_logic_vector (3 downto 0);
  signal n333_o : std_logic;
  signal n335_o : std_logic;
  signal n336_o : std_logic;
  signal n338_o : std_logic_vector (1 downto 0);
  signal n339_o : std_logic_vector (3 downto 0);
  signal n342_o : std_logic;
  signal n344_o : std_logic;
  signal n346_o : std_logic;
  signal n348_o : std_logic;
  signal n349_o : std_logic;
  signal n351_o : std_logic;
  signal n352_o : std_logic;
  signal n354_o : std_logic;
  signal n356_o : std_logic;
  signal n357_o : std_logic;
  signal n359_o : std_logic;
  signal n361_o : std_logic;
  signal n363_o : std_logic;
  signal n364_o : std_logic;
  signal n370_o : std_logic_vector (30 downto 0);
  signal n371_o : std_logic_vector (31 downto 0);
  signal n373_o : std_logic;
  signal n374_o : std_logic;
  signal n379_o : std_logic;
  signal n381_o : std_logic;
  signal n382_o : std_logic;
  signal n384_o : std_logic;
  signal n385_o : std_logic;
  signal n387_o : std_logic;
  signal n389_o : std_logic;
  signal n391_o : std_logic;
  signal n393_o : std_logic;
  signal n394_o : std_logic;
  signal n396_o : std_logic;
  signal n397_o : std_logic;
  signal n399_o : std_logic;
  signal n400_o : std_logic;
  signal n402_o : std_logic;
  signal n403_o : std_logic;
  signal n405_o : std_logic;
  signal n406_o : std_logic;
  signal n408_o : std_logic;
  signal n410_o : std_logic;
  signal n412_o : std_logic;
  signal n414_o : std_logic;
  signal n415_o : std_logic;
  signal n417_o : std_logic;
  signal n418_o : std_logic;
  signal n420_o : std_logic;
  signal n421_o : std_logic;
  signal n423_o : std_logic;
  signal n424_o : std_logic;
  signal n426_o : std_logic;
  signal n428_o : std_logic;
  signal n430_o : std_logic;
  signal n432_o : std_logic;
  signal n433_o : std_logic;
  signal n435_o : std_logic;
  signal n436_o : std_logic;
  signal n438_o : std_logic;
  signal n440_o : std_logic;
  signal n442_o : std_logic;
  signal n444_o : std_logic;
  signal n445_o : std_logic;
  signal n447_o : std_logic;
  signal n448_o : std_logic;
  signal n450_o : std_logic;
  signal n451_o : std_logic;
  signal n453_o : std_logic;
  signal n454_o : std_logic;
  signal n456_o : std_logic;
  signal n457_o : std_logic;
  signal n459_o : std_logic;
  signal n461_o : std_logic;
  signal n463_o : std_logic;
  signal n465_o : std_logic;
  signal n466_o : std_logic;
  signal n468_o : std_logic;
  signal n470_o : std_logic_vector (2 downto 0);
  signal n471_o : std_logic;
  signal n473_o : std_logic;
  signal n475_o : std_logic;
  signal n477_o : std_logic;
  signal n478_o : std_logic;
  signal n480_o : std_logic;
  signal n482_o : std_logic;
  signal n483_o : std_logic;
  signal n485_o : std_logic;
  signal n487_o : std_logic;
  signal n489_o : std_logic;
  signal n490_o : std_logic;
  signal n492_o : std_logic;
  signal n493_o : std_logic;
  signal n495_o : std_logic;
  signal n496_o : std_logic;
  signal n498_o : std_logic;
  signal n499_o : std_logic;
  signal n501_o : std_logic;
  signal n502_o : std_logic;
  signal n504_o : std_logic_vector (1 downto 0);
  signal n505_o : std_logic;
  signal n507_o : std_logic;
  signal n509_o : std_logic;
  signal n511_o : std_logic;
  signal n512_o : std_logic;
  signal n514_o : std_logic;
  signal n516_o : std_logic_vector (7 downto 0);
  signal n517_o : std_logic;
  signal n519_o : std_logic_vector (62 downto 0);
begin
  instr_o_funct3 <= n165_o;
  instr_o_imm <= n166_o;
  instr_o_rs1 <= n167_o;
  instr_o_rs2 <= n168_o;
  instr_o_rd <= n169_o;
  instr_o_use_pc <= n170_o;
  instr_o_use_imm <= n171_o;
  instr_o_alu_fn <= n172_o;
  instr_o_is_load <= n173_o;
  instr_o_is_store <= n174_o;
  instr_o_is_mret <= n175_o;
  instr_o_is_jump <= n176_o;
  instr_o_is_branch <= n177_o;
  instr_o_has_rd <= n178_o;
  instr_o_is_invalid <= n179_o;
  -- VStateMachine.vhd:18:9
  n165_o <= n519_o (2 downto 0);
  -- VStateMachine.vhd:17:9
  n166_o <= n519_o (34 downto 3);
  -- VStateMachine.vhd:16:9
  n167_o <= n519_o (39 downto 35);
  -- VStateMachine.vhd:15:9
  n168_o <= n519_o (44 downto 40);
  n169_o <= n519_o (49 downto 45);
  -- VStateMachine.vhd:28:5
  n170_o <= n519_o (50);
  n171_o <= n519_o (51);
  n172_o <= n519_o (55 downto 52);
  n173_o <= n519_o (56);
  n174_o <= n519_o (57);
  n175_o <= n519_o (58);
  n176_o <= n519_o (59);
  n177_o <= n519_o (60);
  n178_o <= n519_o (61);
  n179_o <= n519_o (62);
  n180_o <= data_i (31 downto 25);
  n181_o <= data_i (24 downto 20);
  n182_o <= data_i (19 downto 15);
  n183_o <= data_i (14 downto 12);
  n184_o <= data_i (11 downto 7);
  n185_o <= data_i (6 downto 0);
  n186_o <= data_i (31 downto 20);
  n187_o <= data_i (31 downto 25);
  n188_o <= data_i (11 downto 7);
  n189_o <= data_i (31);
  n190_o <= data_i (30 downto 25);
  n191_o <= data_i (11 downto 8);
  n192_o <= data_i (7);
  n193_o <= data_i (31 downto 12);
  n194_o <= data_i (31);
  n195_o <= data_i (30 downto 21);
  n196_o <= data_i (20);
  n197_o <= data_i (19 downto 12);
  -- VDecoder.vhd:130:12
  imm <= n258_o; -- (signal)
  -- VDecoder.vhd:134:28
  n199_o <= n193_o & "000000000000";
  -- VDecoder.vhd:134:99
  n201_o <= '1' when n185_o = "0110111" else '0';
  -- VDecoder.vhd:134:111
  n203_o <= '1' when n185_o = "0010111" else '0';
  -- VDecoder.vhd:134:111
  n204_o <= n201_o or n203_o;
  -- VDecoder.vhd:135:45
  n206_o <= n194_o & n197_o;
  -- VDecoder.vhd:135:61
  n207_o <= n206_o & n196_o;
  -- VDecoder.vhd:135:77
  n208_o <= n207_o & n195_o;
  -- VDecoder.vhd:135:92
  n210_o <= n208_o & '0';
  -- Virgule_pkg.vhd:53:23
  n215_o <= std_logic_vector (resize (signed (n210_o), 32));  --  sext
  -- VDecoder.vhd:135:99
  n217_o <= '1' when n185_o = "1101111" else '0';
  -- Virgule_pkg.vhd:53:23
  n223_o <= std_logic_vector (resize (signed (n186_o), 32));  --  sext
  -- VDecoder.vhd:136:99
  n225_o <= '1' when n185_o = "1100111" else '0';
  -- VDecoder.vhd:136:112
  n227_o <= '1' when n185_o = "0000011" else '0';
  -- VDecoder.vhd:136:112
  n228_o <= n225_o or n227_o;
  -- VDecoder.vhd:136:122
  n230_o <= '1' when n185_o = "0010011" else '0';
  -- VDecoder.vhd:136:122
  n231_o <= n228_o or n230_o;
  -- VDecoder.vhd:136:131
  n233_o <= '1' when n185_o = "1110011" else '0';
  -- VDecoder.vhd:136:131
  n234_o <= n231_o or n233_o;
  -- VDecoder.vhd:137:45
  n236_o <= n189_o & n192_o;
  -- VDecoder.vhd:137:61
  n237_o <= n236_o & n190_o;
  -- VDecoder.vhd:137:77
  n238_o <= n237_o & n191_o;
  -- VDecoder.vhd:137:92
  n240_o <= n238_o & '0';
  -- Virgule_pkg.vhd:53:23
  n245_o <= std_logic_vector (resize (signed (n240_o), 32));  --  sext
  -- VDecoder.vhd:137:99
  n247_o <= '1' when n185_o = "1100011" else '0';
  -- VDecoder.vhd:138:45
  n249_o <= n187_o & n188_o;
  -- Virgule_pkg.vhd:53:23
  n254_o <= std_logic_vector (resize (signed (n249_o), 32));  --  sext
  -- VDecoder.vhd:138:99
  n256_o <= '1' when n185_o = "0100011" else '0';
  n257_o <= n256_o & n247_o & n234_o & n217_o & n204_o;
  -- VDecoder.vhd:133:5
  with n257_o select n258_o <=
    n254_o when "10000",
    n245_o when "01000",
    n223_o when "00100",
    n215_o when "00010",
    n199_o when "00001",
    "00000000000000000000000000000000" when others;
  -- VDecoder.vhd:150:33
  n279_o <= '1' when n185_o = "0010111" else '0';
  -- VDecoder.vhd:150:47
  n281_o <= '1' when n185_o = "1101111" else '0';
  -- VDecoder.vhd:150:47
  n282_o <= n279_o or n281_o;
  -- VDecoder.vhd:150:56
  n284_o <= '1' when n185_o = "1100011" else '0';
  -- VDecoder.vhd:150:56
  n285_o <= n282_o or n284_o;
  -- VDecoder.vhd:149:5
  with n285_o select n287_o <=
    '1' when '1',
    '0' when others;
  -- VDecoder.vhd:153:37
  n289_o <= '1' when n185_o /= "0110011" else '0';
  -- VDecoder.vhd:159:13
  n293_o <= '1' when n185_o = "0110111" else '0';
  -- VDecoder.vhd:164:41
  n295_o <= '1' when n185_o = "0110011" else '0';
  -- VDecoder.vhd:164:67
  n297_o <= '1' when n180_o = "0100000" else '0';
  -- VDecoder.vhd:164:50
  n298_o <= n295_o and n297_o;
  -- VDecoder.vhd:164:25
  n301_o <= "0001" when n298_o = '0' else "0010";
  -- VDecoder.vhd:163:21
  n303_o <= '1' when n183_o = "000" else '0';
  -- VDecoder.vhd:169:21
  n306_o <= '1' when n183_o = "010" else '0';
  -- VDecoder.vhd:170:21
  n309_o <= '1' when n183_o = "011" else '0';
  -- VDecoder.vhd:171:21
  n312_o <= '1' when n183_o = "100" else '0';
  -- VDecoder.vhd:172:21
  n315_o <= '1' when n183_o = "110" else '0';
  -- VDecoder.vhd:173:21
  n318_o <= '1' when n183_o = "111" else '0';
  -- VDecoder.vhd:174:21
  n321_o <= '1' when n183_o = "001" else '0';
  -- VDecoder.vhd:176:41
  n323_o <= '1' when n180_o = "0100000" else '0';
  -- VDecoder.vhd:176:25
  n326_o <= "1001" when n323_o = '0' else "1010";
  -- VDecoder.vhd:175:21
  n328_o <= '1' when n183_o = "101" else '0';
  n330_o <= n328_o & n321_o & n318_o & n315_o & n312_o & n309_o & n306_o & n303_o;
  -- VDecoder.vhd:162:17
  with n330_o select n331_o <=
    n326_o when "10000000",
    "1000" when "01000000",
    "0111" when "00100000",
    "0110" when "00010000",
    "0101" when "00001000",
    "0100" when "00000100",
    "0011" when "00000010",
    n301_o when "00000001",
    "0001" when others;
  -- VDecoder.vhd:161:13
  n333_o <= '1' when n185_o = "0010011" else '0';
  -- VDecoder.vhd:161:25
  n335_o <= '1' when n185_o = "0110011" else '0';
  -- VDecoder.vhd:161:25
  n336_o <= n333_o or n335_o;
  n338_o <= n336_o & n293_o;
  -- VDecoder.vhd:158:9
  with n338_o select n339_o <=
    n331_o when "10",
    "0000" when "01",
    "0001" when others;
  -- VDecoder.vhd:188:40
  n342_o <= '1' when n185_o = "0000011" else '0';
  -- VDecoder.vhd:189:40
  n344_o <= '1' when n185_o = "0100011" else '0';
  -- VDecoder.vhd:190:40
  n346_o <= '1' when n185_o = "1110011" else '0';
  -- VDecoder.vhd:190:69
  n348_o <= '1' when n183_o = "000" else '0';
  -- VDecoder.vhd:190:52
  n349_o <= n346_o and n348_o;
  -- VDecoder.vhd:190:95
  n351_o <= '1' when n186_o = "001100000010" else '0';
  -- VDecoder.vhd:190:79
  n352_o <= n349_o and n351_o;
  -- VDecoder.vhd:191:40
  n354_o <= '1' when n185_o = "1101111" else '0';
  -- VDecoder.vhd:191:69
  n356_o <= '1' when n185_o = "1100111" else '0';
  -- VDecoder.vhd:191:52
  n357_o <= n354_o or n356_o;
  -- VDecoder.vhd:192:40
  n359_o <= '1' when n185_o = "1100011" else '0';
  -- VDecoder.vhd:193:39
  n361_o <= '1' when n185_o /= "1100011" else '0';
  -- VDecoder.vhd:193:69
  n363_o <= '1' when n185_o /= "0100011" else '0';
  -- VDecoder.vhd:193:52
  n364_o <= n361_o and n363_o;
  -- Virgule_pkg.vhd:64:16
  n370_o <= "00000000000000000000000000" & n184_o;  --  uext
  -- VDecoder.vhd:193:106
  n371_o <= "0" & n370_o;  --  uext
  -- VDecoder.vhd:193:106
  n373_o <= '1' when n371_o /= "00000000000000000000000000000000" else '0';
  -- VDecoder.vhd:193:81
  n374_o <= n364_o and n373_o;
  -- VDecoder.vhd:205:13
  n379_o <= '1' when n185_o = "0110111" else '0';
  -- VDecoder.vhd:205:25
  n381_o <= '1' when n185_o = "0010111" else '0';
  -- VDecoder.vhd:205:25
  n382_o <= n379_o or n381_o;
  -- VDecoder.vhd:205:36
  n384_o <= '1' when n185_o = "1101111" else '0';
  -- VDecoder.vhd:205:36
  n385_o <= n382_o or n384_o;
  -- VDecoder.vhd:208:52
  n387_o <= '1' when n183_o /= "000" else '0';
  -- VDecoder.vhd:207:13
  n389_o <= '1' when n185_o = "1100111" else '0';
  -- VDecoder.vhd:212:21
  n391_o <= '1' when n183_o = "000" else '0';
  -- VDecoder.vhd:212:33
  n393_o <= '1' when n183_o = "001" else '0';
  -- VDecoder.vhd:212:33
  n394_o <= n391_o or n393_o;
  -- VDecoder.vhd:212:42
  n396_o <= '1' when n183_o = "100" else '0';
  -- VDecoder.vhd:212:42
  n397_o <= n394_o or n396_o;
  -- VDecoder.vhd:212:51
  n399_o <= '1' when n183_o = "101" else '0';
  -- VDecoder.vhd:212:51
  n400_o <= n397_o or n399_o;
  -- VDecoder.vhd:212:60
  n402_o <= '1' when n183_o = "110" else '0';
  -- VDecoder.vhd:212:60
  n403_o <= n400_o or n402_o;
  -- VDecoder.vhd:212:70
  n405_o <= '1' when n183_o = "111" else '0';
  -- VDecoder.vhd:212:70
  n406_o <= n403_o or n405_o;
  -- VDecoder.vhd:211:17
  with n406_o select n408_o <=
    '0' when '1',
    '1' when others;
  -- VDecoder.vhd:210:13
  n410_o <= '1' when n185_o = "1100011" else '0';
  -- VDecoder.vhd:218:21
  n412_o <= '1' when n183_o = "000" else '0';
  -- VDecoder.vhd:218:35
  n414_o <= '1' when n183_o = "001" else '0';
  -- VDecoder.vhd:218:35
  n415_o <= n412_o or n414_o;
  -- VDecoder.vhd:218:46
  n417_o <= '1' when n183_o = "010" else '0';
  -- VDecoder.vhd:218:46
  n418_o <= n415_o or n417_o;
  -- VDecoder.vhd:218:57
  n420_o <= '1' when n183_o = "100" else '0';
  -- VDecoder.vhd:218:57
  n421_o <= n418_o or n420_o;
  -- VDecoder.vhd:218:66
  n423_o <= '1' when n183_o = "101" else '0';
  -- VDecoder.vhd:218:66
  n424_o <= n421_o or n423_o;
  -- VDecoder.vhd:217:17
  with n424_o select n426_o <=
    '0' when '1',
    '1' when others;
  -- VDecoder.vhd:216:13
  n428_o <= '1' when n185_o = "0000011" else '0';
  -- VDecoder.vhd:224:21
  n430_o <= '1' when n183_o = "000" else '0';
  -- VDecoder.vhd:224:35
  n432_o <= '1' when n183_o = "001" else '0';
  -- VDecoder.vhd:224:35
  n433_o <= n430_o or n432_o;
  -- VDecoder.vhd:224:46
  n435_o <= '1' when n183_o = "010" else '0';
  -- VDecoder.vhd:224:46
  n436_o <= n433_o or n435_o;
  -- VDecoder.vhd:223:17
  with n436_o select n438_o <=
    '0' when '1',
    '1' when others;
  -- VDecoder.vhd:222:13
  n440_o <= '1' when n185_o = "0100011" else '0';
  -- VDecoder.vhd:230:21
  n442_o <= '1' when n183_o = "000" else '0';
  -- VDecoder.vhd:230:37
  n444_o <= '1' when n183_o = "010" else '0';
  -- VDecoder.vhd:230:37
  n445_o <= n442_o or n444_o;
  -- VDecoder.vhd:230:46
  n447_o <= '1' when n183_o = "011" else '0';
  -- VDecoder.vhd:230:46
  n448_o <= n445_o or n447_o;
  -- VDecoder.vhd:230:56
  n450_o <= '1' when n183_o = "100" else '0';
  -- VDecoder.vhd:230:56
  n451_o <= n448_o or n450_o;
  -- VDecoder.vhd:230:65
  n453_o <= '1' when n183_o = "110" else '0';
  -- VDecoder.vhd:230:65
  n454_o <= n451_o or n453_o;
  -- VDecoder.vhd:230:73
  n456_o <= '1' when n183_o = "111" else '0';
  -- VDecoder.vhd:230:73
  n457_o <= n454_o or n456_o;
  -- VDecoder.vhd:232:60
  n459_o <= '1' when n180_o /= "0000000" else '0';
  -- VDecoder.vhd:231:21
  n461_o <= '1' when n183_o = "001" else '0';
  -- VDecoder.vhd:234:60
  n463_o <= '1' when n180_o /= "0000000" else '0';
  -- VDecoder.vhd:234:91
  n465_o <= '1' when n180_o /= "0100000" else '0';
  -- VDecoder.vhd:234:74
  n466_o <= n463_o and n465_o;
  -- VDecoder.vhd:233:21
  n468_o <= '1' when n183_o = "101" else '0';
  n470_o <= n468_o & n461_o & n457_o;
  -- VDecoder.vhd:229:17
  with n470_o select n471_o <=
    n466_o when "100",
    n459_o when "010",
    '0' when "001",
    '1' when others;
  -- VDecoder.vhd:228:13
  n473_o <= '1' when n185_o = "0010011" else '0';
  -- VDecoder.vhd:241:60
  n475_o <= '1' when n180_o /= "0000000" else '0';
  -- VDecoder.vhd:241:91
  n477_o <= '1' when n180_o /= "0100000" else '0';
  -- VDecoder.vhd:241:74
  n478_o <= n475_o and n477_o;
  -- VDecoder.vhd:240:21
  n480_o <= '1' when n183_o = "000" else '0';
  -- VDecoder.vhd:240:37
  n482_o <= '1' when n183_o = "101" else '0';
  -- VDecoder.vhd:240:37
  n483_o <= n480_o or n482_o;
  -- VDecoder.vhd:243:64
  n485_o <= '1' when n180_o /= "0000000" else '0';
  -- VDecoder.vhd:242:21
  n487_o <= '1' when n183_o = "001" else '0';
  -- VDecoder.vhd:242:33
  n489_o <= '1' when n183_o = "010" else '0';
  -- VDecoder.vhd:242:33
  n490_o <= n487_o or n489_o;
  -- VDecoder.vhd:242:42
  n492_o <= '1' when n183_o = "011" else '0';
  -- VDecoder.vhd:242:42
  n493_o <= n490_o or n492_o;
  -- VDecoder.vhd:242:52
  n495_o <= '1' when n183_o = "100" else '0';
  -- VDecoder.vhd:242:52
  n496_o <= n493_o or n495_o;
  -- VDecoder.vhd:242:61
  n498_o <= '1' when n183_o = "110" else '0';
  -- VDecoder.vhd:242:61
  n499_o <= n496_o or n498_o;
  -- VDecoder.vhd:242:69
  n501_o <= '1' when n183_o = "111" else '0';
  -- VDecoder.vhd:242:69
  n502_o <= n499_o or n501_o;
  n504_o <= n502_o & n483_o;
  -- VDecoder.vhd:239:17
  with n504_o select n505_o <=
    n485_o when "10",
    n478_o when "01",
    '1' when others;
  -- VDecoder.vhd:238:13
  n507_o <= '1' when n185_o = "0110011" else '0';
  -- VDecoder.vhd:248:51
  n509_o <= '1' when n186_o /= "001100000010" else '0';
  -- VDecoder.vhd:248:79
  n511_o <= '1' when n183_o /= "000" else '0';
  -- VDecoder.vhd:248:63
  n512_o <= n509_o or n511_o;
  -- VDecoder.vhd:247:13
  n514_o <= '1' when n185_o = "1110011" else '0';
  n516_o <= n514_o & n507_o & n473_o & n440_o & n428_o & n410_o & n389_o & n385_o;
  -- VDecoder.vhd:204:9
  with n516_o select n517_o <=
    n512_o when "10000000",
    n505_o when "01000000",
    n471_o when "00100000",
    n438_o when "00010000",
    n426_o when "00001000",
    n408_o when "00000100",
    n387_o when "00000010",
    '0' when "00000001",
    '1' when others;
  n519_o <= n517_o & n374_o & n359_o & n357_o & n352_o & n344_o & n342_o & n339_o & n289_o & n287_o & n184_o & n181_o & n182_o & imm & n183_o;
end rtl;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vstatemachine is
  port (
    clk_i : in std_logic;
    reset_i : in std_logic;
    is_load_i : in std_logic;
    is_store_i : in std_logic;
    has_rd_i : in std_logic;
    ready_i : in std_logic;
    fetch_en_o : out std_logic;
    decode_en_o : out std_logic;
    execute_en_o : out std_logic;
    load_en_o : out std_logic;
    store_en_o : out std_logic;
    writeback_en_o : out std_logic);
end entity vstatemachine;

architecture rtl of vstatemachine is
  signal state_reg : std_logic_vector (2 downto 0);
  signal n118_o : std_logic_vector (2 downto 0);
  signal n120_o : std_logic;
  signal n122_o : std_logic;
  signal n125_o : std_logic_vector (2 downto 0);
  signal n127_o : std_logic_vector (2 downto 0);
  signal n129_o : std_logic_vector (2 downto 0);
  signal n131_o : std_logic;
  signal n133_o : std_logic_vector (2 downto 0);
  signal n135_o : std_logic;
  signal n137_o : std_logic_vector (2 downto 0);
  signal n139_o : std_logic;
  signal n141_o : std_logic;
  signal n142_o : std_logic_vector (5 downto 0);
  signal n146_o : std_logic_vector (2 downto 0);
  signal n148_o : std_logic_vector (2 downto 0);
  signal n151_q : std_logic_vector (2 downto 0);
  signal n153_o : std_logic;
  signal n155_o : std_logic;
  signal n157_o : std_logic;
  signal n159_o : std_logic;
  signal n161_o : std_logic;
  signal n163_o : std_logic;
begin
  fetch_en_o <= n153_o;
  decode_en_o <= n155_o;
  execute_en_o <= n157_o;
  load_en_o <= n159_o;
  store_en_o <= n161_o;
  writeback_en_o <= n163_o;
  -- VStateMachine.vhd:26:12
  state_reg <= n151_q; -- (signal)
  -- VStateMachine.vhd:36:25
  n118_o <= state_reg when ready_i = '0' else "001";
  -- VStateMachine.vhd:35:21
  n120_o <= '1' when state_reg = "000" else '0';
  -- VStateMachine.vhd:39:21
  n122_o <= '1' when state_reg = "001" else '0';
  -- VStateMachine.vhd:46:25
  n125_o <= "000" when has_rd_i = '0' else "101";
  -- VStateMachine.vhd:44:25
  n127_o <= n125_o when is_store_i = '0' else "100";
  -- VStateMachine.vhd:42:25
  n129_o <= n127_o when is_load_i = '0' else "011";
  -- VStateMachine.vhd:41:21
  n131_o <= '1' when state_reg = "010" else '0';
  -- VStateMachine.vhd:52:25
  n133_o <= state_reg when ready_i = '0' else "101";
  -- VStateMachine.vhd:51:21
  n135_o <= '1' when state_reg = "011" else '0';
  -- VStateMachine.vhd:56:25
  n137_o <= state_reg when ready_i = '0' else "000";
  -- VStateMachine.vhd:55:21
  n139_o <= '1' when state_reg = "100" else '0';
  -- VStateMachine.vhd:59:21
  n141_o <= '1' when state_reg = "101" else '0';
  n142_o <= n141_o & n139_o & n135_o & n131_o & n122_o & n120_o;
  -- VStateMachine.vhd:34:17
  with n142_o select n146_o <=
    "000" when "100000",
    n137_o when "010000",
    n133_o when "001000",
    n129_o when "000100",
    "010" when "000010",
    n118_o when "000001",
    "XXX" when others;
  -- VStateMachine.vhd:31:13
  n148_o <= n146_o when reset_i = '0' else "000";
  -- VStateMachine.vhd:30:9
  process (clk_i)
  begin
    if rising_edge (clk_i) then
      n151_q <= n148_o;
    end if;
  end process;
  -- VStateMachine.vhd:66:33
  n153_o <= '1' when state_reg = "000" else '0';
  -- VStateMachine.vhd:67:33
  n155_o <= '1' when state_reg = "001" else '0';
  -- VStateMachine.vhd:68:33
  n157_o <= '1' when state_reg = "010" else '0';
  -- VStateMachine.vhd:69:33
  n159_o <= '1' when state_reg = "011" else '0';
  -- VStateMachine.vhd:70:33
  n161_o <= '1' when state_reg = "100" else '0';
  -- VStateMachine.vhd:71:33
  n163_o <= '1' when state_reg = "101" else '0';
end rtl;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

architecture rtl of virgule is
  signal wrap_clk_i: std_logic;
  signal wrap_reset_i: std_logic;
  signal wrap_ready_i: std_logic;
  subtype typwrap_rdata_i is std_logic_vector (31 downto 0);
  signal wrap_rdata_i: typwrap_rdata_i;
  signal wrap_irq_i: std_logic;
  signal wrap_valid_o: std_logic;
  subtype typwrap_address_o is std_logic_vector (31 downto 0);
  signal wrap_address_o: typwrap_address_o;
  subtype typwrap_write_o is std_logic_vector (3 downto 0);
  signal wrap_write_o: typwrap_write_o;
  subtype typwrap_wdata_o is std_logic_vector (31 downto 0);
  signal wrap_wdata_o: typwrap_wdata_o;
  signal fetch_en : std_logic;
  signal decode_en : std_logic;
  signal execute_en : std_logic;
  signal load_en : std_logic;
  signal store_en : std_logic;
  signal writeback_en : std_logic;
  signal instr : std_logic_vector (62 downto 0);
  signal instr_reg : std_logic_vector (62 downto 0);
  signal xs1 : std_logic_vector (31 downto 0);
  signal xs2 : std_logic_vector (31 downto 0);
  signal xd : std_logic_vector (31 downto 0);
  signal xs1_reg : std_logic_vector (31 downto 0);
  signal xs2_reg : std_logic_vector (31 downto 0);
  signal reg_write : std_logic;
  signal pc_reg : std_logic_vector (31 downto 0);
  signal pc_next_reg : std_logic_vector (31 downto 0);
  signal pc_next : std_logic_vector (31 downto 0);
  signal pc_to_fetch : std_logic_vector (31 downto 0);
  signal alu_a_reg : std_logic_vector (31 downto 0);
  signal alu_b_reg : std_logic_vector (31 downto 0);
  signal alu_r_reg : std_logic_vector (31 downto 0);
  signal alu_r : std_logic_vector (31 downto 0);
  signal valid : std_logic;
  signal rdata_reg : std_logic_vector (31 downto 0);
  signal load_data : std_logic_vector (31 downto 0);
  signal fsm_inst_fetch_en_o : std_logic;
  signal fsm_inst_decode_en_o : std_logic;
  signal fsm_inst_execute_en_o : std_logic;
  signal fsm_inst_load_en_o : std_logic;
  signal fsm_inst_store_en_o : std_logic;
  signal fsm_inst_writeback_en_o : std_logic;
  signal n5_o : std_logic;
  signal n6_o : std_logic;
  signal n7_o : std_logic;
  signal decoder_inst_instr_o_funct3 : std_logic_vector (2 downto 0);
  signal decoder_inst_instr_o_imm : std_logic_vector (31 downto 0);
  signal decoder_inst_instr_o_rs1 : std_logic_vector (4 downto 0);
  signal decoder_inst_instr_o_rs2 : std_logic_vector (4 downto 0);
  signal decoder_inst_instr_o_rd : std_logic_vector (4 downto 0);
  signal decoder_inst_instr_o_use_pc : std_logic;
  signal decoder_inst_instr_o_use_imm : std_logic;
  signal decoder_inst_instr_o_alu_fn : std_logic_vector (3 downto 0);
  signal decoder_inst_instr_o_is_load : std_logic;
  signal decoder_inst_instr_o_is_store : std_logic;
  signal decoder_inst_instr_o_is_mret : std_logic;
  signal decoder_inst_instr_o_is_jump : std_logic;
  signal decoder_inst_instr_o_is_branch : std_logic;
  signal decoder_inst_instr_o_has_rd : std_logic;
  signal decoder_inst_instr_o_is_invalid : std_logic;
  signal n14_o : std_logic_vector (62 downto 0);
  signal reg_inst_xs1_o : std_logic_vector (31 downto 0);
  signal reg_inst_xs2_o : std_logic_vector (31 downto 0);
  signal n16_o : std_logic_vector (4 downto 0);
  signal n17_o : std_logic_vector (4 downto 0);
  signal n18_o : std_logic_vector (4 downto 0);
  signal n23_o : std_logic;
  signal n24_o : std_logic_vector (31 downto 0);
  signal n25_o : std_logic_vector (31 downto 0);
  signal n26_o : std_logic;
  signal n27_o : std_logic_vector (31 downto 0);
  signal n39_o : std_logic_vector (62 downto 0);
  signal n40_q : std_logic_vector (62 downto 0);
  signal n41_o : std_logic_vector (31 downto 0);
  signal n42_q : std_logic_vector (31 downto 0) := "00000000000000000000000000000000";
  signal n43_o : std_logic_vector (31 downto 0);
  signal n44_q : std_logic_vector (31 downto 0) := "00000000000000000000000000000000";
  signal n45_o : std_logic_vector (31 downto 0);
  signal n46_q : std_logic_vector (31 downto 0) := "00000000000000000000000000000000";
  signal n47_o : std_logic_vector (31 downto 0);
  signal n48_q : std_logic_vector (31 downto 0) := "00000000000000000000000000000000";
  signal alu_inst_r_o : std_logic_vector (31 downto 0);
  signal n49_o : std_logic_vector (3 downto 0);
  signal branch_inst_pc_o : std_logic_vector (31 downto 0);
  signal n51_o : std_logic_vector (2 downto 0);
  signal n52_o : std_logic_vector (31 downto 0);
  signal n53_o : std_logic_vector (4 downto 0);
  signal n54_o : std_logic_vector (4 downto 0);
  signal n55_o : std_logic_vector (4 downto 0);
  signal n56_o : std_logic;
  signal n57_o : std_logic;
  signal n58_o : std_logic_vector (3 downto 0);
  signal n59_o : std_logic;
  signal n60_o : std_logic;
  signal n61_o : std_logic;
  signal n62_o : std_logic;
  signal n63_o : std_logic;
  signal n64_o : std_logic;
  signal n65_o : std_logic;
  signal n69_o : std_logic_vector (31 downto 0);
  signal n70_o : std_logic_vector (31 downto 0);
  signal n71_o : std_logic_vector (31 downto 0);
  signal n73_o : std_logic_vector (31 downto 0);
  signal n74_o : std_logic_vector (31 downto 0);
  signal n75_o : std_logic_vector (31 downto 0);
  signal n80_q : std_logic_vector (31 downto 0) := "00000000000000000000000000000000";
  signal n81_q : std_logic_vector (31 downto 0) := "00000000000000000000000000000000";
  signal n82_q : std_logic_vector (31 downto 0) := "00000000000000000000000000000000";
  signal n84_o : std_logic_vector (31 downto 0);
  signal n87_o : std_logic;
  signal n91_o : std_logic_vector (31 downto 0);
  signal n92_q : std_logic_vector (31 downto 0) := "00000000000000000000000000000000";
  signal n93_o : std_logic;
  signal n94_o : std_logic;
  signal n96_o : std_logic;
  signal n98_o : std_logic_vector (31 downto 0);
  signal load_store_inst_load_data_o : std_logic_vector (31 downto 0);
  signal load_store_inst_wdata_o : std_logic_vector (31 downto 0);
  signal load_store_inst_write_o : std_logic_vector (3 downto 0);
  signal n99_o : std_logic_vector (2 downto 0);
  signal n103_o : std_logic;
  signal n104_o : std_logic;
  signal n105_o : std_logic;
  signal n106_o : std_logic_vector (31 downto 0);
  signal n107_o : std_logic;
  signal n108_o : std_logic_vector (31 downto 0);
begin
  wrap_clk_i <= clk_i;
  wrap_reset_i <= reset_i;
  wrap_ready_i <= ready_i;
  wrap_rdata_i <= typwrap_rdata_i(rdata_i);
  wrap_irq_i <= irq_i;
  valid_o <= wrap_valid_o;
  address_o <= std_logic_vector(wrap_address_o);
  write_o <= std_logic_vector(wrap_write_o);
  wdata_o <= std_logic_vector(wrap_wdata_o);
  wrap_valid_o <= n96_o;
  wrap_address_o <= n98_o;
  wrap_write_o <= load_store_inst_write_o;
  wrap_wdata_o <= load_store_inst_wdata_o;
  -- Virgule.vhd:28:12
  fetch_en <= fsm_inst_fetch_en_o; -- (signal)
  -- Virgule.vhd:28:22
  decode_en <= fsm_inst_decode_en_o; -- (signal)
  -- Virgule.vhd:28:33
  execute_en <= fsm_inst_execute_en_o; -- (signal)
  -- Virgule.vhd:29:12
  load_en <= fsm_inst_load_en_o; -- (signal)
  -- Virgule.vhd:29:21
  store_en <= fsm_inst_store_en_o; -- (signal)
  -- Virgule.vhd:29:31
  writeback_en <= fsm_inst_writeback_en_o; -- (signal)
  -- Virgule.vhd:31:12
  instr <= n14_o; -- (signal)
  -- Virgule.vhd:31:19
  instr_reg <= n40_q; -- (signal)
  -- Virgule.vhd:33:12
  xs1 <= reg_inst_xs1_o; -- (signal)
  -- Virgule.vhd:33:17
  xs2 <= reg_inst_xs2_o; -- (signal)
  -- Virgule.vhd:33:22
  xd <= n106_o; -- (signal)
  -- Virgule.vhd:34:12
  xs1_reg <= n42_q; -- (isignal)
  -- Virgule.vhd:34:21
  xs2_reg <= n44_q; -- (isignal)
  -- Virgule.vhd:35:12
  reg_write <= n104_o; -- (signal)
  -- Virgule.vhd:37:12
  pc_reg <= n80_q; -- (isignal)
  -- Virgule.vhd:37:20
  pc_next_reg <= n81_q; -- (isignal)
  -- Virgule.vhd:38:12
  pc_next <= n84_o; -- (signal)
  -- Virgule.vhd:38:21
  pc_to_fetch <= branch_inst_pc_o; -- (signal)
  -- Virgule.vhd:40:12
  alu_a_reg <= n46_q; -- (isignal)
  -- Virgule.vhd:40:23
  alu_b_reg <= n48_q; -- (isignal)
  -- Virgule.vhd:40:34
  alu_r_reg <= n82_q; -- (isignal)
  -- Virgule.vhd:41:12
  alu_r <= alu_inst_r_o; -- (signal)
  -- Virgule.vhd:43:12
  valid <= n94_o; -- (signal)
  -- Virgule.vhd:44:12
  rdata_reg <= n92_q; -- (isignal)
  -- Virgule.vhd:45:12
  load_data <= load_store_inst_load_data_o; -- (signal)
  -- Virgule.vhd:51:5
  fsm_inst : entity work.vstatemachine port map (
    clk_i => wrap_clk_i,
    reset_i => wrap_reset_i,
    is_load_i => n5_o,
    is_store_i => n6_o,
    has_rd_i => n7_o,
    ready_i => wrap_ready_i,
    fetch_en_o => fsm_inst_fetch_en_o,
    decode_en_o => fsm_inst_decode_en_o,
    execute_en_o => fsm_inst_execute_en_o,
    load_en_o => fsm_inst_load_en_o,
    store_en_o => fsm_inst_store_en_o,
    writeback_en_o => fsm_inst_writeback_en_o);
  -- Virgule.vhd:56:41
  n5_o <= instr_reg (56);
  -- Virgule.vhd:57:41
  n6_o <= instr_reg (57);
  -- Virgule.vhd:58:41
  n7_o <= instr_reg (61);
  -- Virgule.vhd:71:5
  decoder_inst : entity work.vdecoder port map (
    data_i => rdata_reg,
    instr_o_funct3 => decoder_inst_instr_o_funct3,
    instr_o_imm => decoder_inst_instr_o_imm,
    instr_o_rs1 => decoder_inst_instr_o_rs1,
    instr_o_rs2 => decoder_inst_instr_o_rs2,
    instr_o_rd => decoder_inst_instr_o_rd,
    instr_o_use_pc => decoder_inst_instr_o_use_pc,
    instr_o_use_imm => decoder_inst_instr_o_use_imm,
    instr_o_alu_fn => decoder_inst_instr_o_alu_fn,
    instr_o_is_load => decoder_inst_instr_o_is_load,
    instr_o_is_store => decoder_inst_instr_o_is_store,
    instr_o_is_mret => decoder_inst_instr_o_is_mret,
    instr_o_is_jump => decoder_inst_instr_o_is_jump,
    instr_o_is_branch => decoder_inst_instr_o_is_branch,
    instr_o_has_rd => decoder_inst_instr_o_has_rd,
    instr_o_is_invalid => decoder_inst_instr_o_is_invalid);
  n14_o <= decoder_inst_instr_o_is_invalid & decoder_inst_instr_o_has_rd & decoder_inst_instr_o_is_branch & decoder_inst_instr_o_is_jump & decoder_inst_instr_o_is_mret & decoder_inst_instr_o_is_store & decoder_inst_instr_o_is_load & decoder_inst_instr_o_alu_fn & decoder_inst_instr_o_use_imm & decoder_inst_instr_o_use_pc & decoder_inst_instr_o_rd & decoder_inst_instr_o_rs2 & decoder_inst_instr_o_rs1 & decoder_inst_instr_o_imm & decoder_inst_instr_o_funct3;
  -- Virgule.vhd:77:5
  reg_inst : entity work.vregisters port map (
    clk_i => wrap_clk_i,
    reset_i => wrap_reset_i,
    write_i => reg_write,
    rs1_i => n16_o,
    rs2_i => n17_o,
    rd_i => n18_o,
    xd_i => xd,
    xs1_o => reg_inst_xs1_o,
    xs2_o => reg_inst_xs2_o);
  -- Virgule.vhd:81:30
  n16_o <= instr (39 downto 35);
  -- Virgule.vhd:82:30
  n17_o <= instr (44 downto 40);
  -- Virgule.vhd:86:34
  n18_o <= instr_reg (49 downto 45);
  -- Virgule.vhd:95:51
  n23_o <= instr (50);
  -- Virgule.vhd:95:40
  n24_o <= xs1 when n23_o = '0' else pc_reg;
  -- Virgule.vhd:96:36
  n25_o <= instr (34 downto 3);
  -- Virgule.vhd:96:51
  n26_o <= instr (51);
  -- Virgule.vhd:96:40
  n27_o <= xs2 when n26_o = '0' else n25_o;
  -- Virgule.vhd:92:9
  n39_o <= instr_reg when decode_en = '0' else instr;
  -- Virgule.vhd:92:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n40_q <= n39_o;
    end if;
  end process;
  -- Virgule.vhd:92:9
  n41_o <= xs1_reg when decode_en = '0' else xs1;
  -- Virgule.vhd:92:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n42_q <= n41_o;
    end if;
  end process;
  -- Virgule.vhd:92:9
  n43_o <= xs2_reg when decode_en = '0' else xs2;
  -- Virgule.vhd:92:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n44_q <= n43_o;
    end if;
  end process;
  -- Virgule.vhd:92:9
  n45_o <= alu_a_reg when decode_en = '0' else n24_o;
  -- Virgule.vhd:92:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n46_q <= n45_o;
    end if;
  end process;
  -- Virgule.vhd:92:9
  n47_o <= alu_b_reg when decode_en = '0' else n27_o;
  -- Virgule.vhd:92:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n48_q <= n47_o;
    end if;
  end process;
  -- Virgule.vhd:107:5
  alu_inst : entity work.varithmeticandlogicunit port map (
    fn_i => n49_o,
    a_i => alu_a_reg,
    b_i => alu_b_reg,
    r_o => alu_inst_r_o);
  -- Virgule.vhd:109:31
  n49_o <= instr_reg (55 downto 52);
  -- Virgule.vhd:115:5
  branch_inst : entity work.vbranchunit port map (
    clk_i => wrap_clk_i,
    reset_i => wrap_reset_i,
    enable_i => execute_en,
    irq_i => wrap_irq_i,
    instr_i_funct3 => n51_o,
    instr_i_imm => n52_o,
    instr_i_rs1 => n53_o,
    instr_i_rs2 => n54_o,
    instr_i_rd => n55_o,
    instr_i_use_pc => n56_o,
    instr_i_use_imm => n57_o,
    instr_i_alu_fn => n58_o,
    instr_i_is_load => n59_o,
    instr_i_is_store => n60_o,
    instr_i_is_mret => n61_o,
    instr_i_is_jump => n62_o,
    instr_i_is_branch => n63_o,
    instr_i_has_rd => n64_o,
    instr_i_is_invalid => n65_o,
    xs1_i => xs1_reg,
    xs2_i => xs2_reg,
    address_i => alu_r,
    pc_next_i => pc_next,
    pc_o => branch_inst_pc_o);
  n51_o <= instr_reg (2 downto 0);
  n52_o <= instr_reg (34 downto 3);
  n53_o <= instr_reg (39 downto 35);
  n54_o <= instr_reg (44 downto 40);
  n55_o <= instr_reg (49 downto 45);
  n56_o <= instr_reg (50);
  n57_o <= instr_reg (51);
  n58_o <= instr_reg (55 downto 52);
  n59_o <= instr_reg (56);
  n60_o <= instr_reg (57);
  n61_o <= instr_reg (58);
  n62_o <= instr_reg (59);
  n63_o <= instr_reg (60);
  n64_o <= instr_reg (61);
  n65_o <= instr_reg (62);
  -- Virgule.vhd:134:13
  n69_o <= pc_reg when execute_en = '0' else pc_to_fetch;
  -- Virgule.vhd:134:13
  n70_o <= pc_next_reg when execute_en = '0' else pc_next;
  -- Virgule.vhd:134:13
  n71_o <= alu_r_reg when execute_en = '0' else alu_r;
  -- Virgule.vhd:132:13
  n73_o <= n69_o when wrap_reset_i = '0' else "00000000000000000000000000000000";
  -- Virgule.vhd:132:13
  n74_o <= n70_o when wrap_reset_i = '0' else pc_next_reg;
  -- Virgule.vhd:132:13
  n75_o <= n71_o when wrap_reset_i = '0' else alu_r_reg;
  -- Virgule.vhd:131:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n80_q <= n73_o;
    end if;
  end process;
  -- Virgule.vhd:131:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n81_q <= n74_o;
    end if;
  end process;
  -- Virgule.vhd:131:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n82_q <= n75_o;
    end if;
  end process;
  -- Virgule.vhd:142:40
  n84_o <= std_logic_vector (unsigned (pc_reg) + unsigned'("00000000000000000000000000000100"));
  -- Virgule.vhd:151:22
  n87_o <= valid and wrap_ready_i;
  -- Virgule.vhd:150:9
  n91_o <= rdata_reg when n87_o = '0' else wrap_rdata_i;
  -- Virgule.vhd:150:9
  process (wrap_clk_i)
  begin
    if rising_edge (wrap_clk_i) then
      n92_q <= n91_o;
    end if;
  end process;
  -- Virgule.vhd:157:27
  n93_o <= fetch_en or load_en;
  -- Virgule.vhd:157:38
  n94_o <= n93_o or store_en;
  -- Virgule.vhd:158:25
  n96_o <= '0' when valid = '0' else '1';
  -- Virgule.vhd:159:25
  n98_o <= alu_r_reg when fetch_en = '0' else pc_reg;
  -- Virgule.vhd:161:5
  load_store_inst : entity work.vloadstoreunit port map (
    funct3_i => n99_o,
    address_i => alu_r_reg,
    store_enable_i => store_en,
    store_data_i => xs2_reg,
    rdata_i => rdata_reg,
    load_data_o => load_store_inst_load_data_o,
    wdata_o => load_store_inst_wdata_o,
    write_o => load_store_inst_write_o);
  -- Virgule.vhd:163:41
  n99_o <= instr_reg (2 downto 0);
  -- Virgule.vhd:177:45
  n103_o <= instr_reg (61);
  -- Virgule.vhd:177:31
  n104_o <= writeback_en and n103_o;
  -- Virgule.vhd:179:38
  n105_o <= instr_reg (56);
  -- Virgule.vhd:179:23
  n106_o <= n108_o when n105_o = '0' else load_data;
  -- Virgule.vhd:180:38
  n107_o <= instr_reg (59);
  -- Virgule.vhd:179:46
  n108_o <= alu_r_reg when n107_o = '0' else pc_next_reg;
end rtl;
