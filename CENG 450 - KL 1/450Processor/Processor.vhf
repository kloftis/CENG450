--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1.03
--  \   \         Application : sch2vhdl
--  /   /         Filename : Processor.vhf
-- /___/   /\     Timestamp : 02/18/2014 15:46:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan2 -flat -suppress -w "C:/Documents and Settings/kloftis/Desktop/CENG 450 - KL/450Processor/Processor.sch" Processor.vhf
--Design Name: Processor
--Device: spartan2
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Processor is
   port ( );
end Processor;

architecture BEHAVIORAL of Processor is
   signal XLXI_1_alu_mode_openSignal  : std_logic_vector (2 downto 0);
   signal XLXI_1_clk_openSignal       : std_logic;
   signal XLXI_1_in1_openSignal       : std_logic_vector (7 downto 0);
   signal XLXI_1_in2_openSignal       : std_logic_vector (7 downto 0);
   signal XLXI_1_rst_openSignal       : std_logic;
   signal XLXI_2_clk_openSignal       : std_logic;
   signal XLXI_2_rd_index1_openSignal : std_logic_vector (1 downto 0);
   signal XLXI_2_rd_index2_openSignal : std_logic_vector (1 downto 0);
   signal XLXI_2_rst_openSignal       : std_logic;
   signal XLXI_2_wr_data_openSignal   : std_logic_vector (7 downto 0);
   signal XLXI_2_wr_enable_openSignal : std_logic;
   signal XLXI_2_wr_index_openSignal  : std_logic_vector (1 downto 0);
   component ALU
      port ( clk      : in    std_logic; 
             rst      : in    std_logic; 
             in1      : in    std_logic_vector (7 downto 0); 
             in2      : in    std_logic_vector (7 downto 0); 
             alu_mode : in    std_logic_vector (2 downto 0); 
             z_flag   : out   std_logic; 
             n_flag   : out   std_logic; 
             result   : out   std_logic_vector (7 downto 0));
   end component;
   
   component register_file
      port ( wr_enable : in    std_logic; 
             clk       : in    std_logic; 
             rst       : in    std_logic; 
             rd_index1 : in    std_logic_vector (1 downto 0); 
             rd_index2 : in    std_logic_vector (1 downto 0); 
             wr_index  : in    std_logic_vector (1 downto 0); 
             wr_data   : in    std_logic_vector (7 downto 0); 
             rd_data1  : out   std_logic_vector (7 downto 0); 
             rd_data2  : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : ALU
      port map (alu_mode(2 downto 0)=>XLXI_1_alu_mode_openSignal(2 downto 0),
                clk=>XLXI_1_clk_openSignal,
                in1(7 downto 0)=>XLXI_1_in1_openSignal(7 downto 0),
                in2(7 downto 0)=>XLXI_1_in2_openSignal(7 downto 0),
                rst=>XLXI_1_rst_openSignal,
                n_flag=>open,
                result=>open,
                z_flag=>open);
   
   XLXI_2 : register_file
      port map (clk=>XLXI_2_clk_openSignal,
                rd_index1(1 downto 0)=>XLXI_2_rd_index1_openSignal(1 downto 0),
                rd_index2(1 downto 0)=>XLXI_2_rd_index2_openSignal(1 downto 0),
                rst=>XLXI_2_rst_openSignal,
                wr_data(7 downto 0)=>XLXI_2_wr_data_openSignal(7 downto 0),
                wr_enable=>XLXI_2_wr_enable_openSignal,
                wr_index(1 downto 0)=>XLXI_2_wr_index_openSignal(1 downto 0),
                rd_data1=>open,
                rd_data2=>open);
   
end BEHAVIORAL;


