
-- VHDL Instantiation Created from source file KS.vhd -- 16:48:24 06/13/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT KS
	PORT(
		c_l2out : IN std_logic_vector(127 downto 0);
		c_l2addr : IN std_logic_vector(10 downto 0);
		c_l2rd : IN std_logic;
		c_l2wr : IN std_logic;
		d_l2out : IN std_logic_vector(127 downto 0);
		d_l2addr : IN std_logic_vector(10 downto 0);
		d_l2rd : IN std_logic;
		d_l2wr : IN std_logic;
		l2_dataout : IN std_logic_vector(127 downto 0);
		l2_ack : IN std_logic;          
		c_l2in : OUT std_logic_vector(127 downto 0);
		c_l2ack : OUT std_logic;
		d_l2in : OUT std_logic_vector(127 downto 0);
		d_l2ack : OUT std_logic;
		l2_datain : OUT std_logic_vector(127 downto 0);
		l2_addr : OUT std_logic_vector(10 downto 0);
		l2_rd : OUT std_logic;
		l2_wr : OUT std_logic
		);
	END COMPONENT;

	Inst_KS: KS PORT MAP(
		c_l2in => ,
		c_l2ack => ,
		c_l2out => ,
		c_l2addr => ,
		c_l2rd => ,
		c_l2wr => ,
		d_l2in => ,
		d_l2ack => ,
		d_l2out => ,
		d_l2addr => ,
		d_l2rd => ,
		d_l2wr => ,
		l2_datain => ,
		l2_addr => ,
		l2_rd => ,
		l2_wr => ,
		l2_dataout => ,
		l2_ack => 
	);


