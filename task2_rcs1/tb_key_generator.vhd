--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:09:19 12/22/2024
-- Design Name:   
-- Module Name:   /mnt/hgfs/VHDL-Lab/submission_template/submit/rcs1/tb_key_generator.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: key_generator
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
 
ENTITY tb_key_generator IS
END tb_key_generator;
 
ARCHITECTURE behavior OF tb_key_generator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT key_generator
    PORT(
         KEY : IN  std_logic_vector(127 downto 0);
         ROUND : IN  std_logic_vector(3 downto 0);
         KEY_OUT : OUT  std_logic_vector(95 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal KEY : std_logic_vector(127 downto 0) := (others => '0');
   signal ROUND : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal KEY_OUT : std_logic_vector(95 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: key_generator PORT MAP (
          KEY => KEY,
          ROUND => ROUND,
          KEY_OUT => KEY_OUT
        );

   -- Clock process definitions
   key_generator_test_process :process
   begin
		wait for 10 ns;
			KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
			ROUND <= "0000";		
      wait for 10 ns;
			KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
			ROUND <= "0001";		
      wait for 10 ns;
			KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
			ROUND <= "0010";		
      wait for 10 ns;
			KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
			ROUND <= "0011";		
      wait for 10 ns;
			KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
			ROUND <= "0100";		
      wait for 10 ns;
			KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
			ROUND <= "0101";		
      wait for 10 ns;
			KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
			ROUND <= "0110";		
      wait for 10 ns;
			KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
			ROUND <= "0111";		
      wait for 10 ns;
			KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
			ROUND <= "1000";
   end process;
END;
