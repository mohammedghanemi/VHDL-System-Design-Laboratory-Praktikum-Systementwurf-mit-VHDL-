----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    control - Behavioral 
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
use IEEE.std_logic_unsigned.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control is
    Port ( CLK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           ROUND : out  STD_LOGIC_VECTOR (3 downto 0);
           READY : out  STD_LOGIC;
           EN : out  STD_LOGIC;
           S : out  STD_LOGIC);
end control;

architecture Behavioral of control is
	Signal ROUND_COUNT :STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
begin

Process(CLK)
begin
	if CLK='1' and CLK'EVENT then
		S <= '1';
		if ROUND_COUNT = "1000" then
			if START = '1' then
				READY <= '0';
				EN <= '1';
				S <= '0';
				ROUND_COUNT <= "0000";
			elsif START = '0' then
				ROUND_COUNT <= ROUND_COUNT;
			end if;
		else
			if START = '1' then
				READY <= '0';
				EN <= '1';
				S <= '0';
				ROUND_COUNT <= "0000";
			elsif START = '0' then
				if ROUND_COUNT = "0111" then
					READY <= '1';
					EN <= '0';
				end if;
				ROUND_COUNT <= ROUND_COUNT + "0001";
			end if;
		end if;
	end if;
end Process;
	ROUND <= ROUND_COUNT;


end Behavioral;


