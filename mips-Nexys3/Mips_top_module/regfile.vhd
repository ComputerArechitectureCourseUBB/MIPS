library IEEE; use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity regfile is -- three-port register file
	port(clk: in STD_LOGIC;
	     reset: in std_logic;
		  we3: in STD_LOGIC;
		  ra1, ra2, wa3:in STD_LOGIC_VECTOR(4 downto 0);
		  wd3: in STD_LOGIC_VECTOR(31 downto 0);
		  rd1, rd2: out STD_LOGIC_VECTOR(31 downto 0));
end;

architecture behave of regfile is
	type ramtype is array (31 downto 0) of STD_LOGIC_VECTOR (31 downto 0);
	signal mem: ramtype;
begin
	-- three-ported register file
	-- read two ports combinationally
	-- write third port on rising edge of clock
	process(clk) begin
		if rising_edge(clk) then
		   if reset = '1' then
			   mem <= (others => (others => '0'));
			elsif we3 = '1' then mem(CONV_INTEGER(wa3)) <= wd3;
			end if;
		end if;
end process;

	process (ra1,ra2) begin
		if (conv_integer (ra1) = 0) then rd1 <= X"00000000";
			-- register 0 holds 0
		else rd1 <= mem(CONV_INTEGER (ra1));
		end if;
	
		if (conv_integer(ra2) = 0) then rd2 <= X"00000000";
		else rd2 <= mem(CONV_INTEGER(ra2));
		end if;
	end process;
end;