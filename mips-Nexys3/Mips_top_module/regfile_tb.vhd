--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:02:50 11/26/2018
-- Design Name:   
-- Module Name:   D:/Documentos/A.programacion/FPGA/Mips_top_module/regfile_tb.vhd
-- Project Name:  Mips_top_module
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: regfile
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY regfile_tb IS
END regfile_tb;
 
ARCHITECTURE behavior OF regfile_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT regfile
    PORT(
         clk : IN  std_logic;
         we3 : IN  std_logic;
         ra1 : IN  std_logic_vector(4 downto 0);
         ra2 : IN  std_logic_vector(4 downto 0);
         wa3 : IN  std_logic_vector(4 downto 0);
         wd3 : IN  std_logic_vector(31 downto 0);
         rd1 : OUT  std_logic_vector(31 downto 0);
         rd2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal we3 : std_logic := '0';
   signal ra1 : std_logic_vector(4 downto 0) := (others => '0');
   signal ra2 : std_logic_vector(4 downto 0) := (others => '0');
   signal wa3 : std_logic_vector(4 downto 0) := (others => '0');
   signal wd3 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal rd1 : std_logic_vector(31 downto 0);
   signal rd2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: regfile PORT MAP (
          clk => clk,
          we3 => we3,
          ra1 => ra1,
          ra2 => ra2,
          wa3 => wa3,
          wd3 => wd3,
          rd1 => rd1,
          rd2 => rd2
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
      -- hold reset state for 100 ns.
	we3 <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
