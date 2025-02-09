----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:05:30 12/22/2024 
-- Design Name: 
-- Module Name:    key_generator - Behavioral 
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

entity key_generator is
    Port ( KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           ROUND : in  STD_LOGIC_VECTOR (3 downto 0);
           KEY_OUT : out  STD_LOGIC_VECTOR (95 downto 0));
end key_generator;

architecture Behavioral of key_generator is

begin
   Process(ROUND,KEY)
   Variable KEY1,KEY2,KEY3,KEY4,KEY5,KEY6,KEY7 : std_logic_vector(127 downto 0);
	begin
		KEY1 := KEY(127 downto 0);
		KEY2 := KEY(127-25 downto 0) & KEY(127 downto 127-24);
		KEY3 := KEY(127-50 downto 0) & KEY(127 downto 127-49);
		KEY4 := KEY(127-75 downto 0) & KEY(127 downto 127-74);
		KEY5 := KEY(127-100 downto 0) & KEY(127 downto 127-99);
		KEY6 := KEY(127-125 downto 0) & KEY(127 downto 127-124);
		KEY7 := KEY(127-22 downto 0) & KEY(127 downto 127-21);
		if ROUND = "0000" then
			KEY_OUT <= KEY1(127 downto 32);
		elsif ROUND = "0001" then
			KEY_OUT <= KEY1(31 downto 0) & KEY2(127 downto 64);
		elsif ROUND = "0010" then
			KEY_OUT <= KEY2(63 downto 0) & KEY3(127 downto 96);
		elsif ROUND = "0011" then
			KEY_OUT <= KEY3(95 downto 0);
		elsif ROUND = "0100" then
			KEY_OUT <= KEY4(127 downto 32);
		elsif ROUND = "0101" then
			KEY_OUT <= KEY4(31 downto 0) & KEY5(127 downto 64);
		elsif ROUND = "0110" then
			KEY_OUT <= KEY5(63 downto 0) & KEY6(127 downto 96);
		elsif ROUND = "0111" then
			KEY_OUT <= KEY6(95 downto 0);
		elsif ROUND = "1000" then
			KEY_OUT <= KEY7(127 downto 32);
		else
			KEY_OUT <= (others => 'X');
		end if;
	end Process;



end Behavioral;

