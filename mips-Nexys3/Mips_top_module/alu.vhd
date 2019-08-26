library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is 
port(a, b: 					in STD_LOGIC_VECTOR(31 downto 0);
     alucontrol: 			in STD_LOGIC_VECTOR(2 downto 0);
	  result: 				out STD_LOGIC_VECTOR(31 downto 0);
	  zero: 					out STD_LOGIC);

end;

architecture bhv of alu is
begin
	process(a,b,alucontrol)
	begin
		case alucontrol is
		when "010" =>  result <= a+b;
		when "110" =>  result <= a-b;
		when "000" =>  result <= a and b;
		when "001" =>  result <= a or b;
		when others => result <= (others =>'0');
		end case;
	end process;
end;

