--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.4
--  \   \         Application : sch2hdl
--  /   /         Filename : Processor.vhf
-- /___/   /\     Timestamp : 06/02/2014 16:08:15
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl "M:/CENG 450/CENG 450 Final/450Processor/Processor.vhf" -w "M:/CENG 450/CENG 450 Final/450Processor/Processor.sch"
--Design Name: Processor
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Processor is
   port ( CLK            : in    std_logic; 
          IO_INPUT_PORT  : in    std_logic_vector (7 downto 0); 
          RST            : in    std_logic; 
          EX_ALU_MODE    : out   std_logic_vector (2 downto 0); 
          EX_ALU_RESULT  : out   std_logic_vector (7 downto 0); 
          EX_DATA_1      : out   std_logic_vector (7 downto 0); 
          EX_DATA_2      : out   std_logic_vector (7 downto 0); 
          EX_MEM_ADDR    : out   std_logic_vector (7 downto 0); 
          EX_MEM_RD_DATA : out   std_logic_vector (7 downto 0); 
          EX_MEM_WR_EN   : out   std_logic; 
          EX_RESULT      : out   std_logic_vector (7 downto 0); 
          EX_USE_MEM     : out   std_logic; 
          ID_OPCODE      : out   std_logic_vector (3 downto 0); 
          ID_RA          : out   std_logic_vector (1 downto 0); 
          ID_REG_RD_1    : out   std_logic_vector (7 downto 0); 
          ID_REG_RD_2    : out   std_logic_vector (7 downto 0); 
          IF_INSTR       : out   std_logic_vector (7 downto 0); 
          IF_INSTR2      : out   std_logic_vector (7 downto 0); 
          IO_OUTPUT_PORT : out   std_logic_vector (7 downto 0); 
          PC_BR          : out   std_logic; 
          PC_DIS         : out   std_logic; 
          PC_EN          : out   std_logic; 
          PC_LR_GOTO     : out   std_logic; 
          PC_LR_RTRN     : out   std_logic; 
          PC_OUT         : out   std_logic_vector (7 downto 0); 
          WB_DATA        : out   std_logic_vector (7 downto 0); 
          WB_EN          : out   std_logic; 
          WB_REG         : out   std_logic_vector (1 downto 0));
end Processor;

architecture BEHAVIORAL of Processor is
   signal WB_OP_INBETWEEN      : std_logic;
   signal XLXN_109             : std_logic_vector (7 downto 0);
   signal XLXN_120             : std_logic;
   signal XLXN_199             : std_logic_vector (1 downto 0);
   signal XLXN_208             : std_logic;
   signal XLXN_209             : std_logic;
   signal XLXN_223             : std_logic_vector (1 downto 0);
   signal XLXN_226             : std_logic_vector (7 downto 0);
   signal XLXN_231             : std_logic;
   signal EX_ALU_RESULT_DUMMY  : std_logic_vector (7 downto 0);
   signal PC_BR_DUMMY          : std_logic;
   signal ID_OPCODE_DUMMY      : std_logic_vector (3 downto 0);
   signal IF_INSTR2_DUMMY      : std_logic_vector (7 downto 0);
   signal EX_DATA_1_DUMMY      : std_logic_vector (7 downto 0);
   signal EX_DATA_2_DUMMY      : std_logic_vector (7 downto 0);
   signal EX_MEM_ADDR_DUMMY    : std_logic_vector (7 downto 0);
   signal EX_RESULT_DUMMY      : std_logic_vector (7 downto 0);
   signal ID_RA_DUMMY          : std_logic_vector (1 downto 0);
   signal PC_LR_GOTO_DUMMY     : std_logic;
   signal ID_REG_RD_1_DUMMY    : std_logic_vector (7 downto 0);
   signal ID_REG_RD_2_DUMMY    : std_logic_vector (7 downto 0);
   signal PC_LR_RTRN_DUMMY     : std_logic;
   signal EX_MEM_WR_EN_DUMMY   : std_logic;
   signal WB_REG_DUMMY         : std_logic_vector (1 downto 0);
   signal PC_DIS_DUMMY         : std_logic;
   signal PC_EN_DUMMY          : std_logic;
   signal PC_OUT_DUMMY         : std_logic_vector (7 downto 0);
   signal EX_MEM_RD_DATA_DUMMY : std_logic_vector (7 downto 0);
   signal EX_ALU_MODE_DUMMY    : std_logic_vector (2 downto 0);
   signal IF_INSTR_DUMMY       : std_logic_vector (7 downto 0);
   signal EX_USE_MEM_DUMMY     : std_logic;
   signal WB_DATA_DUMMY        : std_logic_vector (7 downto 0);
   signal WB_EN_DUMMY          : std_logic;
   component ALU
      port ( in1      : in    std_logic_vector (7 downto 0); 
             in2      : in    std_logic_vector (7 downto 0); 
             alu_mode : in    std_logic_vector (2 downto 0); 
             z_flag   : out   std_logic; 
             n_flag   : out   std_logic; 
             rst      : in    std_logic; 
             clk      : in    std_logic; 
             result   : out   std_logic_vector (7 downto 0));
   end component;
   
   component ID_EX_Buffer
      port ( z_in          : in    std_logic; 
             n_in          : in    std_logic; 
             clk           : in    std_logic; 
             rst           : in    std_logic; 
             data1_in      : in    std_logic_vector (7 downto 0); 
             data2_in      : in    std_logic_vector (7 downto 0); 
             ra_in         : in    std_logic_vector (1 downto 0); 
             rb_in         : in    std_logic_vector (1 downto 0); 
             FWD_IN        : in    std_logic_vector (7 downto 0); 
             io_op         : out   std_logic; 
             wb_op         : out   std_logic; 
             br            : out   std_logic; 
             lr_goto       : out   std_logic; 
             pc_en         : out   std_logic; 
             mem_op        : out   std_logic; 
             use_memory    : out   std_logic; 
             data1_out     : out   std_logic_vector (7 downto 0); 
             data2_out     : out   std_logic_vector (7 downto 0); 
             ra_out        : out   std_logic_vector (1 downto 0); 
             alu_mode_out  : out   std_logic_vector (2 downto 0); 
             input_port_in : in    std_logic_vector (7 downto 0); 
             opcode_in     : in    std_logic_vector (3 downto 0); 
             mem_in        : in    std_logic_vector (7 downto 0); 
             mem_addr_out  : out   std_logic_vector (7 downto 0));
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
             load_in        : in    std_logic_vector (7 downto 0); 
             input_port     : in    std_logic_vector (7 downto 0); 
             lr_rtrn        : out   std_logic; 
             ra             : out   std_logic_vector (1 downto 0); 
             rb             : out   std_logic_vector (1 downto 0); 
             opcode         : out   std_logic_vector (3 downto 0); 
             input_port_out : out   std_logic_vector (7 downto 0); 
             mem_out        : out   std_logic_vector (7 downto 0); 
             DIS            : out   std_logic; 
             pc_incr_2      : out   std_logic);
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
   
   component PC
      port ( EN      : in    std_logic; 
             DIS     : in    std_logic; 
             BR      : in    std_logic; 
             LR_goto : in    std_logic; 
             LR_rtrn : in    std_logic; 
             rst     : in    std_logic; 
             PC_IN   : in    std_logic_vector (7 downto 0); 
             PC_OUT  : out   std_logic_vector (7 downto 0); 
             clk     : in    std_logic; 
             incr_2  : in    std_logic);
   end component;
   
   component Memory
      port ( addr  : in    std_logic_vector (7 downto 0); 
             dout  : out   std_logic_vector (7 downto 0); 
             dout2 : out   std_logic_vector (7 downto 0));
   end component;
   
   component RAM
      port ( rst       : in    std_logic; 
             clk       : in    std_logic; 
             addr      : in    std_logic_vector (7 downto 0); 
             wr_enable : in    std_logic; 
             rd_data   : out   std_logic_vector (7 downto 0); 
             wr_data   : in    std_logic_vector (7 downto 0));
   end component;
   
begin
   EX_ALU_MODE(2 downto 0) <= EX_ALU_MODE_DUMMY(2 downto 0);
   EX_ALU_RESULT(7 downto 0) <= EX_ALU_RESULT_DUMMY(7 downto 0);
   EX_DATA_1(7 downto 0) <= EX_DATA_1_DUMMY(7 downto 0);
   EX_DATA_2(7 downto 0) <= EX_DATA_2_DUMMY(7 downto 0);
   EX_MEM_ADDR(7 downto 0) <= EX_MEM_ADDR_DUMMY(7 downto 0);
   EX_MEM_RD_DATA(7 downto 0) <= EX_MEM_RD_DATA_DUMMY(7 downto 0);
   EX_MEM_WR_EN <= EX_MEM_WR_EN_DUMMY;
   EX_RESULT(7 downto 0) <= EX_RESULT_DUMMY(7 downto 0);
   EX_USE_MEM <= EX_USE_MEM_DUMMY;
   ID_OPCODE(3 downto 0) <= ID_OPCODE_DUMMY(3 downto 0);
   ID_RA(1 downto 0) <= ID_RA_DUMMY(1 downto 0);
   ID_REG_RD_1(7 downto 0) <= ID_REG_RD_1_DUMMY(7 downto 0);
   ID_REG_RD_2(7 downto 0) <= ID_REG_RD_2_DUMMY(7 downto 0);
   IF_INSTR(7 downto 0) <= IF_INSTR_DUMMY(7 downto 0);
   IF_INSTR2(7 downto 0) <= IF_INSTR2_DUMMY(7 downto 0);
   PC_BR <= PC_BR_DUMMY;
   PC_DIS <= PC_DIS_DUMMY;
   PC_EN <= PC_EN_DUMMY;
   PC_LR_GOTO <= PC_LR_GOTO_DUMMY;
   PC_LR_RTRN <= PC_LR_RTRN_DUMMY;
   PC_OUT(7 downto 0) <= PC_OUT_DUMMY(7 downto 0);
   WB_DATA(7 downto 0) <= WB_DATA_DUMMY(7 downto 0);
   WB_EN <= WB_EN_DUMMY;
   WB_REG(1 downto 0) <= WB_REG_DUMMY(1 downto 0);
   XLXI_9 : ALU
      port map (alu_mode(2 downto 0)=>EX_ALU_MODE_DUMMY(2 downto 0),
                clk=>CLK,
                in1(7 downto 0)=>EX_DATA_1_DUMMY(7 downto 0),
                in2(7 downto 0)=>EX_DATA_2_DUMMY(7 downto 0),
                rst=>RST,
                n_flag=>XLXN_209,
                result(7 downto 0)=>EX_ALU_RESULT_DUMMY(7 downto 0),
                z_flag=>XLXN_208);
   
   XLXI_10 : ID_EX_Buffer
      port map (clk=>CLK,
                data1_in(7 downto 0)=>ID_REG_RD_1_DUMMY(7 downto 0),
                data2_in(7 downto 0)=>ID_REG_RD_2_DUMMY(7 downto 0),
                FWD_IN(7 downto 0)=>EX_RESULT_DUMMY(7 downto 0),
                input_port_in(7 downto 0)=>XLXN_109(7 downto 0),
                mem_in(7 downto 0)=>XLXN_226(7 downto 0),
                n_in=>XLXN_209,
                opcode_in(3 downto 0)=>ID_OPCODE_DUMMY(3 downto 0),
                ra_in(1 downto 0)=>ID_RA_DUMMY(1 downto 0),
                rb_in(1 downto 0)=>XLXN_199(1 downto 0),
                rst=>RST,
                z_in=>XLXN_208,
                alu_mode_out(2 downto 0)=>EX_ALU_MODE_DUMMY(2 downto 0),
                br=>PC_BR_DUMMY,
                data1_out(7 downto 0)=>EX_DATA_1_DUMMY(7 downto 0),
                data2_out(7 downto 0)=>EX_DATA_2_DUMMY(7 downto 0),
                io_op=>XLXN_120,
                lr_goto=>PC_LR_GOTO_DUMMY,
                mem_addr_out(7 downto 0)=>EX_MEM_ADDR_DUMMY(7 downto 0),
                mem_op=>EX_MEM_WR_EN_DUMMY,
                pc_en=>PC_EN_DUMMY,
                ra_out(1 downto 0)=>XLXN_223(1 downto 0),
                use_memory=>EX_USE_MEM_DUMMY,
                wb_op=>WB_OP_INBETWEEN);
   
   XLXI_11 : register_file
      port map (clk=>CLK,
                rd_index1(1 downto 0)=>ID_RA_DUMMY(1 downto 0),
                rd_index2(1 downto 0)=>XLXN_199(1 downto 0),
                rst=>RST,
                wr_data(7 downto 0)=>WB_DATA_DUMMY(7 downto 0),
                wr_enable=>WB_EN_DUMMY,
                wr_index(1 downto 0)=>WB_REG_DUMMY(1 downto 0),
                rd_data1(7 downto 0)=>ID_REG_RD_1_DUMMY(7 downto 0),
                rd_data2(7 downto 0)=>ID_REG_RD_2_DUMMY(7 downto 0));
   
   XLXI_13 : IF_ID_Buffer
      port map (clk=>CLK,
                input_port(7 downto 0)=>IO_INPUT_PORT(7 downto 0),
                instr_in(7 downto 0)=>IF_INSTR_DUMMY(7 downto 0),
                load_in(7 downto 0)=>IF_INSTR2_DUMMY(7 downto 0),
                DIS=>PC_DIS_DUMMY,
                input_port_out(7 downto 0)=>XLXN_109(7 downto 0),
                lr_rtrn=>PC_LR_RTRN_DUMMY,
                mem_out(7 downto 0)=>XLXN_226(7 downto 0),
                opcode(3 downto 0)=>ID_OPCODE_DUMMY(3 downto 0),
                pc_incr_2=>XLXN_231,
                ra(1 downto 0)=>ID_RA_DUMMY(1 downto 0),
                rb(1 downto 0)=>XLXN_199(1 downto 0));
   
   XLXI_14 : EX_MEM_Buffer
      port map (clk=>CLK,
                io_op_in=>XLXN_120,
                ra_in(1 downto 0)=>XLXN_223(1 downto 0),
                result_in(7 downto 0)=>EX_RESULT_DUMMY(7 downto 0),
                wb_op_in=>WB_OP_INBETWEEN,
                output_port(7 downto 0)=>IO_OUTPUT_PORT(7 downto 0),
                ra_out(1 downto 0)=>WB_REG_DUMMY(1 downto 0),
                result_out(7 downto 0)=>WB_DATA_DUMMY(7 downto 0),
                wb_op_out=>WB_EN_DUMMY);
   
   XLXI_18 : MUX2_8bit
      port map (in0(7 downto 0)=>EX_ALU_RESULT_DUMMY(7 downto 0),
                in1(7 downto 0)=>EX_MEM_RD_DATA_DUMMY(7 downto 0),
                s=>EX_USE_MEM_DUMMY,
                o(7 downto 0)=>EX_RESULT_DUMMY(7 downto 0));
   
   XLXI_19 : PC
      port map (BR=>PC_BR_DUMMY,
                clk=>CLK,
                DIS=>PC_DIS_DUMMY,
                EN=>PC_EN_DUMMY,
                incr_2=>XLXN_231,
                LR_goto=>PC_LR_GOTO_DUMMY,
                LR_rtrn=>PC_LR_RTRN_DUMMY,
                PC_IN(7 downto 0)=>EX_DATA_2_DUMMY(7 downto 0),
                rst=>RST,
                PC_OUT(7 downto 0)=>PC_OUT_DUMMY(7 downto 0));
   
   XLXI_20 : Memory
      port map (addr(7 downto 0)=>PC_OUT_DUMMY(7 downto 0),
                dout(7 downto 0)=>IF_INSTR_DUMMY(7 downto 0),
                dout2(7 downto 0)=>IF_INSTR2_DUMMY(7 downto 0));
   
   XLXI_21 : RAM
      port map (addr(7 downto 0)=>EX_MEM_ADDR_DUMMY(7 downto 0),
                clk=>CLK,
                rst=>RST,
                wr_data(7 downto 0)=>EX_DATA_1_DUMMY(7 downto 0),
                wr_enable=>EX_MEM_WR_EN_DUMMY,
                rd_data(7 downto 0)=>EX_MEM_RD_DATA_DUMMY(7 downto 0));
   
end BEHAVIORAL;


