
-- VHDL Instantiation Created from source file L2_tag.vhd -- 18:45:10 04/23/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT L2_tag
	PORT(
		addr : IN std_logic_vector(10 downto 0);
		wr : IN std_logic;
		clk : IN std_logic;
		clr : IN std_logic;          
		hit : OUT std_logic;
		index : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_L2_tag: L2_tag PORT MAP(
		addr => ,
		wr => ,
		clk => ,
		clr => ,
		hit => ,
		index => 
	);


