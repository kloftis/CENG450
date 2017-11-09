----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:41:21 02/18/2014 
-- Design Name: 
-- Module Name:    MEM_WB_Buffer - Behavioral 
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

entity MEM_WB_Buffer is
    Port ( result_in   : in   STD_LOGIC_VECTOR (7 downto 0);
           wb_op_in    : in   STD_LOGIC;
           mem_op_in   : in   STD_LOGIC;
			  io_op_in	  : in   STD_LOGIC;
           ra_in       : in   STD_LOGIC_VECTOR (1 downto 0);
			  mem_data_in : in   STD_LOGIC_VECTOR (7 downto 0);
			  clk : in  STD_LOGIC;

           output_port : out  STD_LOGIC_VECTOR (7 downto 0);
			  wb_data_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  wb_op_out   : out  STD_LOGIC;
           ra_out      : out  STD_LOGIC_VECTOR (1 downto 0));	 
end MEM_WB_Buffer;

architecture Behavioral of MEM_WB_Buffer is

begin

process(clk)  
	begin   
		if(clk='1' and clk'event) then

			-- Fow now, mem op is always 0
			-- TODO: when incorporating L instr, make sure this is actually correct behavior
			if (mem_op_in='1') then
				wb_data_out <= mem_data_in;
			else
				wb_data_out <= result_in;
			end if;
			
			if (io_op_in='1') then
				output_port <= result_in;
			else
				output_port <= "ZZZZZZZZ";
			end if;
			
			wb_op_out <= wb_op_in;
			ra_out <= ra_in;
			
		end if;
	end process;

end Behavioral;

