----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:31:05 03/04/2014 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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

entity PC is
    Port ( PC_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           EN  : in  STD_LOGIC;
			  DIS : in  STD_LOGIC;
           BR  : in  STD_LOGIC;

			  LR_goto : in  STD_LOGIC;
			  LR_rtrn : in  STD_LOGIC;

           clk : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
			  
           PC_OUT : out  STD_LOGIC_VECTOR (7 downto 0));
end PC;

architecture Behavioral of PC is

signal enabled : STD_LOGIC;
signal LR_VAL  : STD_LOGIC_VECTOR (7 downto 0);

begin

	process(clk)
	begin   
		if(clk='1' and clk'event) then

			if (rst = '1') then
				-- reset				
				PC_OUT <= "00000000";
				enabled <= '1';
			
			elsif (enabled = '1')
				-- increment, branch, or return from subroutine
		
				if (BR = '1') then
					
					-- If branch was subroutine
					if (LR_goto = '1') then
						-- Store subroutine return 
						LR_VAL <= PC_OUT + 1;
					end if;
					
					-- Branch
					PC_OUT <= PC_IN;
					
				elsif (LR_rtrn = '1')
					-- Return from subroutine
					PC_OUT <= LR_VAL;
				else
					-- Increment
					PC_OUT <= PC_OUT + 1;
				end if;
			
			end if;
			
		end if;
	end process;
			
	-- EN takes priority over DIS to prevent deadlock
	enabled <= '1' when(EN = '1') else
				  '0' when(DIS = '1') else enabled;

end Behavioral;

