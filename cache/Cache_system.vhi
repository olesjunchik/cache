
-- VHDL Instantiation Created from source file Cache_system.vhd -- 16:46:52 06/13/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Cache_system
	PORT(
		clk : IN std_logic;
		clr : IN std_logic;
		p_ask : IN std_logic_vector(31 downto 0);
		p_addr : IN std_logic_vector(12 downto 0);
		p_bitv : IN std_logic_vector(3 downto 0);
		p_rd : IN std_logic;
		p_wr : IN std_logic;
		op_ans : IN std_logic_vector(127 downto 0);
		op_ack : IN std_logic;          
		p_ans : OUT std_logic_vector(31 downto 0);
		p_ack : OUT std_logic;
		op_ask : OUT std_logic_vector(127 downto 0);
		op_addr : OUT std_logic_vector(10 downto 0);
		op_rd : OUT std_logic;
		op_wr : OUT std_logic
		);
	END COMPONENT;

	Inst_Cache_system: Cache_system PORT MAP(
		clk => ,
		clr => ,
		p_ask => ,
		p_addr => ,
		p_bitv => ,
		p_rd => ,
		p_wr => ,
		p_ans => ,
		p_ack => ,
		op_ans => ,
		op_ack => ,
		op_ask => ,
		op_addr => ,
		op_rd => ,
		op_wr => 
	);


