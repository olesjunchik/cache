library IEEE;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_arith.ALL;
use ieee.std_logic_unsigned.all;

entity L1_ks1 is
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
end L1_ks1;

architecture L1_ks1_arch of L1_ks1 is
	signal d1 : std_logic_vector(DATASIZE - 1 downto 0);
	signal d2, mask : std_logic_vector(PROCWORDSIZE * 8 - 1 downto 0);

begin
	mask_creation : process (bitv, mask)
	begin
		for i in 0 to PROCWORDSIZE - 1 loop
			for j in 0 to 7 loop
				mask(i * 8 + j) <= bitv(i);
			end loop;	
		end loop;
	end process mask_creation;
	--mask <= (others => '1');
	d2 <= procin and mask;
	
	dout_creation : process (ch, l2in, ofs, d2, mask, d1, data)
	begin
		if (ch = '0') then
			dout <= l2in;
		else
			for i in 0 to DATASIZE - 1 loop
				if (PROCWORDSIZE * 8 * conv_integer(ofs) <= i and i < PROCWORDSIZE * 8 * (conv_integer(ofs) + 1)) then
					d1(i) <= (data(i) and not(mask(i mod (PROCWORDSIZE * 8)))) or d2(i mod (PROCWORDSIZE * 8));
				else
					d1(i) <= data(i);
				end if;
			end loop;
			dout <= d1;
		end if;
	end process dout_creation;
end L1_ks1_arch;

