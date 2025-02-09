----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:31:24 11/23/2024 
-- Design Name: 
-- Module Name:    round - Behavioral 
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

entity round is
  Generic(width : integer := 16);
  Port (X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
        X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
        X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
        X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
        Z_1 : in  STD_LOGIC_VECTOR (15 downto 0);
        Z_2 : in  STD_LOGIC_VECTOR (15 downto 0);
        Z_3 : in  STD_LOGIC_VECTOR (15 downto 0);
        Z_4 : in  STD_LOGIC_VECTOR (15 downto 0);
        Z_5 : in  STD_LOGIC_VECTOR (15 downto 0);
        Z_6 : in  STD_LOGIC_VECTOR (15 downto 0);
        Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
        Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
        Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
        Y_4 : out  STD_LOGIC_VECTOR (15 downto 0));
end round;

architecture Behavioral of round is

   Component mulop 
    Port ( I_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           I_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           O_1 : out  STD_LOGIC_VECTOR (15 downto 0));
    end Component; 
    
    Component addop
    Port ( I_1 : in std_logic_vector(15 downto 0);
           I_2 : in std_logic_vector(15 downto 0);
           O_1 : out std_logic_vector(15 downto 0));
    end Component;
    
    Component xorop is
    Port ( I_1 : in std_logic_vector(15 downto 0);
           I_2 : in std_logic_vector(15 downto 0);
           O_1 : out std_logic_vector (15 downto 0));
    end Component;
    
    Signal MU1,MU3,MU4,MU2: std_logic_vector(width-1 downto 0);
    Signal XO1,XO2: std_logic_vector(width-1 downto 0);
    Signal AD1,AD2,AD3,AD4: std_logic_vector(width-1 downto 0);
begin

		MUL_1: mulop port map(	I_1 => X_1,
										I_2 => Z_1,
										O_1 => MU1);
										
		ADD_1: addop port map(	I_1 => X_2,
										I_2 => Z_2,
										O_1 => AD1);
										
		ADD_2: addop port map(	I_1 => X_3,
										I_2 => Z_3,
										O_1 => AD2);
										
		MUL_2: mulop port map(	I_1 => X_4,
										I_2 => Z_4,
										O_1 => MU2);

		XOR1: xorop port map(	I_1 => MU1,
										I_2 => AD2,
										O_1 => XO1);

		XOR2: xorop port map(	I_1 => AD1,
										I_2 => MU2,
										O_1 => XO2);

		XOR3: xorop port map(	I_1 => MU1,
										I_2 => MU4,
										O_1 => Y_1);

		XOR4: xorop port map(	I_1 => AD1,
										I_2 => AD4,
										O_1 => Y_3);

		XOR5: xorop port map(	I_1 => AD2,
										I_2 => MU4,
										O_1 => Y_2);

		XOR6: xorop port map(	I_1 => MU2,
										I_2 => AD4,
										O_1 => Y_4);

		MUL_3: mulop port map(	I_1 => XO1,
										I_2 => Z_5,
										O_1 => MU3);
										
		ADD_3: addop port map(	I_1 => XO2,
										I_2 => MU3,
										O_1 => AD3);
										
		ADD_4: addop port map(	I_1 => MU3,
										I_2 => MU4,
										O_1 => AD4);
										
		MUL_4: mulop port map(	I_1 => AD3,
										I_2 => Z_6,
										O_1 => MU4);
end Behavioral;


