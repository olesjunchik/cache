--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:44:48 05/08/2019
-- Design Name:   
-- Module Name:   /media/olesja/DATA/Cash/cache/L1_tag_ch_test.vhd
-- Project Name:  Cash_proj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: L1_tag_ch
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
 
ENTITY L1_tag_ch_test IS
END L1_tag_ch_test;
 
ARCHITECTURE behavior OF L1_tag_ch_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT L1_tag_ch
    PORT(
         addr : IN  std_logic_vector(10 downto 0);
         wr : IN  std_logic;
         lfucnt : IN  std_logic;
         lfuclr : IN  std_logic;
         clk : IN  std_logic;
         clr : IN  std_logic;
         hit : OUT  std_logic;
         lfurez : OUT  std_logic_vector (2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal addr : std_logic_vector(10 downto 0) := (others => '0');
   signal wr : std_logic := '0';
   signal lfucnt : std_logic := '0';
   signal lfuclr : std_logic := '0';
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal hit : std_logic;
   signal lfurez : std_logic_vector (2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: L1_tag_ch PORT MAP (
          addr => addr,
          wr => wr,
          lfucnt => lfucnt,
          lfuclr => lfuclr,
          clk => clk,
          clr => clr,
          hit => hit,
          lfurez => lfurez
        );

   -- Clock process definitions
   clk_process :process
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
      wait for 5 ns;	
		clr <= '1';
      wait for clk_period;
		
		clr <= '0';
		wait for clk_period;
		addr <= "00000010100";
		lfucnt <= '1';
		wait for clk_period;
		wr <= '1';
		wait for clk_period;
		wr <= '0';
		lfuclr <= '1';
		wait for clk_period;
		wr <= '1';
		lfuclr <= '0';
		addr <= "01110101011";
		wait for clk_period;
		lfuclr <= '1';
		wait for clk_period;
		wr <= '0';
		lfuclr <= '0';
      wait;
   end process;

END;
