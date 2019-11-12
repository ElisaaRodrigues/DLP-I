library ieee;

use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

entity MUX_4x1 is

	port
	(
		X0	: in 	std_logic;
		X1	: in	std_logic;
		X2	: in	std_logic;
		X3	: in	std_logic;
		sel : in std_logic_vector(1 downto 0);
		y : out std_logic
	);
end entity;


architecture arch_mux_1 of MUX_4x1 is

begin
	l1: y <= 
	X0 when sel = "00" else
	X1 when sel = "01" else 
	X2 when sel = "10" else
	X3;

	
end architecture;

architecture arch_mux_2 of MUX_4x1 is

begin
	l1: with sel select
	y <= X0 when "00",
				X1 when "01",
				X2 when "10",
	 		   X3 when others;


	
end architecture;

architecture arch_mux_3 of MUX_4x1 is
	signal ns0, ns1, s0, s1 : std_logic;
begin
	ns0 <= not sel(0);
	ns1 <= not sel(1);
	
	s0 <= sel(0);
	s1 <= sel(1);
	
	y <= (ns0 and ns1 and X0) or (s0 and ns1 and X1) or (s1 and ns0 and X2) or (s0 and s1 and X3); 
	 

	
end architecture;

configuration conf_mux of MUX_4x1 is
	for arch_mux_3
		
	end for;
end configuration;
