----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:10:28 03/11/2014 
-- Design Name: 
-- Module Name:    Branch_Controller - Behavioral 
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

entity Branch_Controller is
    Port ( op_in : in  STD_LOGIC_VECTOR (3 downto 0);
           brx_in : in  STD_LOGIC_VECTOR (1 downto 0);
           rb_in : in  STD_LOGIC_VECTOR (7 downto 0);
           z_in : in  STD_LOGIC;
           n_in : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
			  clk  : in  STD_LOGIC;
			  
			  
           rb_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  br : out  STD_LOGIC;
           lr_goto : out  STD_LOGIC;
			  EN : out  STD_LOGIC);
end Branch_Controller;

architecture Behavioral of Branch_Controller is

begin
process(clk)  
	begin   
		if(clk='1' and clk'event) then
			if rst = '1' then
				
				EN <= '1';
				br <= '0';
				lr_goto <= '0';
				rb_out <= "00000000";
				
			elsif op_in = "1001" then
				if brx_in = "00" or (brx_in = "01" and z_in = '1') or (brx_in = "10" and n_in = '1') then
					
					rb_out <= rb_in;
					br <= '1';
					lr_goto <= '0';
					EN <= '1';
				
				elsif (brx_in = "01" and z_in = '0') or (brx_in = "10" and n_in = '0') then
					
					br <= '0';
					lr_goto <= '0';
					EN <= '1';

					
				elsif brx_in = "11" then
					
					rb_out <= rb_in;
					br <= '1';
					lr_goto <= '1';
					EN <= '1';
				
				else
					
					br <= '0';
					lr_goto <= '0';
					EN <= '1';
									
				end if;
			else
				
				br <= '0';
				lr_goto <= '0';
				EN <= '0';				
					
			end if;
					
				

			
		end if;
	end process; 

end Behavioral;

