----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:03:40 11/23/2018 
-- Design Name: 
-- Module Name:    imem - Behavioral 
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
use ieee.std_logic_1164.all;              
use ieee.std_logic_unsigned.all;          
use std.textio.all; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity imem is
	generic(fname : string  := "membin.txt"); 
    port(
	      clk: in std_logic;
	      a : in std_logic_vector(31 downto 0);
	      rd : out std_logic_vector(31 downto 0));
end imem;

architecture behave of imem is


    type RamType is array(0 to 10000) of bit_vector(31 downto 0);    

    impure function InitRamFromFile (RamFileName : in string) return RamType is
        FILE RamFile         : text is in RamFileName;                       
        variable RamFileLine : line;                                 
        variable RAM         : RamType;
	variable I           : integer;                                   
    begin 
        I := 0;                                                  
        while (not endfile(RamFile)) loop                                  
            readline (RamFile, RamFileLine);  
				exit when endfile (RamFile);
            read (RamFileLine, RAM(I));                                  
            I := I + 1;                                                  
        end loop;                                                    
        return RAM;                                                  
    end function;                                                

    signal RAM : RamType := InitRamFromFile(fname);
    
begin

   process(clk)
	begin
   if rising_edge(clk) then
		
		rd <= to_stdlogicvector(RAM(conv_integer(a)));
	
	end if;
	end process;
	
	
			


end behave;

