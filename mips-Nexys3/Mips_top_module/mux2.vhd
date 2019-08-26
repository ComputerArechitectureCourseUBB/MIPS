library IEEE; use IEEE.STD_LOGIC_1164.all;

entity mux2 is -- two-input multiplexer
	generic(width: integer := 8);
	port(d0, d1: in STD_LOGIC_VECTOR(width-1 downto 0);
		  s: in STD_LOGIC;
		  y: out STD_LOGIC_VECTOR(width-1 downto 0));
end;

architecture behave of mux2 is
begin
		y <= d1 when s = '1' else d0;
end;

