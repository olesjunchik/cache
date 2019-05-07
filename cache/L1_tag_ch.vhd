----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:08:08 04/16/2019 
-- Design Name: 
-- Module Name:    L1_tag_ch - L1_tag_ch_arch 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity L1_tag_ch is
	generic(
		TAG 		: integer := 8;
		INDEX		: integer := 3;
		LFUSIZE	: integer := 3
	);
	port(
		addr  	: in std_logic_vector(TAG + INDEX - 1 downto 0);		
		wr			: in std_logic;
		clrlfu	: in std_logic;
		cnt		: in std_logic;
		
		clk 		: in std_logic;
		clr 		: in std_logic;
		---------
		hit		: out std_logic
	);
end L1_tag_ch;

architecture L1_tag_ch_arch of L1_tag_ch is
	constant MEMSIZE	: integer := 2**INDEX;
	
	type TTagMem is array (MEMSIZE - 1 downto 0) of std_logic_vector (TAG - 1 downto 0);
	type TLfu is array (MEMSIZE - 1 downto 0) of std_logic_vector (LFUSIZE - 1 downto 0);
	type TValid is array (MEMSIZE - 1 downto 0) of std_logic;

	signal tag_mem : TTagMem;
	signal lfu_mem : TLfu;
	signal valid : TValid;
	
	alias addr_tag		: std_logic_vector(TAG - 1 downto 0) is addr(TAG + INDEX - 1 downto INDEX);
	alias addr_index	: std_logic_vector(INDEX - 1 downto 0) is addr(INDEX - 1 downto 0);
	alias cur_block	: std_logic_vector(TAG - 1 downto 0) is tag_mem(conv_integer(addr_index));
	alias cur_lfu		: std_logic_vector(LFUSIZE - 1 downto 0) is lfu_mem(conv_integer(addr_index));
	alias bitv			: std_logic is valid(conv_integer(addr_index));

begin
	tag_mem_p : process (clk)
	begin
		if (clk'event and clk = '1') then
			if clr = '1' then
				tag_mem <= (tag_mem'range => (others => '0'));
				lfu_mem <= (lfu_mem'range => (others => '0'));
				valid <= (others => '0');	--invalid
			else if (wr = '1') then
				cur_block <= addr_tag;
			elsif (cur_block = addr_tag and bitv = '1') then
				cur_lfu <= std_logic_vector(conv_integer(cur_lfu) + 1);
			end if;
		end if;
	end process MEM_p;
	
	hit <= '1' when (cur_block = addr_tag and bitv = '1') else = '0';
	index <= addr_index;

end L1_tag_ch_arch;
















