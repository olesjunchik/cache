
-- VHDL Instantiation Created from source file L1_tag.vhd -- 13:44:12 06/09/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT L1_tag
	PORT(
		addr : IN std_logic_vector(10 downto 0);
		wr : IN std_logic;
		lfu : IN std_logic;
		lfucnt : IN std_logic;
		clk : IN std_logic;
		clr : IN std_logic;          
		hit : OUT std_logic;
		index : OUT std_logic_vector(2 downto 0);
		n : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_L1_tag: L1_tag PORT MAP(
		addr => ,
		wr => ,
		lfu => ,
		lfucnt => ,
		clk => ,
		clr => ,
		hit => ,
		index => ,
		n => 
	);


