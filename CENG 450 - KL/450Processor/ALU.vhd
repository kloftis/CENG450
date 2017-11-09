----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:15 02/04/2014 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( in1 : in  STD_LOGIC_VECTOR (7 downto 0);
           in2 : in  STD_LOGIC_VECTOR (7 downto 0);
           alu_mode : in  STD_LOGIC_VECTOR (2 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (7 downto 0);
           z_flag : out  STD_LOGIC;
           n_flag : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

begin  
--write operation 
process(clk)  
	begin   
		if(clk='0' and clk'event) then
			if(rst='1') then
				n_flag <= '0';
				z_flag <= '0';
			elsif (alu_mode="000") then
				if ((in1 NAND in2) < 0) then
					n_flag <= '1';
				else
					n_flag <= '0';
				end if;
				if ((in1 NAND in2) = 0) then
					z_flag <= '1';
				else
					z_flag <= '0';
				end if;
			elsif (alu_mode="100") then
				if ((in1 + in2) < 0) then
					n_flag <= '1';
				else
					n_flag <= '0';
				end if;
				if ((in1 + in2) = 0) then
					z_flag <= '1';
				else
					z_flag <= '0';
				end if;
			elsif (alu_mode="101") then
				if ((in1 - in2) < 0) then
					n_flag <= '1';
				else
					n_flag <= '0';
				end if;
				if ((in1 - in2) = 0) then
					z_flag <= '1';
				else
					z_flag <= '0';
				end if;
			elsif (alu_mode="110") then
				z_flag <= in1(7);
			elsif (alu_mode="111") then
				z_flag <= in1(0);
			end if;
		end if;
	end process;  

	--with alu_mode select result <=
		--in1 NAND in2 when "000",
		--in1 + in2 when "100",
		--in1 - in2 when "101",
		--in1(6 downto 0)&'0' when "110",
		--'0'&in1(7 downto 1) when "111",
		--"XXXXXXXX" when others;

	result <= "00000000" when (rst='1') else
		in1 NAND in2 when (alu_mode="000") else
		in1 + in2 when (alu_mode="100") else
		in1 - in2 when (alu_mode="101") else
		in1(6 downto 0)&'0' when (alu_mode="110") else
		'0'&in1(7 downto 1) when (alu_mode="111") else
		"XXXXXXXX";

end Behavioral;

