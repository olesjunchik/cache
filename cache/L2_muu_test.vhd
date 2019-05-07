--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:21:23 04/13/2019
-- Design Name:   
-- Module Name:   /media/olesja/DATA/Cash/Cash_proj/L2_muu_test.vhd
-- Project Name:  Cash_proj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: L2_muu
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
 
ENTITY L2_muu_test IS
END L2_muu_test;
 
ARCHITECTURE behavior OF L2_muu_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT L2_muu
    PORT(
         hit : IN  std_logic;
         rd : IN  std_logic;
         wr : IN  std_logic;
         opack : IN  std_logic;
         clk : IN  std_logic;
         clr : IN  std_logic;
         ch : OUT  std_logic;
         twr : OUT  std_logic;
         dwr : OUT  std_logic;
         ack : OUT  std_logic;
         oprd : OUT  std_logic;
         opwr : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal hit : std_logic := '0';
   signal rd : std_logic := '0';
   signal wr : std_logic := '0';
   signal opack : std_logic := '0';
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal ch : std_logic;
   signal twr : std_logic;
   signal dwr : std_logic;
   signal ack : std_logic;
   signal oprd : std_logic;
   signal opwr : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: L2_muu PORT MAP (
          hit => hit,
          rd => rd,
          wr => wr,
          opack => opack,
          clk => clk,
          clr => clr,
          ch => ch,
          twr => twr,
          dwr => dwr,
          ack => ack,
          oprd => oprd,
          opwr => opwr
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
		wait until clk'event and clk = '1' and oprd = '1';
		opack <= '1';
		wait for clk_period;
		hit <= '1';
		wait until clk'event and clk = '1' and ack = '1';
		--not hit and write
		rd <= '0';
		opack <= '0';
		hit <= '0';
		wr <= '1';
		wait until clk'event and clk = '1' and oprd = '1';
		opack <= '1';
		wait for clk_period;
		hit <= '1';
		wait for clk_period;
		opack <= '0';
		wait until clk'event and clk = '1' and opwr = '1';
		opack <= '1';
		wait until clk'event and clk = '1' and ack = '1';
		--hit and write
		opack <= '0';
		wait until clk'event and clk = '1' and opwr = '1';
		opack <= '1';
		wait until clk'event and clk = '1' and ack = '1';
		hit <= '0';
		wr <= '0';
		opack <= '0';
      wait;
   end process;

END;
