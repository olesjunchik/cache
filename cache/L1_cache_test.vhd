LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;
 
ENTITY L1_cache_test IS
END L1_cache_test;
 
ARCHITECTURE behavior OF L1_cache_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT L1_cache
    PORT(
         l2in : IN  std_logic_vector(127 downto 0);
         datain : IN  std_logic_vector(31 downto 0);
         addr : IN  std_logic_vector(12 downto 0);
         bitv : IN  std_logic_vector(3 downto 0);
         rd : IN  std_logic;
         wr : IN  std_logic;
         l2ack : IN  std_logic;
         clk : IN  std_logic;
         clr : IN  std_logic;
         dataout : OUT  std_logic_vector(31 downto 0);
         l2out : OUT  std_logic_vector(127 downto 0);
         l2addr : OUT  std_logic_vector(10 downto 0);
         ack : OUT  std_logic;
         l2rd : OUT  std_logic;
         l2wr : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal l2in : std_logic_vector(127 downto 0) := (others => '0');
   signal datain : std_logic_vector(31 downto 0) := (others => '0');
   signal addr : std_logic_vector(12 downto 0) := (others => '0');
   signal bitv : std_logic_vector(3 downto 0) := (others => '0');
   signal rd : std_logic := '0';
   signal wr : std_logic := '0';
   signal l2ack : std_logic := '0';
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal dataout : std_logic_vector(31 downto 0);
   signal l2out : std_logic_vector(127 downto 0);
   signal l2addr : std_logic_vector(10 downto 0);
   signal ack : std_logic;
   signal l2rd : std_logic;
   signal l2wr : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: L1_cache PORT MAP (
          l2in => l2in,
          datain => datain,
          addr => addr,
          bitv => bitv,
          rd => rd,
          wr => wr,
          l2ack => l2ack,
          clk => clk,
          clr => clr,
          dataout => dataout,
          l2out => l2out,
          l2addr => l2addr,
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
      wait for 5 ns;	
		clr <= '1';
		
		--read not hit
      wait for clk_period;
		clr	<= '0';
		bitv <= "1111";
		rd		<= '1';
		addr	<= "1110000000000";
		wait until clk'event and clk = '1' and l2rd = '1';
		l2in	<= conv_std_logic_vector(1024, 128);
		l2ack	<= '1';
		wait for clk_period;
		l2ack <= '0';
		
		--read hit
		wait until clk'event and clk = '1' and ack = '1';
		wait for clk_period;
		wait until clk'event and clk = '1' and ack = '1';
		rd <= '0';
		
		--not hit and write
		wr <= '1';
		addr	<= "1110000001101";
		datain <= conv_std_logic_vector(315, 32);
		wait until clk'event and clk = '1' and l2rd = '1';
		l2in	<= conv_std_logic_vector(500, 128);
		l2ack	<= '1';
		wait for clk_period;
		l2ack <= '0';
		wait until clk'event and clk = '1' and l2wr = '1';
		l2ack <= '1';
		wait until clk'event and clk = '1' and ack = '1';
		l2ack <= '0';
		wr <= '0';
		--read hit
		rd <= '1';
		wait for clk_period;
		wait until clk'event and clk = '1' and ack = '1';
		rd <= '0';
		
		--hit and write
		wr <= '1';
		bitv <= "0110";
		addr	<= "1110000000010";
		datain <= conv_std_logic_vector(666, 32);
		wait until clk'event and clk = '1' and l2wr = '1';
		l2ack <= '1';
		wait until clk'event and clk = '1' and ack = '1';
		wr <= '0';
		l2ack <= '0';
		--read hit
		rd <= '1';
		wait for clk_period;
		wait until clk'event and clk = '1' and ack = '1';
		rd <= '0';
		wait;
   end process;

END;
