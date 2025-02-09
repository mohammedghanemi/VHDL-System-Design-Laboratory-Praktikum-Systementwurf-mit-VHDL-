----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:41:40 01/11/2025 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
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

entity datapath is
	PORT(Clock: IN STD_LOGIC;
		  EN125 : in  STD_LOGIC;
		  EN346 : in  STD_LOGIC;
		  EN78 : in  STD_LOGIC;
		  S: IN STD_LOGIC_VECTOR(1 downto 0);
		  S_T: IN STD_LOGIC_VECTOR(1 downto 0);
		  X1: IN STD_LOGIC_VECTOR(15 downto 0);
		  X2: IN STD_LOGIC_VECTOR(15 downto 0);
		  X3: IN STD_LOGIC_VECTOR(15 downto 0);
		  X4: IN STD_LOGIC_VECTOR(15 downto 0);
		  Z1: IN STD_LOGIC_VECTOR(15 downto 0);
		  Z2: IN STD_LOGIC_VECTOR(15 downto 0);
		  Z3: IN STD_LOGIC_VECTOR(15 downto 0);
		  Z4: IN STD_LOGIC_VECTOR(15 downto 0);
		  Z5: IN STD_LOGIC_VECTOR(15 downto 0);
		  Z6: IN STD_LOGIC_VECTOR(15 downto 0);
		  Y1: OUT STD_LOGIC_VECTOR(15 downto 0);
		  Y2: OUT STD_LOGIC_VECTOR(15 downto 0);
		  Y3: OUT STD_LOGIC_VECTOR(15 downto 0);
		  Y4: OUT STD_LOGIC_VECTOR(15 downto 0);
        Y1_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
        Y2_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
        Y3_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
        Y4_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0)
		  );
end datapath;


architecture Behavioral of datapath is

    COMPONENT register_16Bit
		 PORT(  Clock : in  STD_LOGIC;
				  ENABLE : in  STD_LOGIC;
				  D : in  STD_LOGIC_VECTOR (15 downto 0);
				  Q : out  STD_LOGIC_VECTOR (15 downto 0));
    END COMPONENT;
	 
	 COMPONENT mux4x1
		 PORT ( D0 : in  STD_LOGIC_VECTOR (15 downto 0);
				 D1 : in  STD_LOGIC_VECTOR (15 downto 0);
				 D2 : in  STD_LOGIC_VECTOR (15 downto 0);
				 D3 : in  STD_LOGIC_VECTOR (15 downto 0);
				 S  : in  STD_LOGIC_vector (1 downto 0);
				 O  : out STD_LOGIC_VECTOR (15 downto 0));
	 end COMPONENT;
	 
	 COMPONENT mulop
		 Port ( I_1 : in  STD_LOGIC_VECTOR (15 downto 0);
				  I_2 : in  STD_LOGIC_VECTOR (15 downto 0);
				  O_1 : out  STD_LOGIC_VECTOR (15 downto 0));
	 end COMPONENT;
	 
	 COMPONENT addop
		 Port ( I_1 : in std_logic_vector(15 downto 0);
				  I_2 : in std_logic_vector(15 downto 0);
				  O_1 : out std_logic_vector(15 downto 0));
	 end COMPONENT;
	 
	 COMPONENT xorop
		 Port ( I_1 : in std_logic_vector(15 downto 0);
				  I_2 : in std_logic_vector(15 downto 0);
				  O_1 : out std_logic_vector (15 downto 0));
	 end COMPONENT;

	 Signal MUX1_out,MUX2_out,MUX3_out,MUX4_out,MUL_out: std_logic_vector(15 downto 0);
	 Signal ADD_out,XO5_out: std_logic_vector(15 downto 0);
	 Signal R1_out,R2_out,R3_out,R4_out,R5_out,R6_out,R7_out,R8_out: std_logic_vector(15 downto 0);
begin


MUX1: mux4x1 PORT MAP(D0=>X1,
							 D1 =>X4,
							 D2 =>Z5,
							 D3 =>Z6,
							 S  =>S,
							 O  =>MUX1_out);
MUX2: mux4x1 PORT MAP(D0=>Z1,
							 D1 =>Z4,
							 D2 =>R5_out,
							 D3 =>R8_out,
							 S  =>S,
							 O  =>MUX2_out);
MUX3: mux4x1 PORT MAP(D0=>X3,
							 D1 =>X2,
							 D2 =>R6_out,
							 D3 =>R7_out,
							 S  =>S,
							 O  =>MUX3_out);
MUX4: mux4x1 PORT MAP(D0=>Z3,
							 D1 =>Z2,
							 D2 =>MUL_out,
							 D3 =>MUL_out,
							 S  =>S_T,
							 O  =>MUX4_out);

REG1: register_16Bit PORT MAP(Clock =>Clock,
									   ENABLE => EN125,
									   D =>MUL_out,
									   Q => R1_out);
REG2: register_16Bit PORT MAP(Clock =>Clock,
								 	   ENABLE =>EN125,
								 	   D =>ADD_out,
									   Q =>R2_out);
REG3: register_16Bit PORT MAP(Clock =>Clock,
									   ENABLE =>EN346,
									   D =>ADD_out,
									   Q =>R3_out);
REG4: register_16Bit PORT MAP(Clock =>Clock,
									   ENABLE =>EN346,
									   D =>MUL_out,
									   Q =>R4_out);
REG5: register_16Bit PORT MAP(Clock =>Clock,
									   ENABLE =>EN125,
									   D => XO5_out,
									   Q =>R5_out);
REG6: register_16Bit PORT MAP(Clock =>Clock,
									   ENABLE =>EN346,
									   D => XO5_out,
									   Q =>R6_out);
REG7: register_16Bit PORT MAP(Clock =>Clock,
									   ENABLE =>EN78,
									   D =>MUL_out,
									   Q =>R7_out);
REG8: register_16Bit PORT MAP(Clock =>Clock,
										ENABLE =>EN78,
										D =>ADD_out,
										Q =>R8_out);

MUL1: mulop PORT MAP(I_1 =>MUX1_out,
						   I_2 =>MUX2_out,
						   O_1 =>MUL_out);

ADD1: addop PORT MAP(I_1 =>MUX3_out,
				 		   I_2 =>MUX4_out,
						   O_1 =>ADD_out);

XO1: xorop PORT MAP(I_1 => R1_out,
				 		  I_2 => MUL_out,
						  O_1 => Y1);
XO2: xorop PORT MAP(I_1 => R2_out,
				 		  I_2 => MUL_out,
						  O_1 => Y2);
XO3: xorop PORT MAP(I_1 => R3_out,
				 		  I_2 => ADD_out,
						  O_1 => Y3);
XO4: xorop PORT MAP(I_1 => R4_out,
				 		  I_2 =>ADD_out,
						  O_1 => Y4);
XO5: xorop PORT MAP(I_1 => MUL_out,
				 		  I_2 =>ADD_out,
						  O_1 => XO5_out);

Y1_TRAFO <= R1_out;
Y2_TRAFO <= R2_out;
Y3_TRAFO <= R3_out;
Y4_TRAFO <= R4_out;


end Behavioral;


