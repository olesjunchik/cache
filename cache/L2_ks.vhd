library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity L2_ks is
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
end L2_ks;

architecture L2_ks_arch of L2_ks is

begin
	dout <= l1in when ch = '1' else opin;

end L2_ks_arch;













