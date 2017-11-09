--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1.03
--  \   \         Application : ISE
--  /   /         Filename : PC_TB.vhw
-- /___/   /\     Timestamp : Tue Mar 11 14:59:26 2014
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: PC_TB
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

ENTITY PC_TB IS
END PC_TB;

ARCHITECTURE testbench_arch OF PC_TB IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT Processor
        PORT (
            BR : In std_logic;
            CLK : In std_logic;
            DIS : In std_logic;
            EN : In std_logic;
            INPUT_PORT : In std_logic_vector (7 DownTo 0);
            INSTR : In std_logic_vector (7 DownTo 0);
            LR_goto : In std_logic;
            LR_rtrn : In std_logic;
            PV_IN : In std_logic_vector (7 DownTo 0);
            RST : In std_logic;
            ALU_IN_1 : Out std_logic_vector (7 DownTo 0);
            ALU_IN_2 : Out std_logic_vector (7 DownTo 0);
            ALU_MODE : Out std_logic_vector (2 DownTo 0);
            FWD : Out std_logic_vector (7 DownTo 0);
            OUTPUT_PORT : Out std_logic_vector (7 DownTo 0);
            PC_OUT : Out std_logic_vector (7 DownTo 0);
            RA_OUT : Out std_logic_vector (1 DownTo 0);
            RD_DATA_1 : Out std_logic_vector (7 DownTo 0);
            RD_DATA_2 : Out std_logic_vector (7 DownTo 0);
            WB_DATA_OUT : Out std_logic_vector (7 DownTo 0);
            WB_OP : Out std_logic
        );
    END COMPONENT;

    SIGNAL BR : std_logic := '0';
    SIGNAL CLK : std_logic := '0';
    SIGNAL DIS : std_logic := '0';
    SIGNAL EN : std_logic := '0';
    SIGNAL INPUT_PORT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL INSTR : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL LR_goto : std_logic := '0';
    SIGNAL LR_rtrn : std_logic := '0';
    SIGNAL PV_IN : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL RST : std_logic := '0';
    SIGNAL ALU_IN_1 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL ALU_IN_2 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL ALU_MODE : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL FWD : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL OUTPUT_PORT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL PC_OUT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL RA_OUT : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL RD_DATA_1 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL RD_DATA_2 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL WB_DATA_OUT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL WB_OP : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : Processor
        PORT MAP (
            BR => BR,
            CLK => CLK,
            DIS => DIS,
            EN => EN,
            INPUT_PORT => INPUT_PORT,
            INSTR => INSTR,
            LR_goto => LR_goto,
            LR_rtrn => LR_rtrn,
            PV_IN => PV_IN,
            RST => RST,
            ALU_IN_1 => ALU_IN_1,
            ALU_IN_2 => ALU_IN_2,
            ALU_MODE => ALU_MODE,
            FWD => FWD,
            OUTPUT_PORT => OUTPUT_PORT,
            PC_OUT => PC_OUT,
            RA_OUT => RA_OUT,
            RD_DATA_1 => RD_DATA_1,
            RD_DATA_2 => RD_DATA_2,
            WB_DATA_OUT => WB_DATA_OUT,
            WB_OP => WB_OP
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
                -- -------------  Current Time:  785ns
                WAIT FOR 785 ns;
                RST <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  985ns
                WAIT FOR 200 ns;
                RST <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1785ns
                WAIT FOR 800 ns;
                DIS <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2385ns
                WAIT FOR 600 ns;
                BR <= '1';
                EN <= '1';
                PV_IN <= "10110100";
                -- -------------------------------------
                -- -------------  Current Time:  2585ns
                WAIT FOR 200 ns;
                BR <= '0';
                DIS <= '0';
                EN <= '0';
                PV_IN <= "00000000";
                -- -------------------------------------
                -- -------------  Current Time:  3585ns
                WAIT FOR 1000 ns;
                DIS <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4185ns
                WAIT FOR 600 ns;
                BR <= '1';
                EN <= '1';
                LR_goto <= '1';
                PV_IN <= "01111010";
                -- -------------------------------------
                -- -------------  Current Time:  4385ns
                WAIT FOR 200 ns;
                BR <= '0';
                DIS <= '0';
                EN <= '0';
                LR_goto <= '0';
                PV_IN <= "00010000";
                -- -------------------------------------
                -- -------------  Current Time:  4785ns
                WAIT FOR 400 ns;
                PV_IN <= "00000000";
                -- -------------------------------------
                -- -------------  Current Time:  5385ns
                WAIT FOR 600 ns;
                BR <= '1';
                LR_rtrn <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5585ns
                WAIT FOR 200 ns;
                BR <= '0';
                LR_rtrn <= '0';
                -- -------------------------------------
                WAIT FOR 4615 ns;

            END PROCESS;

    END testbench_arch;

