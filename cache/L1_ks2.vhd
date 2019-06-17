library IEEE;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_arith.ALL;
use ieee.std_logic_unsigned.all;

entity L1_ks2 is
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
end L1_ks2;

architecture L1_ks2 of L1_ks2 is
	signal d : std_logic_vector(PROCWORDSIZE * 8 - 1 downto 0);

begin
	dout_creation : process (ofs, data)
	begin
		for i in 0 to PROCWORDSIZE * 8 - 1 loop
			d(i) <= data(PROCWORDSIZE * 8 * conv_integer(ofs) + i); 
		end loop;
	end process dout_creation;
	dout <= d;

end L1_ks2;

