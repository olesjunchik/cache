library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity L1_tag_ch is
	generic(
		TAGSIZE 		: integer := 8;
		INDEXSIZE	: integer := 3;
		LFUSIZE		: integer := 3
	);
	port(
		addr  	: in std_logic_vector(TAGSIZE + INDEXSIZE - 1 downto 0);		
		wr			: in std_logic;
		lfucnt	: in std_logic;
		lfuclr	: in std_logic;
		
		clk 		: in std_logic;
		clr 		: in std_logic;
		---------
		hit		: out std_logic;
		lfurez	: out std_logic_vector (LFUSIZE - 1 downto 0)
	);
end L1_tag_ch;

architecture L1_tag_ch_arch of L1_tag_ch is
	constant MEMSIZE	: integer := 2**INDEXSIZE;
	
	type TTagMem is array (MEMSIZE - 1 downto 0) of std_logic_vector (TAGSIZE - 1 downto 0);
	type TLfuMem is array (MEMSIZE - 1 downto 0) of std_logic_vector (LFUSIZE - 1 downto 0);
	type TValid is array (MEMSIZE - 1 downto 0) of std_logic;

	signal tag_mem : TTagMem;
	signal lfu_mem : TLfuMem;
	signal valid : TValid;
	signal cur_block : std_logic_vector(TAGSIZE - 1 downto 0);
	signal cur_lfu	: std_logic_vector(LFUSIZE - 1 downto 0);
	signal bitv : std_logic;
	
	alias addr_tag		: std_logic_vector(TAGSIZE - 1 downto 0) is addr(TAGSIZE + INDEXSIZE - 1 downto INDEXSIZE);
	alias addr_index	: std_logic_vector(INDEXSIZE - 1 downto 0) is addr(INDEXSIZE - 1 downto 0);

begin
	cur_block <= tag_mem(conv_integer(addr_index));
	cur_lfu <= lfu_mem(conv_integer(addr_index));
	bitv <= valid(conv_integer(addr_index));

	tag_mem_p : process (clk)
	begin
		if (clk'event and clk = '1') then
			if (clr = '1') then
				tag_mem <= (tag_mem'range => (others => '0'));
				lfu_mem <= (lfu_mem'range => (others => '0'));
				valid <= (others => '0');	--invalid
			else
				if (wr = '1') then
					tag_mem(conv_integer(addr_index)) <= addr_tag;
					valid(conv_integer(addr_index)) <= '1';
				end if;
				if (lfuclr = '1') then
					lfu_mem(conv_integer(addr_index)) <= conv_std_logic_vector(0, LFUSIZE);
				elsif (lfucnt = '1') then
					lfu_mem(conv_integer(addr_index)) <= conv_std_logic_vector(conv_integer(cur_lfu) + 1, LFUSIZE);
				end if;
			end if;
		end if;
	end process tag_mem_p;
	
	hit <= '1' when (cur_block = addr_tag and bitv = '1') else '0';
	lfurez <= cur_lfu;

end L1_tag_ch_arch;
















