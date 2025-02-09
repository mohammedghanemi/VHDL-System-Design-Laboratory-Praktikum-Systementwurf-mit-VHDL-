--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:33:34 12/22/2024
-- Design Name:   
-- Module Name:   /mnt/hgfs/vm_share/other/moh/rcs1/tb_idea_single.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: idea_single
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
 
ENTITY tb_idea_single IS
END tb_idea_single;
 
ARCHITECTURE behavior OF tb_idea_single IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT idea_single
    PORT(
         CLOCK : IN  std_logic;
         START : IN  std_logic;
         KEY : IN  std_logic_vector(127 downto 0);
         X_1 : IN  std_logic_vector(15 downto 0);
         X_2 : IN  std_logic_vector(15 downto 0);
         X_3 : IN  std_logic_vector(15 downto 0);
         X_4 : IN  std_logic_vector(15 downto 0);
         Y_1 : OUT  std_logic_vector(15 downto 0);
         Y_2 : OUT  std_logic_vector(15 downto 0);
         Y_3 : OUT  std_logic_vector(15 downto 0);
         Y_4 : OUT  std_logic_vector(15 downto 0);
         READY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal START : std_logic := '0';
   signal KEY : std_logic_vector(127 downto 0) := (others => '0');
   signal X_1 : std_logic_vector(15 downto 0) := (others => '0');
   signal X_2 : std_logic_vector(15 downto 0) := (others => '0');
   signal X_3 : std_logic_vector(15 downto 0) := (others => '0');
   signal X_4 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Y_1 : std_logic_vector(15 downto 0);
   signal Y_2 : std_logic_vector(15 downto 0);
   signal Y_3 : std_logic_vector(15 downto 0);
   signal Y_4 : std_logic_vector(15 downto 0);
   signal READY : std_logic;

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: idea_single PORT MAP (
          CLOCK => CLOCK,
          START => START,
          KEY => KEY,
          X_1 => X_1,
          X_2 => X_2,
          X_3 => X_3,
          X_4 => X_4,
          Y_1 => Y_1,
          Y_2 => Y_2,
          Y_3 => Y_3,
          Y_4 => Y_4,
          READY => READY
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK <= '0';
		wait for CLOCK_period/2;
		CLOCK <= '1';
		wait for CLOCK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
         KEY <= (others => '0');
			X_1 <= (others => '0');
         X_2 <= (others => '0');
         X_3 <=  (others => '0');
         X_4 <=  (others => '0');
		wait for 110 ns;	
         KEY <= x"00010002000300040005000600070008";
			X_1 <= x"1111";
			X_2 <= x"2222";
			X_3 <= x"3333";
			X_4 <= x"4444";
      wait for 110 ns;	
         KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
			X_1 <= std_logic_vector(to_unsigned(4369,16));
			X_2 <= std_logic_vector(to_unsigned(8738,16));
			X_3 <= std_logic_vector(to_unsigned(17476,16));
			X_4 <= std_logic_vector(to_unsigned(34952,16));
      wait for 110 ns;	
         KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
			X_1 <= std_logic_vector(to_unsigned(0,16));
			X_2 <= std_logic_vector(to_unsigned(1,16));
			X_3 <= std_logic_vector(to_unsigned(2,16));
			X_4 <= std_logic_vector(to_unsigned(3,16));
      wait for 110 ns;	
   end process;
	
	START_Process: Process
	begin
		START <= '1';
		WAIT FOR 10 ns;
		START <= '0';
		WAIT FOR 100 ns;
		
	end Process START_Process;

END;