--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1.03
--  \   \         Application : ISE
--  /   /         Filename : PROC_TB.vhw
-- /___/   /\     Timestamp : Tue Mar 11 17:49:25 2014
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: PROC_TB
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

ENTITY PROC_TB IS
END PROC_TB;

ARCHITECTURE testbench_arch OF PROC_TB IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT Processor
        PORT (
            CLK : In std_logic;
            INPUT_PORT : In std_logic_vector (7 DownTo 0);
            RST : In std_logic;
            ALU_MODE : Out std_logic_vector (2 DownTo 0);
            DATA_1 : Out std_logic_vector (7 DownTo 0);
            DATA_2 : Out std_logic_vector (7 DownTo 0);
            EX_RESULT : Out std_logic_vector (7 DownTo 0);
            INSTR : Out std_logic_vector (7 DownTo 0);
            OPCODE : Out std_logic_vector (3 DownTo 0);
            OUTPUT_PORT : Out std_logic_vector (7 DownTo 0);
            PC_BR : Out std_logic;
            PC_DIS : Out std_logic;
            PC_EN : Out std_logic;
            PC_LR_GOTO : Out std_logic;
            PC_LR_RTRN : Out std_logic;
            PC_OUT : Out std_logic_vector (7 DownTo 0);
            ra_in : Out std_logic_vector (1 DownTo 0);
            REG_RD_1 : Out std_logic_vector (7 DownTo 0);
            REG_RD_2 : Out std_logic_vector (7 DownTo 0);
            WB_DATA : Out std_logic_vector (7 DownTo 0);
            WB_EN : Out std_logic;
            WB_REG : Out std_logic_vector (1 DownTo 0)
        );
    END COMPONENT;

    SIGNAL CLK : std_logic := '0';
    SIGNAL INPUT_PORT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL RST : std_logic := '0';
    SIGNAL ALU_MODE : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL DATA_1 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL DATA_2 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL EX_RESULT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL INSTR : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL OPCODE : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL OUTPUT_PORT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL PC_BR : std_logic := '0';
    SIGNAL PC_DIS : std_logic := '0';
    SIGNAL PC_EN : std_logic := '0';
    SIGNAL PC_LR_GOTO : std_logic := '0';
    SIGNAL PC_LR_RTRN : std_logic := '0';
    SIGNAL PC_OUT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL ra_in : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL REG_RD_1 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL REG_RD_2 : std_logic_vector (7 DownTo 0) := "00000000";
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
            INPUT_PORT => INPUT_PORT,
            RST => RST,
            ALU_MODE => ALU_MODE,
            DATA_1 => DATA_1,
            DATA_2 => DATA_2,
            EX_RESULT => EX_RESULT,
            INSTR => INSTR,
            OPCODE => OPCODE,
            OUTPUT_PORT => OUTPUT_PORT,
            PC_BR => PC_BR,
            PC_DIS => PC_DIS,
            PC_EN => PC_EN,
            PC_LR_GOTO => PC_LR_GOTO,
            PC_LR_RTRN => PC_LR_RTRN,
            PC_OUT => PC_OUT,
            ra_in => ra_in,
            REG_RD_1 => REG_RD_1,
            REG_RD_2 => REG_RD_2,
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
                -- -------------  Current Time:  785ns
                WAIT FOR 400 ns;
                RST <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  985ns
                WAIT FOR 200 ns;
                INPUT_PORT <= "00000001";
                -- -------------------------------------
                -- -------------  Current Time:  1185ns
                WAIT FOR 200 ns;
                INPUT_PORT <= "11111100";
                -- -------------------------------------
                -- -------------  Current Time:  1385ns
                WAIT FOR 200 ns;
                INPUT_PORT <= "00001101";
                -- -------------------------------------
                WAIT FOR 18815 ns;

            END PROCESS;

    END testbench_arch;

