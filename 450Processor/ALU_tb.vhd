--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:38:02 02/04/2014
-- Design Name:   
-- Module Name:   C:/Documents and Settings/kloftis/Desktop/CENG 450 - KL/450Processor/ALU_tb.vhd
-- Project Name:  450Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavioural OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         in1 : IN  std_logic_vector(7 downto 0);
         in2 : IN  std_logic_vector(7 downto 0);
         alu_mode : IN  std_logic_vector(2 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         result : OUT  std_logic_vector(7 downto 0);
         z_flag : OUT  std_logic;
         n_flag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(7 downto 0) := (others => '0');
   signal in2 : std_logic_vector(7 downto 0) := (others => '0');
   signal alu_mode : std_logic_vector(2 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal result : std_logic_vector(7 downto 0);
   signal z_flag : std_logic;
   signal n_flag : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          in1 => in1,
          in2 => in2,
          alu_mode => alu_mode,
          clk => clk,
          rst => rst,
          result => result,
          z_flag => z_flag,
          n_flag => n_flag
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

      wait for clk_period*10;

rst <= '1';
in1 <= "10110101";
in2 <= "10101011";
alu_mode <= "000";

wait until (clk='0' and clk'event);
wait until (clk='1' and clk'event);
wait until (clk='1' and clk'event);
rst <= '0';
wait until (clk='1' and clk'event);
in1 <= "10110010";
in2 <= "00000010";
alu_mode <= "100";
wait until (clk='1' and clk'event);
in1 <= "11011100";
in2 <= "00100100";
alu_mode <= "100";
wait until (clk='1' and clk'event);
in1 <= "10011100";
in2 <= "00100100";
alu_mode <= "101";
wait until (clk='1' and clk'event);
in1 <= "01011100";
in2 <= "01011100";
alu_mode <= "101";
wait until (clk='1' and clk'event);
in1 <= "11011101";
alu_mode <= "110";
wait until (clk='1' and clk'event);
in1 <= "01011101";
alu_mode <= "110";
wait until (clk='1' and clk'event);
in1 <= "11011101";
alu_mode <= "111";
wait until (clk='1' and clk'event);
in1 <= "11011100";
alu_mode <= "111";
wait until (clk='1' and clk'event);
in1 <= "10110101";
in2 <= "10101011";
alu_mode <= "000";
wait until (clk='1' and clk'event);
in1 <= "10110101";
in2 <= "10110101";
alu_mode <= "000";
wait until (clk='1' and clk'event);
in1 <= "10110101";
in2 <= "00101011";
alu_mode <= "000";
wait until (clk='1' and clk'event);
in1 <= "10110101";
in2 <= "00101011";
alu_mode <= "001";
wait until (clk='1' and clk'event);
in1 <= "10110101";
in2 <= "00101011";
alu_mode <= "000";
wait;
end process;
end behavioural;
