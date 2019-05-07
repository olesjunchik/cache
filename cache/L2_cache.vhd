----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:58:39 04/23/2019 
-- Design Name: 
-- Module Name:    L2_cache - L2_cache_arch 
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

entity L2_cache is
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
end L2_cache;

architecture L2_cache_arch of L2_cache is

COMPONENT L2_muu
	port( 
		hit	: in  std_logic;
      rd		: in  std_logic;
      wr		: in  std_logic;
		opack	: in  std_logic;
			  
		clk	: in  std_logic;
		clr	: in std_logic;
		----------
      ch		: out  std_logic;
			  
      twr	: out  std_logic;
      dwr	: out  std_logic;
			  
      ack	: out  std_logic;
      oprd	: out  std_logic;
      opwr	: out  std_logic
	);
END COMPONENT;

COMPONENT L2_tag
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
END COMPONENT;

COMPONENT L2_mem
  PORT (
    clka		: in std_logic;
    wea		: in std_logic_vector(0 downto 0);
    addra	: in std_logic_vector(7 downto 0);
    dina		: in std_logic_vector(127 downto 0);
    douta	: out std_logic_vector(127 downto 0)
  );
END COMPONENT;

COMPONENT L2_ks
	generic(
		DATASIZE : integer := 128
	);
	
	port(
		opin	: in std_logic_vector(DATASIZE - 1 downto 0);
		l1in	: in std_logic_vector(DATASIZE - 1 downto 0);
		
		ch		: in std_logic;
		--------
		dout	: out std_logic_vector(DATASIZE -1 downto 0)
	);
END COMPONENT;

	signal data, dout : std_logic_vector(DATASIZE - 1 downto 0);
	signal index : std_logic_vector(INDEXSIZE - 1 downto 0);
	signal ch, hit, twr, dwr : std_logic;

begin
	MUU : L2_muu
	PORT MAP(
		hit => hit,
		rd => rd,
		wr => wr,
		opack => opack,
		clk => clk,
		clr => clr,
		ch => ch,
		twr => twr,
		dwr => dwr,
		ack => ack,
		oprd => oprd,
		opwr => opwr
	);
	
	TAG_MEM : L2_tag
	GENERIC MAP(
		TAGSIZE		=> 3,
		INDEXSIZE	=> 8
	)PORT MAP(
		addr => addr,
		wr => twr,
		clk => clk,
		clr => clr,
		hit => hit,
		index => index
	);
	
	DATA_MEM : L2_mem
	PORT MAP (
    clka => clk,
    wea(0) => dwr,
    addra => index,
    dina => data,
    douta => dout
   );
	
	KS : L2_ks
	GENERIC MAP(
		DATASIZE	=> 128
	)PORT MAP(
		opin => opin,
		l1in => datain,
		ch => ch,
		dout => data
	);
	
	dataout <= dout;
	opout <= dout;
	opaddr <= addr;

end L2_cache_arch;





















