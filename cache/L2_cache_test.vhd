--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:13:09 04/23/2019
-- Design Name:   
-- Module Name:   F:/EVM/Cash_proj/L2_cache_test.vhd
-- Project Name:  Cash_proj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: L2_cache
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
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;
 
ENTITY L2_cache_test IS
END L2_cache_test;
 
ARCHITECTURE behavior OF L2_cache_test IS 
 
    COMPONENT L2_cache
    PORT(
         opin : IN  std_logic_vector(127 downto 0);
         datain : IN  std_logic_vector(127 downto 0);
         addr : IN  std_logic_vector(10 downto 0);
         rd : IN  std_logic;
         wr : IN  std_logic;
         opack : IN  std_logic;
         clk : IN  std_logic;
         clr : IN  std_logic;
         dataout : OUT  std_logic_vector(127 downto 0);
         opout : OUT  std_logic_vector(127 downto 0);
         opaddr : OUT  std_logic_vector(10 downto 0);
         ack : OUT  std_logic;
         oprd : OUT  std_logic;
         opwr : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal opin : std_logic_vector(127 downto 0) := (others => '0');
   signal datain : std_logic_vector(127 downto 0) := (others => '0');
   signal addr : std_logic_vector(10 downto 0) := (others => '0');
   signal rd : std_logic := '0';
   signal wr : std_logic := '0';
   signal opack : std_logic := '0';
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal dataout : std_logic_vector(127 downto 0);
   signal opout : std_logic_vector(127 downto 0);
   signal opaddr : std_logic_vector(10 downto 0);
   signal ack : std_logic;
   signal oprd : std_logic;
   signal opwr : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: L2_cache PORT MAP (
          opin => opin,
          datain => datain,
          addr => addr,
          rd => rd,
          wr => wr,
          opack => opack,
          clk => clk,
          clr => clr,
          dataout => dataout,
          opout => opout,
          opaddr => opaddr,
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
      wait for 5 ns;	
		clr <= '1';
		
		--read not hit
      wait for clk_period;
		clr	<= '0';
		rd		<= '1';
		addr	<= "11100000000";
		wait until clk'event and clk = '1' and oprd = '1';
		opin	<= conv_std_logic_vector(1024, 128);
		opack	<= '1';
		wait for clk_period;
		opack <= '0';
		
		--read hit
		wait until clk'event and clk = '1' and ack = '1';
		wait for clk_period;
		wait until clk'event and clk = '1' and ack = '1';
		rd <= '0';
		
		--not hit and write
		wr <= '1';
		addr	<= "11100000011";
		datain <= conv_std_logic_vector(315, 128);
		wait until clk'event and clk = '1' and oprd = '1';
		opin	<= conv_std_logic_vector(500, 128);
		opack	<= '1';
		wait for clk_period;
		opack <= '0';
		wait until clk'event and clk = '1' and opwr = '1';
		opack <= '1';
		wait until clk'event and clk = '1' and ack = '1';
		opack <= '0';
		wr <= '0';
		--read hit
		rd <= '1';
		wait for clk_period;
		wait until clk'event and clk = '1' and ack = '1';
		rd <= '0';
		
		--hit and write
		wr <= '1';
		addr	<= "11100000000";
		datain <= conv_std_logic_vector(666, 128);
		wait until clk'event and clk = '1' and opwr = '1';
		opack <= '1';
		wait until clk'event and clk = '1' and ack = '1';
		wr <= '0';
		opack <= '0';
		--read hit
		rd <= '1';
		wait for clk_period;
		wait until clk'event and clk = '1' and ack = '1';
		rd <= '0';
		wait;
   end process;

END;





















