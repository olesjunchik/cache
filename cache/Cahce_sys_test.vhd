LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

ENTITY Cahce_sys_test IS
END Cahce_sys_test;
 
ARCHITECTURE behavior OF Cahce_sys_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Cache_system
    PORT(
         clk : IN  std_logic;
         clr : IN  std_logic;
         c_ask : IN  std_logic_vector(31 downto 0);
         c_addr : IN  std_logic_vector(12 downto 0);
         c_bitv : IN  std_logic_vector(3 downto 0);
         c_rd : IN  std_logic;
         c_wr : IN  std_logic;
         c_ans : OUT  std_logic_vector(31 downto 0);
         c_ack : OUT  std_logic;
         d_ask : IN  std_logic_vector(31 downto 0);
         d_addr : IN  std_logic_vector(12 downto 0);
         d_bitv : IN  std_logic_vector(3 downto 0);
         d_rd : IN  std_logic;
         d_wr : IN  std_logic;
         d_ans : OUT  std_logic_vector(31 downto 0);
         d_ack : OUT  std_logic;
         op_ans : IN  std_logic_vector(127 downto 0);
         op_ack : IN  std_logic;
         op_ask : OUT  std_logic_vector(127 downto 0);
         op_addr : OUT  std_logic_vector(10 downto 0);
         op_rd : OUT  std_logic;
         op_wr : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
   signal c_ask : std_logic_vector(31 downto 0) := (others => '0');
   signal c_addr : std_logic_vector(12 downto 0) := (others => '0');
   signal c_bitv : std_logic_vector(3 downto 0) := (others => '0');
   signal c_rd : std_logic := '0';
   signal c_wr : std_logic := '0';
   signal d_ask : std_logic_vector(31 downto 0) := (others => '0');
   signal d_addr : std_logic_vector(12 downto 0) := (others => '0');
   signal d_bitv : std_logic_vector(3 downto 0) := (others => '0');
   signal d_rd : std_logic := '0';
   signal d_wr : std_logic := '0';
   signal op_ans : std_logic_vector(127 downto 0) := (others => '0');
   signal op_ack : std_logic := '0';

 	--Outputs
   signal c_ans : std_logic_vector(31 downto 0);
   signal c_ack : std_logic;
   signal d_ans : std_logic_vector(31 downto 0);
   signal d_ack : std_logic;
   signal op_ask : std_logic_vector(127 downto 0);
   signal op_addr : std_logic_vector(10 downto 0);
   signal op_rd : std_logic;
   signal op_wr : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Cache_system PORT MAP (
          clk => clk,
          clr => clr,
          c_ask => c_ask,
          c_addr => c_addr,
          c_bitv => c_bitv,
          c_rd => c_rd,
          c_wr => c_wr,
          c_ans => c_ans,
          c_ack => c_ack,
          d_ask => d_ask,
          d_addr => d_addr,
          d_bitv => d_bitv,
          d_rd => d_rd,
          d_wr => d_wr,
          d_ans => d_ans,
          d_ack => d_ack,
          op_ans => op_ans,
          op_ack => op_ack,
          op_ask => op_ask,
          op_addr => op_addr,
          op_rd => op_rd,
          op_wr => op_wr
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
      -- hold reset state for 5 ns.
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
