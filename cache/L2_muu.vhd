library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity L2_muu is
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
end L2_muu;

architecture L2_muu_arch of L2_muu is
	type state_type is (st_init, st_load, st_read, st_write, st_opwrite); 
   signal state, next_state : state_type;

begin
   SYNC_PROC: process (clk)
   begin
      if (clk'event and clk = '1') then
         if (clr = '1') then
            state <= st_init;
         else
            state <= next_state;
         end if;        
      end if;
   end process;
 
   NEXT_STATE_DECODE: process (state, hit, rd, wr, opack)
   begin
      next_state <= state;
      case (state) is
		
         when st_init =>
            if (hit = '1' and rd = '1') then
               next_state <= st_read;
				elsif (hit = '1' and wr = '1') then
               next_state <= st_write;
				elsif (hit = '0' and (rd = '1' or wr = '1')) then
               next_state <= st_load;
            end if;
				
         when st_load =>
            if (opack = '1' and rd = '1') then
               next_state <= st_read;
				elsif (opack = '1' and wr = '1') then
					next_state <= st_write;
            end if;
			
			when st_read =>
				next_state <= st_init;
			
			when st_write =>
            next_state <= st_opwrite;
			
         when st_opwrite =>
				if (opack = '1') then
					next_state <= st_init;
				end if;
      end case;      
   end process;
		
		--ch = '1' - data from l1, ch = '0' = data from op
		ch <= '1' when (state = st_write)      
			else '0';
		
		twr <= '1' when (state = st_load and opack = '1')
			else '0';
		
      dwr <= '1' when (state = st_write or (state = st_load and opack = '1'))
			else '0';
		
		ack <= '1' when (state = st_read or (state = st_opwrite and opack = '1')) else '0';
		
		oprd <= '1' when (state = st_load)
			else '0';
		
		opwr <= '1' when (state = st_opwrite)
			else '0';
end L2_muu_arch;

