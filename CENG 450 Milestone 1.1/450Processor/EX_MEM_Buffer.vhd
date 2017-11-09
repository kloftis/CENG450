----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:34:29 02/18/2014 
-- Design Name: 
-- Module Name:    EX_MEM_Buffer - Behavioral 
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

entity EX_MEM_Buffer is
    Port ( result_in  : in   STD_LOGIC_VECTOR (7 downto 0);
           wb_op_in   : in   STD_LOGIC;
           mem_op_in  : in   STD_LOGIC;
           ra_in      : in   STD_LOGIC_VECTOR (1 downto 0);
  			  io_op_in : in  STD_LOGIC;
			  clk : in  STD_LOGIC;

           
			  result_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  wb_op_out  : out  STD_LOGIC;
           mem_op_out : out  STD_LOGIC;
			  io_op_out : out  STD_LOGIC;
           ra_out     : out  STD_LOGIC_VECTOR (1 downto 0));
end EX_MEM_Buffer;

architecture Behavioral of EX_MEM_Buffer is

begin

process(clk)  
	begin   
		if(clk='1' and clk'event) then
		
			result_out <= result_in;
			wb_op_out <= wb_op_in;
			mem_op_out <= mem_op_in;
			ra_out <= ra_in;
			io_op_out <= io_op_in;
			
		end if;
	end process;

end Behavioral;

