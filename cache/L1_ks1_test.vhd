--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:00:47 06/08/2019
-- Design Name:   
-- Module Name:   /media/olesja/DATA/Cash/cache/L1_ks1_test.vhd
-- Project Name:  Cash_proj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: L1_ks1
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY L1_ks1_test IS
END L1_ks1_test;
 
ARCHITECTURE behavior OF L1_ks1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT L1_ks1
    PORT(
         l2in : IN  std_logic_vector(127 downto 0);
         data : IN  std_logic_vector(127 downto 0);
         procin : IN  std_logic_vector(31 downto 0);
         ofs : IN  std_logic_vector(1 downto 0);
         bitv : IN  std_logic_vector(3 downto 0);
         ch : IN  std_logic;
			clk : IN std_logic;
         dout : OUT  std_logic_vector(127 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal l2in : std_logic_vector(127 downto 0) := (others => '0');
   signal data : std_logic_vector(127 downto 0) := (others => '0');
   signal procin : std_logic_vector(31 downto 0) := (others => '0');
   signal ofs : std_logic_vector(1 downto 0) := (others => '0');
   signal bitv : std_logic_vector(3 downto 0) := (others => '0');
   signal ch : std_logic := '0';
	signal clk : std_logic := '0';

 	--Outputs
   signal dout : std_logic_vector(127 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	
	-- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: L1_ks1 PORT MAP (
          l2in => l2in,
          data => data,
          procin => procin,
          ofs => ofs,
          bitv => bitv,
          ch => ch,
			 clk => clk,
          dout => dout
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
      wait for 10 ns; 
		l2in <= conv_std_logic_vector(15, 128);
		data <= conv_std_logic_vector(96, 128);
		procin <= conv_std_logic_vector(298, 32);
		ch <= '0';
		wait for 20 ns;
		ch <= '1';
		wait for 20 ns;
		bitv <= "0011";
		ofs <= "00";
		wait for 20 ns;
		bitv <= "0001";
		ofs <= "01";
		wait for 20 ns;
		ofs <= "01";
		wait for 20 ns;
		bitv <= "0111";
		ofs <= "11";
      wait;
   end process;

END;
