-- VHDL model - Mon Jan 17 15:01:05 2005

-----------------------------------------------------------
--     ROM Memory 
--  ----------------
--
--	Include this file in your project to add Read-Only memory
--	With pre-loaded data to your CPU.  Use CoreGen or edit
--	this file to create read-write memories.
--
--	There are two things to customize within this file:
--	  1) The mem_address_width constant below
--	  2) The data stored within the memory
--
--	For VHDL flows, cut and paste the following blocks into 
--	your top level to add this memory to your design.
--
--	1) to declare the component, paste the following 5 lines 
--	   in the "Architecture" before "begin"
--
--   component memp
--   PORT(
--      addr: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
--      dout: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
--   end component;
--
--	2) to instantiate the component, paste the following 2
--	   lines just after "begin"
--
--   MP: MEMP
--    	port map(addr => address_bus(7 downto 0), dout => data_bus);
--
----------------------------------------------------------
-- (c) Kaveh Jokar Deris and the University of Victoria, 2005
----------------------------------------------------------
library IEEE; 
use IEEE.STD_LOGIC_1164.all;
package prog_mem is
		--change this to change the size
	constant mem_address_width : integer := 8;	
	constant mem_depth : integer := 2**mem_address_width;
	type storage_array is array ((mem_depth-1) downto 0) of std_logic_vector(7 downto 0);
end package;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.prog_mem.all;

ENTITY Memory IS
	port (
	addr:  IN std_logic_VECTOR((mem_address_width - 1) downto 0);
	dout:  OUT std_logic_VECTOR(7 downto 0);
	dout2: OUT std_logic_vector(7 downto 0));
END Memory;

ARCHITECTURE CFG OF Memory IS
	constant storage : storage_array := (
	
	-- cut and past your program here
	--	be careful to make the distinction between decimal and hex values, especially
	--	Indexes in the first column, 
	--	below, are in decimal, whereas the data supplied is in hexadecimal
	

-- in this program, the loop will be executed 8 times, each time r0 is right shifted and r1 is left shifted
-- first 4 loops, output (add r0, r1), last 4 loops, output (nand r0,r1)
-- 1st loop: out 7F+FE
-- 2nd loop: out 3F+FC
-- 3rd loop: out 1F+F8
-- 4th loop: out 0F+F0
-- 5th loop: out 07 nand E0
-- 6th loop: out 03 nand C0
-- 7th loop: out 01 nand 80
-- 8th loop: out 00 nand 00



00 =>   x"00", -- NOP
01 =>   x"00", -- NOP
02 =>	x"30", -- #start# LOADIMM r0, 0XFF
03 =>	x"FF", -- 0xFF, the immediate value
04 =>	x"34", -- LOADIMM r1, 0X0c
05 =>	x"0c", -- 0x0C, the immediate value
06 =>	x"00", -- NOP
07 =>	x"00", -- NOP
08 =>	x"00", -- NOP
09 =>	x"00", -- NOP
10 =>	x"64", -- SHL r1
11 =>	x"00", -- NOP
12 =>	x"00", -- NOP
13 =>	x"00", -- NOP
14 =>	x"00", -- NOP
15 =>	x"51", -- SUB r0, r1
16 =>	x"38", -- LOADIMM r2, 0x03
17 =>	x"03", -- 0x03, the immediate value
18 =>	x"00", -- NOP
19 =>	x"00", -- NOP
20 =>	x"00", -- NOP
21 =>	x"00", -- NOP
22 =>	x"D6", -- MOV r1, r2
23 =>	x"00", -- NOP
24 =>	x"00", -- NOP
25 =>	x"00", -- NOP
26 =>	x"00", -- NOP
27 =>	x"B8", -- IN r2			-- Set the Input port switches on "0xC0" ("11000000")
28 =>	x"00", -- NOP
29 =>	x"00", -- NOP
30 =>	x"00", -- NOP
31 =>	x"00", -- NOP
32 =>	x"28", -- STORE r2, 0x70
33 =>	x"70", -- Effective Address
34 =>	x"49", -- ADD r2, r1
35 =>	x"00", -- NOP
36 =>	x"00", -- NOP
37 =>	x"00", -- NOP
38 =>	x"00", -- NOP
39 =>	x"88", -- NAND r2, r0
40 =>	x"00", -- NOP
41 =>	x"00", -- NOP
42 =>	x"00", -- NOP
43 =>	x"00", -- NOP
44 =>	x"C8", -- OUT r2			--At this point R[2] must be "00111100"
45 =>	x"10", -- LOAD r0, 0x70
46 =>	x"70", -- Effective Address
47 =>	x"00", -- NOP
48 =>	x"00", -- NOP
49 =>	x"00", -- NOP
50 =>	x"00", -- NOP
51 =>	x"70", -- SHR r0
52 =>	x"00", -- NOP
53 =>	x"00", -- NOP
54 =>	x"00", -- NOP
55 =>	x"00", -- NOP
56 =>	x"48", -- ADD r2, r0		--At this point negative flag must be set
57 =>	x"00", -- NOP
58 =>	x"00", -- NOP
59 =>	x"00", -- NOP
60 =>	x"00", -- NOP
61 =>	x"C8", -- OUT r2		--At this point R[2] have to be "10011100"
		

		
		--Leave this line in to make sure all unspecified values are set to 00.
		others => 	x"00"); 
begin

	--respond to ROM accesses
	dout  <= storage(conv_integer(addr));
	dout2 <= storage(conv_integer(addr+1));
END CFG;


