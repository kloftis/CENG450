--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1.03
--  \   \         Application : ISE
--  /   /         Filename : TB_NO_NOPS.vhw
-- /___/   /\     Timestamp : Tue Mar 04 16:58:05 2014
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TB_NO_NOPS
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

ENTITY TB_NO_NOPS IS
END TB_NO_NOPS;

ARCHITECTURE testbench_arch OF TB_NO_NOPS IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT Processor
        PORT (
            CLK : In std_logic;
            INPUT_PORT : In std_logic_vector (7 DownTo 0);
            INSTR : In std_logic_vector (7 DownTo 0);
            RST : In std_logic;
            ALU_IN_1 : Out std_logic_vector (7 DownTo 0);
            ALU_IN_2 : Out std_logic_vector (7 DownTo 0);
            ALU_MODE : Out std_logic_vector (2 DownTo 0);
            FWD : Out std_logic_vector (7 DownTo 0);
            OUTPUT_PORT : Out std_logic_vector (7 DownTo 0);
            RA_OUT : Out std_logic_vector (1 DownTo 0);
            RD_DATA_1 : Out std_logic_vector (7 DownTo 0);
            RD_DATA_2 : Out std_logic_vector (7 DownTo 0);
            WB_DATA_OUT : Out std_logic_vector (7 DownTo 0);
            WB_OP : Out std_logic
        );
    END COMPONENT;

    SIGNAL CLK : std_logic := '0';
    SIGNAL INPUT_PORT : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL INSTR : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL RST : std_logic := '0';
    SIGNAL ALU_IN_1 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL ALU_IN_2 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL ALU_MODE : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL FWD : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL OUTPUT_PORT : std_logic_vector (7 DownTo 0) := "00000000";
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
            CLK => CLK,
            INPUT_PORT => INPUT_PORT,
            INSTR => INSTR,
            RST => RST,
            ALU_IN_1 => ALU_IN_1,
            ALU_IN_2 => ALU_IN_2,
            ALU_MODE => ALU_MODE,
            FWD => FWD,
            OUTPUT_PORT => OUTPUT_PORT,
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
                -- -------------  Current Time:  385ns
                WAIT FOR 385 ns;
                RST <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  585ns
                WAIT FOR 200 ns;
                RST <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  985ns
                WAIT FOR 400 ns;
                INPUT_PORT <= "00000001";
                INSTR <= "10110000";
                -- -------------------------------------
                -- -------------  Current Time:  1185ns
                WAIT FOR 200 ns;
                INPUT_PORT <= "11111100";
                INSTR <= "10110100";
                -- -------------------------------------
                -- -------------  Current Time:  1385ns
                WAIT FOR 200 ns;
                INPUT_PORT <= "00001101";
                INSTR <= "10111000";
                -- -------------------------------------
                -- -------------  Current Time:  1585ns
                WAIT FOR 200 ns;
                INPUT_PORT <= "00000000";
                INSTR <= "01000110";
                -- -------------------------------------
                -- -------------  Current Time:  1785ns
                WAIT FOR 200 ns;
                INSTR <= "01010010";
                -- -------------------------------------
                -- -------------  Current Time:  1985ns
                WAIT FOR 200 ns;
                INSTR <= "10000100";
                -- -------------------------------------
                -- -------------  Current Time:  2185ns
                WAIT FOR 200 ns;
                INSTR <= "01100100";
                -- -------------------------------------
                -- -------------  Current Time:  2385ns
                WAIT FOR 200 ns;
                INSTR <= "11000100";
                -- -------------------------------------
                -- -------------  Current Time:  2585ns
                WAIT FOR 200 ns;
                INSTR <= "11000000";
                -- -------------------------------------
                -- -------------  Current Time:  2785ns
                WAIT FOR 200 ns;
                INSTR <= "00000000";
                -- -------------------------------------
                WAIT FOR 7415 ns;

            END PROCESS;

    END testbench_arch;

