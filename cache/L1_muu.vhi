
-- VHDL Instantiation Created from source file L1_muu.vhd -- 13:35:18 06/09/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT L1_muu
	PORT(
		hit : IN std_logic;
		rd : IN std_logic;
		wr : IN std_logic;
		l2ack : IN std_logic;
		clk : IN std_logic;
		clr : IN std_logic;          
		lfu : OUT std_logic;
		cnt : OUT std_logic;
		ch : OUT std_logic;
		twr : OUT std_logic;
		dwr : OUT std_logic;
		ack : OUT std_logic;
		l2rd : OUT std_logic;
		l2wr : OUT std_logic
		);
	END COMPONENT;

	Inst_L1_muu: L1_muu PORT MAP(
		hit => ,
		rd => ,
		wr => ,
		l2ack => ,
		clk => ,
		clr => ,
		lfu => ,
		cnt => ,
		ch => ,
		twr => ,
		dwr => ,
		ack => ,
		l2rd => ,
		l2wr => 
	);


