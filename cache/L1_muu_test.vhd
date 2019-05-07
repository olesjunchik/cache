--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:51:55 04/09/2019
-- Design Name:   
-- Module Name:   /media/olesja/DATA/Cash/Cash_proj/L1_muu_test.vhd
-- Project Name:  Cash_proj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: L1_muu
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
 
ENTITY L1_muu_test IS
END L1_muu_test;
 
ARCHITECTURE behavior OF L1_muu_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT L1_muu
    PORT(
         hit : IN  std_logic;
         rd : IN  std_logic;
         wr : IN  std_logic;
         clk : IN  std_logic;
         clr : IN  std_logic;
         l2ack : IN  std_logic;
         lfu : OUT  std_logic;
         ch : OUT  std_logic;
         twr : OUT  std_logic;
         dwr : OUT  std_logic;
         ack : OUT  std_logic;
         l2rd : OUT  std_logic;
         l2wr : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal hit : std_logic := '0';
   signal rd : std_logic := '0';
   signal wr : std_logic := '0';
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
   signal l2ack : std_logic := '0';

 	--Outputs
   signal lfu : std_logic;
   signal ch : std_logic;
   signal twr : std_logic;
   signal dwr : std_logic;
   signal ack : std_logic;
   signal l2rd : std_logic;
   signal l2wr : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: L1_muu PORT MAP (
          hit => hit,
          rd => rd,
          wr => wr,
          clk => clk,
          clr => clr,
          l2ack => l2ack,
          lfu => lfu,
          ch => ch,
          twr => twr,
          dwr => dwr,
          ack => ack,
          l2rd => l2rd,
          l2wr => l2wr
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
      wait for 10 ns;	
		clr <= '1';
		--hit and read
      wait for clk_period*3;
		clr <= '0';
		hit <= '1';
		rd <= '1'; 
		wait until clk'event and clk = '1' and ack = '1';
		--not hit and read
		hit <= '0';
		wait until clk'event and clk = '1' and l2rd = '1';
		l2ack <= '1';
		wait for clk_period;
		hit <= '1';
		wait until clk'event and clk = '1' and ack = '1';
		--not hit and write
		rd <= '0';
		l2ack <= '0';
		hit <= '0';
		wr <= '1';
		wait until clk'event and clk = '1' and l2rd = '1';
		l2ack <= '1';
		wait for clk_period;
		hit <= '1';
		wait for clk_period;
		l2ack <= '0';
		wait until clk'event and clk = '1' and l2wr = '1';
		l2ack <= '1';
		wait until clk'event and clk = '1' and ack = '1';
		--hit and write
		l2ack <= '0';
		wait until clk'event and clk = '1' and l2wr = '1';
		l2ack <= '1';
		wait until clk'event and clk = '1' and ack = '1';
		hit <= '0';
		wr <= '0';
		l2ack <= '0';
      wait;
   end process;

END;





