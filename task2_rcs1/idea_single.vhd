----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea_single - Structural 
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

entity idea_single is
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
end idea_single;

architecture Structural of idea_single is

Component round
    Port ( X_1 : in   STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in   STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in   STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in   STD_LOGIC_VECTOR (15 downto 0);
           Z_1 : in   STD_LOGIC_VECTOR (15 downto 0);
           Z_2 : in   STD_LOGIC_VECTOR (15 downto 0);
           Z_3 : in   STD_LOGIC_VECTOR (15 downto 0);
           Z_4 : in   STD_LOGIC_VECTOR (15 downto 0);
           Z_5 : in   STD_LOGIC_VECTOR (15 downto 0);
           Z_6 : in   STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0));
    end Component;

    Component trafo
    Port ( X_1 : in   STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in   STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in   STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in   STD_LOGIC_VECTOR (15 downto 0);
           Z_1 : in   STD_LOGIC_VECTOR (15 downto 0);
           Z_2 : in   STD_LOGIC_VECTOR (15 downto 0);
           Z_3 : in   STD_LOGIC_VECTOR (15 downto 0);
           Z_4 : in   STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0));

    end Component;

Component mux2x1
Port ( D0 : in  STD_LOGIC_VECTOR (15 downto 0);
 D1 : in  STD_LOGIC_VECTOR (15 downto 0);
 S : in  STD_LOGIC;
 O : out  STD_LOGIC_VECTOR (15 downto 0));
end Component;

Component key_generator
Port(KEY: in Std_logic_vector(127 downto 0);
ROUND: in Std_logic_vector(3 downto 0);
KEY_OUT: out std_logic_vector(6*16-1 downto 0)
 );
end Component;

Component control
Port ( CLK : in  STD_LOGIC;
 START : in  STD_LOGIC;
 ROUND : out  STD_LOGIC_VECTOR (3 downto 0);
 READY : out  STD_LOGIC;
 EN : out  STD_LOGIC;
 S : out  STD_LOGIC);
end Component;

Component register_16Bit
Port ( Clock : in  STD_LOGIC;
 ENABLE : in  STD_LOGIC;
 D : in  STD_LOGIC_VECTOR (15 downto 0);
 Q : out  STD_LOGIC_VECTOR (15 downto 0));
end Component;

Signal ROUND_S:std_logic_vector(3 downto 0);
Signal S_s,EN_s:std_logic;
Signal KEY_OUT_s:std_logic_vector(6*16-1 downto 0);
Signal MUX1_o,MUX2_o,MUX3_o,MUX4_o:std_logic_vector(16-1 downto 0);
Signal REG1_i,REG2_i,REG3_i,REG4_i,REG1_o,REG2_o,REG3_o,REG4_o:std_logic_vector(16-1 downto 0);


begin

CONT: control port map(CLK => Clock,
 START => START,
 ROUND => ROUND_s,
 READY => READY,
 EN => EN_s,
 S => S_s);

KEY_G: key_generator port map(KEY=> KEY,
ROUND=> ROUND_s,
KEY_OUT=> KEY_OUT_s);

RND: round port map( X_1 => MUX1_o,
  X_2 => MUX2_o,
  X_3 => MUX3_o,
  X_4 => MUX4_o,
  Z_1 => KEY_OUT_s(95 downto 80),
  Z_2 => KEY_OUT_s(79 downto 64),
  Z_3 => KEY_OUT_s(63 downto 48),
  Z_4 => KEY_OUT_s(47 downto 32),
  Z_5 => KEY_OUT_s(31 downto 16),
  Z_6 => KEY_OUT_s(15 downto 0),
  Y_1 => REG1_i,
  Y_2 => REG2_i,
  Y_3 => REG3_i,
  Y_4 => REG4_i);

TR: trafo port map( X_1 => REG1_o,
 X_2 => REG2_o,
 X_3 => REG3_o,
 X_4 => REG4_o,
 Z_1 => KEY_OUT_s(95 downto 80),
 Z_2 => KEY_OUT_s(79 downto 64),
 Z_3 => KEY_OUT_s(63 downto 48),
 Z_4 => KEY_OUT_s(47 downto 32),
 Y_1 => Y_1,
 Y_2 => Y_2,
 Y_3 => Y_3,
 Y_4 => Y_4);
 
MUX1: mux2x1 Port map( D0 => X_1,
 D1 => REG1_o,
 S => S_s,
 O => MUX1_o);
 
MUX2: mux2x1 Port map( D0 => X_2,
 D1 => REG2_o,
 S => S_s,
 O => MUX2_o);
 
MUX3: mux2x1 Port map( D0 => X_3,
 D1 => REG3_o,
 S => S_s,
 O => MUX3_o);
 
MUX4: mux2x1 Port map( D0 => X_4,
 D1 => REG4_o,
 S => S_s,
 O => MUX4_o);  

REG1: register_16Bit Port map( Clock => Clock,
ENABLE => EN_s,
D => REG1_i,
Q => REG1_o);

REG2: register_16Bit Port map( Clock => Clock,
ENABLE => EN_s,
D => REG2_i,
Q => REG2_o);

REG3: register_16Bit Port map( Clock => Clock,
ENABLE => EN_s,
D => REG3_i,
Q => REG3_o);

REG4: register_16Bit Port map( Clock => Clock,
ENABLE => EN_s,
D => REG4_i,
Q => REG4_o);

end Structural;

