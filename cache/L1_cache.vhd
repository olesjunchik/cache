library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity L1_cache is
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
end L1_cache;

architecture L1_cache_arch of L1_cache is

COMPONENT L1_ks1
	generic(
		PROCWORDSIZE	: integer := 4;  --byte
		OFSIZE			: integer := 2;  --bit
		DATASIZE 		: integer := 128 --bit
	);
	
	port(
		l2in		: in std_logic_vector(DATASIZE - 1 downto 0);
		data		: in std_logic_vector(DATASIZE - 1 downto 0);
		procin	: in std_logic_vector(PROCWORDSIZE * 8 - 1 downto 0);
		
		ofs		: in std_logic_vector(OFSIZE - 1 downto 0);
		bitv		: in std_logic_vector(PROCWORDSIZE - 1 downto 0);
		ch			: in std_logic;
		--------
		dout		: out std_logic_vector(DATASIZE -1 downto 0)
	);
END COMPONENT;

COMPONENT L1_ks2
	generic(
		PROCWORDSIZE	: integer := 4;  --byte
		OFSIZE			: integer := 2;  --bit
		DATASIZE 		: integer := 128 --bit
	);
	
	port(
		data		: in std_logic_vector(DATASIZE - 1 downto 0);
		ofs		: in std_logic_vector(OFSIZE - 1 downto 0);
		--------
		dout		: out std_logic_vector(PROCWORDSIZE * 8 -1 downto 0)
	);
END COMPONENT;

COMPONENT L1_muu
	port( 
			  hit		: in  STD_LOGIC;
           rd		: in  STD_LOGIC;
           wr		: in  STD_LOGIC;
           l2ack	: in  STD_LOGIC;
			  
			  clk		: in  STD_LOGIC;
			  clr		: in	STD_LOGIC;
			  --------
           lfu		: out STD_LOGIC;
			  cnt		: out	STD_LOGIC;
           ch		: out STD_LOGIC;
			  
           twr		: out STD_LOGIC;
           dwr		: out STD_LOGIC;
			  
           ack		: out STD_LOGIC;
			  
           l2rd	: out STD_LOGIC;
           l2wr	: out STD_LOGIC
	);
END COMPONENT;

COMPONENT L1_tag
	generic(
		TAGSIZE 		: integer := 8;
		INDEXSIZE	: integer := 3;
		LFUSIZE		: integer := 3;
		NSIZE			: integer := 3
	);
	port(
		addr  	: in std_logic_vector(TAGSIZE + INDEXSIZE - 1 downto 0);		
		wr			: in std_logic;
		lfu		: in std_logic;
		lfucnt	: in std_logic;
		
		clk 		: in std_logic;
		clr 		: in std_logic;
		---------
		hit		: out std_logic;
		index		: out std_logic_vector(INDEXSIZE - 1 downto 0);
		n			: out std_logic_vector(NSIZE - 1 downto 0)
	);
END COMPONENT;

COMPONENT L1_mem
  port (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)
  );
END COMPONENT;

	signal data, dout : std_logic_vector(DATASIZE - 1 downto 0);
	signal memaddr : std_logic_vector(INDEXSIZE + NSIZE - 1 downto 0); --n + index
	signal ch, hit, twr, dwr, lfu, lfucnt : std_logic;
	
	alias index : std_logic_vector(INDEXSIZE - 1 downto 0) is memaddr(INDEXSIZE - 1 downto 0);
	alias n : std_logic_vector(NSIZE - 1 downto 0) is memaddr(INDEXSIZE + NSIZE - 1 downto INDEXSIZE);
	alias ofs : std_logic_vector(OFSIZE - 1 downto 0) is addr(OFSIZE - 1 downto 0);
	alias tagaddr : std_logic_vector(TAGSIZE + INDEXSIZE - 1 downto 0) is addr(TAGSIZE + INDEXSIZE + OFSIZE - 1 downto OFSIZE);

begin
	MUU: L1_muu
	PORT MAP(
		hit => hit,
		rd => rd,
		wr => wr,
		l2ack => l2ack,
		clk => clk,
		clr => clr,
		lfu => lfu,
		cnt => lfucnt,
		ch => ch,
		twr => twr,
		dwr => dwr,
		ack => ack,
		l2rd => l2rd,
		l2wr => l2wr
	);
	
	TAG_MEM: L1_tag
	PORT MAP(
		addr => tagaddr,
		wr => twr,
		lfu => lfu,
		lfucnt => lfucnt,
		clk => clk,
		clr => clr,
		hit => hit,
		index => index,
		n => n
	);
	
	KS1: L1_ks1 PORT MAP(
		l2in => l2in,
		data => dout,
		procin => datain,
		ofs => ofs,
		bitv => bitv,
		ch => ch,
		dout => data
	);
	
	KS2: L1_ks2 PORT MAP(
		data => dout,
		ofs => ofs,
		dout => dataout
	);
	
	MEM : L1_mem
	PORT MAP (
    clka => clk,
    wea(0) => dwr,
    addra => memaddr,
    dina => data,
    douta => dout
  );
  l2out <= dout;
  l2addr <= tagaddr;

end L1_cache_arch;

