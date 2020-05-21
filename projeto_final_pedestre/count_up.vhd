------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
------------------------------------------------
entity count_up is
	generic
	(	Nbit : natural := 4;
		Ncount : natural := 10
	);
	port
	(
		clk, rst : in std_logic;
		q : out std_logic_vector (Nbit-1 downto 0);
		clk_out : out std_logic
	);
end entity;

architecture v1 of count_up is

signal count_s : integer range 0 to ncount-1;

begin
	process (rst, clk) is
	variable count : integer range 0 to Ncount-1;
	begin
		if (rst = '1') then
			count := 0;
		elsif (rising_edge(clk)) then
			if count = Ncount-1 then
				count := 0;
			else
				count := count + 1;
			end if;
		end if;	
		count_s <= count;
		
	end process;
	q <= std_logic_vector(to_unsigned(count_s, Nbit));
	clk_out <= '1' when count_s = 0 else '0';
end architecture;