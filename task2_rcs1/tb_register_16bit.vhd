--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:06:40 12/22/2024
-- Design Name:   
-- Module Name:   /mnt/hgfs/VHDL-Lab/submission_template/submit/rcs1/tb_register_16bit.vhdl
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_16bit
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_register_16Bit is
end tb_register_16Bit;

architecture Behavioral of tb_register_16Bit is
Signal clk,en : std_logic := '0';
Signal D_i,Q_o : std_logic_vector(15 downto 0) := (others => '0');
begin
	REG1: entity work.register_16Bit(Behavioral)
        port map(	Clock => clk,
                  ENABLE => en,
                  D => D_i,
                  Q => Q_o);
clk <= not clk after 10 ns;
Register_test:Process
begin
	 en <= '1';
    D_i <= std_logic_vector(to_unsigned(1,16));
    WAIT FOR 20 ns;
    D_i <= std_logic_vector(to_unsigned(58,16));
    WAIT FOR 30 ns;
    D_i <= std_logic_vector(to_unsigned(13,16));
    WAIT FOR 20 ns;
	 en <= '0';
	 WAIT FOR 20 ns;
	 D_i <= std_logic_vector(to_unsigned(0,16));
    WAIT FOR 20 ns;
	 
end Process Register_test;

end Behavioral;
