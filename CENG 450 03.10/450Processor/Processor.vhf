--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1.03
--  \   \         Application : sch2vhdl
--  /   /         Filename : Processor.vhf
-- /___/   /\     Timestamp : 03/04/2014 16:57:03
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan2 -flat -suppress -w "C:/Documents and Settings/kloftis/Desktop/CENG 450 Milestone 1.1/450Processor/Processor.sch" Processor.vhf
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
          INPUT_PORT  : in    std_logic_vector (7 downto 0); 
          INSTR       : in    std_logic_vector (7 downto 0); 
          RST         : in    std_logic; 
          ALU_IN_1    : out   std_logic_vector (7 downto 0); 
          ALU_IN_2    : out   std_logic_vector (7 downto 0); 
          ALU_MODE    : out   std_logic_vector (2 downto 0); 
          FWD         : out   std_logic_vector (7 downto 0); 
          OUTPUT_PORT : out   std_logic_vector (7 downto 0); 
          RA_OUT      : out   std_logic_vector (1 downto 0); 
          RD_DATA_1   : out   std_logic_vector (7 downto 0); 
          RD_DATA_2   : out   std_logic_vector (7 downto 0); 
          WB_DATA_OUT : out   std_logic_vector (7 downto 0); 
          WB_OP       : out   std_logic);
end Processor;

architecture BEHAVIORAL of Processor is
   signal WB_OP_INBETWEEN        : std_logic;
   signal XLXN_47                : std_logic_vector (3 downto 0);
   signal XLXN_93                : std_logic_vector (1 downto 0);
   signal XLXN_94                : std_logic_vector (1 downto 0);
   signal XLXN_103               : std_logic_vector (1 downto 0);
   signal XLXN_109               : std_logic_vector (7 downto 0);
   signal XLXN_114               : std_logic_vector (7 downto 0);
   signal XLXN_115               : std_logic;
   signal XLXN_120               : std_logic;
   signal ALU_MODE_DUMMY         : std_logic_vector (2 downto 0);
   signal RD_DATA_1_DUMMY        : std_logic_vector (7 downto 0);
   signal RD_DATA_2_DUMMY        : std_logic_vector (7 downto 0);
   signal ALU_IN_1_DUMMY         : std_logic_vector (7 downto 0);
   signal ALU_IN_2_DUMMY         : std_logic_vector (7 downto 0);
   signal RA_OUT_DUMMY           : std_logic_vector (1 downto 0);
   signal FWD_DUMMY              : std_logic_vector (7 downto 0);
   signal WB_OP_DUMMY            : std_logic;
   signal WB_DATA_OUT_DUMMY      : std_logic_vector (7 downto 0);
   signal XLXI_18_in1_openSignal : std_logic_vector (7 downto 0);
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
      port ( clk           : in    std_logic; 
             opcode_in     : in    std_logic_vector (3 downto 0); 
             data1_in      : in    std_logic_vector (7 downto 0); 
             data2_in      : in    std_logic_vector (7 downto 0); 
             ra_in         : in    std_logic_vector (1 downto 0); 
             input_port_in : in    std_logic_vector (7 downto 0); 
             mem_op        : out   std_logic; 
             data1_out     : out   std_logic_vector (7 downto 0); 
             data2_out     : out   std_logic_vector (7 downto 0); 
             ra_out        : out   std_logic_vector (1 downto 0); 
             alu_mode_out  : out   std_logic_vector (2 downto 0); 
             use_memory    : out   std_logic; 
             FWD_IN        : in    std_logic_vector (7 downto 0); 
             rb_in         : in    std_logic_vector (1 downto 0); 
             io_op         : out   std_logic; 
             wb_op         : out   std_logic);
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
      port ( clk            : in    std_logic; 
             instr_in       : in    std_logic_vector (7 downto 0); 
             ra             : out   std_logic_vector (1 downto 0); 
             rb             : out   std_logic_vector (1 downto 0); 
             opcode         : out   std_logic_vector (3 downto 0); 
             input_port     : in    std_logic_vector (7 downto 0); 
             input_port_out : out   std_logic_vector (7 downto 0));
   end component;
   
   component EX_MEM_Buffer
      port ( wb_op_in    : in    std_logic; 
             io_op_in    : in    std_logic; 
             clk         : in    std_logic; 
             result_in   : in    std_logic_vector (7 downto 0); 
             ra_in       : in    std_logic_vector (1 downto 0); 
             wb_op_out   : out   std_logic; 
             result_out  : out   std_logic_vector (7 downto 0); 
             ra_out      : out   std_logic_vector (1 downto 0); 
             output_port : out   std_logic_vector (7 downto 0));
   end component;
   
   component MUX2_8bit
      port ( in0 : in    std_logic_vector (7 downto 0); 
             in1 : in    std_logic_vector (7 downto 0); 
             o   : out   std_logic_vector (7 downto 0); 
             s   : in    std_logic);
   end component;
   
begin
   ALU_IN_1(7 downto 0) <= ALU_IN_1_DUMMY(7 downto 0);
   ALU_IN_2(7 downto 0) <= ALU_IN_2_DUMMY(7 downto 0);
   ALU_MODE(2 downto 0) <= ALU_MODE_DUMMY(2 downto 0);
   FWD(7 downto 0) <= FWD_DUMMY(7 downto 0);
   RA_OUT(1 downto 0) <= RA_OUT_DUMMY(1 downto 0);
   RD_DATA_1(7 downto 0) <= RD_DATA_1_DUMMY(7 downto 0);
   RD_DATA_2(7 downto 0) <= RD_DATA_2_DUMMY(7 downto 0);
   WB_DATA_OUT(7 downto 0) <= WB_DATA_OUT_DUMMY(7 downto 0);
   WB_OP <= WB_OP_DUMMY;
   XLXI_9 : ALU
      port map (alu_mode(2 downto 0)=>ALU_MODE_DUMMY(2 downto 0),
                clk=>CLK,
                in1(7 downto 0)=>ALU_IN_1_DUMMY(7 downto 0),
                in2(7 downto 0)=>ALU_IN_2_DUMMY(7 downto 0),
                rst=>RST,
                n_flag=>open,
                result(7 downto 0)=>XLXN_114(7 downto 0),
                z_flag=>open);
   
   XLXI_10 : ID_EX_Buffer
      port map (clk=>CLK,
                data1_in(7 downto 0)=>RD_DATA_1_DUMMY(7 downto 0),
                data2_in(7 downto 0)=>RD_DATA_2_DUMMY(7 downto 0),
                FWD_IN(7 downto 0)=>FWD_DUMMY(7 downto 0),
                input_port_in(7 downto 0)=>XLXN_109(7 downto 0),
                opcode_in(3 downto 0)=>XLXN_47(3 downto 0),
                ra_in(1 downto 0)=>XLXN_94(1 downto 0),
                rb_in(1 downto 0)=>XLXN_93(1 downto 0),
                alu_mode_out(2 downto 0)=>ALU_MODE_DUMMY(2 downto 0),
                data1_out(7 downto 0)=>ALU_IN_1_DUMMY(7 downto 0),
                data2_out(7 downto 0)=>ALU_IN_2_DUMMY(7 downto 0),
                io_op=>XLXN_120,
                mem_op=>open,
                ra_out(1 downto 0)=>XLXN_103(1 downto 0),
                use_memory=>XLXN_115,
                wb_op=>WB_OP_INBETWEEN);
   
   XLXI_11 : register_file
      port map (clk=>CLK,
                rd_index1(1 downto 0)=>XLXN_94(1 downto 0),
                rd_index2(1 downto 0)=>XLXN_93(1 downto 0),
                rst=>RST,
                wr_data(7 downto 0)=>WB_DATA_OUT_DUMMY(7 downto 0),
                wr_enable=>WB_OP_DUMMY,
                wr_index(1 downto 0)=>RA_OUT_DUMMY(1 downto 0),
                rd_data1(7 downto 0)=>RD_DATA_1_DUMMY(7 downto 0),
                rd_data2(7 downto 0)=>RD_DATA_2_DUMMY(7 downto 0));
   
   XLXI_13 : IF_ID_Buffer
      port map (clk=>CLK,
                input_port(7 downto 0)=>INPUT_PORT(7 downto 0),
                instr_in(7 downto 0)=>INSTR(7 downto 0),
                input_port_out(7 downto 0)=>XLXN_109(7 downto 0),
                opcode(3 downto 0)=>XLXN_47(3 downto 0),
                ra(1 downto 0)=>XLXN_94(1 downto 0),
                rb(1 downto 0)=>XLXN_93(1 downto 0));
   
   XLXI_14 : EX_MEM_Buffer
      port map (clk=>CLK,
                io_op_in=>XLXN_120,
                ra_in(1 downto 0)=>XLXN_103(1 downto 0),
                result_in(7 downto 0)=>FWD_DUMMY(7 downto 0),
                wb_op_in=>WB_OP_INBETWEEN,
                output_port(7 downto 0)=>OUTPUT_PORT(7 downto 0),
                ra_out(1 downto 0)=>RA_OUT_DUMMY(1 downto 0),
                result_out(7 downto 0)=>WB_DATA_OUT_DUMMY(7 downto 0),
                wb_op_out=>WB_OP_DUMMY);
   
   XLXI_18 : MUX2_8bit
      port map (in0(7 downto 0)=>XLXN_114(7 downto 0),
                in1(7 downto 0)=>XLXI_18_in1_openSignal(7 downto 0),
                s=>XLXN_115,
                o(7 downto 0)=>FWD_DUMMY(7 downto 0));
   
end BEHAVIORAL;


