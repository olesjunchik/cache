
-- VHDL Instantiation Created from source file L2_cache.vhd -- 16:47:57 06/13/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT L2_cache
	PORT(
		opin : IN std_logic_vector(127 downto 0);
		datain : IN std_logic_vector(127 downto 0);
		addr : IN std_logic_vector(10 downto 0);
		rd : IN std_logic;
		wr : IN std_logic;
		opack : IN std_logic;
		clk : IN std_logic;
		clr : IN std_logic;          
		dataout : OUT std_logic_vector(127 downto 0);
		opout : OUT std_logic_vector(127 downto 0);
		opaddr : OUT std_logic_vector(10 downto 0);
		ack : OUT std_logic;
		oprd : OUT std_logic;
		opwr : OUT std_logic
		);
	END COMPONENT;

	Inst_L2_cache: L2_cache PORT MAP(
		opin => ,
		datain => ,
		addr => ,
		rd => ,
		wr => ,
		opack => ,
		clk => ,
		clr => ,
		dataout => ,
		opout => ,
		opaddr => ,
		ack => ,
		oprd => ,
		opwr => 
	);


