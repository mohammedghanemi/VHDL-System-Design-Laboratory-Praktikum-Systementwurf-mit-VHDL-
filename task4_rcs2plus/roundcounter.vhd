----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    roundcounter - Behavioral 
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

entity roundcounter is
    Port ( CLK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           RESULT : in  STD_LOGIC;
           READY : out  STD_LOGIC;
           S_i : out  STD_LOGIC;
           INIT : out  STD_LOGIC;
           TRAFO : out  STD_LOGIC;
           ROUND : out  STD_LOGIC_VECTOR (3 downto 0));
end roundcounter;

architecture Behavioral of roundcounter is
	type t_state is (SLEEP,SETUP,CALC);
	signal current_state : t_state;
	signal next_state : t_state := SLEEP;
	signal round_count : STD_LOGIC_VECTOR (3 downto 0) := (3 => '1',others =>'0');
	signal start_s,result_s: STD_LOGIC;
	signal init_enable,ready_enable: STD_LOGIC;
begin

	state_register: Process(CLK)
	begin
		if(CLK'event and CLK = '1')then
			current_state <= next_state;
		end if;
	end Process;
	
	next_state_logic: Process(current_state,start_s,result_s,round_count)
	begin
		next_state <= current_state;
		case current_state is
			when SLEEP =>
				if  start_s = '1' then
					next_state <= SETUP;
				end if;
			when SETUP =>
				next_state <= CALC;
			when CALC =>
				if  result_s = '1' and round_count /= "1000"then
					next_state <= SETUP;
				
				elsif  result_s = '1' and round_count = "1000" then
					next_state <= SLEEP;
				end if;
		end case;
	end Process;
	
	output_logic: Process(current_state)
	begin
		case current_state is
			when SLEEP =>
				init_enable <= '0';
				ready_enable <= '1';
			when SETUP =>
				init_enable <= '1';
				ready_enable <= '0';
			when CALC =>
				init_enable <= '0';
				ready_enable <= '0';
		end case;
	end Process;
	
	internal_counter:Process(CLK)
		variable ONE : std_logic_vector(3 downto 0);
	begin
		ONE := (0 => '1',others => '0');
		if(CLK'event and CLK = '1')then
			if result_s = '1' and  round_count /= "1000"  then
				round_count <= std_logic_vector(unsigned(round_count) + unsigned(ONE));	
			elsif start_s = '1' and round_count = "1000" then
				round_count <= (others => '0');
			end if;
		end if;
	end Process;
	
	Signal_Zuweisung:Process(CLK)
		variable ONE : std_logic_vector(3 downto 0);
	begin
		if(CLK'event and CLK = '1')then
			result_s <= RESULT;
			start_s <= START;
		end if;
	end Process;
	
	output_reg: Process(ready_enable,init_enable,round_count)
	begin
		if ready_enable = '1' then
			READY <= '1';
		else
			READY <= '0';
		end if;
		if round_count = "0000"then
			S_i <= '1';
		else 
			S_i <= '0';
		end if;
		if init_enable = '1' then
			INIT <= '1';
		else
			INIT <= '0';
		end if;
		TRAFO <= round_count(3);
		ROUND <= round_count;
	end Process;

end Behavioral;

