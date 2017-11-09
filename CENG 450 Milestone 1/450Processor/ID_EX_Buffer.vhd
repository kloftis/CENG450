----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:01 02/18/2014 
-- Design Name: 
-- Module Name:    ID_EX_Buffer - Behavioral 
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

entity ID_EX_Buffer is
    Port ( opcode_in : in  STD_LOGIC_VECTOR (3 downto 0);
           data1_in : in  STD_LOGIC_VECTOR (7 downto 0);
           data2_in : in  STD_LOGIC_VECTOR (7 downto 0);
           ra_in : in  STD_LOGIC_VECTOR (1 downto 0);
			  clk : in  STD_LOGIC;
			  
           data1_out : out  STD_LOGIC_VECTOR (7 downto 0);
           data2_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  ra_out : out  STD_LOGIC_VECTOR (1 downto 0);
           alu_mode_out : out  STD_LOGIC_VECTOR (2 downto 0);
           mem_op : out  STD_LOGIC;
           wb_op : out  STD_LOGIC);
end ID_EX_Buffer;

architecture Behavioral of ID_EX_Buffer is

begin

process(clk)  
	begin   
		if(clk='1' and clk'event) then
			
			-- Just pass these along. If data2 isn't needed, ALU op will be such that ALU will ignore it
			data1_out <= data1_in;
			data2_out <= data2_in;
			
			-- pass along Ra so that WB stage will have it
			ra_out <= ra_in;
			
			-- For now, don't do mem op - save for when we do L-format instructions
			-- TODO: this, when doing L-format instructions
			mem_op <= '0';
			
			-- Writeback op
			-- 1 if writeback, 0 if not
			-- Writeback on all arithmetic operations, as well as IN & MOV
			-- TODO: Will also need to write back on some B & L format instructions
			if (opcode_in="0100" OR opcode_in="0101" OR opcode_in="0110" OR opcode_in="0111" OR opcode_in="1000"
										OR opcode_in="1011" OR opcode_in="1101") then
				wb_op <= '1';
			else
				wb_op <= '0';
			end if;
			
			-- Set ALU mode
			if (opcode_in="0100" OR opcode_in="0101" OR opcode_in="0110" OR opcode_in="0111" OR opcode_in="1000")then
				
				alu_mode_out <= opcode_in(2 downto 0);
				
			else
				-- ALU NOP code (just passes data1 through)
				alu_mode_out <= "001";
			end if;			
			
		end if;
	end process;  


end Behavioral;

