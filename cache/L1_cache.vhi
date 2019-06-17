
-- VHDL Instantiation Created from source file L1_cache.vhd -- 16:47:39 06/13/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT L1_cache
	PORT(
		l2in : IN std_logic_vector(127 downto 0);
		datain : IN std_logic_vector(31 downto 0);
		addr : IN std_logic_vector(12 downto 0);
		bitv : IN std_logic_vector(3 downto 0);
		rd : IN std_logic;
		wr : IN std_logic;
		l2ack : IN std_logic;
		clk : IN std_logic;
		clr : IN std_logic;          
		dataout : OUT std_logic_vector(31 downto 0);
		l2out : OUT std_logic_vector(127 downto 0);
		l2addr : OUT std_logic_vector(10 downto 0);
		ack : OUT std_logic;
		l2rd : OUT std_logic;
		l2wr : OUT std_logic
		);
	END COMPONENT;

	Inst_L1_cache: L1_cache PORT MAP(
		l2in => ,
		datain => ,
		addr => ,
		bitv => ,
		rd => ,
		wr => ,
		l2ack => ,
		clk => ,
		clr => ,
		dataout => ,
		l2out => ,
		l2addr => ,
		ack => ,
		l2rd => ,
		l2wr => 
	);


