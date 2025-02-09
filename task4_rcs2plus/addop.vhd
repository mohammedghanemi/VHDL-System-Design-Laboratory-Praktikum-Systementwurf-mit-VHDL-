----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:14:57 11/23/2024 
-- Design Name: 
-- Module Name:    addop - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity addop is
    Port ( I_1 : in std_logic_vector(15 downto 0);
           I_2 : in std_logic_vector(15 downto 0);
           O_1 : out std_logic_vector(15 downto 0));
end addop;

architecture Behavioral of addop is
begin
    Process(I_1,I_2)
    begin
        O_1 <= I_1 + I_2 ;
    end Process;
end Behavioral;

