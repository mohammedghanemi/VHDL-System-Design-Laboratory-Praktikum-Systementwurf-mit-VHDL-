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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control is
    Port ( CLK : in  STD_LOGIC;
           INIT : in  STD_LOGIC;
           TRAFO : in STD_LOGIC;
           EN125 : out  STD_LOGIC;
           EN346 : out  STD_LOGIC;
           EN78 : out  STD_LOGIC;
           RESULT : out  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR(1 downto 0);
           S_T: out STD_LOGIC_VECTOR(1 downto 0));	
end control;

architecture Behavioral of control is
    Signal counter: UNSIGNED(2 downto 0) := "111";
begin
    Process(CLK)
    begin
        if rising_edge(CLK) then
          if counter = "111" then
            if INIT = '1' then
               counter <= "000";
            end if;
          else
             if trafo = '1' and counter = "010" then
               counter <= "110";
             elsif counter = "110" then
               counter <= "111";
             else
               counter <= counter + 2; 
             end if;
           end if;
       end if;
    end Process;

    Process(counter, TRAFO)
    begin
        if counter = "000" then
            EN125 <= '1';
            EN346 <= '0';
            EN78 <= '0'; 
            RESULT <= '0';
            S <= std_logic_vector(counter(2 downto 1)); -- Convert UNSIGNED to STD_LOGIC_VECTOR
            if TRAFO = '1' then
                S_T <= "01";
            else 
                S_T <= "00";
            end if;
        elsif counter = "010" then
            EN125 <= '0';
            EN346 <= '1';
            EN78 <= '0';
            RESULT <= '0';
            S <= std_logic_vector(counter(2 downto 1)); 
            if TRAFO = '1' then
                S_T <= "00";
            else 
                S_T <= "01";
            end if;
        elsif counter = "100" then
            EN125 <= '0';
            EN346 <= '0';
            EN78 <= '1';
            RESULT <= '0';
            S <= std_logic_vector(counter(2 downto 1)); 
            S_T <= "10";
        elsif counter = "110" then
            EN125 <= '0';
            EN346 <= '0';
            EN78 <= '0';
            RESULT <= '1';
            S <= std_logic_vector(counter(2 downto 1)); 
            if TRAFO = '1' then
                S_T <= "10";
            else 
                S_T <= "11";
            end if;
        else 
            EN125 <= '0';
            EN346 <= '0';
            EN78 <= '0';
            RESULT <= '0';
        end if;
    end Process;
end Behavioral;