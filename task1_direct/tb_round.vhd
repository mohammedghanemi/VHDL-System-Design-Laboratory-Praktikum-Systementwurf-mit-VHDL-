--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:36:52 11/23/2024
-- Design Name:   
-- Module Name:   /mnt/hgfs/vm_share/other/moh/direct/tb_round.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: round
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
 
ENTITY tb_round IS
END tb_round;
 
ARCHITECTURE behavior OF tb_round IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT round
    PORT(
         X_1 : IN  std_logic_vector(15 downto 0);
         X_2 : IN  std_logic_vector(15 downto 0);
         X_3 : IN  std_logic_vector(15 downto 0);
         X_4 : IN  std_logic_vector(15 downto 0);
         Z_1 : IN  std_logic_vector(15 downto 0);
         Z_2 : IN  std_logic_vector(15 downto 0);
         Z_3 : IN  std_logic_vector(15 downto 0);
         Z_4 : IN  std_logic_vector(15 downto 0);
         Z_5 : IN  std_logic_vector(15 downto 0);
         Z_6 : IN  std_logic_vector(15 downto 0);
         Y_1 : OUT  std_logic_vector(15 downto 0);
         Y_2 : OUT  std_logic_vector(15 downto 0);
         Y_3 : OUT  std_logic_vector(15 downto 0);
         Y_4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X_1 : std_logic_vector(15 downto 0) := (others => '0');
   signal X_2 : std_logic_vector(15 downto 0) := (others => '0');
   signal X_3 : std_logic_vector(15 downto 0) := (others => '0');
   signal X_4 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z_1 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z_2 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z_3 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z_4 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z_5 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z_6 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Y_1 : std_logic_vector(15 downto 0);
   signal Y_2 : std_logic_vector(15 downto 0);
   signal Y_3 : std_logic_vector(15 downto 0);
   signal Y_4 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: round PORT MAP (
          X_1 => X_1,
          X_2 => X_2,
          X_3 => X_3,
          X_4 => X_4,
          Z_1 => Z_1,
          Z_2 => Z_2,
          Z_3 => Z_3,
          Z_4 => Z_4,
          Z_5 => Z_5,
          Z_6 => Z_6,
          Y_1 => Y_1,
          Y_2 => Y_2,
          Y_3 => Y_3,
          Y_4 => Y_4
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
		X_1<= std_logic_vector(to_unsigned(0,16));
		X_2<= std_logic_vector(to_unsigned(0,16));
		X_3<= std_logic_vector(to_unsigned(0,16));
		X_4<= std_logic_vector(to_unsigned(0,16));
		Z_1<= std_logic_vector(to_unsigned(0,16));
		Z_2<= std_logic_vector(to_unsigned(0,16));
		Z_3<= std_logic_vector(to_unsigned(0,16));
		Z_4<= std_logic_vector(to_unsigned(0,16));
		Z_5<= std_logic_vector(to_unsigned(0,16));
		Z_6<= std_logic_vector(to_unsigned(0,16));
		WAIT FOR 10 ns;
		X_1<= std_logic_vector(to_unsigned(65535,16));
		X_2<= std_logic_vector(to_unsigned(0,16));
		X_3<= std_logic_vector(to_unsigned(0,16));
		X_4<= std_logic_vector(to_unsigned(0,16));
		Z_1<= std_logic_vector(to_unsigned(0,16));
		Z_2<= std_logic_vector(to_unsigned(0,16));
		Z_3<= std_logic_vector(to_unsigned(0,16));
		Z_4<= std_logic_vector(to_unsigned(0,16));
		Z_5<= std_logic_vector(to_unsigned(0,16));
		Z_6<= std_logic_vector(to_unsigned(0,16));
		WAIT FOR 10 ns;
		X_1<= std_logic_vector(to_unsigned(65535,16));
		X_2<= std_logic_vector(to_unsigned(43690,16));
		X_3<= std_logic_vector(to_unsigned(0,16));
		X_4<= std_logic_vector(to_unsigned(0,16));
		Z_1<= std_logic_vector(to_unsigned(0,16));
		Z_2<= std_logic_vector(to_unsigned(0,16));
		Z_3<= std_logic_vector(to_unsigned(0,16));
		Z_4<= std_logic_vector(to_unsigned(0,16));
		Z_5<= std_logic_vector(to_unsigned(0,16));
		Z_6<= std_logic_vector(to_unsigned(0,16));
		WAIT FOR 10 ns;
		X_1<= std_logic_vector(to_unsigned(65535,16));
		X_2<= std_logic_vector(to_unsigned(43690,16));
		X_3<= std_logic_vector(to_unsigned(21845,16));
		X_4<= std_logic_vector(to_unsigned(0,16));
		Z_1<= std_logic_vector(to_unsigned(0,16));
		Z_2<= std_logic_vector(to_unsigned(0,16));
		Z_3<= std_logic_vector(to_unsigned(0,16));
		Z_4<= std_logic_vector(to_unsigned(0,16));
		Z_5<= std_logic_vector(to_unsigned(0,16));
		Z_6<= std_logic_vector(to_unsigned(0,16));
		WAIT FOR 10 ns;
		X_1<= std_logic_vector(to_unsigned(65535,16));
		X_2<= std_logic_vector(to_unsigned(43690,16));
		X_3<= std_logic_vector(to_unsigned(21845,16));
		X_4<= std_logic_vector(to_unsigned(9362,16));
		Z_1<= std_logic_vector(to_unsigned(0,16));
		Z_2<= std_logic_vector(to_unsigned(0,16));
		Z_3<= std_logic_vector(to_unsigned(0,16));
		Z_4<= std_logic_vector(to_unsigned(0,16));
		Z_5<= std_logic_vector(to_unsigned(0,16));
		Z_6<= std_logic_vector(to_unsigned(0,16));
		WAIT FOR 10 ns;
		X_1<= std_logic_vector(to_unsigned(65535,16));
		X_2<= std_logic_vector(to_unsigned(43690,16));
		X_3<= std_logic_vector(to_unsigned(21845,16));
		X_4<= std_logic_vector(to_unsigned(9362,16));
		Z_1<= std_logic_vector(to_unsigned(56173,16));
		Z_2<= std_logic_vector(to_unsigned(0,16));
		Z_3<= std_logic_vector(to_unsigned(0,16));
		Z_4<= std_logic_vector(to_unsigned(0,16));
		Z_5<= std_logic_vector(to_unsigned(0,16));
		Z_6<= std_logic_vector(to_unsigned(0,16));
		WAIT FOR 10 ns;
		X_1<= std_logic_vector(to_unsigned(65535,16));
		X_2<= std_logic_vector(to_unsigned(43690,16));
		X_3<= std_logic_vector(to_unsigned(21845,16));
		X_4<= std_logic_vector(to_unsigned(9362,16));
		Z_1<= std_logic_vector(to_unsigned(56173,16));
		Z_2<= std_logic_vector(to_unsigned(7281,16));
		Z_3<= std_logic_vector(to_unsigned(0,16));
		Z_4<= std_logic_vector(to_unsigned(0,16));
		Z_5<= std_logic_vector(to_unsigned(0,16));
		Z_6<= std_logic_vector(to_unsigned(0,16));
		WAIT FOR 10 ns;
		X_1<= std_logic_vector(to_unsigned(65535,16));
		X_2<= std_logic_vector(to_unsigned(43690,16));
		X_3<= std_logic_vector(to_unsigned(21845,16));
		X_4<= std_logic_vector(to_unsigned(9362,16));
		Z_1<= std_logic_vector(to_unsigned(56173,16));
		Z_2<= std_logic_vector(to_unsigned(7281,16));
		Z_3<= std_logic_vector(to_unsigned(52428,16));
		Z_4<= std_logic_vector(to_unsigned(0,16));
		Z_5<= std_logic_vector(to_unsigned(0,16));
		Z_6<= std_logic_vector(to_unsigned(0,16));
		WAIT FOR 10 ns;
		X_1<= std_logic_vector(to_unsigned(65535,16));
		X_2<= std_logic_vector(to_unsigned(43690,16));
		X_3<= std_logic_vector(to_unsigned(21845,16));
		X_4<= std_logic_vector(to_unsigned(9362,16));
		Z_1<= std_logic_vector(to_unsigned(56173,16));
		Z_2<= std_logic_vector(to_unsigned(7281,16));
		Z_3<= std_logic_vector(to_unsigned(52428,16));
		Z_4<= std_logic_vector(to_unsigned(2,16));
		Z_5<= std_logic_vector(to_unsigned(0,16));
		Z_6<= std_logic_vector(to_unsigned(0,16));
		WAIT FOR 10 ns;
		X_1<= std_logic_vector(to_unsigned(65535,16));
		X_2<= std_logic_vector(to_unsigned(43690,16));
		X_3<= std_logic_vector(to_unsigned(21845,16));
		X_4<= std_logic_vector(to_unsigned(9362,16));
		Z_1<= std_logic_vector(to_unsigned(56173,16));
		Z_2<= std_logic_vector(to_unsigned(7281,16));
		Z_3<= std_logic_vector(to_unsigned(52428,16));
		Z_4<= std_logic_vector(to_unsigned(2,16));
		Z_5<= std_logic_vector(to_unsigned(61166,16));
		Z_6<= std_logic_vector(to_unsigned(0,16));
		WAIT FOR 10 ns;
		X_1<= std_logic_vector(to_unsigned(65535,16));
		X_2<= std_logic_vector(to_unsigned(43690,16));
		X_3<= std_logic_vector(to_unsigned(21845,16));
		X_4<= std_logic_vector(to_unsigned(9362,16));
		Z_1<= std_logic_vector(to_unsigned(56173,16));
		Z_2<= std_logic_vector(to_unsigned(7281,16));
		Z_3<= std_logic_vector(to_unsigned(52428,16));
		Z_4<= std_logic_vector(to_unsigned(2,16));
		Z_5<= std_logic_vector(to_unsigned(61166,16));
		Z_6<= std_logic_vector(to_unsigned(34952,16));
		WAIT FOR 10 ns;


      wait;
   end process;

END;
