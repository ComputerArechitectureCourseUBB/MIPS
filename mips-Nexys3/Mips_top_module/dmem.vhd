----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:49 11/23/2018 
-- Design Name: 
-- Module Name:    dmem - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;  
--use std.textio.all; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dmem is
	port(	clk  : in std_logic;										--Declaracin de Entradas y salidas
         we   : in std_logic;										--we:write enable
         dataadr : in std_logic_vector(31 downto 0);			--addr: address sel
			wd	  : in std_logic_vector(31 downto 0);			--wd: write data
         rd   : out std_logic_vector(31 downto 0));		--rd: read data
end dmem;

architecture Behavioral of dmem is

	type RamType is array(63 downto 0) of bit_vector(31 downto 0);	--define el tipo Ram como un arreglo de datos                                         
	signal RAM : RamType :=((others=> (others=>'0')));					--
		
		begin	process (clk)                                  			--inicia el proceso
		begin                                                        
        if clk'event and clk = '1' then     								--inicia 
			if we = '1' and conv_integer(dataadr) <= 64 and conv_integer(dataadr) >= 0 then 
            RAM(conv_integer(dataadr)) <= to_bitvector(wd);   				 
			end if;
			 if  conv_integer(dataadr) <= 64 and  conv_integer(dataadr) >= 0 then 
			    rd <= to_stdlogicvector(RAM(conv_integer(dataadr)));			
				end if;
        end if;                                                      
		end process;


end Behavioral;

