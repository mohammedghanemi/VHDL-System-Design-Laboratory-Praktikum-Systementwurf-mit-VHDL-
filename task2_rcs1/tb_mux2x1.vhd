--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:40:49 12/22/2024
-- Design Name:   
-- Module Name:   /mnt/hgfs/VHDL-Lab/submission_template/submit/rcs1/tb_mux2x1.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2x1
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
 
ENTITY tb_mux2x1 IS
END tb_mux2x1;
 
ARCHITECTURE behavior OF tb_mux2x1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2x1
    PORT(
         D0 : IN  std_logic_vector(15 downto 0);
         D1 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic;
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D0 : std_logic_vector(15 downto 0) := (others => '0');
   signal D1 : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic := '0';

 	--Outputs
   signal O : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   MUX1: mux2x1 PORT MAP (
          D0 => D0,
          D1 => D1,
          S => S,
          O => O
        );

MUX_test:Process
begin
    D0 <= std_logic_vector(to_unsigned(1,16));
    D1 <= std_logic_vector(to_unsigned(2,16));
    WAIT FOR 10 ns;
    D0 <= std_logic_vector(to_unsigned(58,16));
    D1 <= std_logic_vector(to_unsigned(50,16));
    WAIT FOR 10 ns;
    D0 <= std_logic_vector(to_unsigned(13,16));
    D1 <= std_logic_vector(to_unsigned(45,16));
    WAIT FOR 10 ns;

end Process MUX_test;

S_Signal:Process
begin
    S <= '0';
    WAIT FOR 20 ns;
    S <= '1';
    WAIT FOR 30 ns;
    S <= '0';
    WAIT FOR 20 ns;
    S <= 'X';
    WAIT FOR 20 ns;
end Process S_Signal;

END;
