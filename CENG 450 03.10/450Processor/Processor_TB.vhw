--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1.03
--  \   \         Application : ISE
--  /   /         Filename : Processor_TB.vhw
-- /___/   /\     Timestamp : Tue Feb 25 15:26:03 2014
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: Processor_TB
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

ENTITY Processor_TB IS
END Processor_TB;

ARCHITECTURE testbench_arch OF Processor_TB IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT Processor
        PORT (
            CLK : In std_logic;
            INSTR : In std_logic_vector (7 DownTo 0);
            RST : In std_logic;
            ALU_IN_1 : Out std_logic_vector (7 DownTo 0);
            ALU_IN_2 : Out std_logic_vector (7 DownTo 0);
            ALU_MODE : Out std_logic_vector (2 DownTo 0);
            ALU_Out : Out std_logic_vector (7 DownTo 0);
            Output_Main : Out std_logic_vector (7 DownTo 0)
        );
    END COMPONENT;

    SIGNAL CLK : std_logic := '0';
    SIGNAL INSTR : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL RST : std_logic := '0';
    SIGNAL ALU_IN_1 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL ALU_IN_2 : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL ALU_MODE : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL ALU_Out : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL Output_Main : std_logic_vector (7 DownTo 0) := "00000000";

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 200 ns;

    BEGIN
        UUT : Processor
        PORT MAP (
            CLK => CLK,
            INSTR => INSTR,
            RST => RST,
            ALU_IN_1 => ALU_IN_1,
            ALU_IN_2 => ALU_IN_2,
            ALU_MODE => ALU_MODE,
            ALU_Out => ALU_Out,
            Output_Main => Output_Main
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
                -- -------------  Current Time:  285ns
                WAIT FOR 285 ns;
                RST <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  485ns
                WAIT FOR 200 ns;
                RST <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  685ns
                WAIT FOR 200 ns;
                INSTR <= "01000110";
                -- -------------------------------------
                -- -------------  Current Time:  885ns
                WAIT FOR 200 ns;
                INSTR <= "00000000";
                -- -------------------------------------
                -- -------------  Current Time:  1085ns
                WAIT FOR 200 ns;
                INSTR <= "01010011";
                -- -------------------------------------
                -- -------------  Current Time:  1285ns
                WAIT FOR 200 ns;
                INSTR <= "00000000";
                -- -------------------------------------
                -- -------------  Current Time:  2085ns
                WAIT FOR 800 ns;
                INSTR <= "10000100";
                -- -------------------------------------
                -- -------------  Current Time:  2285ns
                WAIT FOR 200 ns;
                INSTR <= "00000000";
                -- -------------------------------------
                -- -------------  Current Time:  3085ns
                WAIT FOR 800 ns;
                INSTR <= "01100100";
                -- -------------------------------------
                -- -------------  Current Time:  3285ns
                WAIT FOR 200 ns;
                INSTR <= "00000000";
                -- -------------------------------------
                WAIT FOR 6915 ns;

            END PROCESS;

    END testbench_arch;

