----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:32:36 03/18/2014 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
    Port ( addr      : in  STD_LOGIC_VECTOR (7 downto 0);
           wr_enable : in  STD_LOGIC;
           wr_data   : in  STD_LOGIC_VECTOR (7 downto 0);
           rst       : in  STD_LOGIC;
			  clk			: in  STD_LOGIC;
           rd_data   : out STD_LOGIC_VECTOR (7 downto 0));
end RAM;

architecture Behavioral of RAM is

type mem_array is array  (integer range 0 to 255) of std_logic_vector(7 downto 0);
--internals signals 
signal mem_file : mem_array;  
begin  
--write operation 
process(clk)  
	begin   
		-- should this be clk='1'?
		if(clk='0' and clk'event) then
			if(rst='1') then

				for i in 0 to 255 loop
					mem_file(i)<= (others => '0');
				end loop;

			elsif(wr_enable='1')then

				mem_file(conv_integer(addr)) <= wr_data;
				
--			-- If we want to convert the read operation to synchronous, uncomment this and comment out below
--			else
--				rd_data <= reg_file(conv_integer(addr));
			end if;
		end if;
	end process;  
	
	--read operation
	rd_data <= mem_file(conv_integer(addr));
	
end Behavioral;
