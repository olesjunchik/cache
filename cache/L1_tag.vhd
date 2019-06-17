library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_arith.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity L1_tag is
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

end L1_tag;

architecture L1_tag_arch of L1_tag is

COMPONENT L1_tag_ch
	generic(
		TAGSIZE 		: integer := 8;
		INDEXSIZE	: integer := 3;
		LFUSIZE		: integer := 3
	);
	port(
		addr		: in std_logic_vector(TAGSIZE + INDEXSIZE - 1 downto 0);
		wr			: in std_logic;
		
		lfucnt	: in std_logic;
		lfuclr	: in std_logic;
		
		clk		: in std_logic;
		clr		: in std_logic;
		-----------------
		hit		: out std_logic;
		lfurez	: out std_logic_vector(LFUSIZE - 1 downto 0)
	);
END COMPONENT;

constant CH_COUNT : integer := 2**NSIZE;
type TLfuRez is array(CH_COUNT - 1 downto 0) of std_logic_vector(LFUSIZE - 1 downto 0);

signal chWr, chLfuCnt, chLfuClr, chHit	: std_logic_vector(CH_COUNT - 1 downto 0);
signal chLfuRez	: TLfuRez;
signal num	: std_logic_vector(NSIZE - 1 downto 0);
signal mini	: integer;

alias addr_index	: std_logic_vector(INDEXSIZE - 1 downto 0) is addr(INDEXSIZE - 1 downto 0);

begin

	CH_GEN: for i in 0 to CH_COUNT - 1 generate
		TAG_CH: L1_tag_ch PORT MAP(
			addr => addr,
			wr => chWr(i),
			lfucnt => chLfuCnt(i),
			lfuclr => chLfuClr(i),
			clk => clk,
			clr =>clr,
			--------
			hit => chHit(i),
			lfurez => chLfuRez(i)
		);
	end generate CH_GEN;
	
	clk_proc : process (clr, wr, lfu, lfucnt, chLfuRez, mini)
	begin
			if (clr = '1') then
				num <= (others => '0');
				mini <= 0;
			else
				if (lfu = '1') then
					mini <= 0;
					for i in 0 to CH_COUNT - 1 loop
						if (conv_integer(chLfuRez(i)) < conv_integer(chLfuRez(mini))) then
							mini <= i;
						end if;
					end loop;
					
					chLfuClr(mini) <= '1';
					num <= conv_std_logic_vector(mini, NSIZE);
				else
					chLfuClr <= (others => '0');
				end if;
				
				if (lfucnt = '1') then
					chLfuCnt(conv_integer(num)) <= '1';
				else
					chLfuCnt <= (others => '0');
				end if;
				
				if (wr = '1') then
					chWr(conv_integer(num)) <= '1';
				else
					chWr <= (others => '0');
				end if;
			end if;
	end process clk_proc;
	
	hit_proc : process (chHit)
	begin
		hit <= chHit(0);
		num <= (others => '0');
		for i in 0 to CH_COUNT - 1 loop
			if (chHit(i) = '1') then
				num <= conv_std_logic_vector(i, NSIZE);
				hit <= '1';
			end if;
		end loop;
	end process hit_proc;
	
	index <= addr_index;
	n <= num;

end L1_tag_arch;

