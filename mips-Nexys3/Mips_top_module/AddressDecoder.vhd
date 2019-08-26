----------------------------------------------------------------------------------
-- Company: UBB
-- Engineer: Krzysztof Herman
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;  


entity AddressDecoder is
	port( MemWrite:   in std_logic;
	      Address:    in std_logic_vector(31 downto 0);
         WMEM:	      out std_logic;
			WEN1:	      out std_logic;
			WEN2:	      out std_logic;
			RDsel:	   out std_logic_vector(1 downto 0)
			);
end AddressDecoder;

architecture Behavioral of AddressDecoder is

signal mem: std_logic;
signal led: std_logic;
signal sw: std_logic;
signal w1: std_logic;
signal w2: std_logic;

begin

mem <= '1' when  conv_integer(Address) >= 0 and conv_integer(Address) <= 64 else '0';
led <= '1' when  Address = x"00000044" else '0';
sw <= '1' when   Address = x"00000048" else '0';

WMEM <= '1' when (MemWrite = '1') and mem = '1' else '0';
w1 <= '1' when (MemWrite = '1') and led = '1' else '0';
w2 <= '1' when  sw = '1' else '0';
WEN1 <= w1;
WEN2 <= w2;

RDsel <= "01" when w1 = '1' else 
         "10" when w2 = '1' else
         "00" when w1 /= '0' or w1 /= '0';			


end Behavioral;
