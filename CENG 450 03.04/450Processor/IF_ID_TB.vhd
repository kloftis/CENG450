--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:43:57 02/18/2014
-- Design Name:   
-- Module Name:   C:/Documents and Settings/kloftis/Desktop/CENG 450 - KL/450Processor/IF_ID_TB.vhd
-- Project Name:  450Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IF_ID_Buffer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY IF_ID_TB IS
END IF_ID_TB;
 
ARCHITECTURE behavior OF IF_ID_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IF_ID_Buffer
    PORT(
         input : IN  std_logic_vector(7 downto 0);
         ra : OUT  std_logic_vector(1 downto 0);
         rb : OUT  std_logic_vector(1 downto 0);
         wr_index1 : OUT  std_logic_vector(1 downto 0);
         opcode : OUT  std_logic_vector(3 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal ra : std_logic_vector(1 downto 0);
   signal rb : std_logic_vector(1 downto 0);
   signal wr_index1 : std_logic_vector(1 downto 0);
   signal opcode : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IF_ID_Buffer PORT MAP (
          input => input,
          ra => ra,
          rb => rb,
          wr_index1 => wr_index1,
          opcode => opcode,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
      --wait for 100ms;
		wait for 100us;	

      wait for clk_period*10;

      -- insert stimulus here 
		
		input <= "00000000";

		wait until (clk='0' and clk'event);
		wait until (clk='1' and clk'event);
		wait until (clk='1' and clk'event);
		wait for 1us;
		input <= "11110110";
		wait until (clk='1' and clk'event);
		wait for 1us;
		input <= "10010101";
		wait until (clk='1' and clk'event);
		wait for 1us;
		input <= "11111111";	
		
      wait;
   end process;

END;
