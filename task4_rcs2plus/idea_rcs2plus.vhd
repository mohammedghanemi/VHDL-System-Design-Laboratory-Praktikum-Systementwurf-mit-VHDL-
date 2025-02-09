----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea_rcs2 - Structural 
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

entity idea_rcs2plus is
    Port ( CLOCK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0);
           READY : out  STD_LOGIC);
end idea_rcs2plus;

architecture Structural of idea_rcs2plus is



	Component mux2x1
	Port ( D0 : in  STD_LOGIC_VECTOR (15 downto 0);
          D1 : in  STD_LOGIC_VECTOR (15 downto 0);
          S : in  STD_LOGIC;
          O : out  STD_LOGIC_VECTOR (15 downto 0));
	end Component;
	
	
	
	Component register_16bit
    Port ( Clock : in  STD_LOGIC;
           ENABLE : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (15 downto 0);
           Q : out  STD_LOGIC_VECTOR (15 downto 0));
	end Component;


	Component key_generator
	Port(KEY: in Std_logic_vector(127 downto 0);
		  ROUND: in  Std_logic_vector(3 downto 0);
		  KEY_OUT: out std_logic_vector(95 downto 0)
	    );
	end Component;
	
	
	COMPONENT roundcounter
   PORT(CLK : IN  std_logic;
        START : IN  std_logic;
        RESULT : IN  std_logic;
        READY : OUT  std_logic;
        S_i : OUT  std_logic;
        INIT : OUT  std_logic;
        TRAFO : OUT  std_logic;
        ROUND : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT clockedround
    PORT(CLK : IN  std_logic;
         INIT : IN  std_logic;
         TRAFO : IN  std_logic;
         X1 : IN  std_logic_vector(15 downto 0);
         X2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         X4 : IN  std_logic_vector(15 downto 0);
         Z1 : IN  std_logic_vector(15 downto 0);
         Z2 : IN  std_logic_vector(15 downto 0);
         Z3 : IN  std_logic_vector(15 downto 0);
         Z4 : IN  std_logic_vector(15 downto 0);
         Z5 : IN  std_logic_vector(15 downto 0);
         Z6 : IN  std_logic_vector(15 downto 0);
         Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0);
         RESULT : OUT  std_logic;
         Y1_TRAFO : OUT  std_logic_vector(15 downto 0);
         Y2_TRAFO : OUT  std_logic_vector(15 downto 0);
         Y3_TRAFO : OUT  std_logic_vector(15 downto 0);
         Y4_TRAFO : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	Signal RO1,RO2,RO3,RO4: std_logic_vector(15 downto 0) := (others => '0');
	Signal Y1_s,Y2_s,Y3_s,Y4_s: std_logic_vector(15 downto 0) := (others => '0');
	Signal MUX1_O,MUX2_O,MUX3_O,MUX4_O: std_logic_vector(15 downto 0) := (others => '0');
	Signal S_s,RESULT_s,INIT_s,TRAFO_s: std_logic := '0';
	Signal KEY_s :Std_logic_vector(95 downto 0) := (others => '0');
	Signal ROUND_S: std_logic_vector(3 downto 0) := (others => '0');

begin

	MUX1: mux2x1
	Port map(D0  =>RO1,
				D1  =>X_1,
				S  =>S_s,
				O  =>MUX1_O);
	
	MUX2: mux2x1
	Port map(D0  =>RO2,
				D1  =>X_2,
				S  =>S_s,
				O  =>MUX2_O);

	MUX3: mux2x1
	Port map(D0  =>RO3,
				D1  =>X_3,
				S  =>S_s,
				O  =>MUX3_O);

	MUX4: mux2x1
	Port map(D0  =>RO4,
			   D1  =>X_4,
            S  =>S_s,
            O  =>MUX4_O);

	REG1: register_16bit
    Port map(Clock =>CLOCK,
				 ENABLE  =>RESULT_s,
				 D  => Y1_s,
				 Q  =>RO1);
				  
	REG2: register_16bit
    Port map(Clock  =>CLOCK,
				 ENABLE  =>RESULT_s,
				 D  =>Y2_s,
				 Q  =>RO2);
				  
	REG3: register_16bit
    Port map(Clock  =>CLOCK,
				 ENABLE  =>RESULT_s,
				 D  =>Y3_s,
				 Q  =>RO3);
				  
	REG4: register_16bit
    Port map(Clock  =>CLOCK,
				 ENABLE  =>RESULT_s,
				 D  =>Y4_s,
				 Q  =>RO4);
	
	KEY_GE: key_generator
	Port map(KEY =>KEY,
		  ROUND =>ROUND_s,
		  KEY_OUT =>KEY_s);
		  
		  
		  
	ROUND_COUNT: roundcounter
   Port map(CLK  =>CLOCK,
			   START  =>START,
			   RESULT  =>RESULT_s,
			   READY  =>READY,
			   S_i  =>S_s,
			   INIT  =>INIT_s,
			   TRAFO  =>TRAFO_s,
			   ROUND  =>ROUND_s);
	 
	 
	 
	 ROUND_MODULE: clockedround
    Port map(CLK  =>CLOCK,
				 INIT  =>INIT_s,
				 TRAFO  =>TRAFO_s,
				 X1  =>MUX1_O,
				 X2  =>MUX2_O,
				 X3  =>MUX3_O,
				 X4  =>MUX4_O,
				 Z1  =>KEY_s(95 downto 80),
				 Z2  =>KEY_s(79 downto 64),
				 Z3  =>KEY_s(63 downto 48),
				 Z4  =>KEY_s(47 downto 32),
				 Z5  =>KEY_s(31 downto 16),
				 Z6  =>KEY_s(15 downto 0),
				 Y1  =>Y1_s,
				 Y2  =>Y2_s,
				 Y3  =>Y3_s,
				 Y4  =>Y4_s,
				 RESULT  =>RESULT_s,
				 Y1_TRAFO  =>Y_1,
				 Y2_TRAFO  =>Y_2,
				 Y3_TRAFO  =>Y_3,
				 Y4_TRAFO  =>Y_4);

end Structural;
