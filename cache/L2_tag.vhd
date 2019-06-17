library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity L2_tag is
	generic(
		TAGSIZE 		: integer := 3;
		INDEXSIZE	: integer := 8
	);
	port(
		addr  : in std_logic_vector(TAGSIZE + INDEXSIZE - 1 downto 0);		
		wr		: in std_logic;
		
		clk 	: in std_logic;
		clr 	: in std_logic;
		---------
		hit	: out std_logic;
		index	: out std_logic_vector(INDEXSIZE - 1 downto 0)
	);
end L2_tag;

architecture L2_tag_arch of L2_tag is
	constant MEMSIZE	: integer := 2**INDEXSIZE;
	
	type TTagMem is array (MEMSIZE - 1 downto 0) of std_logic_vector (TAGSIZE - 1 downto 0);
	type TValid is array (MEMSIZE - 1 downto 0) of std_logic;

	signal tag_mem : TTagMem;
	signal valid : TValid;
	signal cur_block : std_logic_vector(TAGSIZE - 1 downto 0);
	signal bitv : std_logic;
	
	alias addr_tag		: std_logic_vector(TAGSIZE - 1 downto 0) is addr(TAGSIZE + INDEXSIZE - 1 downto INDEXSIZE);
	alias addr_index	: std_logic_vector(INDEXSIZE - 1 downto 0) is addr(INDEXSIZE - 1 downto 0);

begin
	cur_block <=  tag_mem(conv_integer(addr_index));
	bitv <= valid(conv_integer(addr_index));

	tag_mem_p : process (clk)
	begin
		if (clk'event and clk = '1') then
			if clr = '1' then
				tag_mem <= (tag_mem'range => (others => '0'));
				valid <= (others => '0');	--invalid
			elsif (wr = '1') then
				tag_mem(conv_integer(addr_index)) <= addr_tag;
				valid(conv_integer(addr_index)) <= '1';
			end if;
		end if;
	end process tag_mem_p;
	
	hit <= '1' when (cur_block = addr_tag and bitv = '1') else '0';
	index <= addr_index;

end L2_tag_arch;



















