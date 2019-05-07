----------------------------------------------------------------------------------
-- Company: 
-- Engineer:		 Malaschuk Olesia
-- 
-- Create Date:    19:03:21 03/26/2019 
-- Design Name: 
-- Module Name:    L1_muu - L1_muu_arch 
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

entity L1_muu is
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
end L1_muu;

architecture L1_muu_arch of L1_muu is
   type state_type is (st_init, st_load, st_read, st_write, st_l2write); 
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
 
   NEXT_STATE_DECODE: process (state, hit, rd, wr, l2ack)
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
            if (l2ack = '1' and rd = '1') then
               next_state <= st_read;
				elsif (l2ack = '1' and wr = '1') then
					next_state <= st_write;
            end if;
			
			when st_read =>
				next_state <= st_init;
			
			when st_write =>
            next_state <= st_l2write;
			
         when st_l2write =>
				if (l2ack = '1') then
					next_state <= st_init;
				end if;
      end case;      
   end process;
	
		lfu <= '1' when (state = st_init and (hit = '0' and (rd = '1' or wr = '1')))
			else '0';
			
		cnt <= '1' when (state = st_write and state = st_read)
			else '0';
		
		--ch = '1' - data from poc, ch = '0' = data from l2
		ch <= '1' when (state = st_write)      
			else '0';
		
		twr <= '1' when (state = st_load and l2ack = '1')
			else '0';
		
      dwr <= '1' when (state = st_write or (state = st_load and l2ack = '1'))
			else '0';
		
		ack <= '1' when (state = st_read or (state = st_l2write and l2ack = '1')) else '0';
		
		l2rd <= '1' when (state = st_load)
			else '0';
		
		l2wr <= '1' when (state = st_l2write)
			else '0';

end L1_muu_arch;

