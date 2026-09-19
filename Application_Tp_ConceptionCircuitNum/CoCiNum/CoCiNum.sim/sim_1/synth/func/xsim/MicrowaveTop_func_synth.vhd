-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Dec 19 14:45:22 2025
-- Host        : DESKTOP-CVFA51E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/user/Downloads/CoCiNum/vivado/CoCiNum_LIADI_TRAORE/CoCiNum_LIADI_TRAORE.sim/sim_1/synth/func/xsim/MicrowaveTop_func_synth.vhd
-- Design      : MicrowaveTop
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CounterModN is
  port (
    clk_i : in STD_LOGIC;
    reset_i : in STD_LOGIC;
    inc_i : in STD_LOGIC;
    value_o : out STD_LOGIC_VECTOR ( 26 downto 0 );
    cycle_o : out STD_LOGIC
  );
  attribute N : integer;
  attribute N of CounterModN : entity is 100000000;
end CounterModN;

architecture STRUCTURE of CounterModN is
  signal \<const0>\ : STD_LOGIC;
  signal cycle_o_INST_0_i_1_n_0 : STD_LOGIC;
  signal cycle_o_INST_0_i_2_n_0 : STD_LOGIC;
  signal cycle_o_INST_0_i_3_n_0 : STD_LOGIC;
  signal cycle_o_INST_0_i_4_n_0 : STD_LOGIC;
  signal cycle_o_INST_0_i_5_n_0 : STD_LOGIC;
  signal cycle_o_INST_0_i_6_n_0 : STD_LOGIC;
  signal cycle_o_INST_0_i_7_n_0 : STD_LOGIC;
  signal value_next : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \value_reg_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \value_reg_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \value_reg_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \value_reg_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \value_reg_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \value_reg_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \value_reg_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \value_reg_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \value_reg_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \value_reg_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \value_reg_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \value_reg_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \value_reg_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \value_reg_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \value_reg_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \value_reg_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \value_reg_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \value_reg_reg[26]_i_2_n_3\ : STD_LOGIC;
  signal \value_reg_reg[26]_i_2_n_6\ : STD_LOGIC;
  signal \value_reg_reg[26]_i_2_n_7\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_value_reg_reg[26]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_value_reg_reg[26]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cycle_o_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of cycle_o_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \value_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \value_reg[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \value_reg[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \value_reg[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \value_reg[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \value_reg[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \value_reg[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \value_reg[16]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \value_reg[17]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \value_reg[18]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \value_reg[19]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \value_reg[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \value_reg[20]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \value_reg[21]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \value_reg[22]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \value_reg[23]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \value_reg[24]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \value_reg[25]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \value_reg[26]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \value_reg[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \value_reg[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \value_reg[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \value_reg[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \value_reg[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \value_reg[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \value_reg[9]_i_1\ : label is "soft_lutpair10";
begin
  value_o(26) <= \<const0>\;
  value_o(25) <= \<const0>\;
  value_o(24) <= \<const0>\;
  value_o(23) <= \<const0>\;
  value_o(22) <= \<const0>\;
  value_o(21) <= \<const0>\;
  value_o(20) <= \<const0>\;
  value_o(19) <= \<const0>\;
  value_o(18) <= \<const0>\;
  value_o(17) <= \<const0>\;
  value_o(16) <= \<const0>\;
  value_o(15) <= \<const0>\;
  value_o(14) <= \<const0>\;
  value_o(13) <= \<const0>\;
  value_o(12) <= \<const0>\;
  value_o(11) <= \<const0>\;
  value_o(10) <= \<const0>\;
  value_o(9) <= \<const0>\;
  value_o(8) <= \<const0>\;
  value_o(7) <= \<const0>\;
  value_o(6) <= \<const0>\;
  value_o(5) <= \<const0>\;
  value_o(4) <= \<const0>\;
  value_o(3) <= \<const0>\;
  value_o(2) <= \<const0>\;
  value_o(1) <= \<const0>\;
  value_o(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
cycle_o_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      O => cycle_o
    );
cycle_o_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => \value_reg_reg_n_0_[26]\,
      I1 => \value_reg_reg_n_0_[25]\,
      I2 => \value_reg_reg_n_0_[0]\,
      I3 => cycle_o_INST_0_i_4_n_0,
      I4 => cycle_o_INST_0_i_5_n_0,
      O => cycle_o_INST_0_i_1_n_0
    );
cycle_o_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \value_reg_reg_n_0_[8]\,
      I1 => \value_reg_reg_n_0_[7]\,
      I2 => \value_reg_reg_n_0_[5]\,
      I3 => \value_reg_reg_n_0_[6]\,
      I4 => cycle_o_INST_0_i_6_n_0,
      O => cycle_o_INST_0_i_2_n_0
    );
cycle_o_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \value_reg_reg_n_0_[15]\,
      I1 => \value_reg_reg_n_0_[16]\,
      I2 => \value_reg_reg_n_0_[13]\,
      I3 => \value_reg_reg_n_0_[14]\,
      I4 => cycle_o_INST_0_i_7_n_0,
      O => cycle_o_INST_0_i_3_n_0
    );
cycle_o_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \value_reg_reg_n_0_[22]\,
      I1 => \value_reg_reg_n_0_[21]\,
      I2 => \value_reg_reg_n_0_[24]\,
      I3 => \value_reg_reg_n_0_[23]\,
      O => cycle_o_INST_0_i_4_n_0
    );
cycle_o_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \value_reg_reg_n_0_[2]\,
      I1 => \value_reg_reg_n_0_[1]\,
      I2 => \value_reg_reg_n_0_[4]\,
      I3 => \value_reg_reg_n_0_[3]\,
      O => cycle_o_INST_0_i_5_n_0
    );
cycle_o_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \value_reg_reg_n_0_[10]\,
      I1 => \value_reg_reg_n_0_[9]\,
      I2 => \value_reg_reg_n_0_[12]\,
      I3 => \value_reg_reg_n_0_[11]\,
      O => cycle_o_INST_0_i_6_n_0
    );
cycle_o_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \value_reg_reg_n_0_[18]\,
      I1 => \value_reg_reg_n_0_[17]\,
      I2 => \value_reg_reg_n_0_[20]\,
      I3 => \value_reg_reg_n_0_[19]\,
      O => cycle_o_INST_0_i_7_n_0
    );
\value_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \value_reg_reg_n_0_[0]\,
      O => value_next(0)
    );
\value_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[12]_i_2_n_6\,
      O => value_next(10)
    );
\value_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[12]_i_2_n_5\,
      O => value_next(11)
    );
\value_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[12]_i_2_n_4\,
      O => value_next(12)
    );
\value_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[16]_i_2_n_7\,
      O => value_next(13)
    );
\value_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[16]_i_2_n_6\,
      O => value_next(14)
    );
\value_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[16]_i_2_n_5\,
      O => value_next(15)
    );
\value_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[16]_i_2_n_4\,
      O => value_next(16)
    );
\value_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[20]_i_2_n_7\,
      O => value_next(17)
    );
\value_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[20]_i_2_n_6\,
      O => value_next(18)
    );
\value_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[20]_i_2_n_5\,
      O => value_next(19)
    );
\value_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[4]_i_2_n_7\,
      O => value_next(1)
    );
\value_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[20]_i_2_n_4\,
      O => value_next(20)
    );
\value_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[24]_i_2_n_7\,
      O => value_next(21)
    );
\value_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[24]_i_2_n_6\,
      O => value_next(22)
    );
\value_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[24]_i_2_n_5\,
      O => value_next(23)
    );
\value_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[24]_i_2_n_4\,
      O => value_next(24)
    );
\value_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[26]_i_2_n_7\,
      O => value_next(25)
    );
\value_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[26]_i_2_n_6\,
      O => value_next(26)
    );
\value_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[4]_i_2_n_6\,
      O => value_next(2)
    );
\value_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[4]_i_2_n_5\,
      O => value_next(3)
    );
\value_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[4]_i_2_n_4\,
      O => value_next(4)
    );
\value_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[8]_i_2_n_7\,
      O => value_next(5)
    );
\value_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[8]_i_2_n_6\,
      O => value_next(6)
    );
\value_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[8]_i_2_n_5\,
      O => value_next(7)
    );
\value_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[8]_i_2_n_4\,
      O => value_next(8)
    );
\value_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => cycle_o_INST_0_i_2_n_0,
      I2 => cycle_o_INST_0_i_3_n_0,
      I3 => \value_reg_reg[12]_i_2_n_7\,
      O => value_next(9)
    );
\value_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(0),
      Q => \value_reg_reg_n_0_[0]\,
      R => '0'
    );
\value_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(10),
      Q => \value_reg_reg_n_0_[10]\,
      R => '0'
    );
\value_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(11),
      Q => \value_reg_reg_n_0_[11]\,
      R => '0'
    );
\value_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(12),
      Q => \value_reg_reg_n_0_[12]\,
      R => '0'
    );
\value_reg_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_reg_reg[8]_i_2_n_0\,
      CO(3) => \value_reg_reg[12]_i_2_n_0\,
      CO(2) => \value_reg_reg[12]_i_2_n_1\,
      CO(1) => \value_reg_reg[12]_i_2_n_2\,
      CO(0) => \value_reg_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \value_reg_reg[12]_i_2_n_4\,
      O(2) => \value_reg_reg[12]_i_2_n_5\,
      O(1) => \value_reg_reg[12]_i_2_n_6\,
      O(0) => \value_reg_reg[12]_i_2_n_7\,
      S(3) => \value_reg_reg_n_0_[12]\,
      S(2) => \value_reg_reg_n_0_[11]\,
      S(1) => \value_reg_reg_n_0_[10]\,
      S(0) => \value_reg_reg_n_0_[9]\
    );
\value_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(13),
      Q => \value_reg_reg_n_0_[13]\,
      R => '0'
    );
\value_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(14),
      Q => \value_reg_reg_n_0_[14]\,
      R => '0'
    );
\value_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(15),
      Q => \value_reg_reg_n_0_[15]\,
      R => '0'
    );
\value_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(16),
      Q => \value_reg_reg_n_0_[16]\,
      R => '0'
    );
\value_reg_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_reg_reg[12]_i_2_n_0\,
      CO(3) => \value_reg_reg[16]_i_2_n_0\,
      CO(2) => \value_reg_reg[16]_i_2_n_1\,
      CO(1) => \value_reg_reg[16]_i_2_n_2\,
      CO(0) => \value_reg_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \value_reg_reg[16]_i_2_n_4\,
      O(2) => \value_reg_reg[16]_i_2_n_5\,
      O(1) => \value_reg_reg[16]_i_2_n_6\,
      O(0) => \value_reg_reg[16]_i_2_n_7\,
      S(3) => \value_reg_reg_n_0_[16]\,
      S(2) => \value_reg_reg_n_0_[15]\,
      S(1) => \value_reg_reg_n_0_[14]\,
      S(0) => \value_reg_reg_n_0_[13]\
    );
\value_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(17),
      Q => \value_reg_reg_n_0_[17]\,
      R => '0'
    );
\value_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(18),
      Q => \value_reg_reg_n_0_[18]\,
      R => '0'
    );
\value_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(19),
      Q => \value_reg_reg_n_0_[19]\,
      R => '0'
    );
\value_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(1),
      Q => \value_reg_reg_n_0_[1]\,
      R => '0'
    );
\value_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(20),
      Q => \value_reg_reg_n_0_[20]\,
      R => '0'
    );
\value_reg_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_reg_reg[16]_i_2_n_0\,
      CO(3) => \value_reg_reg[20]_i_2_n_0\,
      CO(2) => \value_reg_reg[20]_i_2_n_1\,
      CO(1) => \value_reg_reg[20]_i_2_n_2\,
      CO(0) => \value_reg_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \value_reg_reg[20]_i_2_n_4\,
      O(2) => \value_reg_reg[20]_i_2_n_5\,
      O(1) => \value_reg_reg[20]_i_2_n_6\,
      O(0) => \value_reg_reg[20]_i_2_n_7\,
      S(3) => \value_reg_reg_n_0_[20]\,
      S(2) => \value_reg_reg_n_0_[19]\,
      S(1) => \value_reg_reg_n_0_[18]\,
      S(0) => \value_reg_reg_n_0_[17]\
    );
\value_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(21),
      Q => \value_reg_reg_n_0_[21]\,
      R => '0'
    );
\value_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(22),
      Q => \value_reg_reg_n_0_[22]\,
      R => '0'
    );
\value_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(23),
      Q => \value_reg_reg_n_0_[23]\,
      R => '0'
    );
\value_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(24),
      Q => \value_reg_reg_n_0_[24]\,
      R => '0'
    );
\value_reg_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_reg_reg[20]_i_2_n_0\,
      CO(3) => \value_reg_reg[24]_i_2_n_0\,
      CO(2) => \value_reg_reg[24]_i_2_n_1\,
      CO(1) => \value_reg_reg[24]_i_2_n_2\,
      CO(0) => \value_reg_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \value_reg_reg[24]_i_2_n_4\,
      O(2) => \value_reg_reg[24]_i_2_n_5\,
      O(1) => \value_reg_reg[24]_i_2_n_6\,
      O(0) => \value_reg_reg[24]_i_2_n_7\,
      S(3) => \value_reg_reg_n_0_[24]\,
      S(2) => \value_reg_reg_n_0_[23]\,
      S(1) => \value_reg_reg_n_0_[22]\,
      S(0) => \value_reg_reg_n_0_[21]\
    );
\value_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(25),
      Q => \value_reg_reg_n_0_[25]\,
      R => '0'
    );
\value_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(26),
      Q => \value_reg_reg_n_0_[26]\,
      R => '0'
    );
\value_reg_reg[26]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_reg_reg[24]_i_2_n_0\,
      CO(3 downto 1) => \NLW_value_reg_reg[26]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \value_reg_reg[26]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_value_reg_reg[26]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \value_reg_reg[26]_i_2_n_6\,
      O(0) => \value_reg_reg[26]_i_2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \value_reg_reg_n_0_[26]\,
      S(0) => \value_reg_reg_n_0_[25]\
    );
\value_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(2),
      Q => \value_reg_reg_n_0_[2]\,
      R => '0'
    );
\value_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(3),
      Q => \value_reg_reg_n_0_[3]\,
      R => '0'
    );
\value_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(4),
      Q => \value_reg_reg_n_0_[4]\,
      R => '0'
    );
\value_reg_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \value_reg_reg[4]_i_2_n_0\,
      CO(2) => \value_reg_reg[4]_i_2_n_1\,
      CO(1) => \value_reg_reg[4]_i_2_n_2\,
      CO(0) => \value_reg_reg[4]_i_2_n_3\,
      CYINIT => \value_reg_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \value_reg_reg[4]_i_2_n_4\,
      O(2) => \value_reg_reg[4]_i_2_n_5\,
      O(1) => \value_reg_reg[4]_i_2_n_6\,
      O(0) => \value_reg_reg[4]_i_2_n_7\,
      S(3) => \value_reg_reg_n_0_[4]\,
      S(2) => \value_reg_reg_n_0_[3]\,
      S(1) => \value_reg_reg_n_0_[2]\,
      S(0) => \value_reg_reg_n_0_[1]\
    );
\value_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(5),
      Q => \value_reg_reg_n_0_[5]\,
      R => '0'
    );
\value_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(6),
      Q => \value_reg_reg_n_0_[6]\,
      R => '0'
    );
\value_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(7),
      Q => \value_reg_reg_n_0_[7]\,
      R => '0'
    );
\value_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(8),
      Q => \value_reg_reg_n_0_[8]\,
      R => '0'
    );
\value_reg_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_reg_reg[4]_i_2_n_0\,
      CO(3) => \value_reg_reg[8]_i_2_n_0\,
      CO(2) => \value_reg_reg[8]_i_2_n_1\,
      CO(1) => \value_reg_reg[8]_i_2_n_2\,
      CO(0) => \value_reg_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \value_reg_reg[8]_i_2_n_4\,
      O(2) => \value_reg_reg[8]_i_2_n_5\,
      O(1) => \value_reg_reg[8]_i_2_n_6\,
      O(0) => \value_reg_reg[8]_i_2_n_7\,
      S(3) => \value_reg_reg_n_0_[8]\,
      S(2) => \value_reg_reg_n_0_[7]\,
      S(1) => \value_reg_reg_n_0_[6]\,
      S(0) => \value_reg_reg_n_0_[5]\
    );
\value_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(9),
      Q => \value_reg_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \CounterModN__parameterized0\ is
  port (
    clk_i : in STD_LOGIC;
    reset_i : in STD_LOGIC;
    inc_i : in STD_LOGIC;
    value_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    cycle_o : out STD_LOGIC
  );
  attribute N : integer;
  attribute N of \CounterModN__parameterized0\ : entity is 100000;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \CounterModN__parameterized0\ : entity is "CounterModN";
end \CounterModN__parameterized0\;

architecture STRUCTURE of \CounterModN__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal cycle_o_INST_0_i_1_n_0 : STD_LOGIC;
  signal cycle_o_INST_0_i_2_n_0 : STD_LOGIC;
  signal cycle_o_INST_0_i_3_n_0 : STD_LOGIC;
  signal cycle_o_INST_0_i_4_n_0 : STD_LOGIC;
  signal cycle_o_INST_0_i_5_n_0 : STD_LOGIC;
  signal value_next : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \value_reg_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \value_reg_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \value_reg_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \value_reg_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \value_reg_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \value_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_value_reg_reg[16]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cycle_o_INST_0 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of cycle_o_INST_0_i_3 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \value_reg[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \value_reg[10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \value_reg[11]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \value_reg[12]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \value_reg[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \value_reg[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \value_reg[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \value_reg[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \value_reg[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \value_reg[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \value_reg[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \value_reg[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \value_reg[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \value_reg[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \value_reg[8]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \value_reg[9]_i_1\ : label is "soft_lutpair15";
begin
  value_o(16) <= \<const0>\;
  value_o(15) <= \<const0>\;
  value_o(14) <= \<const0>\;
  value_o(13) <= \<const0>\;
  value_o(12) <= \<const0>\;
  value_o(11) <= \<const0>\;
  value_o(10) <= \<const0>\;
  value_o(9) <= \<const0>\;
  value_o(8) <= \<const0>\;
  value_o(7) <= \<const0>\;
  value_o(6) <= \<const0>\;
  value_o(5) <= \<const0>\;
  value_o(4) <= \<const0>\;
  value_o(3) <= \<const0>\;
  value_o(2) <= \<const0>\;
  value_o(1) <= \<const0>\;
  value_o(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
cycle_o_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      O => cycle_o
    );
cycle_o_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cycle_o_INST_0_i_2_n_0,
      I1 => cycle_o_INST_0_i_3_n_0,
      I2 => cycle_o_INST_0_i_4_n_0,
      I3 => cycle_o_INST_0_i_5_n_0,
      O => cycle_o_INST_0_i_1_n_0
    );
cycle_o_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \value_reg_reg_n_0_[4]\,
      I1 => \value_reg_reg_n_0_[3]\,
      I2 => \value_reg_reg_n_0_[6]\,
      I3 => \value_reg_reg_n_0_[5]\,
      O => cycle_o_INST_0_i_2_n_0
    );
cycle_o_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \value_reg_reg_n_0_[0]\,
      I1 => \value_reg_reg_n_0_[15]\,
      I2 => \value_reg_reg_n_0_[16]\,
      I3 => \value_reg_reg_n_0_[2]\,
      I4 => \value_reg_reg_n_0_[1]\,
      O => cycle_o_INST_0_i_3_n_0
    );
cycle_o_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \value_reg_reg_n_0_[12]\,
      I1 => \value_reg_reg_n_0_[11]\,
      I2 => \value_reg_reg_n_0_[14]\,
      I3 => \value_reg_reg_n_0_[13]\,
      O => cycle_o_INST_0_i_4_n_0
    );
cycle_o_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \value_reg_reg_n_0_[7]\,
      I1 => \value_reg_reg_n_0_[8]\,
      I2 => \value_reg_reg_n_0_[10]\,
      I3 => \value_reg_reg_n_0_[9]\,
      O => cycle_o_INST_0_i_5_n_0
    );
\value_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \value_reg_reg_n_0_[0]\,
      O => value_next(0)
    );
\value_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[12]_i_2_n_6\,
      O => value_next(10)
    );
\value_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[12]_i_2_n_5\,
      O => value_next(11)
    );
\value_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[12]_i_2_n_4\,
      O => value_next(12)
    );
\value_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[16]_i_2_n_7\,
      O => value_next(13)
    );
\value_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[16]_i_2_n_6\,
      O => value_next(14)
    );
\value_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[16]_i_2_n_5\,
      O => value_next(15)
    );
\value_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[16]_i_2_n_4\,
      O => value_next(16)
    );
\value_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => cycle_o_INST_0_i_2_n_0,
      I1 => cycle_o_INST_0_i_3_n_0,
      I2 => cycle_o_INST_0_i_4_n_0,
      I3 => cycle_o_INST_0_i_5_n_0,
      I4 => \value_reg_reg[4]_i_2_n_7\,
      O => value_next(1)
    );
\value_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[4]_i_2_n_6\,
      O => value_next(2)
    );
\value_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[4]_i_2_n_5\,
      O => value_next(3)
    );
\value_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[4]_i_2_n_4\,
      O => value_next(4)
    );
\value_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[8]_i_2_n_7\,
      O => value_next(5)
    );
\value_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[8]_i_2_n_6\,
      O => value_next(6)
    );
\value_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[8]_i_2_n_5\,
      O => value_next(7)
    );
\value_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[8]_i_2_n_4\,
      O => value_next(8)
    );
\value_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_o_INST_0_i_1_n_0,
      I1 => \value_reg_reg[12]_i_2_n_7\,
      O => value_next(9)
    );
\value_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(0),
      Q => \value_reg_reg_n_0_[0]\,
      R => '0'
    );
\value_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(10),
      Q => \value_reg_reg_n_0_[10]\,
      R => '0'
    );
\value_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(11),
      Q => \value_reg_reg_n_0_[11]\,
      R => '0'
    );
\value_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(12),
      Q => \value_reg_reg_n_0_[12]\,
      R => '0'
    );
\value_reg_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_reg_reg[8]_i_2_n_0\,
      CO(3) => \value_reg_reg[12]_i_2_n_0\,
      CO(2) => \value_reg_reg[12]_i_2_n_1\,
      CO(1) => \value_reg_reg[12]_i_2_n_2\,
      CO(0) => \value_reg_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \value_reg_reg[12]_i_2_n_4\,
      O(2) => \value_reg_reg[12]_i_2_n_5\,
      O(1) => \value_reg_reg[12]_i_2_n_6\,
      O(0) => \value_reg_reg[12]_i_2_n_7\,
      S(3) => \value_reg_reg_n_0_[12]\,
      S(2) => \value_reg_reg_n_0_[11]\,
      S(1) => \value_reg_reg_n_0_[10]\,
      S(0) => \value_reg_reg_n_0_[9]\
    );
\value_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(13),
      Q => \value_reg_reg_n_0_[13]\,
      R => '0'
    );
\value_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(14),
      Q => \value_reg_reg_n_0_[14]\,
      R => '0'
    );
\value_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(15),
      Q => \value_reg_reg_n_0_[15]\,
      R => '0'
    );
\value_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(16),
      Q => \value_reg_reg_n_0_[16]\,
      R => '0'
    );
\value_reg_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_reg_reg[12]_i_2_n_0\,
      CO(3) => \NLW_value_reg_reg[16]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \value_reg_reg[16]_i_2_n_1\,
      CO(1) => \value_reg_reg[16]_i_2_n_2\,
      CO(0) => \value_reg_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \value_reg_reg[16]_i_2_n_4\,
      O(2) => \value_reg_reg[16]_i_2_n_5\,
      O(1) => \value_reg_reg[16]_i_2_n_6\,
      O(0) => \value_reg_reg[16]_i_2_n_7\,
      S(3) => \value_reg_reg_n_0_[16]\,
      S(2) => \value_reg_reg_n_0_[15]\,
      S(1) => \value_reg_reg_n_0_[14]\,
      S(0) => \value_reg_reg_n_0_[13]\
    );
\value_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(1),
      Q => \value_reg_reg_n_0_[1]\,
      R => '0'
    );
\value_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(2),
      Q => \value_reg_reg_n_0_[2]\,
      R => '0'
    );
\value_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(3),
      Q => \value_reg_reg_n_0_[3]\,
      R => '0'
    );
\value_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(4),
      Q => \value_reg_reg_n_0_[4]\,
      R => '0'
    );
\value_reg_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \value_reg_reg[4]_i_2_n_0\,
      CO(2) => \value_reg_reg[4]_i_2_n_1\,
      CO(1) => \value_reg_reg[4]_i_2_n_2\,
      CO(0) => \value_reg_reg[4]_i_2_n_3\,
      CYINIT => \value_reg_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \value_reg_reg[4]_i_2_n_4\,
      O(2) => \value_reg_reg[4]_i_2_n_5\,
      O(1) => \value_reg_reg[4]_i_2_n_6\,
      O(0) => \value_reg_reg[4]_i_2_n_7\,
      S(3) => \value_reg_reg_n_0_[4]\,
      S(2) => \value_reg_reg_n_0_[3]\,
      S(1) => \value_reg_reg_n_0_[2]\,
      S(0) => \value_reg_reg_n_0_[1]\
    );
\value_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(5),
      Q => \value_reg_reg_n_0_[5]\,
      R => '0'
    );
\value_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(6),
      Q => \value_reg_reg_n_0_[6]\,
      R => '0'
    );
\value_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(7),
      Q => \value_reg_reg_n_0_[7]\,
      R => '0'
    );
\value_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(8),
      Q => \value_reg_reg_n_0_[8]\,
      R => '0'
    );
\value_reg_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_reg_reg[4]_i_2_n_0\,
      CO(3) => \value_reg_reg[8]_i_2_n_0\,
      CO(2) => \value_reg_reg[8]_i_2_n_1\,
      CO(1) => \value_reg_reg[8]_i_2_n_2\,
      CO(0) => \value_reg_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \value_reg_reg[8]_i_2_n_4\,
      O(2) => \value_reg_reg[8]_i_2_n_5\,
      O(1) => \value_reg_reg[8]_i_2_n_6\,
      O(0) => \value_reg_reg[8]_i_2_n_7\,
      S(3) => \value_reg_reg_n_0_[8]\,
      S(2) => \value_reg_reg_n_0_[7]\,
      S(1) => \value_reg_reg_n_0_[6]\,
      S(0) => \value_reg_reg_n_0_[5]\
    );
\value_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => value_next(9),
      Q => \value_reg_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SegmentDecoder is
  port (
    digit_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    segments_o : out STD_LOGIC_VECTOR ( 0 to 6 )
  );
end SegmentDecoder;

architecture STRUCTURE of SegmentDecoder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \segments_o[1]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \segments_o[2]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \segments_o[3]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \segments_o[4]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \segments_o[5]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \segments_o[6]_INST_0\ : label is "soft_lutpair23";
begin
\segments_o[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D6FB"
    )
        port map (
      I0 => digit_i(3),
      I1 => digit_i(2),
      I2 => digit_i(1),
      I3 => digit_i(0),
      O => segments_o(0)
    );
\segments_o[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5B37"
    )
        port map (
      I0 => digit_i(3),
      I1 => digit_i(2),
      I2 => digit_i(1),
      I3 => digit_i(0),
      O => segments_o(1)
    );
\segments_o[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F67"
    )
        port map (
      I0 => digit_i(3),
      I1 => digit_i(2),
      I2 => digit_i(1),
      I3 => digit_i(0),
      O => segments_o(2)
    );
\segments_o[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3EE7"
    )
        port map (
      I0 => digit_i(3),
      I1 => digit_i(1),
      I2 => digit_i(2),
      I3 => digit_i(0),
      O => segments_o(3)
    );
\segments_o[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8EF"
    )
        port map (
      I0 => digit_i(3),
      I1 => digit_i(1),
      I2 => digit_i(2),
      I3 => digit_i(0),
      O => segments_o(4)
    );
\segments_o[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA7B"
    )
        port map (
      I0 => digit_i(3),
      I1 => digit_i(0),
      I2 => digit_i(2),
      I3 => digit_i(1),
      O => segments_o(5)
    );
\segments_o[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFDA"
    )
        port map (
      I0 => digit_i(3),
      I1 => digit_i(0),
      I2 => digit_i(2),
      I3 => digit_i(1),
      O => segments_o(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MicrowaveTop is
  port (
    clk_i : in STD_LOGIC;
    btn_center_i : in STD_LOGIC;
    btn_up_i : in STD_LOGIC;
    btn_down_i : in STD_LOGIC;
    btn_left_i : in STD_LOGIC;
    btn_right_i : in STD_LOGIC;
    switches_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    leds_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    disp_segments_n_o : out STD_LOGIC_VECTOR ( 0 to 6 );
    disp_point_n_o : out STD_LOGIC;
    disp_select_n_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MicrowaveTop : entity is true;
end MicrowaveTop;

architecture STRUCTURE of MicrowaveTop is
  signal btn_center_i_IBUF : STD_LOGIC;
  signal btn_down_i_IBUF : STD_LOGIC;
  signal btn_left_i_IBUF : STD_LOGIC;
  signal btn_right_i_IBUF : STD_LOGIC;
  signal btn_up_i_IBUF : STD_LOGIC;
  signal buzzer_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \buzzer_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \buzzer_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \buzzer_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \buzzer_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal buzzer_i_1_n_0 : STD_LOGIC;
  signal clk_i_IBUF : STD_LOGIC;
  signal clk_i_IBUF_BUFG : STD_LOGIC;
  signal decoder_inst_i_100_n_0 : STD_LOGIC;
  signal decoder_inst_i_101_n_0 : STD_LOGIC;
  signal decoder_inst_i_102_n_0 : STD_LOGIC;
  signal decoder_inst_i_102_n_1 : STD_LOGIC;
  signal decoder_inst_i_102_n_2 : STD_LOGIC;
  signal decoder_inst_i_102_n_3 : STD_LOGIC;
  signal decoder_inst_i_102_n_4 : STD_LOGIC;
  signal decoder_inst_i_102_n_5 : STD_LOGIC;
  signal decoder_inst_i_102_n_6 : STD_LOGIC;
  signal decoder_inst_i_102_n_7 : STD_LOGIC;
  signal decoder_inst_i_103_n_0 : STD_LOGIC;
  signal decoder_inst_i_104_n_0 : STD_LOGIC;
  signal decoder_inst_i_105_n_0 : STD_LOGIC;
  signal decoder_inst_i_106_n_0 : STD_LOGIC;
  signal decoder_inst_i_107_n_0 : STD_LOGIC;
  signal decoder_inst_i_108_n_3 : STD_LOGIC;
  signal decoder_inst_i_108_n_6 : STD_LOGIC;
  signal decoder_inst_i_109_n_0 : STD_LOGIC;
  signal decoder_inst_i_10_n_0 : STD_LOGIC;
  signal decoder_inst_i_110_n_0 : STD_LOGIC;
  signal decoder_inst_i_111_n_0 : STD_LOGIC;
  signal decoder_inst_i_112_n_0 : STD_LOGIC;
  signal decoder_inst_i_113_n_0 : STD_LOGIC;
  signal decoder_inst_i_114_n_0 : STD_LOGIC;
  signal decoder_inst_i_115_n_0 : STD_LOGIC;
  signal decoder_inst_i_116_n_0 : STD_LOGIC;
  signal decoder_inst_i_117_n_0 : STD_LOGIC;
  signal decoder_inst_i_118_n_0 : STD_LOGIC;
  signal decoder_inst_i_119_n_0 : STD_LOGIC;
  signal decoder_inst_i_11_n_0 : STD_LOGIC;
  signal decoder_inst_i_120_n_0 : STD_LOGIC;
  signal decoder_inst_i_121_n_0 : STD_LOGIC;
  signal decoder_inst_i_122_n_0 : STD_LOGIC;
  signal decoder_inst_i_123_n_0 : STD_LOGIC;
  signal decoder_inst_i_124_n_0 : STD_LOGIC;
  signal decoder_inst_i_125_n_0 : STD_LOGIC;
  signal decoder_inst_i_126_n_0 : STD_LOGIC;
  signal decoder_inst_i_127_n_0 : STD_LOGIC;
  signal decoder_inst_i_128_n_0 : STD_LOGIC;
  signal decoder_inst_i_129_n_0 : STD_LOGIC;
  signal decoder_inst_i_12_n_0 : STD_LOGIC;
  signal decoder_inst_i_130_n_0 : STD_LOGIC;
  signal decoder_inst_i_131_n_0 : STD_LOGIC;
  signal decoder_inst_i_132_n_0 : STD_LOGIC;
  signal decoder_inst_i_132_n_1 : STD_LOGIC;
  signal decoder_inst_i_132_n_2 : STD_LOGIC;
  signal decoder_inst_i_132_n_3 : STD_LOGIC;
  signal decoder_inst_i_132_n_4 : STD_LOGIC;
  signal decoder_inst_i_132_n_5 : STD_LOGIC;
  signal decoder_inst_i_132_n_6 : STD_LOGIC;
  signal decoder_inst_i_132_n_7 : STD_LOGIC;
  signal decoder_inst_i_133_n_0 : STD_LOGIC;
  signal decoder_inst_i_134_n_0 : STD_LOGIC;
  signal decoder_inst_i_135_n_0 : STD_LOGIC;
  signal decoder_inst_i_136_n_0 : STD_LOGIC;
  signal decoder_inst_i_137_n_0 : STD_LOGIC;
  signal decoder_inst_i_138_n_3 : STD_LOGIC;
  signal decoder_inst_i_138_n_6 : STD_LOGIC;
  signal decoder_inst_i_139_n_0 : STD_LOGIC;
  signal decoder_inst_i_13_n_0 : STD_LOGIC;
  signal decoder_inst_i_140_n_0 : STD_LOGIC;
  signal decoder_inst_i_141_n_7 : STD_LOGIC;
  signal decoder_inst_i_142_n_0 : STD_LOGIC;
  signal decoder_inst_i_142_n_1 : STD_LOGIC;
  signal decoder_inst_i_142_n_2 : STD_LOGIC;
  signal decoder_inst_i_142_n_3 : STD_LOGIC;
  signal decoder_inst_i_142_n_4 : STD_LOGIC;
  signal decoder_inst_i_142_n_5 : STD_LOGIC;
  signal decoder_inst_i_142_n_6 : STD_LOGIC;
  signal decoder_inst_i_142_n_7 : STD_LOGIC;
  signal decoder_inst_i_143_n_0 : STD_LOGIC;
  signal decoder_inst_i_144_n_0 : STD_LOGIC;
  signal decoder_inst_i_145_n_0 : STD_LOGIC;
  signal decoder_inst_i_146_n_0 : STD_LOGIC;
  signal decoder_inst_i_147_n_0 : STD_LOGIC;
  signal decoder_inst_i_148_n_3 : STD_LOGIC;
  signal decoder_inst_i_148_n_6 : STD_LOGIC;
  signal decoder_inst_i_149_n_0 : STD_LOGIC;
  signal decoder_inst_i_14_n_0 : STD_LOGIC;
  signal decoder_inst_i_150_n_0 : STD_LOGIC;
  signal decoder_inst_i_151_n_0 : STD_LOGIC;
  signal decoder_inst_i_152_n_0 : STD_LOGIC;
  signal decoder_inst_i_152_n_1 : STD_LOGIC;
  signal decoder_inst_i_152_n_2 : STD_LOGIC;
  signal decoder_inst_i_152_n_3 : STD_LOGIC;
  signal decoder_inst_i_152_n_4 : STD_LOGIC;
  signal decoder_inst_i_152_n_5 : STD_LOGIC;
  signal decoder_inst_i_152_n_6 : STD_LOGIC;
  signal decoder_inst_i_152_n_7 : STD_LOGIC;
  signal decoder_inst_i_153_n_0 : STD_LOGIC;
  signal decoder_inst_i_154_n_0 : STD_LOGIC;
  signal decoder_inst_i_155_n_0 : STD_LOGIC;
  signal decoder_inst_i_156_n_0 : STD_LOGIC;
  signal decoder_inst_i_157_n_0 : STD_LOGIC;
  signal decoder_inst_i_158_n_7 : STD_LOGIC;
  signal decoder_inst_i_159_n_0 : STD_LOGIC;
  signal decoder_inst_i_159_n_1 : STD_LOGIC;
  signal decoder_inst_i_159_n_2 : STD_LOGIC;
  signal decoder_inst_i_159_n_3 : STD_LOGIC;
  signal decoder_inst_i_159_n_5 : STD_LOGIC;
  signal decoder_inst_i_159_n_6 : STD_LOGIC;
  signal decoder_inst_i_15_n_0 : STD_LOGIC;
  signal decoder_inst_i_160_n_0 : STD_LOGIC;
  signal decoder_inst_i_161_n_0 : STD_LOGIC;
  signal decoder_inst_i_162_n_0 : STD_LOGIC;
  signal decoder_inst_i_163_n_0 : STD_LOGIC;
  signal decoder_inst_i_164_n_0 : STD_LOGIC;
  signal decoder_inst_i_165_n_0 : STD_LOGIC;
  signal decoder_inst_i_166_n_0 : STD_LOGIC;
  signal decoder_inst_i_167_n_0 : STD_LOGIC;
  signal decoder_inst_i_168_n_0 : STD_LOGIC;
  signal decoder_inst_i_169_n_0 : STD_LOGIC;
  signal decoder_inst_i_16_n_0 : STD_LOGIC;
  signal decoder_inst_i_170_n_0 : STD_LOGIC;
  signal decoder_inst_i_17_n_3 : STD_LOGIC;
  signal decoder_inst_i_18_n_3 : STD_LOGIC;
  signal decoder_inst_i_19_n_0 : STD_LOGIC;
  signal decoder_inst_i_20_n_0 : STD_LOGIC;
  signal decoder_inst_i_21_n_3 : STD_LOGIC;
  signal decoder_inst_i_22_n_3 : STD_LOGIC;
  signal decoder_inst_i_22_n_6 : STD_LOGIC;
  signal decoder_inst_i_23_n_3 : STD_LOGIC;
  signal decoder_inst_i_24_n_3 : STD_LOGIC;
  signal decoder_inst_i_24_n_6 : STD_LOGIC;
  signal decoder_inst_i_25_n_0 : STD_LOGIC;
  signal decoder_inst_i_25_n_1 : STD_LOGIC;
  signal decoder_inst_i_25_n_2 : STD_LOGIC;
  signal decoder_inst_i_25_n_3 : STD_LOGIC;
  signal decoder_inst_i_25_n_4 : STD_LOGIC;
  signal decoder_inst_i_25_n_5 : STD_LOGIC;
  signal decoder_inst_i_25_n_6 : STD_LOGIC;
  signal decoder_inst_i_25_n_7 : STD_LOGIC;
  signal decoder_inst_i_26_n_3 : STD_LOGIC;
  signal decoder_inst_i_27_n_0 : STD_LOGIC;
  signal decoder_inst_i_27_n_1 : STD_LOGIC;
  signal decoder_inst_i_27_n_2 : STD_LOGIC;
  signal decoder_inst_i_27_n_3 : STD_LOGIC;
  signal decoder_inst_i_27_n_5 : STD_LOGIC;
  signal decoder_inst_i_27_n_6 : STD_LOGIC;
  signal decoder_inst_i_27_n_7 : STD_LOGIC;
  signal decoder_inst_i_28_n_3 : STD_LOGIC;
  signal decoder_inst_i_28_n_6 : STD_LOGIC;
  signal decoder_inst_i_29_n_3 : STD_LOGIC;
  signal decoder_inst_i_29_n_6 : STD_LOGIC;
  signal decoder_inst_i_30_n_3 : STD_LOGIC;
  signal decoder_inst_i_30_n_6 : STD_LOGIC;
  signal decoder_inst_i_31_n_0 : STD_LOGIC;
  signal decoder_inst_i_31_n_1 : STD_LOGIC;
  signal decoder_inst_i_31_n_2 : STD_LOGIC;
  signal decoder_inst_i_31_n_3 : STD_LOGIC;
  signal decoder_inst_i_31_n_4 : STD_LOGIC;
  signal decoder_inst_i_31_n_5 : STD_LOGIC;
  signal decoder_inst_i_31_n_6 : STD_LOGIC;
  signal decoder_inst_i_31_n_7 : STD_LOGIC;
  signal decoder_inst_i_32_n_0 : STD_LOGIC;
  signal decoder_inst_i_33_n_0 : STD_LOGIC;
  signal decoder_inst_i_34_n_0 : STD_LOGIC;
  signal decoder_inst_i_34_n_1 : STD_LOGIC;
  signal decoder_inst_i_34_n_2 : STD_LOGIC;
  signal decoder_inst_i_34_n_3 : STD_LOGIC;
  signal decoder_inst_i_35_n_0 : STD_LOGIC;
  signal decoder_inst_i_36_n_0 : STD_LOGIC;
  signal decoder_inst_i_36_n_1 : STD_LOGIC;
  signal decoder_inst_i_36_n_2 : STD_LOGIC;
  signal decoder_inst_i_36_n_3 : STD_LOGIC;
  signal decoder_inst_i_36_n_4 : STD_LOGIC;
  signal decoder_inst_i_36_n_5 : STD_LOGIC;
  signal decoder_inst_i_36_n_6 : STD_LOGIC;
  signal decoder_inst_i_36_n_7 : STD_LOGIC;
  signal decoder_inst_i_37_n_0 : STD_LOGIC;
  signal decoder_inst_i_38_n_0 : STD_LOGIC;
  signal decoder_inst_i_38_n_1 : STD_LOGIC;
  signal decoder_inst_i_38_n_2 : STD_LOGIC;
  signal decoder_inst_i_38_n_3 : STD_LOGIC;
  signal decoder_inst_i_38_n_4 : STD_LOGIC;
  signal decoder_inst_i_38_n_5 : STD_LOGIC;
  signal decoder_inst_i_38_n_6 : STD_LOGIC;
  signal decoder_inst_i_38_n_7 : STD_LOGIC;
  signal decoder_inst_i_39_n_0 : STD_LOGIC;
  signal decoder_inst_i_40_n_0 : STD_LOGIC;
  signal decoder_inst_i_41_n_0 : STD_LOGIC;
  signal decoder_inst_i_41_n_1 : STD_LOGIC;
  signal decoder_inst_i_41_n_2 : STD_LOGIC;
  signal decoder_inst_i_41_n_3 : STD_LOGIC;
  signal decoder_inst_i_41_n_4 : STD_LOGIC;
  signal decoder_inst_i_41_n_5 : STD_LOGIC;
  signal decoder_inst_i_41_n_6 : STD_LOGIC;
  signal decoder_inst_i_41_n_7 : STD_LOGIC;
  signal decoder_inst_i_42_n_0 : STD_LOGIC;
  signal decoder_inst_i_43_n_0 : STD_LOGIC;
  signal decoder_inst_i_43_n_1 : STD_LOGIC;
  signal decoder_inst_i_43_n_2 : STD_LOGIC;
  signal decoder_inst_i_43_n_3 : STD_LOGIC;
  signal decoder_inst_i_43_n_4 : STD_LOGIC;
  signal decoder_inst_i_43_n_5 : STD_LOGIC;
  signal decoder_inst_i_43_n_6 : STD_LOGIC;
  signal decoder_inst_i_43_n_7 : STD_LOGIC;
  signal decoder_inst_i_44_n_3 : STD_LOGIC;
  signal decoder_inst_i_44_n_6 : STD_LOGIC;
  signal decoder_inst_i_45_n_0 : STD_LOGIC;
  signal decoder_inst_i_46_n_0 : STD_LOGIC;
  signal decoder_inst_i_47_n_0 : STD_LOGIC;
  signal decoder_inst_i_48_n_0 : STD_LOGIC;
  signal decoder_inst_i_49_n_0 : STD_LOGIC;
  signal decoder_inst_i_50_n_0 : STD_LOGIC;
  signal decoder_inst_i_51_n_0 : STD_LOGIC;
  signal decoder_inst_i_52_n_0 : STD_LOGIC;
  signal decoder_inst_i_53_n_0 : STD_LOGIC;
  signal decoder_inst_i_54_n_0 : STD_LOGIC;
  signal decoder_inst_i_55_n_0 : STD_LOGIC;
  signal decoder_inst_i_56_n_0 : STD_LOGIC;
  signal decoder_inst_i_56_n_1 : STD_LOGIC;
  signal decoder_inst_i_56_n_2 : STD_LOGIC;
  signal decoder_inst_i_56_n_3 : STD_LOGIC;
  signal decoder_inst_i_56_n_4 : STD_LOGIC;
  signal decoder_inst_i_56_n_5 : STD_LOGIC;
  signal decoder_inst_i_56_n_6 : STD_LOGIC;
  signal decoder_inst_i_56_n_7 : STD_LOGIC;
  signal decoder_inst_i_57_n_0 : STD_LOGIC;
  signal decoder_inst_i_58_n_0 : STD_LOGIC;
  signal decoder_inst_i_59_n_0 : STD_LOGIC;
  signal decoder_inst_i_59_n_1 : STD_LOGIC;
  signal decoder_inst_i_59_n_2 : STD_LOGIC;
  signal decoder_inst_i_59_n_3 : STD_LOGIC;
  signal decoder_inst_i_59_n_4 : STD_LOGIC;
  signal decoder_inst_i_59_n_5 : STD_LOGIC;
  signal decoder_inst_i_59_n_6 : STD_LOGIC;
  signal decoder_inst_i_59_n_7 : STD_LOGIC;
  signal decoder_inst_i_5_n_0 : STD_LOGIC;
  signal decoder_inst_i_60_n_0 : STD_LOGIC;
  signal decoder_inst_i_61_n_0 : STD_LOGIC;
  signal decoder_inst_i_62_n_0 : STD_LOGIC;
  signal decoder_inst_i_62_n_1 : STD_LOGIC;
  signal decoder_inst_i_62_n_2 : STD_LOGIC;
  signal decoder_inst_i_62_n_3 : STD_LOGIC;
  signal decoder_inst_i_62_n_4 : STD_LOGIC;
  signal decoder_inst_i_62_n_5 : STD_LOGIC;
  signal decoder_inst_i_62_n_6 : STD_LOGIC;
  signal decoder_inst_i_62_n_7 : STD_LOGIC;
  signal decoder_inst_i_63_n_0 : STD_LOGIC;
  signal decoder_inst_i_64_n_0 : STD_LOGIC;
  signal decoder_inst_i_65_n_0 : STD_LOGIC;
  signal decoder_inst_i_66_n_0 : STD_LOGIC;
  signal decoder_inst_i_67_n_0 : STD_LOGIC;
  signal decoder_inst_i_68_n_0 : STD_LOGIC;
  signal decoder_inst_i_69_n_0 : STD_LOGIC;
  signal decoder_inst_i_6_n_0 : STD_LOGIC;
  signal decoder_inst_i_70_n_0 : STD_LOGIC;
  signal decoder_inst_i_71_n_0 : STD_LOGIC;
  signal decoder_inst_i_72_n_0 : STD_LOGIC;
  signal decoder_inst_i_73_n_0 : STD_LOGIC;
  signal decoder_inst_i_74_n_0 : STD_LOGIC;
  signal decoder_inst_i_75_n_0 : STD_LOGIC;
  signal decoder_inst_i_76_n_0 : STD_LOGIC;
  signal decoder_inst_i_77_n_0 : STD_LOGIC;
  signal decoder_inst_i_78_n_0 : STD_LOGIC;
  signal decoder_inst_i_79_n_0 : STD_LOGIC;
  signal decoder_inst_i_7_n_0 : STD_LOGIC;
  signal decoder_inst_i_80_n_0 : STD_LOGIC;
  signal decoder_inst_i_81_n_0 : STD_LOGIC;
  signal decoder_inst_i_82_n_0 : STD_LOGIC;
  signal decoder_inst_i_83_n_0 : STD_LOGIC;
  signal decoder_inst_i_84_n_0 : STD_LOGIC;
  signal decoder_inst_i_85_n_0 : STD_LOGIC;
  signal decoder_inst_i_86_n_0 : STD_LOGIC;
  signal decoder_inst_i_87_n_0 : STD_LOGIC;
  signal decoder_inst_i_88_n_0 : STD_LOGIC;
  signal decoder_inst_i_89_n_0 : STD_LOGIC;
  signal decoder_inst_i_8_n_0 : STD_LOGIC;
  signal decoder_inst_i_90_n_0 : STD_LOGIC;
  signal decoder_inst_i_91_n_0 : STD_LOGIC;
  signal decoder_inst_i_92_n_0 : STD_LOGIC;
  signal decoder_inst_i_93_n_0 : STD_LOGIC;
  signal decoder_inst_i_94_n_0 : STD_LOGIC;
  signal decoder_inst_i_95_n_0 : STD_LOGIC;
  signal decoder_inst_i_96_n_0 : STD_LOGIC;
  signal decoder_inst_i_97_n_0 : STD_LOGIC;
  signal decoder_inst_i_98_n_0 : STD_LOGIC;
  signal decoder_inst_i_99_n_0 : STD_LOGIC;
  signal decoder_inst_i_9_n_0 : STD_LOGIC;
  signal digit : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digit_index : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \digit_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \digit_index[1]_i_1_n_0\ : STD_LOGIC;
  signal disp_segments_n_o_OBUF : STD_LOGIC_VECTOR ( 0 to 6 );
  signal disp_select_n_o_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal down_prev : STD_LOGIC;
  signal down_pulse : STD_LOGIC;
  signal down_pulse0 : STD_LOGIC;
  signal down_sync1 : STD_LOGIC;
  signal down_sync2 : STD_LOGIC;
  signal leds_o_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal left_prev : STD_LOGIC;
  signal left_pulse : STD_LOGIC;
  signal left_pulse0 : STD_LOGIC;
  signal left_sync1 : STD_LOGIC;
  signal left_sync2 : STD_LOGIC;
  signal n_0_159 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal right_prev : STD_LOGIC;
  signal right_pulse : STD_LOGIC;
  signal right_pulse0 : STD_LOGIC;
  signal right_sync1 : STD_LOGIC;
  signal right_sync2 : STD_LOGIC;
  signal segments : STD_LOGIC_VECTOR ( 0 to 6 );
  signal start_prev : STD_LOGIC;
  signal start_pulse : STD_LOGIC;
  signal start_pulse0 : STD_LOGIC;
  signal start_sync1 : STD_LOGIC;
  signal start_sync2 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal stop_prev : STD_LOGIC;
  signal stop_pulse : STD_LOGIC;
  signal stop_pulse0 : STD_LOGIC;
  signal stop_sync1 : STD_LOGIC;
  signal stop_sync2 : STD_LOGIC;
  signal switches_i_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \temps_rest[0]_i_1_n_0\ : STD_LOGIC;
  signal \temps_rest[0]_i_2_n_0\ : STD_LOGIC;
  signal \temps_rest[0]_i_3_n_0\ : STD_LOGIC;
  signal \temps_rest[0]_i_4_n_0\ : STD_LOGIC;
  signal \temps_rest[10]_i_1_n_0\ : STD_LOGIC;
  signal \temps_rest[10]_i_2_n_0\ : STD_LOGIC;
  signal \temps_rest[10]_i_3_n_0\ : STD_LOGIC;
  signal \temps_rest[10]_i_4_n_0\ : STD_LOGIC;
  signal \temps_rest[10]_i_5_n_0\ : STD_LOGIC;
  signal \temps_rest[10]_i_6_n_0\ : STD_LOGIC;
  signal \temps_rest[10]_i_7_n_0\ : STD_LOGIC;
  signal \temps_rest[10]_i_8_n_0\ : STD_LOGIC;
  signal \temps_rest[11]_i_10_n_0\ : STD_LOGIC;
  signal \temps_rest[11]_i_11_n_0\ : STD_LOGIC;
  signal \temps_rest[11]_i_12_n_0\ : STD_LOGIC;
  signal \temps_rest[11]_i_13_n_0\ : STD_LOGIC;
  signal \temps_rest[11]_i_14_n_0\ : STD_LOGIC;
  signal \temps_rest[11]_i_15_n_0\ : STD_LOGIC;
  signal \temps_rest[11]_i_1_n_0\ : STD_LOGIC;
  signal \temps_rest[11]_i_3_n_0\ : STD_LOGIC;
  signal \temps_rest[11]_i_4_n_0\ : STD_LOGIC;
  signal \temps_rest[11]_i_6_n_0\ : STD_LOGIC;
  signal \temps_rest[11]_i_7_n_0\ : STD_LOGIC;
  signal \temps_rest[11]_i_8_n_0\ : STD_LOGIC;
  signal \temps_rest[11]_i_9_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_10_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_13_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_14_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_17_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_19_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_1_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_20_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_22_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_23_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_24_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_25_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_28_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_29_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_2_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_30_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_31_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_33_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_34_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_35_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_36_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_37_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_38_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_39_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_3_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_40_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_41_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_42_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_43_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_4_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_5_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_6_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_7_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_8_n_0\ : STD_LOGIC;
  signal \temps_rest[12]_i_9_n_0\ : STD_LOGIC;
  signal \temps_rest[1]_i_1_n_0\ : STD_LOGIC;
  signal \temps_rest[1]_i_2_n_0\ : STD_LOGIC;
  signal \temps_rest[1]_i_3_n_0\ : STD_LOGIC;
  signal \temps_rest[1]_i_4_n_0\ : STD_LOGIC;
  signal \temps_rest[1]_i_5_n_0\ : STD_LOGIC;
  signal \temps_rest[1]_i_6_n_0\ : STD_LOGIC;
  signal \temps_rest[2]_i_1_n_0\ : STD_LOGIC;
  signal \temps_rest[2]_i_2_n_0\ : STD_LOGIC;
  signal \temps_rest[2]_i_3_n_0\ : STD_LOGIC;
  signal \temps_rest[2]_i_4_n_0\ : STD_LOGIC;
  signal \temps_rest[2]_i_5_n_0\ : STD_LOGIC;
  signal \temps_rest[2]_i_6_n_0\ : STD_LOGIC;
  signal \temps_rest[3]_i_10_n_0\ : STD_LOGIC;
  signal \temps_rest[3]_i_11_n_0\ : STD_LOGIC;
  signal \temps_rest[3]_i_12_n_0\ : STD_LOGIC;
  signal \temps_rest[3]_i_1_n_0\ : STD_LOGIC;
  signal \temps_rest[3]_i_2_n_0\ : STD_LOGIC;
  signal \temps_rest[3]_i_3_n_0\ : STD_LOGIC;
  signal \temps_rest[3]_i_4_n_0\ : STD_LOGIC;
  signal \temps_rest[3]_i_6_n_0\ : STD_LOGIC;
  signal \temps_rest[3]_i_7_n_0\ : STD_LOGIC;
  signal \temps_rest[3]_i_9_n_0\ : STD_LOGIC;
  signal \temps_rest[4]_i_10_n_0\ : STD_LOGIC;
  signal \temps_rest[4]_i_11_n_0\ : STD_LOGIC;
  signal \temps_rest[4]_i_13_n_0\ : STD_LOGIC;
  signal \temps_rest[4]_i_1_n_0\ : STD_LOGIC;
  signal \temps_rest[4]_i_3_n_0\ : STD_LOGIC;
  signal \temps_rest[4]_i_4_n_0\ : STD_LOGIC;
  signal \temps_rest[4]_i_5_n_0\ : STD_LOGIC;
  signal \temps_rest[4]_i_6_n_0\ : STD_LOGIC;
  signal \temps_rest[4]_i_7_n_0\ : STD_LOGIC;
  signal \temps_rest[4]_i_8_n_0\ : STD_LOGIC;
  signal \temps_rest[4]_i_9_n_0\ : STD_LOGIC;
  signal \temps_rest[5]_i_1_n_0\ : STD_LOGIC;
  signal \temps_rest[5]_i_2_n_0\ : STD_LOGIC;
  signal \temps_rest[5]_i_3_n_0\ : STD_LOGIC;
  signal \temps_rest[5]_i_4_n_0\ : STD_LOGIC;
  signal \temps_rest[5]_i_5_n_0\ : STD_LOGIC;
  signal \temps_rest[5]_i_6_n_0\ : STD_LOGIC;
  signal \temps_rest[6]_i_1_n_0\ : STD_LOGIC;
  signal \temps_rest[6]_i_2_n_0\ : STD_LOGIC;
  signal \temps_rest[6]_i_3_n_0\ : STD_LOGIC;
  signal \temps_rest[6]_i_4_n_0\ : STD_LOGIC;
  signal \temps_rest[6]_i_5_n_0\ : STD_LOGIC;
  signal \temps_rest[6]_i_6_n_0\ : STD_LOGIC;
  signal \temps_rest[7]_i_1_n_0\ : STD_LOGIC;
  signal \temps_rest[7]_i_2_n_0\ : STD_LOGIC;
  signal \temps_rest[7]_i_3_n_0\ : STD_LOGIC;
  signal \temps_rest[7]_i_4_n_0\ : STD_LOGIC;
  signal \temps_rest[7]_i_5_n_0\ : STD_LOGIC;
  signal \temps_rest[7]_i_6_n_0\ : STD_LOGIC;
  signal \temps_rest[7]_i_8_n_0\ : STD_LOGIC;
  signal \temps_rest[8]_i_10_n_0\ : STD_LOGIC;
  signal \temps_rest[8]_i_11_n_0\ : STD_LOGIC;
  signal \temps_rest[8]_i_1_n_0\ : STD_LOGIC;
  signal \temps_rest[8]_i_3_n_0\ : STD_LOGIC;
  signal \temps_rest[8]_i_4_n_0\ : STD_LOGIC;
  signal \temps_rest[8]_i_5_n_0\ : STD_LOGIC;
  signal \temps_rest[8]_i_6_n_0\ : STD_LOGIC;
  signal \temps_rest[8]_i_7_n_0\ : STD_LOGIC;
  signal \temps_rest[8]_i_8_n_0\ : STD_LOGIC;
  signal \temps_rest[8]_i_9_n_0\ : STD_LOGIC;
  signal \temps_rest[9]_i_1_n_0\ : STD_LOGIC;
  signal \temps_rest[9]_i_2_n_0\ : STD_LOGIC;
  signal \temps_rest[9]_i_3_n_0\ : STD_LOGIC;
  signal \temps_rest[9]_i_4_n_0\ : STD_LOGIC;
  signal \temps_rest[9]_i_5_n_0\ : STD_LOGIC;
  signal \temps_rest[9]_i_6_n_0\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_5_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_5_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_5_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_5_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_5_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_5_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[11]_i_5_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_11_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_11_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_11_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_11_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_11_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_11_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_11_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_12_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_12_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_12_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_12_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_12_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_12_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_12_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_15_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_16_n_0\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_16_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_16_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_16_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_16_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_16_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_16_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_16_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_18_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_21_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_21_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_21_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_21_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_21_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_21_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_21_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_26_n_0\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_26_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_26_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_26_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_26_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_26_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_26_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_26_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_27_n_0\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_27_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_27_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_27_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_27_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_27_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_27_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_27_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_32_n_0\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_32_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_32_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_32_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_32_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_32_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_32_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[12]_i_32_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_5_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_5_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_5_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_5_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_5_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_5_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_8_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_8_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_8_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_8_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_8_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_8_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[3]_i_8_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_12_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_12_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_12_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_12_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_12_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_12_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \temps_rest_reg[7]_i_7_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[7]_i_7_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[7]_i_7_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[7]_i_7_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[7]_i_7_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[7]_i_7_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[7]_i_7_n_7\ : STD_LOGIC;
  signal \temps_rest_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \temps_rest_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \temps_rest_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \temps_rest_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \temps_rest_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \temps_rest_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \temps_rest_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \temps_rest_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \temps_rest_reg_n_0_[0]\ : STD_LOGIC;
  signal \temps_rest_reg_n_0_[10]\ : STD_LOGIC;
  signal \temps_rest_reg_n_0_[11]\ : STD_LOGIC;
  signal \temps_rest_reg_n_0_[12]\ : STD_LOGIC;
  signal \temps_rest_reg_n_0_[1]\ : STD_LOGIC;
  signal \temps_rest_reg_n_0_[2]\ : STD_LOGIC;
  signal \temps_rest_reg_n_0_[3]\ : STD_LOGIC;
  signal \temps_rest_reg_n_0_[4]\ : STD_LOGIC;
  signal \temps_rest_reg_n_0_[5]\ : STD_LOGIC;
  signal \temps_rest_reg_n_0_[6]\ : STD_LOGIC;
  signal \temps_rest_reg_n_0_[7]\ : STD_LOGIC;
  signal \temps_rest_reg_n_0_[8]\ : STD_LOGIC;
  signal \temps_rest_reg_n_0_[9]\ : STD_LOGIC;
  signal tick_1khz : STD_LOGIC;
  signal top_1sec : STD_LOGIC;
  signal up_prev : STD_LOGIC;
  signal up_pulse : STD_LOGIC;
  signal up_pulse0 : STD_LOGIC;
  signal up_sync1 : STD_LOGIC;
  signal up_sync2 : STD_LOGIC;
  signal NLW_decoder_inst_i_108_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_108_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_138_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_138_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_141_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_141_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_148_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_148_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_158_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_158_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_159_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_17_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_17_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_18_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_18_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_21_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_21_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_22_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_22_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_23_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_23_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_24_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_24_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_26_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_26_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_27_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_decoder_inst_i_28_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_28_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_29_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_29_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_30_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_30_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_34_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_inst_i_44_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_decoder_inst_i_44_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temps_rest_reg[12]_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_temps_rest_reg[12]_i_12_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_temps_rest_reg[12]_i_15_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temps_rest_reg[12]_i_15_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_temps_rest_reg[12]_i_18_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temps_rest_reg[12]_i_18_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_temps_rest_reg[12]_i_21_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_temps_rest_reg[3]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_temps_rest_reg[4]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_tick1hz_inst_value_o_UNCONNECTED : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal NLW_tick1khz_inst_value_o_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \buzzer_counter[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \buzzer_counter[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \buzzer_counter[2]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of buzzer_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of decoder_inst_i_7 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of decoder_inst_i_9 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \digit_index[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \digit_index[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of i_159 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \state[1]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \temps_rest[0]_i_4\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \temps_rest[10]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \temps_rest[10]_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \temps_rest[10]_i_6\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \temps_rest[10]_i_7\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \temps_rest[10]_i_8\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \temps_rest[11]_i_10\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \temps_rest[11]_i_11\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \temps_rest[11]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \temps_rest[12]_i_10\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \temps_rest[12]_i_13\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \temps_rest[12]_i_14\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \temps_rest[12]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \temps_rest[12]_i_30\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \temps_rest[12]_i_31\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \temps_rest[12]_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \temps_rest[12]_i_7\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \temps_rest[12]_i_8\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \temps_rest[1]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \temps_rest[1]_i_5\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \temps_rest[1]_i_6\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \temps_rest[2]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \temps_rest[2]_i_5\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \temps_rest[2]_i_6\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \temps_rest[3]_i_6\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \temps_rest[3]_i_7\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \temps_rest[4]_i_10\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \temps_rest[4]_i_11\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \temps_rest[4]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \temps_rest[5]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \temps_rest[5]_i_6\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \temps_rest[6]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \temps_rest[6]_i_5\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \temps_rest[6]_i_6\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \temps_rest[7]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \temps_rest[7]_i_5\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \temps_rest[7]_i_6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \temps_rest[8]_i_10\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \temps_rest[8]_i_11\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \temps_rest[8]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \temps_rest[9]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \temps_rest[9]_i_5\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \temps_rest[9]_i_6\ : label is "soft_lutpair40";
  attribute N : integer;
  attribute N of tick1hz_inst : label is 100000000;
  attribute N of tick1khz_inst : label is 100000;
begin
btn_center_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => btn_center_i,
      O => btn_center_i_IBUF
    );
btn_down_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => btn_down_i,
      O => btn_down_i_IBUF
    );
btn_left_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => btn_left_i,
      O => btn_left_i_IBUF
    );
btn_right_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => btn_right_i,
      O => btn_right_i_IBUF
    );
btn_up_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => btn_up_i,
      O => btn_up_i_IBUF
    );
\buzzer_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \buzzer_counter[2]_i_2_n_0\,
      I2 => buzzer_counter(0),
      O => \buzzer_counter[0]_i_1_n_0\
    );
\buzzer_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"28F0"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => buzzer_counter(0),
      I2 => buzzer_counter(1),
      I3 => \buzzer_counter[2]_i_2_n_0\,
      O => \buzzer_counter[1]_i_1_n_0\
    );
\buzzer_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => buzzer_counter(0),
      I2 => buzzer_counter(1),
      I3 => \buzzer_counter[2]_i_2_n_0\,
      I4 => buzzer_counter(2),
      O => \buzzer_counter[2]_i_1_n_0\
    );
\buzzer_counter[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D8DD"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state[1]_i_2_n_0\,
      I2 => top_1sec,
      I3 => \state_reg_n_0_[1]\,
      O => \buzzer_counter[2]_i_2_n_0\
    );
\buzzer_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \buzzer_counter[0]_i_1_n_0\,
      Q => buzzer_counter(0),
      R => '0'
    );
\buzzer_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \buzzer_counter[1]_i_1_n_0\,
      Q => buzzer_counter(1),
      R => '0'
    );
\buzzer_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \buzzer_counter[2]_i_1_n_0\,
      Q => buzzer_counter(2),
      R => '0'
    );
buzzer_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => buzzer_counter(0),
      I2 => buzzer_counter(1),
      I3 => buzzer_counter(2),
      O => buzzer_i_1_n_0
    );
buzzer_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => buzzer_i_1_n_0,
      Q => leds_o_OBUF(0),
      R => '0'
    );
clk_i_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_i_IBUF,
      O => clk_i_IBUF_BUFG
    );
clk_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_i,
      O => clk_i_IBUF
    );
decoder_inst: entity work.SegmentDecoder
     port map (
      digit_i(3 downto 0) => digit(3 downto 0),
      segments_o(0 to 6) => segments(0 to 6)
    );
decoder_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04C407C7"
    )
        port map (
      I0 => decoder_inst_i_5_n_0,
      I1 => digit_index(0),
      I2 => digit_index(1),
      I3 => decoder_inst_i_6_n_0,
      I4 => decoder_inst_i_7_n_0,
      O => digit(3)
    );
decoder_inst_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA0001"
    )
        port map (
      I0 => decoder_inst_i_25_n_5,
      I1 => decoder_inst_i_25_n_7,
      I2 => decoder_inst_i_26_n_3,
      I3 => decoder_inst_i_25_n_6,
      I4 => decoder_inst_i_25_n_4,
      O => decoder_inst_i_10_n_0
    );
decoder_inst_i_100: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_21_n_3,
      I1 => decoder_inst_i_36_n_7,
      O => decoder_inst_i_100_n_0
    );
decoder_inst_i_101: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_21_n_3,
      I1 => decoder_inst_i_30_n_6,
      O => decoder_inst_i_101_n_0
    );
decoder_inst_i_102: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_102_n_0,
      CO(2) => decoder_inst_i_102_n_1,
      CO(1) => decoder_inst_i_102_n_2,
      CO(0) => decoder_inst_i_102_n_3,
      CYINIT => decoder_inst_i_108_n_3,
      DI(3) => decoder_inst_i_132_n_5,
      DI(2) => decoder_inst_i_132_n_6,
      DI(1) => decoder_inst_i_132_n_7,
      DI(0) => decoder_inst_i_133_n_0,
      O(3) => decoder_inst_i_102_n_4,
      O(2) => decoder_inst_i_102_n_5,
      O(1) => decoder_inst_i_102_n_6,
      O(0) => decoder_inst_i_102_n_7,
      S(3) => decoder_inst_i_134_n_0,
      S(2) => decoder_inst_i_135_n_0,
      S(1) => decoder_inst_i_136_n_0,
      S(0) => decoder_inst_i_137_n_0
    );
decoder_inst_i_103: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decoder_inst_i_138_n_6,
      O => decoder_inst_i_103_n_0
    );
decoder_inst_i_104: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_44_n_3,
      I1 => decoder_inst_i_102_n_5,
      O => decoder_inst_i_104_n_0
    );
decoder_inst_i_105: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_44_n_3,
      I1 => decoder_inst_i_102_n_6,
      O => decoder_inst_i_105_n_0
    );
decoder_inst_i_106: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_44_n_3,
      I1 => decoder_inst_i_102_n_7,
      O => decoder_inst_i_106_n_0
    );
decoder_inst_i_107: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_44_n_3,
      I1 => decoder_inst_i_138_n_6,
      O => decoder_inst_i_107_n_0
    );
decoder_inst_i_108: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_132_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_108_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_108_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_138_n_3,
      O(3 downto 2) => NLW_decoder_inst_i_108_O_UNCONNECTED(3 downto 2),
      O(1) => decoder_inst_i_108_n_6,
      O(0) => NLW_decoder_inst_i_108_O_UNCONNECTED(0),
      S(3 downto 2) => B"00",
      S(1) => decoder_inst_i_139_n_0,
      S(0) => decoder_inst_i_140_n_0
    );
decoder_inst_i_109: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[2]\,
      I1 => decoder_inst_i_44_n_3,
      O => decoder_inst_i_109_n_0
    );
decoder_inst_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CBB66DD3D33CCBB7"
    )
        port map (
      I0 => decoder_inst_i_24_n_6,
      I1 => decoder_inst_i_25_n_5,
      I2 => decoder_inst_i_25_n_7,
      I3 => decoder_inst_i_26_n_3,
      I4 => decoder_inst_i_25_n_6,
      I5 => decoder_inst_i_25_n_4,
      O => decoder_inst_i_11_n_0
    );
decoder_inst_i_110: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_108_n_3,
      I1 => decoder_inst_i_132_n_4,
      O => decoder_inst_i_110_n_0
    );
decoder_inst_i_111: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[7]\,
      O => decoder_inst_i_111_n_0
    );
decoder_inst_i_112: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_29_n_3,
      I1 => decoder_inst_i_59_n_5,
      O => decoder_inst_i_112_n_0
    );
decoder_inst_i_113: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_29_n_3,
      I1 => decoder_inst_i_59_n_6,
      O => decoder_inst_i_113_n_0
    );
decoder_inst_i_114: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_29_n_3,
      I1 => decoder_inst_i_59_n_7,
      O => decoder_inst_i_114_n_0
    );
decoder_inst_i_115: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_29_n_3,
      I1 => \temps_rest_reg_n_0_[7]\,
      O => decoder_inst_i_115_n_0
    );
decoder_inst_i_116: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_27_n_0,
      O => decoder_inst_i_116_n_0
    );
decoder_inst_i_117: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_27_n_0,
      O => decoder_inst_i_117_n_0
    );
decoder_inst_i_118: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_27_n_0,
      O => decoder_inst_i_118_n_0
    );
decoder_inst_i_119: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_27_n_0,
      O => decoder_inst_i_119_n_0
    );
decoder_inst_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7D965555AAAA69BE"
    )
        port map (
      I0 => decoder_inst_i_23_n_3,
      I1 => decoder_inst_i_22_n_3,
      I2 => decoder_inst_i_9_n_0,
      I3 => decoder_inst_i_21_n_3,
      I4 => decoder_inst_i_15_n_0,
      I5 => decoder_inst_i_20_n_0,
      O => decoder_inst_i_12_n_0
    );
decoder_inst_i_120: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_27_n_0,
      I1 => decoder_inst_i_27_n_6,
      O => decoder_inst_i_120_n_0
    );
decoder_inst_i_121: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => decoder_inst_i_27_n_0,
      I1 => \temps_rest_reg_n_0_[10]\,
      I2 => \temps_rest_reg_n_0_[9]\,
      O => decoder_inst_i_121_n_0
    );
decoder_inst_i_122: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_27_n_0,
      I1 => \temps_rest_reg_n_0_[9]\,
      O => decoder_inst_i_122_n_0
    );
decoder_inst_i_123: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_27_n_0,
      I1 => \temps_rest_reg_n_0_[8]\,
      O => decoder_inst_i_123_n_0
    );
decoder_inst_i_124: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_28_n_3,
      O => decoder_inst_i_124_n_0
    );
decoder_inst_i_125: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_28_n_3,
      O => decoder_inst_i_125_n_0
    );
decoder_inst_i_126: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_28_n_3,
      O => decoder_inst_i_126_n_0
    );
decoder_inst_i_127: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_28_n_3,
      O => decoder_inst_i_127_n_0
    );
decoder_inst_i_128: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_28_n_3,
      I1 => decoder_inst_i_56_n_5,
      O => decoder_inst_i_128_n_0
    );
decoder_inst_i_129: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_28_n_3,
      I1 => decoder_inst_i_56_n_6,
      O => decoder_inst_i_129_n_0
    );
decoder_inst_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"799E9E966979799D"
    )
        port map (
      I0 => decoder_inst_i_24_n_6,
      I1 => decoder_inst_i_25_n_4,
      I2 => decoder_inst_i_25_n_6,
      I3 => decoder_inst_i_26_n_3,
      I4 => decoder_inst_i_25_n_7,
      I5 => decoder_inst_i_25_n_5,
      O => decoder_inst_i_13_n_0
    );
decoder_inst_i_130: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_28_n_3,
      I1 => decoder_inst_i_56_n_7,
      O => decoder_inst_i_130_n_0
    );
decoder_inst_i_131: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_28_n_3,
      I1 => decoder_inst_i_141_n_7,
      O => decoder_inst_i_131_n_0
    );
decoder_inst_i_132: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_132_n_0,
      CO(2) => decoder_inst_i_132_n_1,
      CO(1) => decoder_inst_i_132_n_2,
      CO(0) => decoder_inst_i_132_n_3,
      CYINIT => decoder_inst_i_138_n_3,
      DI(3) => decoder_inst_i_142_n_5,
      DI(2) => decoder_inst_i_142_n_6,
      DI(1) => decoder_inst_i_142_n_7,
      DI(0) => decoder_inst_i_143_n_0,
      O(3) => decoder_inst_i_132_n_4,
      O(2) => decoder_inst_i_132_n_5,
      O(1) => decoder_inst_i_132_n_6,
      O(0) => decoder_inst_i_132_n_7,
      S(3) => decoder_inst_i_144_n_0,
      S(2) => decoder_inst_i_145_n_0,
      S(1) => decoder_inst_i_146_n_0,
      S(0) => decoder_inst_i_147_n_0
    );
decoder_inst_i_133: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decoder_inst_i_148_n_6,
      O => decoder_inst_i_133_n_0
    );
decoder_inst_i_134: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_108_n_3,
      I1 => decoder_inst_i_132_n_5,
      O => decoder_inst_i_134_n_0
    );
decoder_inst_i_135: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_108_n_3,
      I1 => decoder_inst_i_132_n_6,
      O => decoder_inst_i_135_n_0
    );
decoder_inst_i_136: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_108_n_3,
      I1 => decoder_inst_i_132_n_7,
      O => decoder_inst_i_136_n_0
    );
decoder_inst_i_137: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_108_n_3,
      I1 => decoder_inst_i_148_n_6,
      O => decoder_inst_i_137_n_0
    );
decoder_inst_i_138: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_142_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_138_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_138_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_148_n_3,
      O(3 downto 2) => NLW_decoder_inst_i_138_O_UNCONNECTED(3 downto 2),
      O(1) => decoder_inst_i_138_n_6,
      O(0) => NLW_decoder_inst_i_138_O_UNCONNECTED(0),
      S(3 downto 2) => B"00",
      S(1) => decoder_inst_i_149_n_0,
      S(0) => decoder_inst_i_150_n_0
    );
decoder_inst_i_139: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[3]\,
      I1 => decoder_inst_i_108_n_3,
      O => decoder_inst_i_139_n_0
    );
decoder_inst_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8155AA81"
    )
        port map (
      I0 => decoder_inst_i_25_n_5,
      I1 => decoder_inst_i_25_n_7,
      I2 => decoder_inst_i_26_n_3,
      I3 => decoder_inst_i_25_n_6,
      I4 => decoder_inst_i_25_n_4,
      O => decoder_inst_i_14_n_0
    );
decoder_inst_i_140: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_138_n_3,
      I1 => decoder_inst_i_142_n_4,
      O => decoder_inst_i_140_n_0
    );
decoder_inst_i_141: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_27_n_0,
      CO(3 downto 0) => NLW_decoder_inst_i_141_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_decoder_inst_i_141_O_UNCONNECTED(3 downto 1),
      O(0) => decoder_inst_i_141_n_7,
      S(3 downto 1) => B"000",
      S(0) => decoder_inst_i_151_n_0
    );
decoder_inst_i_142: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_142_n_0,
      CO(2) => decoder_inst_i_142_n_1,
      CO(1) => decoder_inst_i_142_n_2,
      CO(0) => decoder_inst_i_142_n_3,
      CYINIT => decoder_inst_i_148_n_3,
      DI(3) => decoder_inst_i_152_n_5,
      DI(2) => decoder_inst_i_152_n_6,
      DI(1) => decoder_inst_i_152_n_7,
      DI(0) => decoder_inst_i_153_n_0,
      O(3) => decoder_inst_i_142_n_4,
      O(2) => decoder_inst_i_142_n_5,
      O(1) => decoder_inst_i_142_n_6,
      O(0) => decoder_inst_i_142_n_7,
      S(3) => decoder_inst_i_154_n_0,
      S(2) => decoder_inst_i_155_n_0,
      S(1) => decoder_inst_i_156_n_0,
      S(0) => decoder_inst_i_157_n_0
    );
decoder_inst_i_143: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decoder_inst_i_158_n_7,
      O => decoder_inst_i_143_n_0
    );
decoder_inst_i_144: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_138_n_3,
      I1 => decoder_inst_i_142_n_5,
      O => decoder_inst_i_144_n_0
    );
decoder_inst_i_145: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_138_n_3,
      I1 => decoder_inst_i_142_n_6,
      O => decoder_inst_i_145_n_0
    );
decoder_inst_i_146: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_138_n_3,
      I1 => decoder_inst_i_142_n_7,
      O => decoder_inst_i_146_n_0
    );
decoder_inst_i_147: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_138_n_3,
      I1 => decoder_inst_i_158_n_7,
      O => decoder_inst_i_147_n_0
    );
decoder_inst_i_148: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_152_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_148_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_148_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_159_n_0,
      O(3 downto 2) => NLW_decoder_inst_i_148_O_UNCONNECTED(3 downto 2),
      O(1) => decoder_inst_i_148_n_6,
      O(0) => NLW_decoder_inst_i_148_O_UNCONNECTED(0),
      S(3 downto 2) => B"00",
      S(1) => decoder_inst_i_160_n_0,
      S(0) => decoder_inst_i_161_n_0
    );
decoder_inst_i_149: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[4]\,
      I1 => decoder_inst_i_138_n_3,
      O => decoder_inst_i_149_n_0
    );
decoder_inst_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FD24BF40BD042B4"
    )
        port map (
      I0 => decoder_inst_i_27_n_0,
      I1 => decoder_inst_i_28_n_3,
      I2 => decoder_inst_i_29_n_3,
      I3 => decoder_inst_i_30_n_3,
      I4 => decoder_inst_i_22_n_3,
      I5 => decoder_inst_i_21_n_3,
      O => decoder_inst_i_15_n_0
    );
decoder_inst_i_150: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_148_n_3,
      I1 => decoder_inst_i_152_n_4,
      O => decoder_inst_i_150_n_0
    );
decoder_inst_i_151: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[6]\,
      I1 => decoder_inst_i_27_n_0,
      O => decoder_inst_i_151_n_0
    );
decoder_inst_i_152: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_152_n_0,
      CO(2) => decoder_inst_i_152_n_1,
      CO(1) => decoder_inst_i_152_n_2,
      CO(0) => decoder_inst_i_152_n_3,
      CYINIT => decoder_inst_i_159_n_0,
      DI(3) => decoder_inst_i_159_n_6,
      DI(2) => decoder_inst_i_27_n_7,
      DI(1) => decoder_inst_i_162_n_0,
      DI(0) => \temps_rest_reg_n_0_[8]\,
      O(3) => decoder_inst_i_152_n_4,
      O(2) => decoder_inst_i_152_n_5,
      O(1) => decoder_inst_i_152_n_6,
      O(0) => decoder_inst_i_152_n_7,
      S(3) => decoder_inst_i_163_n_0,
      S(2) => decoder_inst_i_164_n_0,
      S(1) => decoder_inst_i_165_n_0,
      S(0) => decoder_inst_i_166_n_0
    );
decoder_inst_i_153: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[7]\,
      O => decoder_inst_i_153_n_0
    );
decoder_inst_i_154: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_148_n_3,
      I1 => decoder_inst_i_152_n_5,
      O => decoder_inst_i_154_n_0
    );
decoder_inst_i_155: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_148_n_3,
      I1 => decoder_inst_i_152_n_6,
      O => decoder_inst_i_155_n_0
    );
decoder_inst_i_156: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_148_n_3,
      I1 => decoder_inst_i_152_n_7,
      O => decoder_inst_i_156_n_0
    );
decoder_inst_i_157: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_148_n_3,
      I1 => \temps_rest_reg_n_0_[7]\,
      O => decoder_inst_i_157_n_0
    );
decoder_inst_i_158: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_159_n_0,
      CO(3 downto 0) => NLW_decoder_inst_i_158_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_decoder_inst_i_158_O_UNCONNECTED(3 downto 1),
      O(0) => decoder_inst_i_158_n_7,
      S(3 downto 1) => B"000",
      S(0) => decoder_inst_i_167_n_0
    );
decoder_inst_i_159: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_159_n_0,
      CO(2) => decoder_inst_i_159_n_1,
      CO(1) => decoder_inst_i_159_n_2,
      CO(0) => decoder_inst_i_159_n_3,
      CYINIT => \temps_rest_reg_n_0_[9]\,
      DI(3 downto 0) => B"0111",
      O(3) => NLW_decoder_inst_i_159_O_UNCONNECTED(3),
      O(2) => decoder_inst_i_159_n_5,
      O(1) => decoder_inst_i_159_n_6,
      O(0) => NLW_decoder_inst_i_159_O_UNCONNECTED(0),
      S(3) => decoder_inst_i_168_n_0,
      S(2) => decoder_inst_i_169_n_0,
      S(1) => decoder_inst_i_170_n_0,
      S(0) => \temps_rest_reg_n_0_[10]\
    );
decoder_inst_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DD5D54D4D54544D"
    )
        port map (
      I0 => decoder_inst_i_20_n_0,
      I1 => decoder_inst_i_15_n_0,
      I2 => decoder_inst_i_21_n_3,
      I3 => decoder_inst_i_9_n_0,
      I4 => decoder_inst_i_22_n_3,
      I5 => decoder_inst_i_23_n_3,
      O => decoder_inst_i_16_n_0
    );
decoder_inst_i_160: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[5]\,
      I1 => decoder_inst_i_148_n_3,
      O => decoder_inst_i_160_n_0
    );
decoder_inst_i_161: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_159_n_0,
      I1 => decoder_inst_i_159_n_5,
      O => decoder_inst_i_161_n_0
    );
decoder_inst_i_162: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_159_n_0,
      O => decoder_inst_i_162_n_0
    );
decoder_inst_i_163: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_159_n_0,
      I1 => decoder_inst_i_159_n_6,
      O => decoder_inst_i_163_n_0
    );
decoder_inst_i_164: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_159_n_0,
      I1 => decoder_inst_i_27_n_7,
      O => decoder_inst_i_164_n_0
    );
decoder_inst_i_165: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_159_n_0,
      I1 => \temps_rest_reg_n_0_[9]\,
      O => decoder_inst_i_165_n_0
    );
decoder_inst_i_166: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_159_n_0,
      I1 => \temps_rest_reg_n_0_[8]\,
      O => decoder_inst_i_166_n_0
    );
decoder_inst_i_167: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[6]\,
      I1 => decoder_inst_i_159_n_0,
      O => decoder_inst_i_167_n_0
    );
decoder_inst_i_168: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[10]\,
      I1 => \temps_rest_reg_n_0_[11]\,
      I2 => \temps_rest_reg_n_0_[12]\,
      O => decoder_inst_i_168_n_0
    );
decoder_inst_i_169: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[12]\,
      I1 => \temps_rest_reg_n_0_[10]\,
      I2 => \temps_rest_reg_n_0_[11]\,
      O => decoder_inst_i_169_n_0
    );
decoder_inst_i_17: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_31_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_17_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_17_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_24_n_3,
      O(3 downto 2) => NLW_decoder_inst_i_17_O_UNCONNECTED(3 downto 2),
      O(1) => p_0_in(0),
      O(0) => NLW_decoder_inst_i_17_O_UNCONNECTED(0),
      S(3 downto 2) => B"00",
      S(1) => decoder_inst_i_32_n_0,
      S(0) => decoder_inst_i_33_n_0
    );
decoder_inst_i_170: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[11]\,
      I1 => \temps_rest_reg_n_0_[10]\,
      O => decoder_inst_i_170_n_0
    );
decoder_inst_i_18: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_34_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_18_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_18_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_23_n_3,
      O(3 downto 0) => NLW_decoder_inst_i_18_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => decoder_inst_i_35_n_0
    );
decoder_inst_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCFFBB2B2200CCC"
    )
        port map (
      I0 => decoder_inst_i_24_n_6,
      I1 => decoder_inst_i_25_n_5,
      I2 => decoder_inst_i_25_n_7,
      I3 => decoder_inst_i_26_n_3,
      I4 => decoder_inst_i_25_n_6,
      I5 => decoder_inst_i_25_n_4,
      O => decoder_inst_i_19_n_0
    );
decoder_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05FC050CF5FCF50C"
    )
        port map (
      I0 => decoder_inst_i_8_n_0,
      I1 => decoder_inst_i_9_n_0,
      I2 => digit_index(1),
      I3 => digit_index(0),
      I4 => decoder_inst_i_10_n_0,
      I5 => decoder_inst_i_11_n_0,
      O => digit(2)
    );
decoder_inst_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2962624666D6D69D"
    )
        port map (
      I0 => decoder_inst_i_30_n_3,
      I1 => decoder_inst_i_29_n_3,
      I2 => decoder_inst_i_28_n_3,
      I3 => decoder_inst_i_27_n_0,
      I4 => decoder_inst_i_22_n_3,
      I5 => decoder_inst_i_21_n_3,
      O => decoder_inst_i_20_n_0
    );
decoder_inst_i_21: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_36_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_21_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_21_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_22_n_3,
      O(3 downto 0) => NLW_decoder_inst_i_21_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => decoder_inst_i_37_n_0
    );
decoder_inst_i_22: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_38_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_22_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_22_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_30_n_3,
      O(3 downto 2) => NLW_decoder_inst_i_22_O_UNCONNECTED(3 downto 2),
      O(1) => decoder_inst_i_22_n_6,
      O(0) => NLW_decoder_inst_i_22_O_UNCONNECTED(0),
      S(3 downto 2) => B"00",
      S(1) => decoder_inst_i_39_n_0,
      S(0) => decoder_inst_i_40_n_0
    );
decoder_inst_i_23: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_41_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_23_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_23_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_21_n_3,
      O(3 downto 0) => NLW_decoder_inst_i_23_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => decoder_inst_i_42_n_0
    );
decoder_inst_i_24: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_43_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_24_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_24_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_44_n_3,
      O(3 downto 2) => NLW_decoder_inst_i_24_O_UNCONNECTED(3 downto 2),
      O(1) => decoder_inst_i_24_n_6,
      O(0) => NLW_decoder_inst_i_24_O_UNCONNECTED(0),
      S(3 downto 2) => B"00",
      S(1) => decoder_inst_i_45_n_0,
      S(0) => decoder_inst_i_46_n_0
    );
decoder_inst_i_25: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_25_n_0,
      CO(2) => decoder_inst_i_25_n_1,
      CO(1) => decoder_inst_i_25_n_2,
      CO(0) => decoder_inst_i_25_n_3,
      CYINIT => decoder_inst_i_17_n_3,
      DI(3) => decoder_inst_i_31_n_5,
      DI(2) => decoder_inst_i_31_n_6,
      DI(1) => decoder_inst_i_31_n_7,
      DI(0) => decoder_inst_i_47_n_0,
      O(3) => decoder_inst_i_25_n_4,
      O(2) => decoder_inst_i_25_n_5,
      O(1) => decoder_inst_i_25_n_6,
      O(0) => decoder_inst_i_25_n_7,
      S(3) => decoder_inst_i_48_n_0,
      S(2) => decoder_inst_i_49_n_0,
      S(1) => decoder_inst_i_50_n_0,
      S(0) => decoder_inst_i_51_n_0
    );
decoder_inst_i_26: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_25_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_26_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_26_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_17_n_3,
      O(3 downto 0) => NLW_decoder_inst_i_26_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => decoder_inst_i_52_n_0
    );
decoder_inst_i_27: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_27_n_0,
      CO(2) => decoder_inst_i_27_n_1,
      CO(1) => decoder_inst_i_27_n_2,
      CO(0) => decoder_inst_i_27_n_3,
      CYINIT => \temps_rest_reg_n_0_[9]\,
      DI(3 downto 0) => B"0111",
      O(3) => NLW_decoder_inst_i_27_O_UNCONNECTED(3),
      O(2) => decoder_inst_i_27_n_5,
      O(1) => decoder_inst_i_27_n_6,
      O(0) => decoder_inst_i_27_n_7,
      S(3) => decoder_inst_i_53_n_0,
      S(2) => decoder_inst_i_54_n_0,
      S(1) => decoder_inst_i_55_n_0,
      S(0) => \temps_rest_reg_n_0_[10]\
    );
decoder_inst_i_28: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_56_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_28_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_28_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_29_n_3,
      O(3 downto 2) => NLW_decoder_inst_i_28_O_UNCONNECTED(3 downto 2),
      O(1) => decoder_inst_i_28_n_6,
      O(0) => NLW_decoder_inst_i_28_O_UNCONNECTED(0),
      S(3 downto 2) => B"00",
      S(1) => decoder_inst_i_57_n_0,
      S(0) => decoder_inst_i_58_n_0
    );
decoder_inst_i_29: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_59_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_29_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_29_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_27_n_0,
      O(3 downto 2) => NLW_decoder_inst_i_29_O_UNCONNECTED(3 downto 2),
      O(1) => decoder_inst_i_29_n_6,
      O(0) => NLW_decoder_inst_i_29_O_UNCONNECTED(0),
      S(3 downto 2) => B"00",
      S(1) => decoder_inst_i_60_n_0,
      S(0) => decoder_inst_i_61_n_0
    );
decoder_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35FF350F35F03500"
    )
        port map (
      I0 => decoder_inst_i_12_n_0,
      I1 => decoder_inst_i_13_n_0,
      I2 => digit_index(1),
      I3 => digit_index(0),
      I4 => decoder_inst_i_14_n_0,
      I5 => decoder_inst_i_15_n_0,
      O => digit(1)
    );
decoder_inst_i_30: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_62_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_30_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_30_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_28_n_3,
      O(3 downto 2) => NLW_decoder_inst_i_30_O_UNCONNECTED(3 downto 2),
      O(1) => decoder_inst_i_30_n_6,
      O(0) => NLW_decoder_inst_i_30_O_UNCONNECTED(0),
      S(3 downto 2) => B"00",
      S(1) => decoder_inst_i_63_n_0,
      S(0) => decoder_inst_i_64_n_0
    );
decoder_inst_i_31: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_31_n_0,
      CO(2) => decoder_inst_i_31_n_1,
      CO(1) => decoder_inst_i_31_n_2,
      CO(0) => decoder_inst_i_31_n_3,
      CYINIT => decoder_inst_i_24_n_3,
      DI(3) => decoder_inst_i_43_n_5,
      DI(2) => decoder_inst_i_43_n_6,
      DI(1) => decoder_inst_i_43_n_7,
      DI(0) => decoder_inst_i_65_n_0,
      O(3) => decoder_inst_i_31_n_4,
      O(2) => decoder_inst_i_31_n_5,
      O(1) => decoder_inst_i_31_n_6,
      O(0) => decoder_inst_i_31_n_7,
      S(3) => decoder_inst_i_66_n_0,
      S(2) => decoder_inst_i_67_n_0,
      S(1) => decoder_inst_i_68_n_0,
      S(0) => decoder_inst_i_69_n_0
    );
decoder_inst_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[0]\,
      I1 => decoder_inst_i_17_n_3,
      O => decoder_inst_i_32_n_0
    );
decoder_inst_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_24_n_3,
      I1 => decoder_inst_i_43_n_4,
      O => decoder_inst_i_33_n_0
    );
decoder_inst_i_34: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_34_n_0,
      CO(2) => decoder_inst_i_34_n_1,
      CO(1) => decoder_inst_i_34_n_2,
      CO(0) => decoder_inst_i_34_n_3,
      CYINIT => decoder_inst_i_23_n_3,
      DI(3) => decoder_inst_i_70_n_0,
      DI(2) => decoder_inst_i_71_n_0,
      DI(1) => decoder_inst_i_72_n_0,
      DI(0) => decoder_inst_i_73_n_0,
      O(3 downto 0) => NLW_decoder_inst_i_34_O_UNCONNECTED(3 downto 0),
      S(3) => decoder_inst_i_74_n_0,
      S(2) => decoder_inst_i_75_n_0,
      S(1) => decoder_inst_i_76_n_0,
      S(0) => decoder_inst_i_77_n_0
    );
decoder_inst_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_23_n_3,
      I1 => decoder_inst_i_41_n_4,
      O => decoder_inst_i_35_n_0
    );
decoder_inst_i_36: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_36_n_0,
      CO(2) => decoder_inst_i_36_n_1,
      CO(1) => decoder_inst_i_36_n_2,
      CO(0) => decoder_inst_i_36_n_3,
      CYINIT => decoder_inst_i_22_n_3,
      DI(3) => decoder_inst_i_78_n_0,
      DI(2) => decoder_inst_i_79_n_0,
      DI(1) => decoder_inst_i_80_n_0,
      DI(0) => decoder_inst_i_81_n_0,
      O(3) => decoder_inst_i_36_n_4,
      O(2) => decoder_inst_i_36_n_5,
      O(1) => decoder_inst_i_36_n_6,
      O(0) => decoder_inst_i_36_n_7,
      S(3) => decoder_inst_i_82_n_0,
      S(2) => decoder_inst_i_83_n_0,
      S(1) => decoder_inst_i_84_n_0,
      S(0) => decoder_inst_i_85_n_0
    );
decoder_inst_i_37: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_22_n_3,
      I1 => decoder_inst_i_38_n_4,
      O => decoder_inst_i_37_n_0
    );
decoder_inst_i_38: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_38_n_0,
      CO(2) => decoder_inst_i_38_n_1,
      CO(1) => decoder_inst_i_38_n_2,
      CO(0) => decoder_inst_i_38_n_3,
      CYINIT => decoder_inst_i_30_n_3,
      DI(3) => decoder_inst_i_86_n_0,
      DI(2) => decoder_inst_i_87_n_0,
      DI(1) => decoder_inst_i_88_n_0,
      DI(0) => decoder_inst_i_89_n_0,
      O(3) => decoder_inst_i_38_n_4,
      O(2) => decoder_inst_i_38_n_5,
      O(1) => decoder_inst_i_38_n_6,
      O(0) => decoder_inst_i_38_n_7,
      S(3) => decoder_inst_i_90_n_0,
      S(2) => decoder_inst_i_91_n_0,
      S(1) => decoder_inst_i_92_n_0,
      S(0) => decoder_inst_i_93_n_0
    );
decoder_inst_i_39: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_22_n_3,
      I1 => \temps_rest_reg_n_0_[2]\,
      O => decoder_inst_i_39_n_0
    );
decoder_inst_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFACF0AC0FAC00A"
    )
        port map (
      I0 => decoder_inst_i_16_n_0,
      I1 => p_0_in(0),
      I2 => digit_index(0),
      I3 => digit_index(1),
      I4 => decoder_inst_i_18_n_3,
      I5 => decoder_inst_i_19_n_0,
      O => digit(0)
    );
decoder_inst_i_40: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_30_n_3,
      I1 => decoder_inst_i_62_n_4,
      O => decoder_inst_i_40_n_0
    );
decoder_inst_i_41: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_41_n_0,
      CO(2) => decoder_inst_i_41_n_1,
      CO(1) => decoder_inst_i_41_n_2,
      CO(0) => decoder_inst_i_41_n_3,
      CYINIT => decoder_inst_i_21_n_3,
      DI(3) => decoder_inst_i_94_n_0,
      DI(2) => decoder_inst_i_95_n_0,
      DI(1) => decoder_inst_i_96_n_0,
      DI(0) => decoder_inst_i_97_n_0,
      O(3) => decoder_inst_i_41_n_4,
      O(2) => decoder_inst_i_41_n_5,
      O(1) => decoder_inst_i_41_n_6,
      O(0) => decoder_inst_i_41_n_7,
      S(3) => decoder_inst_i_98_n_0,
      S(2) => decoder_inst_i_99_n_0,
      S(1) => decoder_inst_i_100_n_0,
      S(0) => decoder_inst_i_101_n_0
    );
decoder_inst_i_42: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_21_n_3,
      I1 => decoder_inst_i_36_n_4,
      O => decoder_inst_i_42_n_0
    );
decoder_inst_i_43: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_43_n_0,
      CO(2) => decoder_inst_i_43_n_1,
      CO(1) => decoder_inst_i_43_n_2,
      CO(0) => decoder_inst_i_43_n_3,
      CYINIT => decoder_inst_i_44_n_3,
      DI(3) => decoder_inst_i_102_n_5,
      DI(2) => decoder_inst_i_102_n_6,
      DI(1) => decoder_inst_i_102_n_7,
      DI(0) => decoder_inst_i_103_n_0,
      O(3) => decoder_inst_i_43_n_4,
      O(2) => decoder_inst_i_43_n_5,
      O(1) => decoder_inst_i_43_n_6,
      O(0) => decoder_inst_i_43_n_7,
      S(3) => decoder_inst_i_104_n_0,
      S(2) => decoder_inst_i_105_n_0,
      S(1) => decoder_inst_i_106_n_0,
      S(0) => decoder_inst_i_107_n_0
    );
decoder_inst_i_44: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_inst_i_102_n_0,
      CO(3 downto 1) => NLW_decoder_inst_i_44_CO_UNCONNECTED(3 downto 1),
      CO(0) => decoder_inst_i_44_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => decoder_inst_i_108_n_3,
      O(3 downto 2) => NLW_decoder_inst_i_44_O_UNCONNECTED(3 downto 2),
      O(1) => decoder_inst_i_44_n_6,
      O(0) => NLW_decoder_inst_i_44_O_UNCONNECTED(0),
      S(3 downto 2) => B"00",
      S(1) => decoder_inst_i_109_n_0,
      S(0) => decoder_inst_i_110_n_0
    );
decoder_inst_i_45: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_24_n_3,
      I1 => \temps_rest_reg_n_0_[1]\,
      O => decoder_inst_i_45_n_0
    );
decoder_inst_i_46: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_44_n_3,
      I1 => decoder_inst_i_102_n_4,
      O => decoder_inst_i_46_n_0
    );
decoder_inst_i_47: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decoder_inst_i_44_n_6,
      O => decoder_inst_i_47_n_0
    );
decoder_inst_i_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_17_n_3,
      I1 => decoder_inst_i_31_n_5,
      O => decoder_inst_i_48_n_0
    );
decoder_inst_i_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_17_n_3,
      I1 => decoder_inst_i_31_n_6,
      O => decoder_inst_i_49_n_0
    );
decoder_inst_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BED9D9BEFF1818FF"
    )
        port map (
      I0 => decoder_inst_i_20_n_0,
      I1 => decoder_inst_i_15_n_0,
      I2 => decoder_inst_i_21_n_3,
      I3 => decoder_inst_i_9_n_0,
      I4 => decoder_inst_i_22_n_3,
      I5 => decoder_inst_i_23_n_3,
      O => decoder_inst_i_5_n_0
    );
decoder_inst_i_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_17_n_3,
      I1 => decoder_inst_i_31_n_7,
      O => decoder_inst_i_50_n_0
    );
decoder_inst_i_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_17_n_3,
      I1 => decoder_inst_i_44_n_6,
      O => decoder_inst_i_51_n_0
    );
decoder_inst_i_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_17_n_3,
      I1 => decoder_inst_i_31_n_4,
      O => decoder_inst_i_52_n_0
    );
decoder_inst_i_53: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[10]\,
      I1 => \temps_rest_reg_n_0_[11]\,
      I2 => \temps_rest_reg_n_0_[12]\,
      O => decoder_inst_i_53_n_0
    );
decoder_inst_i_54: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[12]\,
      I1 => \temps_rest_reg_n_0_[10]\,
      I2 => \temps_rest_reg_n_0_[11]\,
      O => decoder_inst_i_54_n_0
    );
decoder_inst_i_55: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[11]\,
      I1 => \temps_rest_reg_n_0_[10]\,
      O => decoder_inst_i_55_n_0
    );
decoder_inst_i_56: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_56_n_0,
      CO(2) => decoder_inst_i_56_n_1,
      CO(1) => decoder_inst_i_56_n_2,
      CO(0) => decoder_inst_i_56_n_3,
      CYINIT => decoder_inst_i_29_n_3,
      DI(3) => decoder_inst_i_59_n_5,
      DI(2) => decoder_inst_i_59_n_6,
      DI(1) => decoder_inst_i_59_n_7,
      DI(0) => decoder_inst_i_111_n_0,
      O(3) => decoder_inst_i_56_n_4,
      O(2) => decoder_inst_i_56_n_5,
      O(1) => decoder_inst_i_56_n_6,
      O(0) => decoder_inst_i_56_n_7,
      S(3) => decoder_inst_i_112_n_0,
      S(2) => decoder_inst_i_113_n_0,
      S(1) => decoder_inst_i_114_n_0,
      S(0) => decoder_inst_i_115_n_0
    );
decoder_inst_i_57: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_28_n_3,
      I1 => \temps_rest_reg_n_0_[4]\,
      O => decoder_inst_i_57_n_0
    );
decoder_inst_i_58: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_29_n_3,
      I1 => decoder_inst_i_59_n_4,
      O => decoder_inst_i_58_n_0
    );
decoder_inst_i_59: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_59_n_0,
      CO(2) => decoder_inst_i_59_n_1,
      CO(1) => decoder_inst_i_59_n_2,
      CO(0) => decoder_inst_i_59_n_3,
      CYINIT => decoder_inst_i_27_n_0,
      DI(3) => decoder_inst_i_116_n_0,
      DI(2) => decoder_inst_i_117_n_0,
      DI(1) => decoder_inst_i_118_n_0,
      DI(0) => decoder_inst_i_119_n_0,
      O(3) => decoder_inst_i_59_n_4,
      O(2) => decoder_inst_i_59_n_5,
      O(1) => decoder_inst_i_59_n_6,
      O(0) => decoder_inst_i_59_n_7,
      S(3) => decoder_inst_i_120_n_0,
      S(2) => decoder_inst_i_121_n_0,
      S(1) => decoder_inst_i_122_n_0,
      S(0) => decoder_inst_i_123_n_0
    );
decoder_inst_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F77DDBBEBEEFF77F"
    )
        port map (
      I0 => decoder_inst_i_24_n_6,
      I1 => decoder_inst_i_25_n_5,
      I2 => decoder_inst_i_25_n_7,
      I3 => decoder_inst_i_26_n_3,
      I4 => decoder_inst_i_25_n_6,
      I5 => decoder_inst_i_25_n_4,
      O => decoder_inst_i_6_n_0
    );
decoder_inst_i_60: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[5]\,
      I1 => decoder_inst_i_29_n_3,
      O => decoder_inst_i_60_n_0
    );
decoder_inst_i_61: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_27_n_0,
      I1 => decoder_inst_i_27_n_5,
      O => decoder_inst_i_61_n_0
    );
decoder_inst_i_62: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_inst_i_62_n_0,
      CO(2) => decoder_inst_i_62_n_1,
      CO(1) => decoder_inst_i_62_n_2,
      CO(0) => decoder_inst_i_62_n_3,
      CYINIT => decoder_inst_i_28_n_3,
      DI(3) => decoder_inst_i_124_n_0,
      DI(2) => decoder_inst_i_125_n_0,
      DI(1) => decoder_inst_i_126_n_0,
      DI(0) => decoder_inst_i_127_n_0,
      O(3) => decoder_inst_i_62_n_4,
      O(2) => decoder_inst_i_62_n_5,
      O(1) => decoder_inst_i_62_n_6,
      O(0) => decoder_inst_i_62_n_7,
      S(3) => decoder_inst_i_128_n_0,
      S(2) => decoder_inst_i_129_n_0,
      S(1) => decoder_inst_i_130_n_0,
      S(0) => decoder_inst_i_131_n_0
    );
decoder_inst_i_63: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_30_n_3,
      I1 => \temps_rest_reg_n_0_[3]\,
      O => decoder_inst_i_63_n_0
    );
decoder_inst_i_64: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_inst_i_28_n_3,
      I1 => decoder_inst_i_56_n_4,
      O => decoder_inst_i_64_n_0
    );
decoder_inst_i_65: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decoder_inst_i_108_n_6,
      O => decoder_inst_i_65_n_0
    );
decoder_inst_i_66: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_24_n_3,
      I1 => decoder_inst_i_43_n_5,
      O => decoder_inst_i_66_n_0
    );
decoder_inst_i_67: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_24_n_3,
      I1 => decoder_inst_i_43_n_6,
      O => decoder_inst_i_67_n_0
    );
decoder_inst_i_68: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_24_n_3,
      I1 => decoder_inst_i_43_n_7,
      O => decoder_inst_i_68_n_0
    );
decoder_inst_i_69: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_24_n_3,
      I1 => decoder_inst_i_108_n_6,
      O => decoder_inst_i_69_n_0
    );
decoder_inst_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DBD"
    )
        port map (
      I0 => decoder_inst_i_27_n_0,
      I1 => decoder_inst_i_28_n_3,
      I2 => decoder_inst_i_29_n_3,
      I3 => decoder_inst_i_30_n_3,
      O => decoder_inst_i_7_n_0
    );
decoder_inst_i_70: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_23_n_3,
      O => decoder_inst_i_70_n_0
    );
decoder_inst_i_71: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_23_n_3,
      O => decoder_inst_i_71_n_0
    );
decoder_inst_i_72: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_23_n_3,
      O => decoder_inst_i_72_n_0
    );
decoder_inst_i_73: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_23_n_3,
      O => decoder_inst_i_73_n_0
    );
decoder_inst_i_74: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_23_n_3,
      I1 => decoder_inst_i_41_n_5,
      O => decoder_inst_i_74_n_0
    );
decoder_inst_i_75: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_23_n_3,
      I1 => decoder_inst_i_41_n_6,
      O => decoder_inst_i_75_n_0
    );
decoder_inst_i_76: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_23_n_3,
      I1 => decoder_inst_i_41_n_7,
      O => decoder_inst_i_76_n_0
    );
decoder_inst_i_77: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_23_n_3,
      I1 => decoder_inst_i_22_n_6,
      O => decoder_inst_i_77_n_0
    );
decoder_inst_i_78: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_22_n_3,
      O => decoder_inst_i_78_n_0
    );
decoder_inst_i_79: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_22_n_3,
      O => decoder_inst_i_79_n_0
    );
decoder_inst_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3C3C3C38E97978E"
    )
        port map (
      I0 => decoder_inst_i_20_n_0,
      I1 => decoder_inst_i_15_n_0,
      I2 => decoder_inst_i_21_n_3,
      I3 => decoder_inst_i_9_n_0,
      I4 => decoder_inst_i_22_n_3,
      I5 => decoder_inst_i_23_n_3,
      O => decoder_inst_i_8_n_0
    );
decoder_inst_i_80: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_22_n_3,
      O => decoder_inst_i_80_n_0
    );
decoder_inst_i_81: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_22_n_3,
      O => decoder_inst_i_81_n_0
    );
decoder_inst_i_82: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_22_n_3,
      I1 => decoder_inst_i_38_n_5,
      O => decoder_inst_i_82_n_0
    );
decoder_inst_i_83: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_22_n_3,
      I1 => decoder_inst_i_38_n_6,
      O => decoder_inst_i_83_n_0
    );
decoder_inst_i_84: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_22_n_3,
      I1 => decoder_inst_i_38_n_7,
      O => decoder_inst_i_84_n_0
    );
decoder_inst_i_85: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_22_n_3,
      I1 => decoder_inst_i_28_n_6,
      O => decoder_inst_i_85_n_0
    );
decoder_inst_i_86: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_30_n_3,
      O => decoder_inst_i_86_n_0
    );
decoder_inst_i_87: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_30_n_3,
      O => decoder_inst_i_87_n_0
    );
decoder_inst_i_88: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_30_n_3,
      O => decoder_inst_i_88_n_0
    );
decoder_inst_i_89: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_30_n_3,
      O => decoder_inst_i_89_n_0
    );
decoder_inst_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66B62692"
    )
        port map (
      I0 => decoder_inst_i_27_n_0,
      I1 => decoder_inst_i_28_n_3,
      I2 => decoder_inst_i_29_n_3,
      I3 => decoder_inst_i_30_n_3,
      I4 => decoder_inst_i_22_n_3,
      O => decoder_inst_i_9_n_0
    );
decoder_inst_i_90: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_30_n_3,
      I1 => decoder_inst_i_62_n_5,
      O => decoder_inst_i_90_n_0
    );
decoder_inst_i_91: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_30_n_3,
      I1 => decoder_inst_i_62_n_6,
      O => decoder_inst_i_91_n_0
    );
decoder_inst_i_92: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_30_n_3,
      I1 => decoder_inst_i_62_n_7,
      O => decoder_inst_i_92_n_0
    );
decoder_inst_i_93: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_30_n_3,
      I1 => decoder_inst_i_29_n_6,
      O => decoder_inst_i_93_n_0
    );
decoder_inst_i_94: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_21_n_3,
      O => decoder_inst_i_94_n_0
    );
decoder_inst_i_95: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_21_n_3,
      O => decoder_inst_i_95_n_0
    );
decoder_inst_i_96: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_21_n_3,
      O => decoder_inst_i_96_n_0
    );
decoder_inst_i_97: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_inst_i_21_n_3,
      O => decoder_inst_i_97_n_0
    );
decoder_inst_i_98: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_21_n_3,
      I1 => decoder_inst_i_36_n_5,
      O => decoder_inst_i_98_n_0
    );
decoder_inst_i_99: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => decoder_inst_i_21_n_3,
      I1 => decoder_inst_i_36_n_6,
      O => decoder_inst_i_99_n_0
    );
\digit_index[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => digit_index(0),
      I1 => tick_1khz,
      O => \digit_index[0]_i_1_n_0\
    );
\digit_index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => digit_index(0),
      I1 => tick_1khz,
      I2 => digit_index(1),
      O => \digit_index[1]_i_1_n_0\
    );
\digit_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \digit_index[0]_i_1_n_0\,
      Q => digit_index(0),
      R => '0'
    );
\digit_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \digit_index[1]_i_1_n_0\,
      Q => digit_index(1),
      R => '0'
    );
disp_point_n_o_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => disp_point_n_o
    );
\disp_segments_n_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_segments_n_o_OBUF(0),
      O => disp_segments_n_o(0)
    );
\disp_segments_n_o_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => segments(0),
      O => disp_segments_n_o_OBUF(0)
    );
\disp_segments_n_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_segments_n_o_OBUF(1),
      O => disp_segments_n_o(1)
    );
\disp_segments_n_o_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => segments(1),
      O => disp_segments_n_o_OBUF(1)
    );
\disp_segments_n_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_segments_n_o_OBUF(2),
      O => disp_segments_n_o(2)
    );
\disp_segments_n_o_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => segments(2),
      O => disp_segments_n_o_OBUF(2)
    );
\disp_segments_n_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_segments_n_o_OBUF(3),
      O => disp_segments_n_o(3)
    );
\disp_segments_n_o_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => segments(3),
      O => disp_segments_n_o_OBUF(3)
    );
\disp_segments_n_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_segments_n_o_OBUF(4),
      O => disp_segments_n_o(4)
    );
\disp_segments_n_o_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => segments(4),
      O => disp_segments_n_o_OBUF(4)
    );
\disp_segments_n_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_segments_n_o_OBUF(5),
      O => disp_segments_n_o(5)
    );
\disp_segments_n_o_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => segments(5),
      O => disp_segments_n_o_OBUF(5)
    );
\disp_segments_n_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_segments_n_o_OBUF(6),
      O => disp_segments_n_o(6)
    );
\disp_segments_n_o_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => segments(6),
      O => disp_segments_n_o_OBUF(6)
    );
\disp_select_n_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_select_n_o_OBUF(0),
      O => disp_select_n_o(0)
    );
\disp_select_n_o_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => digit_index(0),
      I1 => digit_index(1),
      O => disp_select_n_o_OBUF(0)
    );
\disp_select_n_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_select_n_o_OBUF(1),
      O => disp_select_n_o(1)
    );
\disp_select_n_o_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit_index(0),
      I1 => digit_index(1),
      O => disp_select_n_o_OBUF(1)
    );
\disp_select_n_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_select_n_o_OBUF(2),
      O => disp_select_n_o(2)
    );
\disp_select_n_o_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit_index(1),
      I1 => digit_index(0),
      O => disp_select_n_o_OBUF(2)
    );
\disp_select_n_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_select_n_o_OBUF(3),
      O => disp_select_n_o(3)
    );
\disp_select_n_o_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => digit_index(0),
      I1 => digit_index(1),
      O => disp_select_n_o_OBUF(3)
    );
down_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => down_sync2,
      Q => down_prev,
      R => '0'
    );
down_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => down_sync2,
      I1 => down_prev,
      O => down_pulse0
    );
down_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => down_pulse0,
      Q => down_pulse,
      R => '0'
    );
down_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => btn_down_i_IBUF,
      Q => down_sync1,
      R => '0'
    );
down_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => down_sync1,
      Q => down_sync2,
      R => '0'
    );
i_159: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => start_pulse,
      I1 => \state[1]_i_2_n_0\,
      I2 => switches_i_IBUF(0),
      O => n_0_159
    );
led_cuisson_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \state_reg_n_0_[0]\,
      Q => leds_o_OBUF(1),
      R => '0'
    );
\leds_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_o_OBUF(0),
      O => leds_o(0)
    );
\leds_o_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(10)
    );
\leds_o_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(11)
    );
\leds_o_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(12)
    );
\leds_o_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(13)
    );
\leds_o_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(14)
    );
\leds_o_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(15)
    );
\leds_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_o_OBUF(1),
      O => leds_o(1)
    );
\leds_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(2)
    );
\leds_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(3)
    );
\leds_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(4)
    );
\leds_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(5)
    );
\leds_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(6)
    );
\leds_o_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(7)
    );
\leds_o_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(8)
    );
\leds_o_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds_o(9)
    );
left_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => left_sync2,
      Q => left_prev,
      R => '0'
    );
left_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => left_sync2,
      I1 => left_prev,
      O => left_pulse0
    );
left_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => left_pulse0,
      Q => left_pulse,
      R => '0'
    );
left_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => btn_left_i_IBUF,
      Q => left_sync1,
      R => '0'
    );
left_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => left_sync1,
      Q => left_sync2,
      R => '0'
    );
right_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => right_sync2,
      Q => right_prev,
      R => '0'
    );
right_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_sync2,
      I1 => right_prev,
      O => right_pulse0
    );
right_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => right_pulse0,
      Q => right_pulse,
      R => '0'
    );
right_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => btn_right_i_IBUF,
      Q => right_sync1,
      R => '0'
    );
right_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => right_sync1,
      Q => right_sync2,
      R => '0'
    );
start_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => start_sync2,
      Q => start_prev,
      R => '0'
    );
start_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => start_sync2,
      I1 => start_prev,
      O => start_pulse0
    );
start_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => start_pulse0,
      Q => start_pulse,
      R => '0'
    );
start_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => btn_center_i_IBUF,
      Q => start_sync1,
      R => '0'
    );
start_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => start_sync1,
      Q => start_sync2,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4733470044004400"
    )
        port map (
      I0 => \state[1]_i_3_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => stop_pulse,
      I3 => \state_reg_n_0_[0]\,
      I4 => start_pulse,
      I5 => \state[0]_i_2_n_0\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => switches_i_IBUF(0),
      I1 => \state[1]_i_2_n_0\,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAB03030"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \state[1]_i_3_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state[1]_i_4_n_0\,
      I4 => \state_reg_n_0_[0]\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \temps_rest[11]_i_10_n_0\,
      I1 => \temps_rest_reg_n_0_[0]\,
      I2 => \temps_rest_reg_n_0_[1]\,
      I3 => \temps_rest_reg_n_0_[2]\,
      I4 => \temps_rest_reg_n_0_[4]\,
      I5 => \temps_rest_reg_n_0_[3]\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => buzzer_counter(0),
      I1 => buzzer_counter(1),
      I2 => buzzer_counter(2),
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => switches_i_IBUF(0),
      I2 => stop_pulse,
      O => \state[1]_i_4_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
stop_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => stop_sync2,
      Q => stop_prev,
      R => '0'
    );
stop_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stop_sync2,
      I1 => stop_prev,
      O => stop_pulse0
    );
stop_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => stop_pulse0,
      Q => stop_pulse,
      R => '0'
    );
stop_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => switches_i_IBUF(15),
      Q => stop_sync1,
      R => '0'
    );
stop_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => stop_sync1,
      Q => stop_sync2,
      R => '0'
    );
\switches_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switches_i(0),
      O => switches_i_IBUF(0)
    );
\switches_i_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switches_i(15),
      O => switches_i_IBUF(15)
    );
\temps_rest[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510AABA0010AABA"
    )
        port map (
      I0 => \temps_rest[12]_i_3_n_0\,
      I1 => \temps_rest[0]_i_2_n_0\,
      I2 => \temps_rest[0]_i_3_n_0\,
      I3 => left_pulse,
      I4 => \temps_rest_reg_n_0_[0]\,
      I5 => \temps_rest[11]_i_3_n_0\,
      O => \temps_rest[0]_i_1_n_0\
    );
\temps_rest[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444444404"
    )
        port map (
      I0 => \temps_rest_reg[3]_i_8_n_7\,
      I1 => right_pulse,
      I2 => \temps_rest_reg[12]_i_15_n_7\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[12]_i_17_n_0\,
      I5 => \temps_rest_reg[12]_i_16_n_4\,
      O => \temps_rest[0]_i_2_n_0\
    );
\temps_rest[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222AAA2FFFFFFFF"
    )
        port map (
      I0 => right_pulse,
      I1 => \temps_rest_reg[12]_i_15_n_7\,
      I2 => \temps_rest[12]_i_19_n_0\,
      I3 => \temps_rest[12]_i_17_n_0\,
      I4 => \temps_rest_reg[12]_i_16_n_4\,
      I5 => \temps_rest[0]_i_4_n_0\,
      O => \temps_rest[0]_i_3_n_0\
    );
\temps_rest[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \temps_rest[11]_i_15_n_0\,
      I1 => down_pulse,
      I2 => \temps_rest_reg_n_0_[0]\,
      O => \temps_rest[0]_i_4_n_0\
    );
\temps_rest[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_11_n_6\,
      I1 => \temps_rest[12]_i_3_n_0\,
      I2 => \temps_rest[10]_i_2_n_0\,
      I3 => left_pulse,
      I4 => \temps_rest[10]_i_3_n_0\,
      I5 => \temps_rest[10]_i_4_n_0\,
      O => \temps_rest[10]_i_1_n_0\
    );
\temps_rest[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temps_rest[11]_i_3_n_0\,
      I1 => \temps_rest_reg[11]_i_2_n_5\,
      O => \temps_rest[10]_i_2_n_0\
    );
\temps_rest[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBBA"
    )
        port map (
      I0 => \temps_rest[10]_i_5_n_0\,
      I1 => \temps_rest[10]_i_6_n_0\,
      I2 => \temps_rest[12]_i_17_n_0\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[10]_i_7_n_0\,
      I5 => \temps_rest[10]_i_8_n_0\,
      O => \temps_rest[10]_i_3_n_0\
    );
\temps_rest[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444444404"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_16_n_5\,
      I1 => right_pulse,
      I2 => \temps_rest_reg[12]_i_15_n_7\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[12]_i_17_n_0\,
      I5 => \temps_rest_reg[12]_i_16_n_4\,
      O => \temps_rest[10]_i_4_n_0\
    );
\temps_rest[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \temps_rest[12]_i_20_n_0\,
      I1 => \temps_rest_reg[12]_i_21_n_6\,
      O => \temps_rest[10]_i_5_n_0\
    );
\temps_rest[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_16_n_4\,
      I1 => right_pulse,
      O => \temps_rest[10]_i_6_n_0\
    );
\temps_rest[10]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_pulse,
      I1 => \temps_rest_reg[12]_i_15_n_7\,
      O => \temps_rest[10]_i_7_n_0\
    );
\temps_rest[10]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_12_n_6\,
      I1 => down_pulse,
      O => \temps_rest[10]_i_8_n_0\
    );
\temps_rest[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_11_n_5\,
      I1 => \temps_rest[12]_i_3_n_0\,
      I2 => \temps_rest_reg[11]_i_2_n_4\,
      I3 => \temps_rest[11]_i_3_n_0\,
      I4 => left_pulse,
      I5 => \temps_rest[11]_i_4_n_0\,
      O => \temps_rest[11]_i_1_n_0\
    );
\temps_rest[11]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[5]\,
      I1 => \temps_rest[12]_i_29_n_0\,
      I2 => \temps_rest_reg_n_0_[9]\,
      I3 => \temps_rest_reg_n_0_[10]\,
      I4 => \temps_rest_reg_n_0_[6]\,
      O => \temps_rest[11]_i_10_n_0\
    );
\temps_rest[11]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0BF"
    )
        port map (
      I0 => \temps_rest[11]_i_15_n_0\,
      I1 => \temps_rest_reg[12]_i_21_n_5\,
      I2 => down_pulse,
      I3 => \temps_rest_reg[12]_i_12_n_5\,
      O => \temps_rest[11]_i_11_n_0\
    );
\temps_rest[11]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[7]\,
      O => \temps_rest[11]_i_12_n_0\
    );
\temps_rest[11]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[6]\,
      O => \temps_rest[11]_i_13_n_0\
    );
\temps_rest[11]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[5]\,
      O => \temps_rest[11]_i_14_n_0\
    );
\temps_rest[11]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000007"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[5]\,
      I1 => \temps_rest[12]_i_31_n_0\,
      I2 => \temps_rest_reg_n_0_[6]\,
      I3 => \temps_rest_reg_n_0_[10]\,
      I4 => \temps_rest_reg_n_0_[9]\,
      I5 => \temps_rest[12]_i_29_n_0\,
      O => \temps_rest[11]_i_15_n_0\
    );
\temps_rest[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5555555"
    )
        port map (
      I0 => \temps_rest[11]_i_10_n_0\,
      I1 => \temps_rest_reg_n_0_[2]\,
      I2 => \temps_rest_reg_n_0_[3]\,
      I3 => \temps_rest_reg_n_0_[4]\,
      I4 => \temps_rest_reg_n_0_[1]\,
      O => \temps_rest[11]_i_3_n_0\
    );
\temps_rest[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FF5501550055"
    )
        port map (
      I0 => \temps_rest[11]_i_11_n_0\,
      I1 => \temps_rest[12]_i_17_n_0\,
      I2 => \temps_rest[12]_i_19_n_0\,
      I3 => right_pulse,
      I4 => \temps_rest_reg[12]_i_15_n_7\,
      I5 => \temps_rest_reg[12]_i_16_n_4\,
      O => \temps_rest[11]_i_4_n_0\
    );
\temps_rest[11]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[11]\,
      O => \temps_rest[11]_i_6_n_0\
    );
\temps_rest[11]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[10]\,
      O => \temps_rest[11]_i_7_n_0\
    );
\temps_rest[11]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[9]\,
      O => \temps_rest[11]_i_8_n_0\
    );
\temps_rest[11]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[8]\,
      O => \temps_rest[11]_i_9_n_0\
    );
\temps_rest[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA0000FFFB"
    )
        port map (
      I0 => \temps_rest[12]_i_3_n_0\,
      I1 => \temps_rest[12]_i_4_n_0\,
      I2 => \temps_rest[12]_i_5_n_0\,
      I3 => \temps_rest[12]_i_6_n_0\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \temps_rest[12]_i_1_n_0\
    );
\temps_rest[12]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \temps_rest[12]_i_20_n_0\,
      I1 => \temps_rest_reg[12]_i_21_n_4\,
      O => \temps_rest[12]_i_10_n_0\
    );
\temps_rest[12]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_12_n_6\,
      I1 => \temps_rest_reg[12]_i_26_n_4\,
      I2 => \temps_rest_reg[12]_i_12_n_7\,
      O => \temps_rest[12]_i_13_n_0\
    );
\temps_rest[12]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_26_n_5\,
      I1 => \temps_rest_reg[12]_i_26_n_7\,
      I2 => \temps_rest_reg[12]_i_27_n_4\,
      I3 => \temps_rest_reg[12]_i_26_n_6\,
      O => \temps_rest[12]_i_14_n_0\
    );
\temps_rest[12]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => \temps_rest_reg[7]_i_7_n_4\,
      I1 => \temps_rest_reg[7]_i_7_n_6\,
      I2 => \temps_rest_reg[7]_i_7_n_7\,
      I3 => \temps_rest_reg[7]_i_7_n_5\,
      O => \temps_rest[12]_i_17_n_0\
    );
\temps_rest[12]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_16_n_7\,
      I1 => \temps_rest_reg[12]_i_16_n_6\,
      I2 => \temps_rest_reg[12]_i_16_n_5\,
      O => \temps_rest[12]_i_19_n_0\
    );
\temps_rest[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EAEEEAEE"
    )
        port map (
      I0 => \temps_rest[12]_i_7_n_0\,
      I1 => \temps_rest[12]_i_8_n_0\,
      I2 => \temps_rest[12]_i_9_n_0\,
      I3 => \temps_rest[12]_i_10_n_0\,
      I4 => \temps_rest_reg[12]_i_11_n_4\,
      I5 => \temps_rest[12]_i_3_n_0\,
      O => \temps_rest[12]_i_2_n_0\
    );
\temps_rest[12]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0111FFFF"
    )
        port map (
      I0 => \temps_rest[12]_i_29_n_0\,
      I1 => \temps_rest[12]_i_30_n_0\,
      I2 => \temps_rest[12]_i_31_n_0\,
      I3 => \temps_rest_reg_n_0_[5]\,
      I4 => down_pulse,
      O => \temps_rest[12]_i_20_n_0\
    );
\temps_rest[12]_i_22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[12]\,
      O => \temps_rest[12]_i_22_n_0\
    );
\temps_rest[12]_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[11]\,
      O => \temps_rest[12]_i_23_n_0\
    );
\temps_rest[12]_i_24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[10]\,
      O => \temps_rest[12]_i_24_n_0\
    );
\temps_rest[12]_i_25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[9]\,
      O => \temps_rest[12]_i_25_n_0\
    );
\temps_rest[12]_i_28\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[12]\,
      O => \temps_rest[12]_i_28_n_0\
    );
\temps_rest[12]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[11]\,
      I1 => \temps_rest_reg_n_0_[12]\,
      I2 => \temps_rest_reg_n_0_[7]\,
      I3 => \temps_rest_reg_n_0_[8]\,
      O => \temps_rest[12]_i_29_n_0\
    );
\temps_rest[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => switches_i_IBUF(0),
      I2 => \state[1]_i_2_n_0\,
      I3 => top_1sec,
      O => \temps_rest[12]_i_3_n_0\
    );
\temps_rest[12]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[9]\,
      I1 => \temps_rest_reg_n_0_[10]\,
      I2 => \temps_rest_reg_n_0_[6]\,
      O => \temps_rest[12]_i_30_n_0\
    );
\temps_rest[12]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[2]\,
      I1 => \temps_rest_reg_n_0_[3]\,
      I2 => \temps_rest_reg_n_0_[4]\,
      O => \temps_rest[12]_i_31_n_0\
    );
\temps_rest[12]_i_33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[12]\,
      O => \temps_rest[12]_i_33_n_0\
    );
\temps_rest[12]_i_34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[11]\,
      O => \temps_rest[12]_i_34_n_0\
    );
\temps_rest[12]_i_35\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[10]\,
      O => \temps_rest[12]_i_35_n_0\
    );
\temps_rest[12]_i_36\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[9]\,
      O => \temps_rest[12]_i_36_n_0\
    );
\temps_rest[12]_i_37\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[5]\,
      O => \temps_rest[12]_i_37_n_0\
    );
\temps_rest[12]_i_38\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[4]\,
      O => \temps_rest[12]_i_38_n_0\
    );
\temps_rest[12]_i_39\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[3]\,
      O => \temps_rest[12]_i_39_n_0\
    );
\temps_rest[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5DDD5D5"
    )
        port map (
      I0 => up_pulse,
      I1 => \temps_rest_reg[12]_i_12_n_4\,
      I2 => \temps_rest_reg[12]_i_12_n_5\,
      I3 => \temps_rest[12]_i_13_n_0\,
      I4 => \temps_rest[12]_i_14_n_0\,
      O => \temps_rest[12]_i_4_n_0\
    );
\temps_rest[12]_i_40\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[2]\,
      O => \temps_rest[12]_i_40_n_0\
    );
\temps_rest[12]_i_41\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[8]\,
      O => \temps_rest[12]_i_41_n_0\
    );
\temps_rest[12]_i_42\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[7]\,
      O => \temps_rest[12]_i_42_n_0\
    );
\temps_rest[12]_i_43\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[6]\,
      O => \temps_rest[12]_i_43_n_0\
    );
\temps_rest[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => down_pulse,
      I1 => right_pulse,
      I2 => \temps_rest_reg[12]_i_15_n_7\,
      I3 => left_pulse,
      O => \temps_rest[12]_i_5_n_0\
    );
\temps_rest[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF7F0000"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_16_n_7\,
      I1 => \temps_rest_reg[12]_i_16_n_6\,
      I2 => \temps_rest_reg[12]_i_16_n_5\,
      I3 => \temps_rest[12]_i_17_n_0\,
      I4 => right_pulse,
      I5 => \temps_rest_reg[12]_i_16_n_4\,
      O => \temps_rest[12]_i_6_n_0\
    );
\temps_rest[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \temps_rest[11]_i_3_n_0\,
      I1 => \temps_rest_reg[12]_i_18_n_7\,
      I2 => left_pulse,
      O => \temps_rest[12]_i_7_n_0\
    );
\temps_rest[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => right_pulse,
      I1 => \temps_rest_reg[12]_i_15_n_7\,
      I2 => left_pulse,
      O => \temps_rest[12]_i_8_n_0\
    );
\temps_rest[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440FFFF44404440"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_16_n_4\,
      I1 => right_pulse,
      I2 => \temps_rest[12]_i_17_n_0\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => down_pulse,
      I5 => \temps_rest_reg[12]_i_12_n_4\,
      O => \temps_rest[12]_i_9_n_0\
    );
\temps_rest[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \temps_rest_reg[4]_i_2_n_7\,
      I1 => \temps_rest[12]_i_3_n_0\,
      I2 => \temps_rest[1]_i_2_n_0\,
      I3 => left_pulse,
      I4 => \temps_rest[1]_i_3_n_0\,
      I5 => \temps_rest[1]_i_4_n_0\,
      O => \temps_rest[1]_i_1_n_0\
    );
\temps_rest[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temps_rest_reg[3]_i_5_n_6\,
      I1 => \temps_rest[11]_i_3_n_0\,
      O => \temps_rest[1]_i_2_n_0\
    );
\temps_rest[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBBA"
    )
        port map (
      I0 => \temps_rest[1]_i_5_n_0\,
      I1 => \temps_rest[10]_i_6_n_0\,
      I2 => \temps_rest[12]_i_17_n_0\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[10]_i_7_n_0\,
      I5 => \temps_rest[1]_i_6_n_0\,
      O => \temps_rest[1]_i_3_n_0\
    );
\temps_rest[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444444404"
    )
        port map (
      I0 => \temps_rest_reg[3]_i_8_n_6\,
      I1 => right_pulse,
      I2 => \temps_rest_reg[12]_i_15_n_7\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[12]_i_17_n_0\,
      I5 => \temps_rest_reg[12]_i_16_n_4\,
      O => \temps_rest[1]_i_4_n_0\
    );
\temps_rest[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_27_n_7\,
      I1 => \temps_rest[12]_i_20_n_0\,
      O => \temps_rest[1]_i_5_n_0\
    );
\temps_rest[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => down_pulse,
      I1 => \temps_rest_reg_n_0_[1]\,
      O => \temps_rest[1]_i_6_n_0\
    );
\temps_rest[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \temps_rest_reg[4]_i_2_n_6\,
      I1 => \temps_rest[12]_i_3_n_0\,
      I2 => \temps_rest[2]_i_2_n_0\,
      I3 => left_pulse,
      I4 => \temps_rest[2]_i_3_n_0\,
      I5 => \temps_rest[2]_i_4_n_0\,
      O => \temps_rest[2]_i_1_n_0\
    );
\temps_rest[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temps_rest_reg[3]_i_5_n_5\,
      I1 => \temps_rest[11]_i_3_n_0\,
      O => \temps_rest[2]_i_2_n_0\
    );
\temps_rest[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBBA"
    )
        port map (
      I0 => \temps_rest[2]_i_5_n_0\,
      I1 => \temps_rest[10]_i_6_n_0\,
      I2 => \temps_rest[12]_i_17_n_0\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[10]_i_7_n_0\,
      I5 => \temps_rest[2]_i_6_n_0\,
      O => \temps_rest[2]_i_3_n_0\
    );
\temps_rest[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444444404"
    )
        port map (
      I0 => \temps_rest_reg[3]_i_8_n_5\,
      I1 => right_pulse,
      I2 => \temps_rest_reg[12]_i_15_n_7\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[12]_i_17_n_0\,
      I5 => \temps_rest_reg[12]_i_16_n_4\,
      O => \temps_rest[2]_i_4_n_0\
    );
\temps_rest[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \temps_rest_reg[4]_i_12_n_6\,
      I1 => \temps_rest[12]_i_20_n_0\,
      O => \temps_rest[2]_i_5_n_0\
    );
\temps_rest[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_27_n_6\,
      I1 => down_pulse,
      O => \temps_rest[2]_i_6_n_0\
    );
\temps_rest[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \temps_rest_reg[4]_i_2_n_5\,
      I1 => \temps_rest[12]_i_3_n_0\,
      I2 => \temps_rest[3]_i_2_n_0\,
      I3 => left_pulse,
      I4 => \temps_rest[3]_i_3_n_0\,
      I5 => \temps_rest[3]_i_4_n_0\,
      O => \temps_rest[3]_i_1_n_0\
    );
\temps_rest[3]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[3]\,
      O => \temps_rest[3]_i_10_n_0\
    );
\temps_rest[3]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[2]\,
      O => \temps_rest[3]_i_11_n_0\
    );
\temps_rest[3]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[1]\,
      O => \temps_rest[3]_i_12_n_0\
    );
\temps_rest[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temps_rest_reg[3]_i_5_n_4\,
      I1 => \temps_rest[11]_i_3_n_0\,
      O => \temps_rest[3]_i_2_n_0\
    );
\temps_rest[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBBA"
    )
        port map (
      I0 => \temps_rest[3]_i_6_n_0\,
      I1 => \temps_rest[10]_i_6_n_0\,
      I2 => \temps_rest[12]_i_17_n_0\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[10]_i_7_n_0\,
      I5 => \temps_rest[3]_i_7_n_0\,
      O => \temps_rest[3]_i_3_n_0\
    );
\temps_rest[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444444404"
    )
        port map (
      I0 => \temps_rest_reg[3]_i_8_n_4\,
      I1 => right_pulse,
      I2 => \temps_rest_reg[12]_i_15_n_7\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[12]_i_17_n_0\,
      I5 => \temps_rest_reg[12]_i_16_n_4\,
      O => \temps_rest[3]_i_4_n_0\
    );
\temps_rest[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \temps_rest_reg[4]_i_12_n_5\,
      I1 => \temps_rest[12]_i_20_n_0\,
      O => \temps_rest[3]_i_6_n_0\
    );
\temps_rest[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_27_n_5\,
      I1 => down_pulse,
      O => \temps_rest[3]_i_7_n_0\
    );
\temps_rest[3]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[1]\,
      O => \temps_rest[3]_i_9_n_0\
    );
\temps_rest[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \temps_rest_reg[4]_i_2_n_4\,
      I1 => \temps_rest[12]_i_3_n_0\,
      I2 => \temps_rest[4]_i_3_n_0\,
      I3 => left_pulse,
      I4 => \temps_rest[4]_i_4_n_0\,
      I5 => \temps_rest[4]_i_5_n_0\,
      O => \temps_rest[4]_i_1_n_0\
    );
\temps_rest[4]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \temps_rest_reg[4]_i_12_n_4\,
      I1 => \temps_rest[12]_i_20_n_0\,
      O => \temps_rest[4]_i_10_n_0\
    );
\temps_rest[4]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_27_n_4\,
      I1 => down_pulse,
      O => \temps_rest[4]_i_11_n_0\
    );
\temps_rest[4]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[2]\,
      O => \temps_rest[4]_i_13_n_0\
    );
\temps_rest[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temps_rest[11]_i_3_n_0\,
      I1 => \temps_rest_reg[11]_i_5_n_7\,
      O => \temps_rest[4]_i_3_n_0\
    );
\temps_rest[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBBA"
    )
        port map (
      I0 => \temps_rest[4]_i_10_n_0\,
      I1 => \temps_rest[10]_i_6_n_0\,
      I2 => \temps_rest[12]_i_17_n_0\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[10]_i_7_n_0\,
      I5 => \temps_rest[4]_i_11_n_0\,
      O => \temps_rest[4]_i_4_n_0\
    );
\temps_rest[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444444404"
    )
        port map (
      I0 => \temps_rest_reg[7]_i_7_n_7\,
      I1 => right_pulse,
      I2 => \temps_rest_reg[12]_i_15_n_7\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[12]_i_17_n_0\,
      I5 => \temps_rest_reg[12]_i_16_n_4\,
      O => \temps_rest[4]_i_5_n_0\
    );
\temps_rest[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[4]\,
      O => \temps_rest[4]_i_6_n_0\
    );
\temps_rest[4]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[3]\,
      O => \temps_rest[4]_i_7_n_0\
    );
\temps_rest[4]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[2]\,
      O => \temps_rest[4]_i_8_n_0\
    );
\temps_rest[4]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[1]\,
      O => \temps_rest[4]_i_9_n_0\
    );
\temps_rest[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \temps_rest_reg[8]_i_2_n_7\,
      I1 => \temps_rest[12]_i_3_n_0\,
      I2 => \temps_rest[5]_i_2_n_0\,
      I3 => left_pulse,
      I4 => \temps_rest[5]_i_3_n_0\,
      I5 => \temps_rest[5]_i_4_n_0\,
      O => \temps_rest[5]_i_1_n_0\
    );
\temps_rest[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temps_rest_reg[11]_i_5_n_6\,
      I1 => \temps_rest[11]_i_3_n_0\,
      O => \temps_rest[5]_i_2_n_0\
    );
\temps_rest[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBBA"
    )
        port map (
      I0 => \temps_rest[5]_i_5_n_0\,
      I1 => \temps_rest[10]_i_6_n_0\,
      I2 => \temps_rest[12]_i_17_n_0\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[10]_i_7_n_0\,
      I5 => \temps_rest[5]_i_6_n_0\,
      O => \temps_rest[5]_i_3_n_0\
    );
\temps_rest[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444444404"
    )
        port map (
      I0 => \temps_rest_reg[7]_i_7_n_6\,
      I1 => right_pulse,
      I2 => \temps_rest_reg[12]_i_15_n_7\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[12]_i_17_n_0\,
      I5 => \temps_rest_reg[12]_i_16_n_4\,
      O => \temps_rest[5]_i_4_n_0\
    );
\temps_rest[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEE000000000000"
    )
        port map (
      I0 => \temps_rest[12]_i_29_n_0\,
      I1 => \temps_rest[12]_i_30_n_0\,
      I2 => \temps_rest[12]_i_31_n_0\,
      I3 => \temps_rest_reg_n_0_[5]\,
      I4 => down_pulse,
      I5 => \temps_rest_reg[12]_i_32_n_7\,
      O => \temps_rest[5]_i_5_n_0\
    );
\temps_rest[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_26_n_7\,
      I1 => down_pulse,
      O => \temps_rest[5]_i_6_n_0\
    );
\temps_rest[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \temps_rest_reg[8]_i_2_n_6\,
      I1 => \temps_rest[12]_i_3_n_0\,
      I2 => \temps_rest[6]_i_2_n_0\,
      I3 => left_pulse,
      I4 => \temps_rest[6]_i_3_n_0\,
      I5 => \temps_rest[6]_i_4_n_0\,
      O => \temps_rest[6]_i_1_n_0\
    );
\temps_rest[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temps_rest_reg[11]_i_5_n_5\,
      I1 => \temps_rest[11]_i_3_n_0\,
      O => \temps_rest[6]_i_2_n_0\
    );
\temps_rest[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBBA"
    )
        port map (
      I0 => \temps_rest[6]_i_5_n_0\,
      I1 => \temps_rest[10]_i_6_n_0\,
      I2 => \temps_rest[12]_i_17_n_0\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[10]_i_7_n_0\,
      I5 => \temps_rest[6]_i_6_n_0\,
      O => \temps_rest[6]_i_3_n_0\
    );
\temps_rest[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444444404"
    )
        port map (
      I0 => \temps_rest_reg[7]_i_7_n_5\,
      I1 => right_pulse,
      I2 => \temps_rest_reg[12]_i_15_n_7\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[12]_i_17_n_0\,
      I5 => \temps_rest_reg[12]_i_16_n_4\,
      O => \temps_rest[6]_i_4_n_0\
    );
\temps_rest[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \temps_rest[12]_i_20_n_0\,
      I1 => \temps_rest_reg[12]_i_32_n_6\,
      O => \temps_rest[6]_i_5_n_0\
    );
\temps_rest[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => down_pulse,
      I1 => \temps_rest_reg[12]_i_26_n_6\,
      O => \temps_rest[6]_i_6_n_0\
    );
\temps_rest[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \temps_rest_reg[8]_i_2_n_5\,
      I1 => \temps_rest[12]_i_3_n_0\,
      I2 => \temps_rest[7]_i_2_n_0\,
      I3 => left_pulse,
      I4 => \temps_rest[7]_i_3_n_0\,
      I5 => \temps_rest[7]_i_4_n_0\,
      O => \temps_rest[7]_i_1_n_0\
    );
\temps_rest[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temps_rest[11]_i_3_n_0\,
      I1 => \temps_rest_reg[11]_i_5_n_4\,
      O => \temps_rest[7]_i_2_n_0\
    );
\temps_rest[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBBA"
    )
        port map (
      I0 => \temps_rest[7]_i_5_n_0\,
      I1 => \temps_rest[10]_i_6_n_0\,
      I2 => \temps_rest[12]_i_17_n_0\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[10]_i_7_n_0\,
      I5 => \temps_rest[7]_i_6_n_0\,
      O => \temps_rest[7]_i_3_n_0\
    );
\temps_rest[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444444404"
    )
        port map (
      I0 => \temps_rest_reg[7]_i_7_n_4\,
      I1 => right_pulse,
      I2 => \temps_rest_reg[12]_i_15_n_7\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[12]_i_17_n_0\,
      I5 => \temps_rest_reg[12]_i_16_n_4\,
      O => \temps_rest[7]_i_4_n_0\
    );
\temps_rest[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \temps_rest[12]_i_20_n_0\,
      I1 => \temps_rest_reg[12]_i_32_n_5\,
      O => \temps_rest[7]_i_5_n_0\
    );
\temps_rest[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_26_n_5\,
      I1 => down_pulse,
      O => \temps_rest[7]_i_6_n_0\
    );
\temps_rest[7]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[4]\,
      O => \temps_rest[7]_i_8_n_0\
    );
\temps_rest[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \temps_rest_reg[8]_i_2_n_4\,
      I1 => \temps_rest[12]_i_3_n_0\,
      I2 => \temps_rest[8]_i_3_n_0\,
      I3 => left_pulse,
      I4 => \temps_rest[8]_i_4_n_0\,
      I5 => \temps_rest[8]_i_5_n_0\,
      O => \temps_rest[8]_i_1_n_0\
    );
\temps_rest[8]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \temps_rest[12]_i_20_n_0\,
      I1 => \temps_rest_reg[12]_i_32_n_4\,
      O => \temps_rest[8]_i_10_n_0\
    );
\temps_rest[8]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => down_pulse,
      I1 => \temps_rest_reg[12]_i_26_n_4\,
      O => \temps_rest[8]_i_11_n_0\
    );
\temps_rest[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temps_rest[11]_i_3_n_0\,
      I1 => \temps_rest_reg[11]_i_2_n_7\,
      O => \temps_rest[8]_i_3_n_0\
    );
\temps_rest[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBBA"
    )
        port map (
      I0 => \temps_rest[8]_i_10_n_0\,
      I1 => \temps_rest[10]_i_6_n_0\,
      I2 => \temps_rest[12]_i_17_n_0\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[10]_i_7_n_0\,
      I5 => \temps_rest[8]_i_11_n_0\,
      O => \temps_rest[8]_i_4_n_0\
    );
\temps_rest[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444444404"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_16_n_7\,
      I1 => right_pulse,
      I2 => \temps_rest_reg[12]_i_15_n_7\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[12]_i_17_n_0\,
      I5 => \temps_rest_reg[12]_i_16_n_4\,
      O => \temps_rest[8]_i_5_n_0\
    );
\temps_rest[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[8]\,
      O => \temps_rest[8]_i_6_n_0\
    );
\temps_rest[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[7]\,
      O => \temps_rest[8]_i_7_n_0\
    );
\temps_rest[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[6]\,
      O => \temps_rest[8]_i_8_n_0\
    );
\temps_rest[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \temps_rest_reg_n_0_[5]\,
      O => \temps_rest[8]_i_9_n_0\
    );
\temps_rest[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_11_n_7\,
      I1 => \temps_rest[12]_i_3_n_0\,
      I2 => \temps_rest[9]_i_2_n_0\,
      I3 => left_pulse,
      I4 => \temps_rest[9]_i_3_n_0\,
      I5 => \temps_rest[9]_i_4_n_0\,
      O => \temps_rest[9]_i_1_n_0\
    );
\temps_rest[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temps_rest[11]_i_3_n_0\,
      I1 => \temps_rest_reg[11]_i_2_n_6\,
      O => \temps_rest[9]_i_2_n_0\
    );
\temps_rest[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBBA"
    )
        port map (
      I0 => \temps_rest[9]_i_5_n_0\,
      I1 => \temps_rest[10]_i_6_n_0\,
      I2 => \temps_rest[12]_i_17_n_0\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[10]_i_7_n_0\,
      I5 => \temps_rest[9]_i_6_n_0\,
      O => \temps_rest[9]_i_3_n_0\
    );
\temps_rest[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444444404"
    )
        port map (
      I0 => \temps_rest_reg[12]_i_16_n_6\,
      I1 => right_pulse,
      I2 => \temps_rest_reg[12]_i_15_n_7\,
      I3 => \temps_rest[12]_i_19_n_0\,
      I4 => \temps_rest[12]_i_17_n_0\,
      I5 => \temps_rest_reg[12]_i_16_n_4\,
      O => \temps_rest[9]_i_4_n_0\
    );
\temps_rest[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \temps_rest[12]_i_20_n_0\,
      I1 => \temps_rest_reg[12]_i_21_n_7\,
      O => \temps_rest[9]_i_5_n_0\
    );
\temps_rest[9]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => down_pulse,
      I1 => \temps_rest_reg[12]_i_12_n_7\,
      O => \temps_rest[9]_i_6_n_0\
    );
\temps_rest_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \temps_rest[12]_i_1_n_0\,
      D => \temps_rest[0]_i_1_n_0\,
      Q => \temps_rest_reg_n_0_[0]\,
      R => '0'
    );
\temps_rest_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \temps_rest[12]_i_1_n_0\,
      D => \temps_rest[10]_i_1_n_0\,
      Q => \temps_rest_reg_n_0_[10]\,
      R => '0'
    );
\temps_rest_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \temps_rest[12]_i_1_n_0\,
      D => \temps_rest[11]_i_1_n_0\,
      Q => \temps_rest_reg_n_0_[11]\,
      R => '0'
    );
\temps_rest_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \temps_rest_reg[11]_i_5_n_0\,
      CO(3) => \temps_rest_reg[11]_i_2_n_0\,
      CO(2) => \temps_rest_reg[11]_i_2_n_1\,
      CO(1) => \temps_rest_reg[11]_i_2_n_2\,
      CO(0) => \temps_rest_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \temps_rest_reg_n_0_[11]\,
      DI(2) => \temps_rest_reg_n_0_[10]\,
      DI(1) => \temps_rest_reg_n_0_[9]\,
      DI(0) => \temps_rest_reg_n_0_[8]\,
      O(3) => \temps_rest_reg[11]_i_2_n_4\,
      O(2) => \temps_rest_reg[11]_i_2_n_5\,
      O(1) => \temps_rest_reg[11]_i_2_n_6\,
      O(0) => \temps_rest_reg[11]_i_2_n_7\,
      S(3) => \temps_rest[11]_i_6_n_0\,
      S(2) => \temps_rest[11]_i_7_n_0\,
      S(1) => \temps_rest[11]_i_8_n_0\,
      S(0) => \temps_rest[11]_i_9_n_0\
    );
\temps_rest_reg[11]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \temps_rest_reg[3]_i_5_n_0\,
      CO(3) => \temps_rest_reg[11]_i_5_n_0\,
      CO(2) => \temps_rest_reg[11]_i_5_n_1\,
      CO(1) => \temps_rest_reg[11]_i_5_n_2\,
      CO(0) => \temps_rest_reg[11]_i_5_n_3\,
      CYINIT => '0',
      DI(3) => \temps_rest_reg_n_0_[7]\,
      DI(2) => \temps_rest_reg_n_0_[6]\,
      DI(1) => \temps_rest_reg_n_0_[5]\,
      DI(0) => '0',
      O(3) => \temps_rest_reg[11]_i_5_n_4\,
      O(2) => \temps_rest_reg[11]_i_5_n_5\,
      O(1) => \temps_rest_reg[11]_i_5_n_6\,
      O(0) => \temps_rest_reg[11]_i_5_n_7\,
      S(3) => \temps_rest[11]_i_12_n_0\,
      S(2) => \temps_rest[11]_i_13_n_0\,
      S(1) => \temps_rest[11]_i_14_n_0\,
      S(0) => \temps_rest_reg_n_0_[4]\
    );
\temps_rest_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \temps_rest[12]_i_1_n_0\,
      D => \temps_rest[12]_i_2_n_0\,
      Q => \temps_rest_reg_n_0_[12]\,
      R => '0'
    );
\temps_rest_reg[12]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \temps_rest_reg[8]_i_2_n_0\,
      CO(3) => \NLW_temps_rest_reg[12]_i_11_CO_UNCONNECTED\(3),
      CO(2) => \temps_rest_reg[12]_i_11_n_1\,
      CO(1) => \temps_rest_reg[12]_i_11_n_2\,
      CO(0) => \temps_rest_reg[12]_i_11_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \temps_rest_reg_n_0_[11]\,
      DI(1) => \temps_rest_reg_n_0_[10]\,
      DI(0) => \temps_rest_reg_n_0_[9]\,
      O(3) => \temps_rest_reg[12]_i_11_n_4\,
      O(2) => \temps_rest_reg[12]_i_11_n_5\,
      O(1) => \temps_rest_reg[12]_i_11_n_6\,
      O(0) => \temps_rest_reg[12]_i_11_n_7\,
      S(3) => \temps_rest[12]_i_22_n_0\,
      S(2) => \temps_rest[12]_i_23_n_0\,
      S(1) => \temps_rest[12]_i_24_n_0\,
      S(0) => \temps_rest[12]_i_25_n_0\
    );
\temps_rest_reg[12]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \temps_rest_reg[12]_i_26_n_0\,
      CO(3) => \NLW_temps_rest_reg[12]_i_12_CO_UNCONNECTED\(3),
      CO(2) => \temps_rest_reg[12]_i_12_n_1\,
      CO(1) => \temps_rest_reg[12]_i_12_n_2\,
      CO(0) => \temps_rest_reg[12]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \temps_rest_reg[12]_i_12_n_4\,
      O(2) => \temps_rest_reg[12]_i_12_n_5\,
      O(1) => \temps_rest_reg[12]_i_12_n_6\,
      O(0) => \temps_rest_reg[12]_i_12_n_7\,
      S(3) => \temps_rest_reg_n_0_[12]\,
      S(2) => \temps_rest_reg_n_0_[11]\,
      S(1) => \temps_rest_reg_n_0_[10]\,
      S(0) => \temps_rest_reg_n_0_[9]\
    );
\temps_rest_reg[12]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \temps_rest_reg[12]_i_16_n_0\,
      CO(3 downto 0) => \NLW_temps_rest_reg[12]_i_15_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_temps_rest_reg[12]_i_15_O_UNCONNECTED\(3 downto 1),
      O(0) => \temps_rest_reg[12]_i_15_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \temps_rest_reg_n_0_[12]\
    );
\temps_rest_reg[12]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \temps_rest_reg[7]_i_7_n_0\,
      CO(3) => \temps_rest_reg[12]_i_16_n_0\,
      CO(2) => \temps_rest_reg[12]_i_16_n_1\,
      CO(1) => \temps_rest_reg[12]_i_16_n_2\,
      CO(0) => \temps_rest_reg[12]_i_16_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \temps_rest_reg[12]_i_16_n_4\,
      O(2) => \temps_rest_reg[12]_i_16_n_5\,
      O(1) => \temps_rest_reg[12]_i_16_n_6\,
      O(0) => \temps_rest_reg[12]_i_16_n_7\,
      S(3) => \temps_rest_reg_n_0_[11]\,
      S(2) => \temps_rest_reg_n_0_[10]\,
      S(1) => \temps_rest_reg_n_0_[9]\,
      S(0) => \temps_rest_reg_n_0_[8]\
    );
\temps_rest_reg[12]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \temps_rest_reg[11]_i_2_n_0\,
      CO(3 downto 0) => \NLW_temps_rest_reg[12]_i_18_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_temps_rest_reg[12]_i_18_O_UNCONNECTED\(3 downto 1),
      O(0) => \temps_rest_reg[12]_i_18_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \temps_rest[12]_i_28_n_0\
    );
\temps_rest_reg[12]_i_21\: unisim.vcomponents.CARRY4
     port map (
      CI => \temps_rest_reg[12]_i_32_n_0\,
      CO(3) => \NLW_temps_rest_reg[12]_i_21_CO_UNCONNECTED\(3),
      CO(2) => \temps_rest_reg[12]_i_21_n_1\,
      CO(1) => \temps_rest_reg[12]_i_21_n_2\,
      CO(0) => \temps_rest_reg[12]_i_21_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \temps_rest_reg_n_0_[11]\,
      DI(1) => \temps_rest_reg_n_0_[10]\,
      DI(0) => \temps_rest_reg_n_0_[9]\,
      O(3) => \temps_rest_reg[12]_i_21_n_4\,
      O(2) => \temps_rest_reg[12]_i_21_n_5\,
      O(1) => \temps_rest_reg[12]_i_21_n_6\,
      O(0) => \temps_rest_reg[12]_i_21_n_7\,
      S(3) => \temps_rest[12]_i_33_n_0\,
      S(2) => \temps_rest[12]_i_34_n_0\,
      S(1) => \temps_rest[12]_i_35_n_0\,
      S(0) => \temps_rest[12]_i_36_n_0\
    );
\temps_rest_reg[12]_i_26\: unisim.vcomponents.CARRY4
     port map (
      CI => \temps_rest_reg[12]_i_27_n_0\,
      CO(3) => \temps_rest_reg[12]_i_26_n_0\,
      CO(2) => \temps_rest_reg[12]_i_26_n_1\,
      CO(1) => \temps_rest_reg[12]_i_26_n_2\,
      CO(0) => \temps_rest_reg[12]_i_26_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \temps_rest_reg_n_0_[5]\,
      O(3) => \temps_rest_reg[12]_i_26_n_4\,
      O(2) => \temps_rest_reg[12]_i_26_n_5\,
      O(1) => \temps_rest_reg[12]_i_26_n_6\,
      O(0) => \temps_rest_reg[12]_i_26_n_7\,
      S(3) => \temps_rest_reg_n_0_[8]\,
      S(2) => \temps_rest_reg_n_0_[7]\,
      S(1) => \temps_rest_reg_n_0_[6]\,
      S(0) => \temps_rest[12]_i_37_n_0\
    );
\temps_rest_reg[12]_i_27\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temps_rest_reg[12]_i_27_n_0\,
      CO(2) => \temps_rest_reg[12]_i_27_n_1\,
      CO(1) => \temps_rest_reg[12]_i_27_n_2\,
      CO(0) => \temps_rest_reg[12]_i_27_n_3\,
      CYINIT => '0',
      DI(3) => \temps_rest_reg_n_0_[4]\,
      DI(2) => \temps_rest_reg_n_0_[3]\,
      DI(1) => \temps_rest_reg_n_0_[2]\,
      DI(0) => '0',
      O(3) => \temps_rest_reg[12]_i_27_n_4\,
      O(2) => \temps_rest_reg[12]_i_27_n_5\,
      O(1) => \temps_rest_reg[12]_i_27_n_6\,
      O(0) => \temps_rest_reg[12]_i_27_n_7\,
      S(3) => \temps_rest[12]_i_38_n_0\,
      S(2) => \temps_rest[12]_i_39_n_0\,
      S(1) => \temps_rest[12]_i_40_n_0\,
      S(0) => \temps_rest_reg_n_0_[1]\
    );
\temps_rest_reg[12]_i_32\: unisim.vcomponents.CARRY4
     port map (
      CI => \temps_rest_reg[4]_i_12_n_0\,
      CO(3) => \temps_rest_reg[12]_i_32_n_0\,
      CO(2) => \temps_rest_reg[12]_i_32_n_1\,
      CO(1) => \temps_rest_reg[12]_i_32_n_2\,
      CO(0) => \temps_rest_reg[12]_i_32_n_3\,
      CYINIT => '0',
      DI(3) => \temps_rest_reg_n_0_[8]\,
      DI(2) => \temps_rest_reg_n_0_[7]\,
      DI(1) => \temps_rest_reg_n_0_[6]\,
      DI(0) => '0',
      O(3) => \temps_rest_reg[12]_i_32_n_4\,
      O(2) => \temps_rest_reg[12]_i_32_n_5\,
      O(1) => \temps_rest_reg[12]_i_32_n_6\,
      O(0) => \temps_rest_reg[12]_i_32_n_7\,
      S(3) => \temps_rest[12]_i_41_n_0\,
      S(2) => \temps_rest[12]_i_42_n_0\,
      S(1) => \temps_rest[12]_i_43_n_0\,
      S(0) => \temps_rest_reg_n_0_[5]\
    );
\temps_rest_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \temps_rest[12]_i_1_n_0\,
      D => \temps_rest[1]_i_1_n_0\,
      Q => \temps_rest_reg_n_0_[1]\,
      R => '0'
    );
\temps_rest_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \temps_rest[12]_i_1_n_0\,
      D => \temps_rest[2]_i_1_n_0\,
      Q => \temps_rest_reg_n_0_[2]\,
      R => '0'
    );
\temps_rest_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \temps_rest[12]_i_1_n_0\,
      D => \temps_rest[3]_i_1_n_0\,
      Q => \temps_rest_reg_n_0_[3]\,
      R => '0'
    );
\temps_rest_reg[3]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temps_rest_reg[3]_i_5_n_0\,
      CO(2) => \temps_rest_reg[3]_i_5_n_1\,
      CO(1) => \temps_rest_reg[3]_i_5_n_2\,
      CO(0) => \temps_rest_reg[3]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \temps_rest_reg_n_0_[1]\,
      DI(0) => '0',
      O(3) => \temps_rest_reg[3]_i_5_n_4\,
      O(2) => \temps_rest_reg[3]_i_5_n_5\,
      O(1) => \temps_rest_reg[3]_i_5_n_6\,
      O(0) => \NLW_temps_rest_reg[3]_i_5_O_UNCONNECTED\(0),
      S(3) => \temps_rest_reg_n_0_[3]\,
      S(2) => \temps_rest_reg_n_0_[2]\,
      S(1) => \temps_rest[3]_i_9_n_0\,
      S(0) => \temps_rest_reg_n_0_[0]\
    );
\temps_rest_reg[3]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temps_rest_reg[3]_i_8_n_0\,
      CO(2) => \temps_rest_reg[3]_i_8_n_1\,
      CO(1) => \temps_rest_reg[3]_i_8_n_2\,
      CO(0) => \temps_rest_reg[3]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => \temps_rest_reg_n_0_[3]\,
      DI(2) => \temps_rest_reg_n_0_[2]\,
      DI(1) => \temps_rest_reg_n_0_[1]\,
      DI(0) => '0',
      O(3) => \temps_rest_reg[3]_i_8_n_4\,
      O(2) => \temps_rest_reg[3]_i_8_n_5\,
      O(1) => \temps_rest_reg[3]_i_8_n_6\,
      O(0) => \temps_rest_reg[3]_i_8_n_7\,
      S(3) => \temps_rest[3]_i_10_n_0\,
      S(2) => \temps_rest[3]_i_11_n_0\,
      S(1) => \temps_rest[3]_i_12_n_0\,
      S(0) => \temps_rest_reg_n_0_[0]\
    );
\temps_rest_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \temps_rest[12]_i_1_n_0\,
      D => \temps_rest[4]_i_1_n_0\,
      Q => \temps_rest_reg_n_0_[4]\,
      R => '0'
    );
\temps_rest_reg[4]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temps_rest_reg[4]_i_12_n_0\,
      CO(2) => \temps_rest_reg[4]_i_12_n_1\,
      CO(1) => \temps_rest_reg[4]_i_12_n_2\,
      CO(0) => \temps_rest_reg[4]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \temps_rest_reg_n_0_[2]\,
      DI(0) => '0',
      O(3) => \temps_rest_reg[4]_i_12_n_4\,
      O(2) => \temps_rest_reg[4]_i_12_n_5\,
      O(1) => \temps_rest_reg[4]_i_12_n_6\,
      O(0) => \NLW_temps_rest_reg[4]_i_12_O_UNCONNECTED\(0),
      S(3) => \temps_rest_reg_n_0_[4]\,
      S(2) => \temps_rest_reg_n_0_[3]\,
      S(1) => \temps_rest[4]_i_13_n_0\,
      S(0) => \temps_rest_reg_n_0_[1]\
    );
\temps_rest_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temps_rest_reg[4]_i_2_n_0\,
      CO(2) => \temps_rest_reg[4]_i_2_n_1\,
      CO(1) => \temps_rest_reg[4]_i_2_n_2\,
      CO(0) => \temps_rest_reg[4]_i_2_n_3\,
      CYINIT => \temps_rest_reg_n_0_[0]\,
      DI(3) => \temps_rest_reg_n_0_[4]\,
      DI(2) => \temps_rest_reg_n_0_[3]\,
      DI(1) => \temps_rest_reg_n_0_[2]\,
      DI(0) => \temps_rest_reg_n_0_[1]\,
      O(3) => \temps_rest_reg[4]_i_2_n_4\,
      O(2) => \temps_rest_reg[4]_i_2_n_5\,
      O(1) => \temps_rest_reg[4]_i_2_n_6\,
      O(0) => \temps_rest_reg[4]_i_2_n_7\,
      S(3) => \temps_rest[4]_i_6_n_0\,
      S(2) => \temps_rest[4]_i_7_n_0\,
      S(1) => \temps_rest[4]_i_8_n_0\,
      S(0) => \temps_rest[4]_i_9_n_0\
    );
\temps_rest_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \temps_rest[12]_i_1_n_0\,
      D => \temps_rest[5]_i_1_n_0\,
      Q => \temps_rest_reg_n_0_[5]\,
      R => '0'
    );
\temps_rest_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \temps_rest[12]_i_1_n_0\,
      D => \temps_rest[6]_i_1_n_0\,
      Q => \temps_rest_reg_n_0_[6]\,
      R => '0'
    );
\temps_rest_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \temps_rest[12]_i_1_n_0\,
      D => \temps_rest[7]_i_1_n_0\,
      Q => \temps_rest_reg_n_0_[7]\,
      R => '0'
    );
\temps_rest_reg[7]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \temps_rest_reg[3]_i_8_n_0\,
      CO(3) => \temps_rest_reg[7]_i_7_n_0\,
      CO(2) => \temps_rest_reg[7]_i_7_n_1\,
      CO(1) => \temps_rest_reg[7]_i_7_n_2\,
      CO(0) => \temps_rest_reg[7]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \temps_rest_reg_n_0_[4]\,
      O(3) => \temps_rest_reg[7]_i_7_n_4\,
      O(2) => \temps_rest_reg[7]_i_7_n_5\,
      O(1) => \temps_rest_reg[7]_i_7_n_6\,
      O(0) => \temps_rest_reg[7]_i_7_n_7\,
      S(3) => \temps_rest_reg_n_0_[7]\,
      S(2) => \temps_rest_reg_n_0_[6]\,
      S(1) => \temps_rest_reg_n_0_[5]\,
      S(0) => \temps_rest[7]_i_8_n_0\
    );
\temps_rest_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \temps_rest[12]_i_1_n_0\,
      D => \temps_rest[8]_i_1_n_0\,
      Q => \temps_rest_reg_n_0_[8]\,
      R => '0'
    );
\temps_rest_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \temps_rest_reg[4]_i_2_n_0\,
      CO(3) => \temps_rest_reg[8]_i_2_n_0\,
      CO(2) => \temps_rest_reg[8]_i_2_n_1\,
      CO(1) => \temps_rest_reg[8]_i_2_n_2\,
      CO(0) => \temps_rest_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \temps_rest_reg_n_0_[8]\,
      DI(2) => \temps_rest_reg_n_0_[7]\,
      DI(1) => \temps_rest_reg_n_0_[6]\,
      DI(0) => \temps_rest_reg_n_0_[5]\,
      O(3) => \temps_rest_reg[8]_i_2_n_4\,
      O(2) => \temps_rest_reg[8]_i_2_n_5\,
      O(1) => \temps_rest_reg[8]_i_2_n_6\,
      O(0) => \temps_rest_reg[8]_i_2_n_7\,
      S(3) => \temps_rest[8]_i_6_n_0\,
      S(2) => \temps_rest[8]_i_7_n_0\,
      S(1) => \temps_rest[8]_i_8_n_0\,
      S(0) => \temps_rest[8]_i_9_n_0\
    );
\temps_rest_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \temps_rest[12]_i_1_n_0\,
      D => \temps_rest[9]_i_1_n_0\,
      Q => \temps_rest_reg_n_0_[9]\,
      R => '0'
    );
tick1hz_inst: entity work.CounterModN
     port map (
      clk_i => clk_i_IBUF_BUFG,
      cycle_o => top_1sec,
      inc_i => '1',
      reset_i => '0',
      value_o(26 downto 0) => NLW_tick1hz_inst_value_o_UNCONNECTED(26 downto 0)
    );
tick1khz_inst: entity work.\CounterModN__parameterized0\
     port map (
      clk_i => clk_i_IBUF_BUFG,
      cycle_o => tick_1khz,
      inc_i => '1',
      reset_i => '0',
      value_o(16 downto 0) => NLW_tick1khz_inst_value_o_UNCONNECTED(16 downto 0)
    );
up_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => up_sync2,
      Q => up_prev,
      R => '0'
    );
up_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => up_sync2,
      I1 => up_prev,
      O => up_pulse0
    );
up_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => up_pulse0,
      Q => up_pulse,
      R => '0'
    );
up_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => btn_up_i_IBUF,
      Q => up_sync1,
      R => '0'
    );
up_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => up_sync1,
      Q => up_sync2,
      R => '0'
    );
end STRUCTURE;
