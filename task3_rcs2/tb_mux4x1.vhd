LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY tb_mux4x1 IS
END tb_mux4x1;

ARCHITECTURE behavior OF tb_mux4x1 IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT mux4x1
    PORT(
         D0 : IN  std_logic_vector(15 downto 0);
         D1 : IN  std_logic_vector(15 downto 0);
         D2 : IN  std_logic_vector(15 downto 0);
         D3 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal D0 : std_logic_vector(15 downto 0) := (others => '0');
   signal D1 : std_logic_vector(15 downto 0) := (others => '0');
   signal D2 : std_logic_vector(15 downto 0) := (others => '0');
   signal D3 : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(15 downto 0);

   -- Clock signal
   signal clk : std_logic := '0';

   -- Clock period constant
   constant clk_period : time := 10 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: mux4x1 PORT MAP (
          D0 => D0,
          D1 => D1,
          D2 => D2,
          D3 => D3,
          S => S,
          O => O
        );

   -- Clock process definitions
   clk_process : process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

         D0 <= x"1111";
			D1 <= x"2222";
			D2 <= x"3333";
			D3 <= x"4444";
			wait for clk_period/2;
			
			S <= b"00";
			wait for clk_period/2;
			assert O = x"1111" report "erronous output" severity error;
			
			S <= b"01";
			wait for clk_period/2;
			assert O = x"2222" report "erronous output" severity error;
			
			S <= b"10";
			wait for clk_period/2;
			assert O = x"3333" report "erronous output" severity error;
			
			S <= b"11";
			wait for clk_period/2;
			assert O = x"4444" report "erronous output" severity error;
			
			D3 <= x"5555";
			wait for clk_period/2;			
			assert O = x"5555" report "erronous output" severity error;
			
			report "Simulation successful!" severity note;
   end process;

END;