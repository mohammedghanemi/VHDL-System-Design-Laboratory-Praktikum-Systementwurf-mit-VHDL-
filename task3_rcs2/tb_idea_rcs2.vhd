--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:17:29 01/24/2025
-- Design Name:   
-- Module Name:   /mnt/hgfs/VHDL-Lab/submission_template/submit/rcs2/tb_idea_rcs2.vhd
-- Project Name:  idea_rcs2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: idea_rcs2
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
 
ENTITY tb_idea_rcs2 IS
END tb_idea_rcs2;
 
ARCHITECTURE behavior OF tb_idea_rcs2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT idea_rcs2
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
    uut: idea_rcs2 PORT MAP (
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

    -- Clock process: generates a clock signal
    CLOCK_process : process
    begin
        CLOCK <= '0';
        wait for CLOCK_period / 2;
        CLOCK <= '1';
        wait for CLOCK_period / 2;
    end process;

    -- Stimulus process: test cases to drive the UUT
    stim_proc: process
    begin
        -- Reset inputs for 100 ns
        KEY <= (others => '0');
        X_1 <= (others => '0');
        X_2 <= (others => '0');
        X_3 <= (others => '0');
        X_4 <= (others => '0');
        wait for 100 ns;

        -- Test Case 1
        KEY <= x"00010002000300040005000600070008";
        X_1 <= std_logic_vector(to_unsigned(4369, 16));  -- 1111 in hex
        X_2 <= std_logic_vector(to_unsigned(8738, 16));  -- 2222 in hex
        X_3 <= std_logic_vector(to_unsigned(17476, 16)); -- 4444 in hex
        X_4 <= std_logic_vector(to_unsigned(34952, 16)); -- 8888 in hex
        START <= '1';
        wait for 10 ns;
        START <= '0';
        wait for 850 ns;

        -- Check outputs for Test Case 1
        assert Y_1 = x"8AA9" and Y_2 = x"0FEF" and Y_3 = x"C0C9" and Y_4 = x"56F6"
            report "Error: Incorrect output for Test Case 1" severity note;

        -- Test Case 2
        KEY <= (others => '0');
        X_1 <= (others => '0');
        X_2 <= (others => '0');
        X_3 <= (others => '0');
        X_4 <= (others => '0');
        START <= '1';
        wait for 10 ns;
        START <= '0';
        wait for 850 ns;

        -- Check outputs for Test Case 2
        assert Y_1 = x"0001" and Y_2 = x"0001" and Y_3 = x"0000" and Y_4 = x"0000"
            report "Error: Incorrect output for Test Case 2" severity note;



        wait; -- End of process
    end process;

END behavior;