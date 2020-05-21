------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
------------------------------------------------
entity tempo_min_carro is
	generic(max_count : natural := 60);
	port
	(
		clk, rst : in std_logic;
		q : out std_logic;
		zera_contador: in std_logic
		
	);
end entity;

architecture v1 of tempo_min_carro is

begin
l1:	process (rst, clk) is
	variable count : integer range 0 to max_count-1;
	begin
		if (rst = '1') then
			count := 0;
			q <= '0';
		elsif (rising_edge(clk)) then
			if zera_contador = '1' then
				count := 0;
				q <= '0';
			elsif count < max_count-1 then
				count := count + 1;
				q <= '0';
			elsif count >= max_count-1 then
				q <= '1';
			end if;
		end if;	
		
	end process;
end architecture;