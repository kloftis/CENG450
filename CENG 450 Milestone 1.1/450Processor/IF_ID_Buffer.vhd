----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:15:27 02/18/2014 
-- Design Name: 
-- Module Name:    IF_ID_Buffer - Behavioral 
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

entity IF_ID_Buffer is
    Port ( instr_in : in  STD_LOGIC_VECTOR (7 downto 0);
			  input_port : in STD_LOGIC_VECTOR (7 downto 0);
           ra : out  STD_LOGIC_VECTOR (1 downto 0);
           rb : out  STD_LOGIC_VECTOR (1 downto 0);
           opcode : out  STD_LOGIC_VECTOR (3 downto 0);
			  input_port_out : out STD_LOGIC_VECTOR (7 downto 0);
			  clk : in  STD_LOGIC);
end IF_ID_Buffer;

architecture Behavioral of IF_ID_Buffer is

-- Internal signals
--signal ra_buf : STD_LOGIC_VECTOR (1 downto 0);
--signal rb_buf : STD_LOGIC_VECTOR (1 downto 0);
--signal op_buf : STD_LOGIC_VECTOR (3 downto 0);

begin

process(clk)  
	begin   
		if(clk='1' and clk'event) then
			
			--ra <= ra_buf;
			--rb <= rb_buf;
			--opcode <= op_buf;
			--ra_buf <= input(3 downto 2);
			--rb_buf <= input(1 downto 0);
			--op_buf <= input(7 downto 4);

			ra <= instr_in(3 downto 2);
			rb <= instr_in(1 downto 0);
			opcode <= instr_in(7 downto 4);
			input_port_out <= input_port;
			
		end if;
	end process;  


end Behavioral;

