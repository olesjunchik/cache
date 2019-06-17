library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity KS is
	generic(
		PROCWORDSIZE	: integer := 4;
		DATASIZE		: integer := 128;
		TAGSIZE 		: integer := 8;
		INDEXSIZE	: integer := 3;
		OFSIZE		: integer := 2;
		NSIZE			: integer := 3
	);
	port(
		c_l2in		: out std_logic_vector(DATASIZE - 1 downto 0);
		c_l2ack		: out std_logic;
		
		c_l2out		: in std_logic_vector(DATASIZE - 1 downto 0);
		c_l2addr		: in std_logic_vector(TAGSIZE + INDEXSIZE- 1 downto 0);
		c_l2rd		: in std_logic;
		c_l2wr		: in std_logic;
		----------------
		d_l2in		: out std_logic_vector(DATASIZE - 1 downto 0);
		d_l2ack		: out std_logic;
		
		d_l2out		: in std_logic_vector(DATASIZE - 1 downto 0);
		d_l2addr		: in std_logic_vector(TAGSIZE + INDEXSIZE- 1 downto 0);
		d_l2rd		: in std_logic;
		d_l2wr		: in std_logic;
		----------------
		l2_datain	: out std_logic_vector(DATASIZE - 1 downto 0);
		l2_addr		: out std_logic_vector(TAGSIZE + INDEXSIZE - 1 downto 0);
		l2_rd			: out std_logic;
		l2_wr			: out std_logic;

		l2_dataout	: in std_logic_vector(DATASIZE - 1 downto 0);
		l2_ack		: in std_logic
	);
end KS;

architecture KS_arch of KS is

begin
	l2_datain <= c_l2out when (c_l2rd = '1' or c_l2wr = '1') else d_l2out;
	l2_addr <= c_l2addr when (c_l2rd = '1' or c_l2wr = '1') else d_l2addr;
	l2_rd <= c_l2rd when (c_l2rd = '1' or c_l2wr = '1') else d_l2rd;
	l2_wr <= c_l2wr when (c_l2rd = '1' or c_l2wr = '1') else d_l2wr;
	
	c_l2in <= l2_dataout;
	d_l2in <= l2_dataout;
	c_l2ack <= l2_ack when (c_l2rd = '1' or c_l2wr = '1') else '0';
	c_l2ack <= l2_ack when not(c_l2rd = '1' or c_l2wr = '1') else '0';

end KS_arch;

