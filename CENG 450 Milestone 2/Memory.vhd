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
	addr: IN std_logic_VECTOR((mem_address_width - 1) downto 0);
	dout: OUT std_logic_VECTOR(7 downto 0));
END Memory;

ARCHITECTURE CFG OF Memory IS
	constant storage : storage_array := (
	
	-- cut and past your program here
	--	be careful to make the distinction between decimal and hex values, especially
	--	Indexes in the first column, 
	--	below, are in decimal, whereas the data supplied is in hexadecimal
	
		0 	=>	x"00",
		1	=>	x"B0",
		2	=> x"B4",
		3	=>	x"B8",
		4	=>	x"46", 
		5	=>	x"52", 
		6	=>	x"84", 
		7	=>	x"64", 
		8	=>	x"C4", 
		9	=>	x"C0", 
		10	=>	x"00",
		11	=>	x"92", 
		12	=>	x"CC",
		13	=>	x"58",
		14	=>	x"9A",
		15	=>	x"C0",
		
		16	=>	x"41",
		17	=>	x"9A",
		18	=>	x"C0", 			
		19	=> x"00", 
		20	=>	x"00", 
		21	=>	x"00", 
		22	=>	x"00", 
		23	=>	x"00", 
		24	=>	x"00", 
		25	=>	x"4A", 
		26	=>	x"9E", 
		27	=>	x"C4",
		28	=>	x"00", 
		29	=>	x"00",
		30	=>	x"00",
		31	=>	x"00",
		
		50 => x"46",
		51 => x"E0",
		
		--Leave this line in to make sure all unspecified values are set to 00.
		others => 	x"00"); 
begin

	--respond to ROM accesses
	dout <= storage(conv_integer(addr));		
END CFG;


