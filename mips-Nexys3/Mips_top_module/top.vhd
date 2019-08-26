----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all; use IEEE.STD_LOGIC_UNSIGNED.all;
entity top is -- top-level design for testing
	    port (clk, reset: in STD_LOGIC;
		       LED: out STD_LOGIC_VECTOR (7 downto 0);
				 SW: in STD_LOGIC_VECTOR (7 downto 0));
end;
architecture test of top is
	component mips
		port (clk, reset: in STD_LOGIC;
			pc: out STD_LOGIC_VECTOR (31 downto 0);
			instr: in STD_LOGIC_VECTOR (31 downto 0);
			memwrite: out STD_LOGIC;
			aluout, writedata: out STD_LOGIC_VECTOR (31 downto 0);
			readdata: in STD_LOGIC_VECTOR (31 downto 0));
	end component;
	component imem
		port (clk: in std_logic;
				a: in STD_LOGIC_VECTOR (31 downto 0);
				rd: out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	component dmem
		port (clk, we: in STD_LOGIC;
				dataadr, wd: in STD_LOGIC_VECTOR (31 downto 0);
				rd: out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component AddressDecoder 
	port( MemWrite:   in std_logic;
	      Address:    in std_logic_vector(31 downto 0);
         WMEM:	      out std_logic;
			WEN1:	      out std_logic;
			WEN2:	      out std_logic;
			RDsel:	   out std_logic_vector(1 downto 0)
			);     
    end component; 
	
	signal pc, instr,	readdata, treaddata, tmpwritedata, tmpdataadr: STD_LOGIC_VECTOR (31 downto 0);
	signal memwrite, WMEM, WEN1, WEN2: STD_LOGIC;
	signal pcdiv4: STD_LOGIC_VECTOR (31 downto 0);
	signal RDsel: STD_LOGIC_VECTOR (1 downto 0);
	
	signal QLED: STD_LOGIC_VECTOR (31 downto 0);
	signal QSW: STD_LOGIC_VECTOR (31 downto 0);
begin

pcdiv4 <= "00" & pc(31 downto 2);
	-- instantiate processor and memories
	mips1: mips port map (clk, reset, pc, instr, memwrite,tmpdataadr, tmpwritedata, readdata);
	imem1: imem port map (clk, pcdiv4, instr);
	dmem1: dmem port map (clk, WMEM, tmpdataadr, tmpwritedata,	treaddata);
	AdDec: AddressDecoder port map(MemWrite=>memwrite, Address=>tmpdataadr, WMEM=>WMEM, WEN1=>WEN1, WEN2=>WEN2, RDsel=>RDsel );
	
	-- LED register 
	process(clk)
	begin
	if reset = '1' then 
		QLED <= (others => '0');
	elsif rising_edge(clk) then 
		  if WEN1 = '1' then 
				QLED <=tmpwritedata;
			end if;
	end if;		
	end process;
	-- Switch register 
	process(clk)
	begin
	if reset = '1' then 
		QSW <= (others => '0');
	elsif rising_edge(clk) then 
		  if WEN2 = '1' then 
				QSW <= "000000000000000000000000" & SW;
			end if;
	end if;		
	end process;
	
	-- output multiplexer 
		ReadData <= treaddata when RDsel = "00" or RDsel = "11" else
	            QLED when RDSel = "01"                         else
					QSW  when RDSel = "10";
	led <= QLED(7 downto 0);				
	
end;
