
-- VHDL Instantiation Created from source file L2_muu.vhd -- 18:37:00 04/23/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT L2_muu
	PORT(
		hit : IN std_logic;
		rd : IN std_logic;
		wr : IN std_logic;
		opack : IN std_logic;
		clk : IN std_logic;
		clr : IN std_logic;          
		ch : OUT std_logic;
		twr : OUT std_logic;
		dwr : OUT std_logic;
		ack : OUT std_logic;
		oprd : OUT std_logic;
		opwr : OUT std_logic
		);
	END COMPONENT;

	Inst_L2_muu: L2_muu PORT MAP(
		hit => ,
		rd => ,
		wr => ,
		opack => ,
		clk => ,
		clr => ,
		ch => ,
		twr => ,
		dwr => ,
		ack => ,
		oprd => ,
		opwr => 
	);


