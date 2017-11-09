--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.39
--  \   \         Application: netgen
--  /   /         Filename: count_mem_synthesis.vhd
-- /___/   /\     Timestamp: Tue Jan 28 15:41:04 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm count_mem -w -dir netgen/synthesis -ofmt vhdl -sim count_mem.ngc count_mem_synthesis.vhd 
-- Device	: xc2s200-6-pq208
-- Input file	: count_mem.ngc
-- Output file	: C:\Documents and Settings\kloftis\Desktop\CENG 450 - KL\count_mem_sch\netgen\synthesis\count_mem_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: count_mem
-- Xilinx	: C:\Xilinx\10.1\ISE
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity count_mem is
  port (
    CLK : in STD_LOGIC := 'X'; 
    CE : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    OUT_MEM : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end count_mem;

architecture Structure of count_mem is
  signal N1 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom00001 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000010 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000011 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000012_129 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000013 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000141_5_f5_131 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000141_6_132 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000141_7_133 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000015 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000016 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000017 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000191_5_f5_137 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000191_6_138 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000191_7_139 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000020 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000021 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000241_5_f5_142 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000241_6_143 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000241_7_144 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000025 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000026 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000291_5_f5_147 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000291_6_148 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000291_7_149 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000032 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000033_151 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000341_5_f5_152 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000341_6_153 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom0000341_7_154 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000041_5_f5_155 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000041_6_156 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000041_7_157 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom00005 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom00006 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000091_5_f5_160 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000091_6_161 : STD_LOGIC; 
  signal XLXI_6_Mrom_dout_rom000091_7_162 : STD_LOGIC; 
  signal XLXN_10 : STD_LOGIC; 
  signal XLXN_11_0_Q : STD_LOGIC; 
  signal XLXN_11_1_Q : STD_LOGIC; 
  signal XLXN_11_2_Q : STD_LOGIC; 
  signal XLXN_11_3_Q : STD_LOGIC; 
  signal XLXN_11_4_Q : STD_LOGIC; 
  signal XLXN_11_5_Q : STD_LOGIC; 
  signal XLXN_11_7_Q : STD_LOGIC; 
  signal XLXN_8 : STD_LOGIC; 
  signal XLXN_9 : STD_LOGIC; 
  signal XLXI_1_XLXN_2 : STD_LOGIC; 
  signal XLXI_1_XLXN_1 : STD_LOGIC; 
  signal XLXI_1_TC : STD_LOGIC; 
  signal XLXI_1_T7 : STD_LOGIC; 
  signal XLXI_1_T6 : STD_LOGIC; 
  signal XLXI_1_T5 : STD_LOGIC; 
  signal XLXI_1_T4 : STD_LOGIC; 
  signal XLXI_1_T3 : STD_LOGIC; 
  signal XLXI_1_T2 : STD_LOGIC; 
  signal XLXI_1_CEO : STD_LOGIC; 
  signal XLXI_1_I_Q7_TQ : STD_LOGIC; 
  signal XLXI_1_I_Q7_D_S : STD_LOGIC; 
  signal XLXI_1_I_Q7_CE_S : STD_LOGIC; 
  signal XLXI_1_I_Q6_TQ : STD_LOGIC; 
  signal XLXI_1_I_Q6_D_S : STD_LOGIC; 
  signal XLXI_1_I_Q6_CE_S : STD_LOGIC; 
  signal XLXI_1_I_Q5_TQ : STD_LOGIC; 
  signal XLXI_1_I_Q5_D_S : STD_LOGIC; 
  signal XLXI_1_I_Q5_CE_S : STD_LOGIC; 
  signal XLXI_1_I_Q4_TQ : STD_LOGIC; 
  signal XLXI_1_I_Q4_D_S : STD_LOGIC; 
  signal XLXI_1_I_Q4_CE_S : STD_LOGIC; 
  signal XLXI_1_I_Q3_TQ : STD_LOGIC; 
  signal XLXI_1_I_Q3_D_S : STD_LOGIC; 
  signal XLXI_1_I_Q3_CE_S : STD_LOGIC; 
  signal XLXI_1_I_Q2_TQ : STD_LOGIC; 
  signal XLXI_1_I_Q2_D_S : STD_LOGIC; 
  signal XLXI_1_I_Q2_CE_S : STD_LOGIC; 
  signal XLXI_1_I_Q1_TQ : STD_LOGIC; 
  signal XLXI_1_I_Q1_D_S : STD_LOGIC; 
  signal XLXI_1_I_Q1_CE_S : STD_LOGIC; 
  signal XLXI_1_I_Q0_TQ : STD_LOGIC; 
  signal XLXI_1_I_Q0_D_S : STD_LOGIC; 
  signal XLXI_1_I_Q0_CE_S : STD_LOGIC; 
  signal XLXN_12 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_1_Q : STD_LOGIC_VECTOR ( 6 downto 6 ); 
begin
  XLXI_6_Mrom_dout_rom000091_5_f5 : MUXF5
    port map (
      I0 => XLXI_6_Mrom_dout_rom000091_7_162,
      I1 => XLXI_6_Mrom_dout_rom000091_6_161,
      S => XLXN_11_5_Q,
      O => XLXI_6_Mrom_dout_rom000091_5_f5_160
    );
  XLXI_6_Mrom_dout_rom000091_7 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXI_6_Mrom_dout_rom00005,
      I2 => XLXI_6_Mrom_dout_rom00006,
      O => XLXI_6_Mrom_dout_rom000091_7_162
    );
  XLXI_6_Mrom_dout_rom000091_6 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXI_6_Mrom_dout_rom000033_151,
      I2 => XLXI_6_Mrom_dout_rom000032,
      O => XLXI_6_Mrom_dout_rom000091_6_161
    );
  XLXI_6_Mrom_dout_rom000041_5_f5 : MUXF5
    port map (
      I0 => XLXI_6_Mrom_dout_rom000041_7_157,
      I1 => XLXI_6_Mrom_dout_rom000041_6_156,
      S => XLXN_11_5_Q,
      O => XLXI_6_Mrom_dout_rom000041_5_f5_155
    );
  XLXI_6_Mrom_dout_rom000041_7 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXI_6_Mrom_dout_rom0000,
      I2 => XLXI_6_Mrom_dout_rom00001,
      O => XLXI_6_Mrom_dout_rom000041_7_157
    );
  XLXI_6_Mrom_dout_rom0000241_5_f5 : MUXF5
    port map (
      I0 => XLXI_6_Mrom_dout_rom0000241_7_144,
      I1 => XLXI_6_Mrom_dout_rom0000241_6_143,
      S => XLXN_11_5_Q,
      O => XLXI_6_Mrom_dout_rom0000241_5_f5_142
    );
  XLXI_6_Mrom_dout_rom0000241_7 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXI_6_Mrom_dout_rom000020,
      I2 => XLXI_6_Mrom_dout_rom000021,
      O => XLXI_6_Mrom_dout_rom0000241_7_144
    );
  XLXI_6_Mrom_dout_rom0000141_5_f5 : MUXF5
    port map (
      I0 => XLXI_6_Mrom_dout_rom0000141_7_133,
      I1 => XLXI_6_Mrom_dout_rom0000141_6_132,
      S => XLXN_11_5_Q,
      O => XLXI_6_Mrom_dout_rom0000141_5_f5_131
    );
  XLXI_6_Mrom_dout_rom0000141_7 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXI_6_Mrom_dout_rom000010,
      I2 => XLXI_6_Mrom_dout_rom000011,
      O => XLXI_6_Mrom_dout_rom0000141_7_133
    );
  XLXI_6_Mrom_dout_rom0000141_6 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXI_6_Mrom_dout_rom000012_129,
      I2 => XLXI_6_Mrom_dout_rom000013,
      O => XLXI_6_Mrom_dout_rom0000141_6_132
    );
  XLXI_6_Mrom_dout_rom0000191_5_f5 : MUXF5
    port map (
      I0 => XLXI_6_Mrom_dout_rom0000191_7_139,
      I1 => XLXI_6_Mrom_dout_rom0000191_6_138,
      S => XLXN_11_5_Q,
      O => XLXI_6_Mrom_dout_rom0000191_5_f5_137
    );
  XLXI_6_Mrom_dout_rom0000191_7 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXI_6_Mrom_dout_rom000015,
      I2 => XLXI_6_Mrom_dout_rom000016,
      O => XLXI_6_Mrom_dout_rom0000191_7_139
    );
  XLXI_6_Mrom_dout_rom0000291_5_f5 : MUXF5
    port map (
      I0 => XLXI_6_Mrom_dout_rom0000291_7_149,
      I1 => XLXI_6_Mrom_dout_rom0000291_6_148,
      S => XLXN_11_5_Q,
      O => XLXI_6_Mrom_dout_rom0000291_5_f5_147
    );
  XLXI_6_Mrom_dout_rom0000291_7 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXI_6_Mrom_dout_rom000025,
      I2 => XLXI_6_Mrom_dout_rom000026,
      O => XLXI_6_Mrom_dout_rom0000291_7_149
    );
  XLXI_6_Mrom_dout_rom0000291_6 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXI_6_Mrom_dout_rom000013,
      I2 => XLXI_6_Mrom_dout_rom000012_129,
      O => XLXI_6_Mrom_dout_rom0000291_6_148
    );
  XLXI_6_Mrom_dout_rom0000341_5_f5 : MUXF5
    port map (
      I0 => XLXI_6_Mrom_dout_rom0000341_7_154,
      I1 => XLXI_6_Mrom_dout_rom0000341_6_153,
      S => XLXN_11_5_Q,
      O => XLXI_6_Mrom_dout_rom0000341_5_f5_152
    );
  XLXI_6_Mrom_dout_rom0000341_6 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXI_6_Mrom_dout_rom000032,
      I2 => XLXI_6_Mrom_dout_rom000033_151,
      O => XLXI_6_Mrom_dout_rom0000341_6_153
    );
  XLXI_3 : IBUF
    port map (
      I => CE,
      O => XLXN_8
    );
  XLXI_4 : IBUF
    port map (
      I => RST,
      O => XLXN_10
    );
  XLXI_5 : IBUFG
    port map (
      I => CLK,
      O => XLXN_9
    );
  XLXI_6_Mrom_dout_rom00003811_SW0 : LUT4
    generic map(
      INIT => X"9FDF"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXN_11_3_Q,
      I2 => XLXN_11_5_Q,
      I3 => N1,
      O => N20
    );
  XLXI_6_Mrom_dout_rom00003811 : LUT4
    generic map(
      INIT => X"2033"
    )
    port map (
      I0 => N31,
      I1 => XLXN_11_7_Q,
      I2 => XLXN_11_0_Q,
      I3 => N20,
      O => XLXN_12(7)
    );
  XLXI_6_Mrom_dout_rom0000121 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => XLXN_11_3_Q,
      I1 => XLXN_11_2_Q,
      I2 => XLXN_11_1_Q,
      O => XLXI_6_Mrom_dout_rom000012_129
    );
  XLXI_6_Mrom_dout_rom0000171 : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => XLXN_11_3_Q,
      I1 => XLXN_11_2_Q,
      I2 => XLXN_11_0_Q,
      I3 => XLXN_11_1_Q,
      O => XLXI_6_Mrom_dout_rom000017
    );
  XLXI_6_Mrom_dout_rom0000131 : LUT4
    generic map(
      INIT => X"666A"
    )
    port map (
      I0 => XLXN_11_3_Q,
      I1 => XLXN_11_2_Q,
      I2 => XLXN_11_0_Q,
      I3 => XLXN_11_1_Q,
      O => XLXI_6_Mrom_dout_rom000013
    );
  XLXN_11_7_51 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXN_11_7_Q,
      I1 => XLXI_6_Mrom_dout_rom0000291_5_f5_147,
      O => XLXN_12(5)
    );
  XLXN_11_7_41 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXN_11_7_Q,
      I1 => XLXI_6_Mrom_dout_rom0000191_5_f5_137,
      O => XLXN_12(3)
    );
  XLXN_11_7_31 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXN_11_7_Q,
      I1 => XLXI_6_Mrom_dout_rom0000141_5_f5_131,
      O => XLXN_12(2)
    );
  XLXN_11_7_21 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXN_11_7_Q,
      I1 => XLXI_6_Mrom_dout_rom0000241_5_f5_142,
      O => XLXN_12(4)
    );
  XLXI_6_Mrom_dout_rom0000151 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => XLXN_11_2_Q,
      I1 => XLXN_11_1_Q,
      I2 => XLXN_11_0_Q,
      O => XLXI_6_Mrom_dout_rom000015
    );
  XLXI_6_Mrom_dout_rom000051 : LUT4
    generic map(
      INIT => X"0900"
    )
    port map (
      I0 => XLXN_11_2_Q,
      I1 => XLXN_11_3_Q,
      I2 => XLXN_11_1_Q,
      I3 => XLXN_11_0_Q,
      O => XLXI_6_Mrom_dout_rom00005
    );
  XLXI_6_Mrom_dout_rom0000251 : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => XLXN_11_2_Q,
      I1 => XLXN_11_3_Q,
      I2 => XLXN_11_1_Q,
      I3 => XLXN_11_0_Q,
      O => XLXI_6_Mrom_dout_rom000025
    );
  XLXI_6_Mrom_dout_rom0000201 : LUT4
    generic map(
      INIT => X"0410"
    )
    port map (
      I0 => XLXN_11_0_Q,
      I1 => XLXN_11_3_Q,
      I2 => XLXN_11_2_Q,
      I3 => XLXN_11_1_Q,
      O => XLXI_6_Mrom_dout_rom000020
    );
  XLXI_6_Mrom_dout_rom0000101 : LUT4
    generic map(
      INIT => X"0410"
    )
    port map (
      I0 => XLXN_11_0_Q,
      I1 => XLXN_11_2_Q,
      I2 => XLXN_11_1_Q,
      I3 => XLXN_11_3_Q,
      O => XLXI_6_Mrom_dout_rom000010
    );
  XLXI_6_Mrom_dout_rom000012 : LUT4
    generic map(
      INIT => X"4001"
    )
    port map (
      I0 => XLXN_11_0_Q,
      I1 => XLXN_11_3_Q,
      I2 => XLXN_11_2_Q,
      I3 => XLXN_11_1_Q,
      O => XLXI_6_Mrom_dout_rom0000
    );
  XLXI_6_Mrom_dout_rom0000161 : LUT4
    generic map(
      INIT => X"0C18"
    )
    port map (
      I0 => XLXN_11_0_Q,
      I1 => XLXN_11_1_Q,
      I2 => XLXN_11_2_Q,
      I3 => XLXN_11_3_Q,
      O => XLXI_6_Mrom_dout_rom000016
    );
  XLXI_6_Mrom_dout_rom00001111 : LUT4
    generic map(
      INIT => X"180C"
    )
    port map (
      I0 => XLXN_11_0_Q,
      I1 => XLXN_11_1_Q,
      I2 => XLXN_11_2_Q,
      I3 => XLXN_11_3_Q,
      O => XLXI_6_Mrom_dout_rom000011
    );
  XLXI_6_Mrom_dout_rom000061 : LUT4
    generic map(
      INIT => X"4142"
    )
    port map (
      I0 => XLXN_11_1_Q,
      I1 => XLXN_11_2_Q,
      I2 => XLXN_11_3_Q,
      I3 => XLXN_11_0_Q,
      O => XLXI_6_Mrom_dout_rom00006
    );
  XLXI_6_Mrom_dout_rom0000261 : LUT4
    generic map(
      INIT => X"1418"
    )
    port map (
      I0 => XLXN_11_1_Q,
      I1 => XLXN_11_2_Q,
      I2 => XLXN_11_3_Q,
      I3 => XLXN_11_0_Q,
      O => XLXI_6_Mrom_dout_rom000026
    );
  XLXI_6_Mrom_dout_rom0000211 : LUT4
    generic map(
      INIT => X"1418"
    )
    port map (
      I0 => XLXN_11_1_Q,
      I1 => XLXN_11_3_Q,
      I2 => XLXN_11_2_Q,
      I3 => XLXN_11_0_Q,
      O => XLXI_6_Mrom_dout_rom000021
    );
  XLXI_6_Mrom_dout_rom0000111 : LUT4
    generic map(
      INIT => X"4181"
    )
    port map (
      I0 => XLXN_11_1_Q,
      I1 => XLXN_11_2_Q,
      I2 => XLXN_11_3_Q,
      I3 => XLXN_11_0_Q,
      O => XLXI_6_Mrom_dout_rom00001
    );
  XLXI_6_Mrom_dout_rom0000381111 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => XLXN_11_0_Q,
      I1 => XLXN_11_1_Q,
      I2 => XLXN_11_2_Q,
      O => N1
    );
  XLXN_11_7_11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXN_11_7_Q,
      I1 => XLXI_6_Mrom_dout_rom000041_5_f5_155,
      O => XLXN_12(0)
    );
  XLXN_11_7_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXN_11_7_Q,
      I1 => XLXI_6_Mrom_dout_rom000091_5_f5_160,
      O => XLXN_12(1)
    );
  XLXN_11_7_61 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXN_11_7_Q,
      I1 => XLXI_6_Mrom_dout_rom0000341_5_f5_152,
      O => XLXN_12(6)
    );
  XLXI_6_Mrom_dout_rom0000381121 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => XLXN_11_3_Q,
      I1 => XLXN_11_1_Q,
      I2 => XLXN_11_2_Q,
      O => N31
    );
  XLXI_6_Mrom_dout_rom0000341_7 : LUT4
    generic map(
      INIT => X"1033"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => N24,
      I2 => XLXN_11_0_Q,
      I3 => N31,
      O => XLXI_6_Mrom_dout_rom0000341_7_154
    );
  XLXI_6_Mrom_dout_rom000033 : LUT4
    generic map(
      INIT => X"3336"
    )
    port map (
      I0 => XLXN_11_0_Q,
      I1 => XLXN_11_3_Q,
      I2 => XLXN_11_1_Q,
      I3 => XLXN_11_2_Q,
      O => XLXI_6_Mrom_dout_rom000033_151
    );
  XLXI_6_Mrom_dout_rom0000321 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => XLXN_11_3_Q,
      I1 => XLXN_11_1_Q,
      I2 => XLXN_11_2_Q,
      O => XLXI_6_Mrom_dout_rom000032
    );
  XLXI_6_Mrom_dout_rom0000241_6 : LUT4
    generic map(
      INIT => X"41EB"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXN_11_3_Q,
      I2 => XLXN_11_2_Q,
      I3 => XLXI_6_Mrom_dout_rom000017,
      O => XLXI_6_Mrom_dout_rom0000241_6_143
    );
  XLXI_6_Mrom_dout_rom0000191_6 : LUT4
    generic map(
      INIT => X"82D7"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXN_11_2_Q,
      I2 => XLXN_11_3_Q,
      I3 => XLXI_6_Mrom_dout_rom000017,
      O => XLXI_6_Mrom_dout_rom0000191_6_138
    );
  XLXI_6_Mrom_dout_rom0000341_7_SW0 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => XLXN_11_3_Q,
      I1 => XLXN_11_0_Q,
      I2 => XLXN_11_1_Q,
      I3 => XLXN_11_2_Q,
      O => N24
    );
  XLXI_6_Mrom_dout_rom000041_6_SW1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXN_11_1_Q,
      I1 => XLXN_11_0_Q,
      O => N28
    );
  XLXI_6_Mrom_dout_rom000041_6 : LUT4
    generic map(
      INIT => X"C666"
    )
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXN_11_3_Q,
      I2 => XLXN_11_2_Q,
      I3 => N28,
      O => XLXI_6_Mrom_dout_rom000041_6_156
    );
  XLXI_7_I_36_37 : OBUF
    port map (
      I => XLXN_12(4),
      O => OUT_MEM(4)
    );
  XLXI_7_I_36_36 : OBUF
    port map (
      I => XLXN_12(5),
      O => OUT_MEM(5)
    );
  XLXI_7_I_36_35 : OBUF
    port map (
      I => XLXN_12(6),
      O => OUT_MEM(6)
    );
  XLXI_7_I_36_34 : OBUF
    port map (
      I => XLXN_12(7),
      O => OUT_MEM(7)
    );
  XLXI_7_I_36_33 : OBUF
    port map (
      I => XLXN_12(3),
      O => OUT_MEM(3)
    );
  XLXI_7_I_36_32 : OBUF
    port map (
      I => XLXN_12(2),
      O => OUT_MEM(2)
    );
  XLXI_7_I_36_31 : OBUF
    port map (
      I => XLXN_12(1),
      O => OUT_MEM(1)
    );
  XLXI_7_I_36_30 : OBUF
    port map (
      I => XLXN_12(0),
      O => OUT_MEM(0)
    );
  XLXI_1_I_36_32 : AND2
    port map (
      I0 => XLXN_8,
      I1 => XLXI_1_TC,
      O => XLXI_1_CEO
    );
  XLXI_1_I_36_29 : AND5
    port map (
      I0 => XLXN_11_7_Q,
      I1 => XLXI_1_Q(6),
      I2 => XLXN_11_5_Q,
      I3 => XLXN_11_4_Q,
      I4 => XLXI_1_T4,
      O => XLXI_1_TC
    );
  XLXI_1_I_36_28 : AND4
    port map (
      I0 => XLXI_1_Q(6),
      I1 => XLXN_11_5_Q,
      I2 => XLXN_11_4_Q,
      I3 => XLXI_1_T4,
      O => XLXI_1_T7
    );
  XLXI_1_I_36_26 : AND3
    port map (
      I0 => XLXN_11_5_Q,
      I1 => XLXN_11_4_Q,
      I2 => XLXI_1_T4,
      O => XLXI_1_T6
    );
  XLXI_1_I_36_25 : AND2
    port map (
      I0 => XLXN_11_4_Q,
      I1 => XLXI_1_T4,
      O => XLXI_1_T5
    );
  XLXI_1_I_36_23 : AND4
    port map (
      I0 => XLXN_11_3_Q,
      I1 => XLXN_11_2_Q,
      I2 => XLXN_11_1_Q,
      I3 => XLXN_11_0_Q,
      O => XLXI_1_T4
    );
  XLXI_1_I_36_22 : AND3
    port map (
      I0 => XLXN_11_2_Q,
      I1 => XLXN_11_1_Q,
      I2 => XLXN_11_0_Q,
      O => XLXI_1_T3
    );
  XLXI_1_I_36_21 : AND2
    port map (
      I0 => XLXN_11_1_Q,
      I1 => XLXN_11_0_Q,
      O => XLXI_1_T2
    );
  XLXI_1_I_36_13 : VCC
    port map (
      P => XLXI_1_XLXN_1
    );
  XLXI_1_I_36_7 : GND
    port map (
      G => XLXI_1_XLXN_2
    );
  XLXI_1_I_Q7_I_36_77 : OR2
    port map (
      I0 => XLXN_8,
      I1 => XLXI_1_XLXN_2,
      O => XLXI_1_I_Q7_CE_S
    );
  XLXI_1_I_Q7_I_36_73 : OR2
    port map (
      I0 => XLXI_1_XLXN_2,
      I1 => XLXI_1_I_Q7_TQ,
      O => XLXI_1_I_Q7_D_S
    );
  XLXI_1_I_Q7_I_36_32 : XOR2
    port map (
      I0 => XLXI_1_T7,
      I1 => XLXN_11_7_Q,
      O => XLXI_1_I_Q7_TQ
    );
  XLXI_1_I_Q7_I_36_35 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXN_9,
      CE => XLXI_1_I_Q7_CE_S,
      D => XLXI_1_I_Q7_D_S,
      R => XLXN_10,
      Q => XLXN_11_7_Q
    );
  XLXI_1_I_Q6_I_36_77 : OR2
    port map (
      I0 => XLXN_8,
      I1 => XLXI_1_XLXN_2,
      O => XLXI_1_I_Q6_CE_S
    );
  XLXI_1_I_Q6_I_36_73 : OR2
    port map (
      I0 => XLXI_1_XLXN_2,
      I1 => XLXI_1_I_Q6_TQ,
      O => XLXI_1_I_Q6_D_S
    );
  XLXI_1_I_Q6_I_36_32 : XOR2
    port map (
      I0 => XLXI_1_T6,
      I1 => XLXI_1_Q(6),
      O => XLXI_1_I_Q6_TQ
    );
  XLXI_1_I_Q6_I_36_35 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXN_9,
      CE => XLXI_1_I_Q6_CE_S,
      D => XLXI_1_I_Q6_D_S,
      R => XLXN_10,
      Q => XLXI_1_Q(6)
    );
  XLXI_1_I_Q5_I_36_77 : OR2
    port map (
      I0 => XLXN_8,
      I1 => XLXI_1_XLXN_2,
      O => XLXI_1_I_Q5_CE_S
    );
  XLXI_1_I_Q5_I_36_73 : OR2
    port map (
      I0 => XLXI_1_XLXN_2,
      I1 => XLXI_1_I_Q5_TQ,
      O => XLXI_1_I_Q5_D_S
    );
  XLXI_1_I_Q5_I_36_32 : XOR2
    port map (
      I0 => XLXI_1_T5,
      I1 => XLXN_11_5_Q,
      O => XLXI_1_I_Q5_TQ
    );
  XLXI_1_I_Q5_I_36_35 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXN_9,
      CE => XLXI_1_I_Q5_CE_S,
      D => XLXI_1_I_Q5_D_S,
      R => XLXN_10,
      Q => XLXN_11_5_Q
    );
  XLXI_1_I_Q4_I_36_77 : OR2
    port map (
      I0 => XLXN_8,
      I1 => XLXI_1_XLXN_2,
      O => XLXI_1_I_Q4_CE_S
    );
  XLXI_1_I_Q4_I_36_73 : OR2
    port map (
      I0 => XLXI_1_XLXN_2,
      I1 => XLXI_1_I_Q4_TQ,
      O => XLXI_1_I_Q4_D_S
    );
  XLXI_1_I_Q4_I_36_32 : XOR2
    port map (
      I0 => XLXI_1_T4,
      I1 => XLXN_11_4_Q,
      O => XLXI_1_I_Q4_TQ
    );
  XLXI_1_I_Q4_I_36_35 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXN_9,
      CE => XLXI_1_I_Q4_CE_S,
      D => XLXI_1_I_Q4_D_S,
      R => XLXN_10,
      Q => XLXN_11_4_Q
    );
  XLXI_1_I_Q3_I_36_77 : OR2
    port map (
      I0 => XLXN_8,
      I1 => XLXI_1_XLXN_2,
      O => XLXI_1_I_Q3_CE_S
    );
  XLXI_1_I_Q3_I_36_73 : OR2
    port map (
      I0 => XLXI_1_XLXN_2,
      I1 => XLXI_1_I_Q3_TQ,
      O => XLXI_1_I_Q3_D_S
    );
  XLXI_1_I_Q3_I_36_32 : XOR2
    port map (
      I0 => XLXI_1_T3,
      I1 => XLXN_11_3_Q,
      O => XLXI_1_I_Q3_TQ
    );
  XLXI_1_I_Q3_I_36_35 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXN_9,
      CE => XLXI_1_I_Q3_CE_S,
      D => XLXI_1_I_Q3_D_S,
      R => XLXN_10,
      Q => XLXN_11_3_Q
    );
  XLXI_1_I_Q2_I_36_77 : OR2
    port map (
      I0 => XLXN_8,
      I1 => XLXI_1_XLXN_2,
      O => XLXI_1_I_Q2_CE_S
    );
  XLXI_1_I_Q2_I_36_73 : OR2
    port map (
      I0 => XLXI_1_XLXN_2,
      I1 => XLXI_1_I_Q2_TQ,
      O => XLXI_1_I_Q2_D_S
    );
  XLXI_1_I_Q2_I_36_32 : XOR2
    port map (
      I0 => XLXI_1_T2,
      I1 => XLXN_11_2_Q,
      O => XLXI_1_I_Q2_TQ
    );
  XLXI_1_I_Q2_I_36_35 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXN_9,
      CE => XLXI_1_I_Q2_CE_S,
      D => XLXI_1_I_Q2_D_S,
      R => XLXN_10,
      Q => XLXN_11_2_Q
    );
  XLXI_1_I_Q1_I_36_77 : OR2
    port map (
      I0 => XLXN_8,
      I1 => XLXI_1_XLXN_2,
      O => XLXI_1_I_Q1_CE_S
    );
  XLXI_1_I_Q1_I_36_73 : OR2
    port map (
      I0 => XLXI_1_XLXN_2,
      I1 => XLXI_1_I_Q1_TQ,
      O => XLXI_1_I_Q1_D_S
    );
  XLXI_1_I_Q1_I_36_32 : XOR2
    port map (
      I0 => XLXN_11_0_Q,
      I1 => XLXN_11_1_Q,
      O => XLXI_1_I_Q1_TQ
    );
  XLXI_1_I_Q1_I_36_35 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXN_9,
      CE => XLXI_1_I_Q1_CE_S,
      D => XLXI_1_I_Q1_D_S,
      R => XLXN_10,
      Q => XLXN_11_1_Q
    );
  XLXI_1_I_Q0_I_36_77 : OR2
    port map (
      I0 => XLXN_8,
      I1 => XLXI_1_XLXN_2,
      O => XLXI_1_I_Q0_CE_S
    );
  XLXI_1_I_Q0_I_36_73 : OR2
    port map (
      I0 => XLXI_1_XLXN_2,
      I1 => XLXI_1_I_Q0_TQ,
      O => XLXI_1_I_Q0_D_S
    );
  XLXI_1_I_Q0_I_36_32 : XOR2
    port map (
      I0 => XLXI_1_XLXN_1,
      I1 => XLXN_11_0_Q,
      O => XLXI_1_I_Q0_TQ
    );
  XLXI_1_I_Q0_I_36_35 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXN_9,
      CE => XLXI_1_I_Q0_CE_S,
      D => XLXI_1_I_Q0_D_S,
      R => XLXN_10,
      Q => XLXN_11_0_Q
    );

end Structure;

