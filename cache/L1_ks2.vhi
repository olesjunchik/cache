
-- VHDL Instantiation Created from source file L1_ks2.vhd -- 14:41:57 06/09/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT L1_ks2
	PORT(
		data : IN std_logic_vector(127 downto 0);
		ofs : IN std_logic_vector(1 downto 0);          
		dout : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_L1_ks2: L1_ks2 PORT MAP(
		data => ,
		ofs => ,
		dout => 
	);


