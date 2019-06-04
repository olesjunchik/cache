
-- VHDL Instantiation Created from source file L1_tag_ch.vhd -- 17:03:14 05/21/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT L1_tag_ch
	PORT(
		addr : IN std_logic_vector(10 downto 0);
		wr : IN std_logic;
		lfucnt : IN std_logic;
		lfuclr : IN std_logic;
		clk : IN std_logic;
		clr : IN std_logic;          
		hit : OUT std_logic;
		lfurez : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_L1_tag_ch: L1_tag_ch PORT MAP(
		addr => ,
		wr => ,
		lfucnt => ,
		lfuclr => ,
		clk => ,
		clr => ,
		hit => ,
		lfurez => 
	);


