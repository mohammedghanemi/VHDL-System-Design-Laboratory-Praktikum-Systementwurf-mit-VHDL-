--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:25:30 01/11/2025
-- Design Name:   
-- Module Name:   /mnt/hgfs/VHDL-Lab/submission_template/submit/rcs2/tb_clockedround.vhd
-- Project Name:  idea_rcs2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clockedround
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_clockedround IS
END tb_clockedround;
 
ARCHITECTURE behavior OF tb_clockedround IS
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clockedround
    PORT(
         CLK : IN  std_logic;
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
    

   --Inputs
   signal CLK : std_logic := '0';
   signal INIT : std_logic := '0';
   signal TRAFO : std_logic := '0';
   signal X1 : std_logic_vector(15 downto 0) := (others => '0');
   signal X2 : std_logic_vector(15 downto 0) := (others => '0');
   signal X3 : std_logic_vector(15 downto 0) := (others => '0');
   signal X4 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z1 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z2 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z3 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z4 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z5 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z6 : std_logic_vector(15 downto 0) := (others => '0');

     --Outputs
   signal Y1 : std_logic_vector(15 downto 0);
   signal Y2 : std_logic_vector(15 downto 0);
   signal Y3 : std_logic_vector(15 downto 0);
   signal Y4 : std_logic_vector(15 downto 0);
   signal RESULT : std_logic;
   signal Y1_TRAFO : std_logic_vector(15 downto 0);
   signal Y2_TRAFO : std_logic_vector(15 downto 0);
   signal Y3_TRAFO : std_logic_vector(15 downto 0);
   signal Y4_TRAFO : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: clockedround PORT MAP (
          CLK => CLK,
          INIT => INIT,
          TRAFO => TRAFO,
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
          RESULT => RESULT,
          Y1_TRAFO => Y1_TRAFO,
          Y2_TRAFO => Y2_TRAFO,
          Y3_TRAFO => Y3_TRAFO,
          Y4_TRAFO => Y4_TRAFO
        );

   -- Clock process definitions
   CLK_process :process
   begin
        CLK <= '0';
        wait for CLK_period/2;
        CLK <= '1';
        wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin        
        wait for CLK_period;
        
        -- Test Case 1
        X1 <= x"0000";
        X2 <= x"0000";
        X3 <= x"0000";
        X4 <= x"0000";
        Z1 <= x"0000";
        Z2 <= x"0000";
        Z3 <= x"0000";
        Z4 <= x"0000";
        Z5 <= x"0000";
        Z6 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*7;
        
        assert (Y1 & Y2 & Y3 & Y4 = x"0001" & x"0000" & x"0000" & x"0001")
            report "Test Case 1 Failed"
            severity error;

        -- Test Case 2
        X1 <= x"FFFF";
        X2 <= x"0000";
        X3 <= x"0000";
        X4 <= x"0000";
        Z1 <= x"0000";
        Z2 <= x"0000";
        Z3 <= x"0000";
        Z4 <= x"0000";
        Z5 <= x"0000";
        Z6 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*7;
        
        assert (Y1 & Y2 & Y3 & Y4 = x"0003" & x"0001" & x"0000" & x"0001")
             report "Test Case 2 Failed"
             severity error;

        -- Test Case 3
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"0000";
        X4 <= x"0000";
        Z1 <= x"0000";
        Z2 <= x"0000";
        Z3 <= x"0000";
        Z4 <= x"0000";
        Z5 <= x"0000";
        Z6 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*7;
        
        assert (Y1 & Y2 & Y3 & Y4 = x"5555" & x"5557" & x"FFFC" & x"5557")
             report "Test Case 3 Failed"
             severity error;

        -- Test Case 4
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"0000";
        Z1 <= x"0000";
        Z2 <= x"0000";
        Z3 <= x"0000";
        Z4 <= x"0000";
        Z5 <= x"0000";
        Z6 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*7;
        
        assert (Y1 & Y2 & Y3 & Y4 = x"AAAE" & x"FFF9" & x"FFFC" & x"5557")
             report "Test Case 4 Failed"
             severity error;

        -- Test Case 5
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"2492";
        Z1 <= x"0000";
        Z2 <= x"0000";
        Z3 <= x"0000";
        Z4 <= x"0000";
        Z5 <= x"0000";
        Z6 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*7;
        
        assert (Y1 & Y2 & Y3 & Y4 = x"E390" & x"B6C7" & x"2496" & x"5553")
             report "Test Case 5 Failed"
             severity error;

        -- Test Case 6
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"2492";
        Z1 <= x"DB6D";
        Z2 <= x"0000";
        Z3 <= x"0000";
        Z4 <= x"0000";
        Z5 <= x"0000";
        Z6 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*7;
        
        assert (Y1 & Y2 & Y3 & Y4 = x"E390" & x"FFED" & x"2496" & x"5553")
             report "Test Case 6 Failed"
             severity error;

        -- Test Case 7
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"2492";
        Z1 <= x"DB6D";
        Z2 <= x"1C71";
        Z3 <= x"0000";
        Z4 <= x"0000";
        Z5 <= x"0000";
        Z6 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*7;
        
        assert (Y1 & Y2 & Y3 & Y4 = x"4921" & x"555C" & x"2496" & x"38E2")
             report "Test Case 7 Failed"
             severity error;

        -- Test Case 8
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"2492";
        Z1 <= x"DB6D";
        Z2 <= x"1C71";
        Z3 <= x"CCCC";
        Z4 <= x"0000";
        Z5 <= x"0000";
        Z6 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*7;
        
        assert (Y1 & Y2 & Y3 & Y4 = x"07BD" & x"6CB4" & x"2496" & x"38E2")
             report "Test Case 8 Failed"
             severity error;

        -- Test Case 9
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"2492";
        Z1 <= x"DB6D";
        Z2 <= x"1C71";
        Z3 <= x"CCCC";
        Z4 <= x"0002";
        Z5 <= x"0000";
        Z6 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*7;
        
        assert (Y1 & Y2 & Y3 & Y4 = x"95E2" & x"FEEB" & x"B6D9" & x"38E6")
             report "Test Case 9 Failed"
             severity error;

        -- Test Case 10
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"2492";
        Z1 <= x"DB6D";
        Z2 <= x"1C71";
        Z3 <= x"CCCC";
        Z4 <= x"0002";
        Z5 <= x"EEEE";
        Z6 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*7;
        
        assert (Y1 & Y2 & Y3 & Y4 = x"BC61" & x"D768" & x"B6D9" & x"38E6")
             report "Test Case 10 Failed"
             severity error;

        -- Test Case 11
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"2492";
        Z1 <= x"DB6D";
        Z2 <= x"1C71";
        Z3 <= x"CCCC";
        Z4 <= x"0002";
        Z5 <= x"EEEE";
        Z6 <= x"8888";

      INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*7;
        
        assert (Y1 & Y2 & Y3 & Y4 = x"2521" & x"4E28" & x"2F99" & x"A1A6")
             report "Test Case 11 Failed"
             severity error;
        
        -- Output transormation
        
        TRAFO <= '1';
        
        -- Test Case 12
        X1 <= x"0000";
        X2 <= x"0000";
        X3 <= x"0000";
        X4 <= x"0000";
        Z1 <= x"0000";
        Z2 <= x"0000";
        Z3 <= x"0000";
        Z4 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*5;
        
        assert (Y1_TRAFO & Y2_TRAFO & Y3_TRAFO & Y4_TRAFO = x"0001" & x"0000" & x"0000" & x"0001")
             report "Test Case 12 Failed"
             severity error;

        -- Test Case 13
        X1 <= x"FFFF";
        X2 <= x"0000";
        X3 <= x"0000";
        X4 <= x"0000";
        Z1 <= x"0000";
        Z2 <= x"0000";
        Z3 <= x"0000";
        Z4 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*5;
        
        assert (Y1_TRAFO & Y2_TRAFO & Y3_TRAFO & Y4_TRAFO = x"0002" & x"0000" & x"0000" & x"0001")
             report "Test Case 13 Failed"
             severity error;

        -- Test Case 14
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"0000";
        X4 <= x"0000";
        Z1 <= x"0000";
        Z2 <= x"0000";
        Z3 <= x"0000";
        Z4 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*5;
        
        assert (Y1_TRAFO & Y2_TRAFO & Y3_TRAFO & Y4_TRAFO = x"0002" & x"0000" & x"AAAA" & x"0001")
             report "Test Case 14 Failed"
             severity error;

        -- Test Case 15
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"0000";
        Z1 <= x"0000";
        Z2 <= x"0000";
        Z3 <= x"0000";
        Z4 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*5;
        
        assert (Y1_TRAFO & Y2_TRAFO & Y3_TRAFO & Y4_TRAFO = x"0002" & x"5555" & x"AAAA" & x"0001")
             report "Test Case 15 Failed"
             severity error;

        -- Test Case 16
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"2492";
        Z1 <= x"0000";
        Z2 <= x"0000";
        Z3 <= x"0000";
        Z4 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*5;
        
        assert (Y1_TRAFO & Y2_TRAFO & Y3_TRAFO & Y4_TRAFO = x"0002" & x"5555" & x"AAAA" & x"DB6F")
             report "Test Case 16 Failed"
             severity error;

        -- Test Case 17
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"2492";
        Z1 <= x"DB6D";
        Z2 <= x"0000";
        Z3 <= x"0000";
        Z4 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*5;
        
        assert (Y1_TRAFO & Y2_TRAFO & Y3_TRAFO & Y4_TRAFO = x"4928" & x"5555" & x"AAAA" & x"DB6F")
             report "Test Case 17 Failed"
             severity error;

        -- Test Case 18
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"2492";
        Z1 <= x"DB6D";
        Z2 <= x"1C71";
        Z3 <= x"0000";
        Z4 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*5;
        
        assert (Y1_TRAFO & Y2_TRAFO & Y3_TRAFO & Y4_TRAFO = x"4928" & x"71C6" & x"AAAA" & x"DB6F")
             report "Test Case 18 Case"
             severity error;

        -- Test Case 19
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"2492";
        Z1 <= x"DB6D";
        Z2 <= x"1C71";
        Z3 <= x"CCCC";
        Z4 <= x"0000";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*5;
        
        assert (Y1_TRAFO & Y2_TRAFO & Y3_TRAFO & Y4_TRAFO = x"4928" & x"71C6" & x"7776" & x"DB6F")
             report "Test Case 19 Failed"
             severity error;

        -- Test Case 20
        X1 <= x"FFFF";
        X2 <= x"AAAA";
        X3 <= x"5555";
        X4 <= x"2492";
        Z1 <= x"DB6D";
        Z2 <= x"1C71";
        Z3 <= x"CCCC";
        Z4 <= x"0002";
        
        INIT <= '1';
        wait for CLK_period;
        INIT <= '0';
        
        wait for CLK_period*5;
        
        assert (Y1_TRAFO & Y2_TRAFO & Y3_TRAFO & Y4_TRAFO = x"4928" & x"71C6" & x"7776" & x"4924")
             report "Test Case 20 Failed"
             severity error;

      wait;
   end process;

END;

