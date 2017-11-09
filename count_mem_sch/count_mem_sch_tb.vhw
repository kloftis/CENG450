--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1.03
--  \   \         Application : ISE
--  /   /         Filename : count_mem_sch_tb.vhw
-- /___/   /\     Timestamp : Tue Jan 28 15:43:20 2014
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: count_mem_sch_tb
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

ENTITY count_mem_sch_tb IS
END count_mem_sch_tb;

ARCHITECTURE testbench_arch OF count_mem_sch_tb IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT count_mem
        PORT (
            CE : In std_logic;
            CLK : In std_logic;
            RST : In std_logic;
            OUT_MEM : Out std_logic_vector (7 DownTo 0)
        );
    END COMPONENT;

    SIGNAL CE : std_logic := '0';
    SIGNAL CLK : std_logic := '0';
    SIGNAL RST : std_logic := '0';
    SIGNAL OUT_MEM : std_logic_vector (7 DownTo 0) := "00000000";

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : count_mem
        PORT MAP (
            CE => CE,
            CLK => CLK,
            RST => RST,
            OUT_MEM => OUT_MEM
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
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                CE <= '1';
                RST <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  585ns
                WAIT FOR 485 ns;
                RST <= '0';
                -- -------------------------------------
                WAIT FOR 9615 ns;

            END PROCESS;

    END testbench_arch;

