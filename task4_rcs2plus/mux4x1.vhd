----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:13:39 01/11/2025 
-- Design Name: 
-- Module Name:    mux4x1 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux4x1 is
    Port ( D0 : in  STD_LOGIC_VECTOR (15 downto 0);
           D1 : in  STD_LOGIC_VECTOR (15 downto 0);
           D2 : in  STD_LOGIC_VECTOR (15 downto 0);
           D3 : in  STD_LOGIC_VECTOR (15 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end mux4x1;

architecture Behavioral of mux4x1 is

begin
   process(D0,D1,D2,D3,S)
	begin
	   if S="00" then
	     O <= D0;
	   elsif S="01" then
	     O <= D1;
      elsif S="10" then
	     O <= D2;
      elsif S="11" then
	     O <= D3;
      else
     	  O <= "XXXXXXXXXXXXXXXX";
	   end if;
   end process;	  
end Behavioral;

