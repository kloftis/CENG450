----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:40:37 02/04/2014 
-- Design Name: 
-- Module Name:    Register - Behavioral 
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

entity register_file is
    Port ( rd_index1 : in  STD_LOGIC_VECTOR (1 downto 0);
           rd_index2 : in  STD_LOGIC_VECTOR (1 downto 0);
           wr_enable : in  STD_LOGIC;
           wr_index : in  STD_LOGIC_VECTOR (1 downto 0);
           wr_data : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           rd_data1 : out  STD_LOGIC_VECTOR (7 downto 0);
           rd_data2 : out  STD_LOGIC_VECTOR (7 downto 0));
end register_file;

architecture behavioural of register_file is   


type reg_array is array  (integer range 0 to 3) of std_logic_vector(7 downto 0);
--internals signals 
signal reg_file : reg_array;  
begin  
--write operation 
process(clk)  
	begin   
		if(clk='0' and clk'event) then
			if(rst='1') then
				--for i in 0 to 3 loop
					--reg_file(i)<= (others => '0');
				--end loop;
				
				-- TODO: don't do this. This is just for milestone 1 testing before IN command implemented.
				reg_file(0) <= "00000001";	-- 1
				reg_file(1) <= "11111100"; -- -4
				reg_file(2) <= "00001101"; -- D (13)
				reg_file(3) <= "00000000";
				
			elsif(wr_enable='1')then
				case wr_index(1 downto 0) is
					when "00" => reg_file(0) <= wr_data;
					when "01" => reg_file(1) <= wr_data;
					when "10" => reg_file(2) <= wr_data;
					when "11" => reg_file(3) <= wr_data;
					when others => NULL;
				end case;
			end if;
		end if;
	end process;  
--read operation
	rd_data1 <=  	reg_file(0) when(rd_index1="00") else
						reg_file(1) when(rd_index1="01") else
						reg_file(2) when(rd_index1="10") else reg_file(3);     
	
	rd_data2 <=  	reg_file(0) when(rd_index2="00") else
						reg_file(1) when(rd_index2="01") else
						reg_file(2) when(rd_index2="10") else reg_file(3);

					end behavioural; 

