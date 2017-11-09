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
			  rb_in : in  STD_LOGIC_VECTOR (1 downto 0);
           input_port_in : in  STD_LOGIC_VECTOR (7 downto 0);
			  FWD_IN : in  STD_LOGIC_VECTOR (7 downto 0);
			  z_in : in  STD_LOGIC;
			  n_in : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
			  
           data1_out : out  STD_LOGIC_VECTOR (7 downto 0);
           data2_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  ra_out : out  STD_LOGIC_VECTOR (1 downto 0);
           alu_mode_out : out  STD_LOGIC_VECTOR (2 downto 0);
           mem_op : out  STD_LOGIC;
           io_op : out  STD_LOGIC;
           wb_op : out  STD_LOGIC;
			  br : out  STD_LOGIC;
			  lr_goto : out  STD_LOGIC;
			  pc_en : out  STD_LOGIC;
			  use_memory : out STD_LOGIC);
end ID_EX_Buffer;

architecture Behavioral of ID_EX_Buffer is

--type storage is std_logic_vector(1 downto 0);
----internals signals 
--signal ra_old : storage;
signal ra_old : std_logic_vector(1 downto 0);
signal oldwb_op : std_logic;

begin

process(clk)  
	begin   
		if(clk='1' and clk'event) then
		
			if rst = '1' then
				
				pc_en <= '1';
				br <= '0';
				lr_goto <= '0';
				
				-- If there are branching-related problems after a reset, uncomment this
				--data2_out <= "00000000";
			
			
			else
			
				-- Pass data1 along, unless IN operation (then use input port instead)
				if(opcode_in = "1011") then
					data1_out <= input_port_in;
				else
					-- If this would be Read after Write, take value out of next stage instead
					if ((ra_in = ra_old) AND (oldwb_op = '1')) then
						data1_out <= FWD_IN;
					else
						data1_out <= data1_in;
					end if;
				end if;
				
				-- Pass data2 through (If not needed, ALU op will be such that ALU will ignore it)
				-- If this would be Read after Write, take value out of next stage instead
				if ((rb_in = ra_old) AND (oldwb_op = '1')) then
					data2_out <= FWD_IN;
				else
					data2_out <= data2_in;
				end if;
				
				-- If io_op = 1, value will be written to output port when it reaches WB stage
				if(opcode_in = "1100") then
					io_op <= '1';
				else
					io_op <= '0';
				end if;
				
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
											OR opcode_in="1011" OR opcode_in="1101" ) then
					wb_op <= '1';
					oldwb_op <= '1';
				else
					wb_op <= '0';
					oldwb_op <= '0';
				end if;
				
				--oldwb_op <= '0'; --DEBUG
				
				ra_old <= ra_in;
				
				--oldwb_op <= wb_op; --DEBUG
				
				-- Set ALU mode
				-- If it's an arithmetic operation, take last 3 bits of opcode.
				-- Otherwise just pass data through ALU untouched.
				if (opcode_in="0100" OR opcode_in="0101" OR opcode_in="0110" OR opcode_in="0111" OR opcode_in="1000")then
					
					alu_mode_out <= opcode_in(2 downto 0);
					
				else
					-- ALU NOP code (just passes data1 through)
					alu_mode_out <= "001";
				end if;			
			
				-- For now, we never use memory
				-- TODO: implement this when we implement memory. Will only do if reading AND using memory
				use_memory <= '0';

				
				-- From here down, ra_in is actually brx
				
				if opcode_in = "1001" then
					if (ra_in = "00") or (ra_in = "01" and z_in = '1') or (ra_in = "10" and n_in = '1') then
						
						--data2_out <= rb_in;
						br <= '1';
						lr_goto <= '0';
						pc_en <= '1';
					
					elsif (ra_in = "01" and z_in = '0') or (ra_in = "10" and n_in = '0') then
						
						br <= '0';
						lr_goto <= '0';
						pc_en <= '1';

						
					elsif (ra_in = "11") then
						
						--data2_out <= rb_in;
						br <= '1';
						lr_goto <= '1';
						pc_en <= '1';
					
					else
						
						br <= '0';
						lr_goto <= '0';
						pc_en <= '1';
										
					end if;
				else
					
					br <= '0';
					lr_goto <= '0';
					pc_en <= '0';				
						
				end if;
			
			end if; -- if not reset
			
		end if;
	end process;  


end Behavioral;

