----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:15:47 04/19/2016 
-- Design Name: 
-- Module Name:    clockedround - Structural 
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
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clockedround is
    Port ( CLK : in  STD_LOGIC;
           INIT : in  STD_LOGIC;
           TRAFO : in STD_LOGIC;
           X1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z1 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z2 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z3 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z5 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z6 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y4 : out  STD_LOGIC_VECTOR (15 downto 0);
           RESULT : out STD_LOGIC;
           Y1_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
           Y2_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
           Y3_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
           Y4_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0));
end clockedround;

architecture Structural of clockedround is

	Component datapath
		Port(Clock: IN STD_LOGIC;
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
	end Component;
	
	
	Component control
		 Port ( CLK : in  STD_LOGIC;
				  INIT : in  STD_LOGIC;
				  TRAFO : in STD_LOGIC;
				  EN125 : out  STD_LOGIC;
				  EN346 : out  STD_LOGIC;
				  EN78 : out  STD_LOGIC;
				  RESULT : out  STD_LOGIC;
				  S : out  STD_LOGIC_VECTOR(1 downto 0);
				  S_T: out STD_LOGIC_VECTOR(1 downto 0));	
	end Component;
	Signal S_s,ST_s : std_logic_vector(1 downto 0);
	Signal EN125_s,EN346_s,EN78_s : std_logic;
begin

CONT: control Port Map(CLK => CLK,
							  INIT => INIT,
							  TRAFO => TRAFO,
							  EN125 => EN125_s,
							  EN346 => EN346_s,
							  EN78 => EN78_s,
							  RESULT => RESULT,
							  S  => S_s,
							  S_T => ST_s);

DAPT: datapath Port Map(Clock => CLK,
							   EN125 => EN125_s,
							   EN346 => EN346_s,
	 					 	   EN78 => EN78_s,
							   S => S_s,
							   S_T => ST_s,
							   X1 => X1,
							   X2 => X2,
							   X3 => X3,
							   X4 => X4,
							   Z1 => Z1,
							   Z2 => Z2,
							   Z3 => Z3,
							   Z4 => Z4,
							   Z5 => Z5,
							   Z6 => Z6,
							   Y1 => Y1,
							   Y2 => Y2,
							   Y3 => Y3,
							   Y4 => Y4,
							   Y1_TRAFO => Y1_TRAFO,
							   Y2_TRAFO => Y2_TRAFO,
							   Y3_TRAFO => Y3_TRAFO,
							   Y4_TRAFO => Y4_TRAFO
							   );

end Structural;

