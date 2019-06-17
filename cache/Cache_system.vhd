library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Cache_system is
	generic(
		PROCWORDSIZE	: integer := 4;
		DATASIZE		: integer := 128;
		TAGSIZE 		: integer := 8;
		INDEXSIZE	: integer := 3;
		OFSIZE		: integer := 2
	);
	port(
		clk		: in std_logic;
		clr		: in std_logic;
		
		c_ask		: in std_logic_vector(PROCWORDSIZE * 8 - 1 downto 0);
		c_addr	: in std_logic_vector(TAGSIZE + INDEXSIZE + OFSIZE- 1 downto 0);
		
		c_bitv	: in std_logic_vector(PROCWORDSIZE - 1 downto 0);
		c_rd		: in std_logic;
		c_wr		: in std_logic;
		
		c_ans		: out std_logic_vector(PROCWORDSIZE * 8 - 1 downto 0);
		c_ack		: out std_logic;
		------------
		d_ask		: in std_logic_vector(PROCWORDSIZE * 8 - 1 downto 0);
		d_addr	: in std_logic_vector(TAGSIZE + INDEXSIZE + OFSIZE- 1 downto 0);
		
		d_bitv	: in std_logic_vector(PROCWORDSIZE - 1 downto 0);
		d_rd		: in std_logic;
		d_wr		: in std_logic;
		
		d_ans		: out std_logic_vector(PROCWORDSIZE * 8 - 1 downto 0);
		d_ack		: out std_logic;
		------------
		op_ans	: in std_logic_vector(DATASIZE - 1 downto 0);
		op_ack	: in std_logic;

		op_ask	: out std_logic_vector(DATASIZE - 1 downto 0);
		op_addr	: out std_logic_vector(TAGSIZE + INDEXSIZE - 1 downto 0);
		op_rd		: out std_logic;
		op_wr		: out std_logic
	);
end Cache_system;

architecture Cache_system_arch of Cache_system is

COMPONENT L1_cache
	generic(
		PROCWORDSIZE	: integer := 4;
		DATASIZE		: integer := 128;
		TAGSIZE 		: integer := 8;
		INDEXSIZE	: integer := 3;
		OFSIZE		: integer := 2;
		NSIZE			: integer := 3
	);
	port(
		l2in		: in std_logic_vector(DATASIZE - 1 downto 0);
		datain	: in std_logic_vector(PROCWORDSIZE * 8 - 1 downto 0);
		addr		: in std_logic_vector(TAGSIZE + INDEXSIZE + OFSIZE- 1 downto 0);
		
		bitv		: in std_logic_vector(PROCWORDSIZE - 1 downto 0);
		rd			: in std_logic;
		wr			: in std_logic;
		
		l2ack		: in std_logic;
		
		clk		: in std_logic;
		clr		: in std_logic;
		------------
		dataout	: out std_logic_vector(PROCWORDSIZE * 8 - 1 downto 0);
		l2out		: out std_logic_vector(DATASIZE - 1 downto 0);
		l2addr	: out std_logic_vector(TAGSIZE + INDEXSIZE- 1 downto 0);
		
		ack		: out std_logic;
		
		l2rd		: out std_logic;
		l2wr		: out std_logic
	);
END COMPONENT;

COMPONENT L2_cache
	generic(
		DATASIZE	: integer := 128;
		TAGSIZE 		: integer := 3;
		INDEXSIZE	: integer := 8
	);
	port(
		opin		: in std_logic_vector(DATASIZE - 1 downto 0);
		datain	: in std_logic_vector(DATASIZE - 1 downto 0);
		addr		: in std_logic_vector(TAGSIZE + INDEXSIZE - 1 downto 0);
		
		rd			: in std_logic;
		wr			: in std_logic;
		
		opack		: in std_logic;
		
		clk		: in std_logic;
		clr		: in std_logic;
		------------
		dataout	: out std_logic_vector(DATASIZE - 1 downto 0);
		opout		: out std_logic_vector(DATASIZE - 1 downto 0);
		opaddr	: out std_logic_vector(TAGSIZE + INDEXSIZE - 1 downto 0);
		
		ack		: out std_logic;
		
		oprd		: out std_logic;
		opwr		: out std_logic
	);
END COMPONENT;

COMPONENT KS
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
END COMPONENT;

		signal c_l2in, c_l2out, d_l2in, d_l2out, l2_datain, l2_dataout : std_logic_vector(DATASIZE - 1 downto 0);
		signal c_l2ack, c_l2rd, c_l2wr, d_l2ack, d_l2rd, d_l2wr, l2_rd, l2_wr, l2_ack : std_logic;
		signal c_l2addr, d_l2addr, l2_addr : std_logic_vector(TAGSIZE + INDEXSIZE- 1 downto 0);

begin
	L1_com: L1_cache
	PORT MAP(
		l2in => c_l2in,
		datain => c_ask,
		addr => c_addr,
		bitv => c_bitv,
		rd => c_rd,
		wr => c_wr,
		l2ack => c_l2ack,
		clk => clk,
		clr => clr,
		dataout => c_ans,
		l2out => c_l2out,
		l2addr => c_l2addr,
		ack => c_ack,
		l2rd => c_l2rd,
		l2wr => c_l2wr
	);
	L1_data: L1_cache
	PORT MAP(
		l2in => d_l2in,
		datain => d_ask,
		addr => d_addr,
		bitv => d_bitv,
		rd => d_rd,
		wr => d_wr,
		l2ack => d_l2ack,
		clk => clk,
		clr => clr,
		dataout => d_ans,
		l2out => d_l2out,
		l2addr => d_l2addr,
		ack => d_ack,
		l2rd => d_l2rd,
		l2wr => d_l2wr
	);
	L2: L2_cache PORT MAP(
		opin => op_ans,
		datain => l2_datain,
		addr => l2_addr,
		rd => l2_rd,
		wr => l2_wr,
		opack => op_ack,
		clk => clk,
		clr => clr,
		dataout => l2_dataout,
		opout => op_ask,
		opaddr => op_addr,
		ack => l2_ack,
		oprd => op_rd,
		opwr => op_wr
	);
	KS: KS PORT MAP(
		c_l2in => c_l2in,
		c_l2ack => c_l2ack,
		c_l2out => c_l2out,
		c_l2addr => c_l2addr,
		c_l2rd => c_l2rd,
		c_l2wr => c_l2wr,
		d_l2in => d_l2in,
		d_l2ack => d_l2ack,
		d_l2out => d_l2out,
		d_l2addr => d_l2addr,
		d_l2rd => d_l2rd,
		d_l2wr => d_l2wr,
		l2_datain => l2_datain,
		l2_addr => 2_addr,
		l2_rd => l2_rd,
		l2_wr => l2_wr,
		l2_dataout => l2_dataout,
		l2_ack => l2_ack
	);

end Cache_system_arch;

