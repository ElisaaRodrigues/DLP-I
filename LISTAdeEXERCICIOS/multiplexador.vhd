library ieee;
use ieee.std_logic_1164.all;

entity multiplexador  is

port (
	 a, b : in std_logic_vector(7 downto 0);
	 sel: in std_logic_vector(1 downto 0);
	 saida: out std_logic_vector(7 downto 0);
	);

end entity;

architecture multiplexador of multiplexador is

begin
	if (sel = "00") then	
		saida <= "00000000";
	elsif (sel = "01") then 
		saida <= a;
	elseif (sel = "10") then 
		saida <= b;
	else 
		saida <= "ZZZZZZZZ";

end architecture;