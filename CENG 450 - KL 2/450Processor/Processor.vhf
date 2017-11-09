--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1.03
--  \   \         Application : sch2vhdl
--  /   /         Filename : Processor.vhf
-- /___/   /\     Timestamp : 02/25/2014 15:15:20
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan2 -flat -suppress -w "C:/Documents and Settings/kloftis/Desktop/CENG 450 - KL 1/450Processor/Processor.sch" Processor.vhf
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
   port ( CLK         : in    std_logic; 
          INSTR       : in    std_logic_vector (7 downto 0); 
          RST         : in    std_logic; 
          ALU_IN_1    : out   std_logic_vector (7 downto 0); 
          ALU_IN_2    : out   std_logic_vector (7 downto 0); 
          ALU_MODE    : out   std_logic_vector (2 downto 0); 
          ALU_Out     : out   std_logic_vector (7 downto 0); 
          Output_Main : out   std_logic_vector (7 downto 0));
end Processor;

architecture BEHAVIORAL of Processor is
   signal XLXN_27                       : std_logic;
   signal XLXN_38                       : std_logic;
   signal XLXN_39                       : std_logic;
   signal XLXN_41                       : std_logic_vector (1 downto 0);
   signal XLXN_47                       : std_logic_vector (3 downto 0);
   signal XLXN_93                       : std_logic_vector (1 downto 0);
   signal XLXN_94                       : std_logic_vector (1 downto 0);
   signal XLXN_95                       : std_logic_vector (7 downto 0);
   signal XLXN_96                       : std_logic_vector (7 downto 0);
   signal XLXN_100                      : std_logic;
   signal XLXN_103                      : std_logic_vector (1 downto 0);
   signal XLXN_104                      : std_logic;
   signal XLXN_105                      : std_logic_vector (7 downto 0);
   signal XLXN_106                      : std_logic_vector (1 downto 0);
   signal ALU_Out_DUMMY                 : std_logic_vector (7 downto 0);
   signal ALU_MODE_DUMMY                : std_logic_vector (2 downto 0);
   signal ALU_IN_1_DUMMY                : std_logic_vector (7 downto 0);
   signal ALU_IN_2_DUMMY                : std_logic_vector (7 downto 0);
   signal Output_Main_DUMMY             : std_logic_vector (7 downto 0);
   signal XLXI_7_mem_data_in_openSignal : std_logic_vector (7 downto 0);
   component MEM_WB_Buffer
      port ( mem_op_in   : in    std_logic; 
             wb_data_out : out   std_logic_vector (7 downto 0); 
             clk         : in    std_logic; 
             result_in   : in    std_logic_vector (7 downto 0); 
             ra_in       : in    std_logic_vector (1 downto 0); 
             mem_data_in : in    std_logic_vector (7 downto 0); 
             ra_out      : out   std_logic_vector (1 downto 0); 
             wb_op_in    : in    std_logic; 
             wb_op_out   : out   std_logic);
   end component;
   
   component EX_MEM_Buffer
      port ( mem_op_in  : in    std_logic; 
             mem_op_out : out   std_logic; 
             result_in  : in    std_logic_vector (7 downto 0); 
             wb_op_in   : in    std_logic; 
             clk        : in    std_logic; 
             ra_in      : in    std_logic_vector (1 downto 0); 
             ra_out     : out   std_logic_vector (1 downto 0); 
             result_out : out   std_logic_vector (7 downto 0); 
             wb_op_out  : out   std_logic);
   end component;
   
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
   
   component ID_EX_Buffer
      port ( mem_op       : out   std_logic; 
             wb_op        : out   std_logic; 
             data1_out    : out   std_logic_vector (7 downto 0); 
             data2_out    : out   std_logic_vector (7 downto 0); 
             clk          : in    std_logic; 
             ra_in        : in    std_logic_vector (1 downto 0); 
             data2_in     : in    std_logic_vector (7 downto 0); 
             data1_in     : in    std_logic_vector (7 downto 0); 
             opcode_in    : in    std_logic_vector (3 downto 0); 
             ra_out       : out   std_logic_vector (1 downto 0); 
             alu_mode_out : out   std_logic_vector (2 downto 0));
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
   
   component IF_ID_Buffer
      port ( instr_in : in    std_logic_vector (7 downto 0); 
             clk      : in    std_logic; 
             rb       : out   std_logic_vector (1 downto 0); 
             ra       : out   std_logic_vector (1 downto 0); 
             opcode   : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   ALU_IN_1(7 downto 0) <= ALU_IN_1_DUMMY(7 downto 0);
   ALU_IN_2(7 downto 0) <= ALU_IN_2_DUMMY(7 downto 0);
   ALU_MODE(2 downto 0) <= ALU_MODE_DUMMY(2 downto 0);
   ALU_Out(7 downto 0) <= ALU_Out_DUMMY(7 downto 0);
   Output_Main(7 downto 0) <= Output_Main_DUMMY(7 downto 0);
   XLXI_7 : MEM_WB_Buffer
      port map (clk=>CLK,
                mem_data_in(7 downto 0)=>XLXI_7_mem_data_in_openSignal(7 downto 
            0),
                mem_op_in=>XLXN_38,
                ra_in(1 downto 0)=>XLXN_106(1 downto 0),
                result_in(7 downto 0)=>XLXN_105(7 downto 0),
                wb_op_in=>XLXN_104,
                ra_out(1 downto 0)=>XLXN_41(1 downto 0),
                wb_data_out(7 downto 0)=>Output_Main_DUMMY(7 downto 0),
                wb_op_out=>XLXN_39);
   
   XLXI_8 : EX_MEM_Buffer
      port map (clk=>CLK,
                mem_op_in=>XLXN_27,
                ra_in(1 downto 0)=>XLXN_103(1 downto 0),
                result_in(7 downto 0)=>ALU_Out_DUMMY(7 downto 0),
                wb_op_in=>XLXN_100,
                mem_op_out=>XLXN_38,
                ra_out(1 downto 0)=>XLXN_106(1 downto 0),
                result_out(7 downto 0)=>XLXN_105(7 downto 0),
                wb_op_out=>XLXN_104);
   
   XLXI_9 : ALU
      port map (alu_mode(2 downto 0)=>ALU_MODE_DUMMY(2 downto 0),
                clk=>CLK,
                in1(7 downto 0)=>ALU_IN_1_DUMMY(7 downto 0),
                in2(7 downto 0)=>ALU_IN_2_DUMMY(7 downto 0),
                rst=>RST,
                n_flag=>open,
                result(7 downto 0)=>ALU_Out_DUMMY(7 downto 0),
                z_flag=>open);
   
   XLXI_10 : ID_EX_Buffer
      port map (clk=>CLK,
                data1_in(7 downto 0)=>XLXN_95(7 downto 0),
                data2_in(7 downto 0)=>XLXN_96(7 downto 0),
                opcode_in(3 downto 0)=>XLXN_47(3 downto 0),
                ra_in(1 downto 0)=>XLXN_94(1 downto 0),
                alu_mode_out(2 downto 0)=>ALU_MODE_DUMMY(2 downto 0),
                data1_out(7 downto 0)=>ALU_IN_1_DUMMY(7 downto 0),
                data2_out(7 downto 0)=>ALU_IN_2_DUMMY(7 downto 0),
                mem_op=>XLXN_27,
                ra_out(1 downto 0)=>XLXN_103(1 downto 0),
                wb_op=>XLXN_100);
   
   XLXI_11 : register_file
      port map (clk=>CLK,
                rd_index1(1 downto 0)=>XLXN_94(1 downto 0),
                rd_index2(1 downto 0)=>XLXN_93(1 downto 0),
                rst=>RST,
                wr_data(7 downto 0)=>Output_Main_DUMMY(7 downto 0),
                wr_enable=>XLXN_39,
                wr_index(1 downto 0)=>XLXN_41(1 downto 0),
                rd_data1(7 downto 0)=>XLXN_95(7 downto 0),
                rd_data2(7 downto 0)=>XLXN_96(7 downto 0));
   
   XLXI_13 : IF_ID_Buffer
      port map (clk=>CLK,
                instr_in(7 downto 0)=>INSTR(7 downto 0),
                opcode(3 downto 0)=>XLXN_47(3 downto 0),
                ra(1 downto 0)=>XLXN_94(1 downto 0),
                rb(1 downto 0)=>XLXN_93(1 downto 0));
   
end BEHAVIORAL;


