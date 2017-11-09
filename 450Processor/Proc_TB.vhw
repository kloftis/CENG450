--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1.03
--  \   \         Application : ISE
--  /   /         Filename : Proc_TB.vhw
-- /___/   /\     Timestamp : Fri Mar 21 13:34:31 2014
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: Proc_TB
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY Proc_TB IS
END Proc_TB;

ARCHITECTURE testbench_arch OF Proc_TB IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT Processor
        PORT (
            CLK : In std_logic;
            IO_INPUT_PORT : In std_logic_vector (7 DownTo 0);
            RST : In std_logic;
            EX_ALU_MODE : Out std_logic_vector (2 DownTo 0);
            EX_ALU_RESULT : Out std_logic_vector (7 DownTo 0);
            EX_DATA_1 : Out std_logic_vector (7 DownTo 0);
            EX_DATA_2 : Out std_logic_vector (7 DownTo 0);
            EX_MEM_ADDR : Out std_logic_vector (7 DownTo 0);
            EX_MEM_RD_DATA : Out std_logic_vector (7 DownTo 0);
            EX_MEM_WR_EN : Out std_logic;
            EX_RESULT : Out std_logic_vector (7 DownTo 0);
            EX_USE_MEM : Out std_logic;
            ID_OPCODE : Out std_logic_vector (3 DownTo 0);
            ID_RA : Out std_logic_vector (1 DownTo 0);
            ID_REG_RD_1 : Out std_logic_vector (7 DownTo 0);
            ID_REG_RD_2 : Out std_logic_vector (7 DownTo 0);
            IF_INSTR : Out std_logic_vector (7 DownTo 0);
            IF_INSTR2 : Out std_logic_vector (7 DownTo 0);
            IO_OUTPUT_PORT : Out std_logic_vector (7 DownTo 0);
            PC_BR : Out std_logic;
            PC_DIS : Out std_logic;
            PC_EN : Out std_logic;
            PC_LR_GOTO : Out std_logic;
            PC_LR_RTRN : Out std_logic;
            PC_OUT : Out std_logic_vector (7 DownTo 0);
            WB_DATA : Out std_logic_vector (7 DownTo 0);
            WB_EN : Out std_logic;
            WB_REG : Out std_logic_vector (1 DownTo 0)
        );
    END COMPONENT;

    SIGNAL CLK : std_logic := '0';
    SIGNAL IO_INPUT_PORT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL RST : std_logic := '0';
    SIGNAL EX_ALU_MODE : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL EX_ALU_RESULT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL EX_DATA_1 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL EX_DATA_2 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL EX_MEM_ADDR : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL EX_MEM_RD_DATA : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL EX_MEM_WR_EN : std_logic := '0';
    SIGNAL EX_RESULT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL EX_USE_MEM : std_logic := '0';
    SIGNAL ID_OPCODE : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL ID_RA : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL ID_REG_RD_1 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL ID_REG_RD_2 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL IF_INSTR : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL IF_INSTR2 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL IO_OUTPUT_PORT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL PC_BR : std_logic := '0';
    SIGNAL PC_DIS : std_logic := '0';
    SIGNAL PC_EN : std_logic := '0';
    SIGNAL PC_LR_GOTO : std_logic := '0';
    SIGNAL PC_LR_RTRN : std_logic := '0';
    SIGNAL PC_OUT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL WB_DATA : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL WB_EN : std_logic := '0';
    SIGNAL WB_REG : std_logic_vector (1 DownTo 0) := "00";

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : Processor
        PORT MAP (
            CLK => CLK,
            IO_INPUT_PORT => IO_INPUT_PORT,
            RST => RST,
            EX_ALU_MODE => EX_ALU_MODE,
            EX_ALU_RESULT => EX_ALU_RESULT,
            EX_DATA_1 => EX_DATA_1,
            EX_DATA_2 => EX_DATA_2,
            EX_MEM_ADDR => EX_MEM_ADDR,
            EX_MEM_RD_DATA => EX_MEM_RD_DATA,
            EX_MEM_WR_EN => EX_MEM_WR_EN,
            EX_RESULT => EX_RESULT,
            EX_USE_MEM => EX_USE_MEM,
            ID_OPCODE => ID_OPCODE,
            ID_RA => ID_RA,
            ID_REG_RD_1 => ID_REG_RD_1,
            ID_REG_RD_2 => ID_REG_RD_2,
            IF_INSTR => IF_INSTR,
            IF_INSTR2 => IF_INSTR2,
            IO_OUTPUT_PORT => IO_OUTPUT_PORT,
            PC_BR => PC_BR,
            PC_DIS => PC_DIS,
            PC_EN => PC_EN,
            PC_LR_GOTO => PC_LR_GOTO,
            PC_LR_RTRN => PC_LR_RTRN,
            PC_OUT => PC_OUT,
            WB_DATA => WB_DATA,
            WB_EN => WB_EN,
            WB_REG => WB_REG
        );

        PROCESS    -- clock process for CLK
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLK <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLK <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  385ns
                WAIT FOR 385 ns;
                RST <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  585ns
                WAIT FOR 200 ns;
                RST <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  785ns
                WAIT FOR 200 ns;
                IO_INPUT_PORT <= "11000000";
                -- -------------------------------------
                WAIT FOR 49415 ns;

            END PROCESS;

    END testbench_arch;

