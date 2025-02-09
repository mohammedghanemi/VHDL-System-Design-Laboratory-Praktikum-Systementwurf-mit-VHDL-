----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    mulop - Behavioral 
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

entity mulop is
    Port ( I_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           I_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           O_1 : out  STD_LOGIC_VECTOR (15 downto 0));
end mulop;

architecture Behavioral of mulop is

begin

Process(I_1,I_2)
    variable input : std_logic_vector (2*16+1 downto 0);
    variable div_val: std_logic_vector(2*16+1 downto 0);
    variable EXP_16 : std_logic_vector (16 downto 0) := (16 => '1',others => '0');
    variable ONE : std_logic_vector (16-1 downto 0) := (0 => '1',others => '0');
    variable ZERO : std_logic_vector (16-1 downto 0) := (others => '0');
begin
    if I_1 = ZERO or I_2 = ZERO then
        if I_1 = ZERO and I_2 /= ZERO then
            input := EXP_16*('0' & I_2);
        elsif I_2 = ZERO and I_1 /= ZERO then
            input := ('0' & I_1)*EXP_16;
        else
            input :=EXP_16*EXP_16;
        end if;
    else
        input := ('0' & I_1)* ('0' & I_2) ;
    end if;
    div_val := ZERO & input(2*16+1 downto 16);
    
    if input(16-1 downto 0) < div_val then
      O_1 <= input(16-1 downto 0) - div_val(16-1 downto 0) + EXP_16(16-1 downto 0) + ONE;
    else
      O_1 <= input(16-1 downto 0) - div_val(16-1 downto 0);
    end if;
end Process;



end Behavioral;

