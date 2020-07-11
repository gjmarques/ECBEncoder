-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Jul 10 22:21:47 2020
-- Host        : LAPTOP-KJ99TN5H running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Files/ECBEncoder/ECBEncoder/stream/stream.srcs/sources_1/bd/mb_design/ip/mb_design_CustomECBEncoder_0_0/mb_design_CustomECBEncoder_0_0_sim_netlist.vhdl
-- Design      : mb_design_CustomECBEncoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_CustomECBEncoder_0_0_ECBEncoder is
  port (
    ciphered_text : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_design_CustomECBEncoder_0_0_ECBEncoder : entity is "ECBEncoder";
end mb_design_CustomECBEncoder_0_0_ECBEncoder;

architecture STRUCTURE of mb_design_CustomECBEncoder_0_0_ECBEncoder is
begin
\s_dataOut[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s00_axis_tdata(3),
      I1 => s00_axis_tdata(16),
      O => ciphered_text(3)
    );
\s_dataOut[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s00_axis_tdata(4),
      I1 => s00_axis_tdata(18),
      O => ciphered_text(4)
    );
\s_dataOut[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s00_axis_tdata(5),
      I1 => s00_axis_tdata(20),
      O => ciphered_text(5)
    );
\s_dataOut[16]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_tdata(6),
      O => ciphered_text(6)
    );
\s_dataOut[17]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_tdata(7),
      O => ciphered_text(7)
    );
\s_dataOut[19]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_tdata(9),
      O => ciphered_text(8)
    );
\s_dataOut[21]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_tdata(11),
      O => ciphered_text(9)
    );
\s_dataOut[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_tdata(13),
      O => ciphered_text(10)
    );
\s_dataOut[24]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_tdata(14),
      O => ciphered_text(11)
    );
\s_dataOut[25]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_tdata(15),
      O => ciphered_text(12)
    );
\s_dataOut[27]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_tdata(17),
      O => ciphered_text(13)
    );
\s_dataOut[29]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_tdata(19),
      O => ciphered_text(14)
    );
\s_dataOut[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s00_axis_tdata(0),
      I1 => s00_axis_tdata(8),
      O => ciphered_text(0)
    );
\s_dataOut[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_tdata(21),
      O => ciphered_text(15)
    );
\s_dataOut[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s00_axis_tdata(1),
      I1 => s00_axis_tdata(10),
      O => ciphered_text(1)
    );
\s_dataOut[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s00_axis_tdata(2),
      I1 => s00_axis_tdata(12),
      O => ciphered_text(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_CustomECBEncoder_0_0_CustomECBEncoder_v1_0_S00_AXIS is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_validOut_reg_0 : out STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_design_CustomECBEncoder_0_0_CustomECBEncoder_v1_0_S00_AXIS : entity is "CustomECBEncoder_v1_0_S00_AXIS";
end mb_design_CustomECBEncoder_0_0_CustomECBEncoder_v1_0_S00_AXIS;

architecture STRUCTURE of mb_design_CustomECBEncoder_0_0_CustomECBEncoder_v1_0_S00_AXIS is
  signal p_0_in : STD_LOGIC;
  signal s_ciphered_text00_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_cypher : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal \s_dataOut[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_dataOut[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_dataOut[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_dataOut[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_dataOut[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_dataOut[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_dataOut[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_dataOut[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_dataOut[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_dataOut[9]_i_1_n_0\ : STD_LOGIC;
  signal s_validOut : STD_LOGIC;
  signal s_validOut_i_1_n_0 : STD_LOGIC;
  signal \^s_validout_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s00_axis_tready_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_validOut_i_1 : label is "soft_lutpair0";
begin
  s_validOut_reg_0 <= \^s_validout_reg_0\;
ecbencoder_inst: entity work.mb_design_CustomECBEncoder_0_0_ECBEncoder
     port map (
      ciphered_text(15) => s_ciphered_text00_out(15),
      ciphered_text(14) => s_ciphered_text00_out(13),
      ciphered_text(13) => s_ciphered_text00_out(11),
      ciphered_text(12 downto 10) => s_ciphered_text00_out(9 downto 7),
      ciphered_text(9) => s_ciphered_text00_out(5),
      ciphered_text(8) => s_ciphered_text00_out(3),
      ciphered_text(7 downto 6) => s_ciphered_text00_out(1 downto 0),
      ciphered_text(5) => s_cypher(14),
      ciphered_text(4) => s_cypher(12),
      ciphered_text(3) => s_cypher(10),
      ciphered_text(2) => s_cypher(6),
      ciphered_text(1) => s_cypher(4),
      ciphered_text(0) => s_cypher(2),
      s00_axis_tdata(21 downto 6) => s00_axis_tdata(31 downto 16),
      s00_axis_tdata(5) => s00_axis_tdata(14),
      s00_axis_tdata(4) => s00_axis_tdata(12),
      s00_axis_tdata(3) => s00_axis_tdata(10),
      s00_axis_tdata(2) => s00_axis_tdata(6),
      s00_axis_tdata(1) => s00_axis_tdata(4),
      s00_axis_tdata(0) => s00_axis_tdata(2)
    );
s00_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => \^s_validout_reg_0\,
      O => s00_axis_tready
    );
\s_dataOut[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s00_axis_tdata(0),
      I1 => s00_axis_tdata(16),
      O => \s_dataOut[0]_i_1_n_0\
    );
\s_dataOut[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s00_axis_tdata(11),
      I1 => s00_axis_tdata(27),
      O => \s_dataOut[11]_i_1_n_0\
    );
\s_dataOut[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s00_axis_tdata(13),
      I1 => s00_axis_tdata(29),
      O => \s_dataOut[13]_i_1_n_0\
    );
\s_dataOut[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s00_axis_tdata(15),
      I1 => s00_axis_tdata(31),
      O => \s_dataOut[15]_i_1_n_0\
    );
\s_dataOut[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s00_axis_tdata(1),
      I1 => s00_axis_tdata(17),
      O => \s_dataOut[1]_i_1_n_0\
    );
\s_dataOut[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => p_0_in
    );
\s_dataOut[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => \^s_validout_reg_0\,
      I2 => m00_axis_tready,
      O => s_validOut
    );
\s_dataOut[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s00_axis_tdata(3),
      I1 => s00_axis_tdata(19),
      O => \s_dataOut[3]_i_1_n_0\
    );
\s_dataOut[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s00_axis_tdata(5),
      I1 => s00_axis_tdata(21),
      O => \s_dataOut[5]_i_1_n_0\
    );
\s_dataOut[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s00_axis_tdata(7),
      I1 => s00_axis_tdata(23),
      O => \s_dataOut[7]_i_1_n_0\
    );
\s_dataOut[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s00_axis_tdata(8),
      I1 => s00_axis_tdata(24),
      O => \s_dataOut[8]_i_1_n_0\
    );
\s_dataOut[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s00_axis_tdata(9),
      I1 => s00_axis_tdata(25),
      O => \s_dataOut[9]_i_1_n_0\
    );
\s_dataOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => \s_dataOut[0]_i_1_n_0\,
      Q => m00_axis_tdata(0),
      R => p_0_in
    );
\s_dataOut_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_cypher(10),
      Q => m00_axis_tdata(10),
      R => p_0_in
    );
\s_dataOut_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => \s_dataOut[11]_i_1_n_0\,
      Q => m00_axis_tdata(11),
      R => p_0_in
    );
\s_dataOut_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_cypher(12),
      Q => m00_axis_tdata(12),
      R => p_0_in
    );
\s_dataOut_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => \s_dataOut[13]_i_1_n_0\,
      Q => m00_axis_tdata(13),
      R => p_0_in
    );
\s_dataOut_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_cypher(14),
      Q => m00_axis_tdata(14),
      R => p_0_in
    );
\s_dataOut_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => \s_dataOut[15]_i_1_n_0\,
      Q => m00_axis_tdata(15),
      R => p_0_in
    );
\s_dataOut_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_ciphered_text00_out(0),
      Q => m00_axis_tdata(16),
      R => p_0_in
    );
\s_dataOut_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_ciphered_text00_out(1),
      Q => m00_axis_tdata(17),
      R => p_0_in
    );
\s_dataOut_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s00_axis_tdata(18),
      Q => m00_axis_tdata(18),
      R => p_0_in
    );
\s_dataOut_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_ciphered_text00_out(3),
      Q => m00_axis_tdata(19),
      R => p_0_in
    );
\s_dataOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => \s_dataOut[1]_i_1_n_0\,
      Q => m00_axis_tdata(1),
      R => p_0_in
    );
\s_dataOut_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s00_axis_tdata(20),
      Q => m00_axis_tdata(20),
      R => p_0_in
    );
\s_dataOut_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_ciphered_text00_out(5),
      Q => m00_axis_tdata(21),
      R => p_0_in
    );
\s_dataOut_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s00_axis_tdata(22),
      Q => m00_axis_tdata(22),
      R => p_0_in
    );
\s_dataOut_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_ciphered_text00_out(7),
      Q => m00_axis_tdata(23),
      R => p_0_in
    );
\s_dataOut_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_ciphered_text00_out(8),
      Q => m00_axis_tdata(24),
      R => p_0_in
    );
\s_dataOut_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_ciphered_text00_out(9),
      Q => m00_axis_tdata(25),
      R => p_0_in
    );
\s_dataOut_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s00_axis_tdata(26),
      Q => m00_axis_tdata(26),
      R => p_0_in
    );
\s_dataOut_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_ciphered_text00_out(11),
      Q => m00_axis_tdata(27),
      R => p_0_in
    );
\s_dataOut_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s00_axis_tdata(28),
      Q => m00_axis_tdata(28),
      R => p_0_in
    );
\s_dataOut_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_ciphered_text00_out(13),
      Q => m00_axis_tdata(29),
      R => p_0_in
    );
\s_dataOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_cypher(2),
      Q => m00_axis_tdata(2),
      R => p_0_in
    );
\s_dataOut_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s00_axis_tdata(30),
      Q => m00_axis_tdata(30),
      R => p_0_in
    );
\s_dataOut_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_ciphered_text00_out(15),
      Q => m00_axis_tdata(31),
      R => p_0_in
    );
\s_dataOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => \s_dataOut[3]_i_1_n_0\,
      Q => m00_axis_tdata(3),
      R => p_0_in
    );
\s_dataOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_cypher(4),
      Q => m00_axis_tdata(4),
      R => p_0_in
    );
\s_dataOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => \s_dataOut[5]_i_1_n_0\,
      Q => m00_axis_tdata(5),
      R => p_0_in
    );
\s_dataOut_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => s_cypher(6),
      Q => m00_axis_tdata(6),
      R => p_0_in
    );
\s_dataOut_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => \s_dataOut[7]_i_1_n_0\,
      Q => m00_axis_tdata(7),
      R => p_0_in
    );
\s_dataOut_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => \s_dataOut[8]_i_1_n_0\,
      Q => m00_axis_tdata(8),
      R => p_0_in
    );
\s_dataOut_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s_validOut,
      D => \s_dataOut[9]_i_1_n_0\,
      Q => m00_axis_tdata(9),
      R => p_0_in
    );
s_validOut_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F400"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => \^s_validout_reg_0\,
      I2 => s00_axis_tvalid,
      I3 => s00_axis_aresetn,
      O => s_validOut_i_1_n_0
    );
s_validOut_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => s_validOut_i_1_n_0,
      Q => \^s_validout_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_CustomECBEncoder_0_0_CustomECBEncoder_v1_0 is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_validOut_reg : out STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_design_CustomECBEncoder_0_0_CustomECBEncoder_v1_0 : entity is "CustomECBEncoder_v1_0";
end mb_design_CustomECBEncoder_0_0_CustomECBEncoder_v1_0;

architecture STRUCTURE of mb_design_CustomECBEncoder_0_0_CustomECBEncoder_v1_0 is
begin
CustomECBEncoder_v1_0_S00_AXIS_inst: entity work.mb_design_CustomECBEncoder_0_0_CustomECBEncoder_v1_0_S00_AXIS
     port map (
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tready => m00_axis_tready,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid,
      s_validOut_reg_0 => s_validOut_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_design_CustomECBEncoder_0_0 is
  port (
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mb_design_CustomECBEncoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mb_design_CustomECBEncoder_0_0 : entity is "mb_design_CustomECBEncoder_0_0,CustomECBEncoder_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mb_design_CustomECBEncoder_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mb_design_CustomECBEncoder_0_0 : entity is "CustomECBEncoder_v1_0,Vivado 2019.2";
end mb_design_CustomECBEncoder_0_0;

architecture STRUCTURE of mb_design_CustomECBEncoder_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute x_interface_parameter of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute x_interface_info of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute x_interface_info of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute x_interface_parameter of m00_axis_tvalid : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute x_interface_parameter of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute x_interface_parameter of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute x_interface_info of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute x_interface_parameter of s00_axis_tready : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute x_interface_info of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute x_interface_info of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute x_interface_info of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
begin
  m00_axis_tlast <= \<const0>\;
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.mb_design_CustomECBEncoder_0_0_CustomECBEncoder_v1_0
     port map (
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tready => m00_axis_tready,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid,
      s_validOut_reg => m00_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
