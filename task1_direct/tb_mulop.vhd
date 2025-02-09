--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:26:51 11/23/2024
-- Design Name:   
-- Module Name:   /mnt/hgfs/vm_share/other/moh/direct/tb_mulop.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mulop
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
USE ieee.numeric_std.ALL;
 
ENTITY tb_mulop IS
END tb_mulop;
 
ARCHITECTURE behavior OF tb_mulop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mulop
    PORT(
         I_1 : IN  std_logic_vector(15 downto 0);
         I_2 : IN  std_logic_vector(15 downto 0);
         O_1 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_1 : std_logic_vector(15 downto 0) := (others => '0');
   signal I_2 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal O_1 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mulop PORT MAP (
          I_1 => I_1,
          I_2 => I_2,
          O_1 => O_1
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
		I_1 <= std_logic_vector(to_unsigned(0,16));
		I_2 <= std_logic_vector(to_unsigned(0,16));
		WAIT FOR 10 ns;
		I_1 <= std_logic_vector(to_unsigned(1,16));
		I_2 <= std_logic_vector(to_unsigned(0,16));
		WAIT FOR 10 ns;
		I_1 <= std_logic_vector(to_unsigned(1,16));
		I_2 <= std_logic_vector(to_unsigned(1,16));
		WAIT FOR 10 ns;
		I_1 <= std_logic_vector(to_unsigned(3,16));
		I_2 <= std_logic_vector(to_unsigned(1,16));
		WAIT FOR 10 ns;
		I_1 <= std_logic_vector(to_unsigned(3,16));
		I_2 <= std_logic_vector(to_unsigned(3,16));
		WAIT FOR 10 ns;
		I_1 <= std_logic_vector(to_unsigned(32767,16));
		I_2 <= std_logic_vector(to_unsigned(3,16));
		WAIT FOR 10 ns;
		I_1 <= std_logic_vector(to_unsigned(32767,16));
		I_2 <= std_logic_vector(to_unsigned(32767,16));
		WAIT FOR 10 ns;
		I_1 <= std_logic_vector(to_unsigned(65535,16));
		I_2 <= std_logic_vector(to_unsigned(32767,16));
		WAIT FOR 10 ns;
		I_1 <= std_logic_vector(to_unsigned(65535,16));
		I_2 <= std_logic_vector(to_unsigned(65535,16));
		WAIT FOR 10 ns;
		I_1 <= std_logic_vector(to_unsigned(32768,16));
		I_2 <= std_logic_vector(to_unsigned(65535,16));
		WAIT FOR 10 ns;
		I_1 <= std_logic_vector(to_unsigned(32768,16));
		I_2 <= std_logic_vector(to_unsigned(32768,16));
		WAIT FOR 10 ns;

   wait;
   end process;

END;
