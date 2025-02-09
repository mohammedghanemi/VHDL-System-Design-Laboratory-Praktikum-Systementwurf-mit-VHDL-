----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea - Structural 
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

entity idea is
	 Generic(width : integer := 16);
    Port ( KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0));
end idea;

architecture Structural of idea is

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
    
    Signal ROUND1,ROUND2,ROUND3,ROUND4,ROUND5,ROUND6,ROUND7,ROUND8 : std_logic_vector(4*width -1 downto 0);
    Signal KEY1,KEY2,KEY3,KEY4,KEY5,KEY6,KEY7 : std_logic_vector(127 downto 0);

begin
    KEY1 <= KEY(127 downto 0);
    KEY2 <= KEY(127-25 downto 0) & KEY(127 downto 127-24);
    KEY3 <= KEY(127-50 downto 0) & KEY(127 downto 127-49);
    KEY4 <= KEY(127-75 downto 0) & KEY(127 downto 127-74);
    KEY5 <= KEY(127-100 downto 0) & KEY(127 downto 127-99);
    KEY6 <= KEY(127-125 downto 0) & KEY(127 downto 127-124);
    KEY7 <= KEY(127-22 downto 0) & KEY(127 downto 127-21);


		round_1: round port map( X_1 => X_1,
									X_2 => X_2,
									X_3 => X_3,
									X_4 => X_4,
									Z_1 => KEY1(127 downto 112),
									Z_2 => KEY1(111 downto 96),
									Z_3 => KEY1(95 downto 80),
									Z_4 => KEY1(79 downto 64),
									Z_5 => KEY1(63 downto 48),
									Z_6 => KEY1(47 downto 32),
									Y_1 => ROUND1(4*width-1 downto 3*width),
									Y_2 => ROUND1(3*width-1 downto 2*width),
									Y_3 => ROUND1(2*width-1 downto width),
									Y_4 => ROUND1(width-1 downto 0));

		round_2: round port map( X_1 => ROUND1(4*width-1 downto 3*width),
									X_2 => ROUND1(3*width-1 downto 2*width),
									X_3 => ROUND1(2*width-1 downto width),
									X_4 => ROUND1(width-1 downto 0),
									Z_1 => KEY1(31 downto 16),
									Z_2 => KEY1(15 downto 0),
									Z_3 => KEY2(127 downto 112),
									Z_4 => KEY2(111 downto 96),
									Z_5 => KEY2(95 downto 80),
									Z_6 => KEY2(79 downto 64),
									Y_1 => ROUND2(4*width-1 downto 3*width),
									Y_2 => ROUND2(3*width-1 downto 2*width),
									Y_3 => ROUND2(2*width-1 downto width),
									Y_4 => ROUND2(width-1 downto 0));

		round_3: round port map( X_1 => ROUND2(4*width-1 downto 3*width),
									X_2 => ROUND2(3*width-1 downto 2*width),
									X_3 => ROUND2(2*width-1 downto width),
									X_4 => ROUND2(width-1 downto 0),
									Z_1 => KEY2(63 downto 48),
									Z_2 => KEY2(47 downto 32),
									Z_3 => KEY2(31 downto 16),
									Z_4 => KEY2(15 downto 0),
									Z_5 => KEY3(127 downto 112),
									Z_6 => KEY3(111 downto 96),
									Y_1 => ROUND3(4*width-1 downto 3*width),
									Y_2 => ROUND3(3*width-1 downto 2*width),
									Y_3 => ROUND3(2*width-1 downto width),
									Y_4 => ROUND3(width-1 downto 0));

		round_4: round port map( X_1 => ROUND3(4*width-1 downto 3*width),
									X_2 => ROUND3(3*width-1 downto 2*width),
									X_3 => ROUND3(2*width-1 downto width),
									X_4 => ROUND3(width-1 downto 0),
									Z_1 => KEY3(95 downto 80),
									Z_2 => KEY3(79 downto 64),
									Z_3 => KEY3(63 downto 48),
									Z_4 => KEY3(47 downto 32),
									Z_5 => KEY3(31 downto 16),
									Z_6 => KEY3(15 downto 0),
									Y_1 => ROUND4(4*width-1 downto 3*width),
									Y_2 => ROUND4(3*width-1 downto 2*width),
									Y_3 => ROUND4(2*width-1 downto width),
									Y_4 => ROUND4(width-1 downto 0));

		round_5: round port map( X_1 => ROUND4(4*width-1 downto 3*width),
									X_2 => ROUND4(3*width-1 downto 2*width),
									X_3 => ROUND4(2*width-1 downto width),
									X_4 => ROUND4(width-1 downto 0),
									Z_1 => KEY4(127 downto 112),
									Z_2 => KEY4(111 downto 96),
									Z_3 => KEY4(95 downto 80),
									Z_4 => KEY4(79 downto 64),
									Z_5 => KEY4(63 downto 48),
									Z_6 => KEY4(47 downto 32),
									Y_1 => ROUND5(4*width-1 downto 3*width),
									Y_2 => ROUND5(3*width-1 downto 2*width),
									Y_3 => ROUND5(2*width-1 downto width),
									Y_4 => ROUND5(width-1 downto 0));

		round_6: round port map( X_1 => ROUND5(4*width-1 downto 3*width),
									X_2 => ROUND5(3*width-1 downto 2*width),
									X_3 => ROUND5(2*width-1 downto width),
									X_4 => ROUND5(width-1 downto 0),
									Z_1 => KEY4(31 downto 16),
									Z_2 => KEY4(15 downto 0),
									Z_3 => KEY5(127 downto 112),
									Z_4 => KEY5(111 downto 96),
									Z_5 => KEY5(95 downto 80),
									Z_6 => KEY5(79 downto 64),
									Y_1 => ROUND6(4*width-1 downto 3*width),
									Y_2 => ROUND6(3*width-1 downto 2*width),
									Y_3 => ROUND6(2*width-1 downto width),
									Y_4 => ROUND6(width-1 downto 0));

		round_7: round port map( X_1 => ROUND6(4*width-1 downto 3*width),
									X_2 => ROUND6(3*width-1 downto 2*width),
									X_3 => ROUND6(2*width-1 downto width),
									X_4 => ROUND6(width-1 downto 0),
									Z_1 => KEY5(63 downto 48),
									Z_2 => KEY5(47 downto 32),
									Z_3 => KEY5(31 downto 16),
									Z_4 => KEY5(15 downto 0),
									Z_5 => KEY6(127 downto 112),
									Z_6 => KEY6(111 downto 96),
									Y_1 => ROUND7(4*width-1 downto 3*width),
									Y_2 => ROUND7(3*width-1 downto 2*width),
									Y_3 => ROUND7(2*width-1 downto width),
									Y_4 => ROUND7(width-1 downto 0));

		round_8: round port map( X_1 => ROUND7(4*width-1 downto 3*width),
									X_2 => ROUND7(3*width-1 downto 2*width),
									X_3 => ROUND7(2*width-1 downto width),
									X_4 => ROUND7(width-1 downto 0),
									Z_1 => KEY6(95 downto 80),
									Z_2 => KEY6(79 downto 64),
									Z_3 => KEY6(63 downto 48),
									Z_4 => KEY6(47 downto 32),
									Z_5 => KEY6(31 downto 16),
									Z_6 => KEY6(15 downto 0),
									Y_1 => ROUND8(4*width-1 downto 3*width),
									Y_2 => ROUND8(3*width-1 downto 2*width),
									Y_3 => ROUND8(2*width-1 downto width),
									Y_4 => ROUND8(width-1 downto 0));

		trafo1: trafo port map( X_1 => ROUND8(4*width-1 downto 3*width),
									X_2 => ROUND8(3*width-1 downto 2*width),
									X_3 => ROUND8(2*width-1 downto width),
									X_4 => ROUND8(width-1 downto 0),
									Z_1 => KEY7(127 downto 112),
									Z_2 => KEY7(111 downto 96),
									Z_3 => KEY7(95 downto 80),
									Z_4 => KEY7(79 downto 64),
									Y_1 => Y_1,
									Y_2 => Y_2,
									Y_3 => Y_3,
									Y_4 => Y_4);
end Structural;


