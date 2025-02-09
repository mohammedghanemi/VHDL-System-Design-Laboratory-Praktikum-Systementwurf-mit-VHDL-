----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:39:12 12/22/2024 
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
-- any Xilinx leaf cells in this code.
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
    Port ( A : in std_logic_vector(15 downto 0);
           B : in std_logic_vector(15 downto 0);
           Y : out std_logic_vector(15 downto 0));
    end Component;
    
    Component xorop is
    Port ( A : in std_logic_vector(15 downto 0);
           B : in std_logic_vector(15 downto 0);
           Y : out std_logic_vector (15 downto 0));
    end Component;
    
    Signal MU1,MU3,MU4,MU2: std_logic_vector(width-1 downto 0);
    Signal XO1,XO2: std_logic_vector(width-1 downto 0);
    Signal AD1,AD2,AD3,AD4: std_logic_vector(width-1 downto 0);
begin

MUL_1: mulop port map(	I_1 => X_1,
                        I_2 => Z_1,
                        O_1 => MU1);
                        
ADD_1: addop port map(	A => X_2,
                        B => Z_2,
                        Y => AD1);
                        
ADD_2: addop port map(	A => X_3,
                        B => Z_3,
                        Y => AD2);
                        
MUL_2: mulop port map(	I_1 => X_4,
                        I_2 => Z_4,
                        O_1 => MU2);

XOR1: xorop port map(	A => MU1,
                        B => AD2,
                        Y => XO1);

XOR2: xorop port map(	A => AD1,
                        B => MU2,
                        Y => XO2);

XOR3: xorop port map(	A => MU1,
                        B => MU4,
                        Y => Y_1);

XOR4: xorop port map(	A => AD1,
                        B => AD4,
                        Y => Y_3);

XOR5: xorop port map(	A => AD2,
                        B => MU4,
                        Y => Y_2);

XOR6: xorop port map(	A => MU2,
                        B => AD4,
                        Y => Y_4);

MUL_3: mulop port map(	I_1 => XO1,
                        I_2 => Z_5,
                        O_1 => MU3);
                        
ADD_3: addop port map(	A => XO2,
                        B => MU3,
                        Y => AD3);
                        
ADD_4: addop port map(	A => MU3,
                        B => MU4,
                        Y => AD4);
                        
MUL_4: mulop port map(	I_1 => AD3,
                        I_2 => Z_6,
                        O_1 => MU4);
end Behavioral;

