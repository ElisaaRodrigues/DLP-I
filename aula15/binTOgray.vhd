library ieee;
use ieee.std_logic_1164.all;

entity binTOgray is

	generic (N : natural := 8);

	port
	(
		-- Input ports
		binario : in std_logic_vector(N-1 downto 0);
		-- Output ports
		gray : out std_logic_vector(N-1 downto 0)
	);
end entity;


architecture arch_binTOgray of binTOgray is

begin
seq: 
	for i in binario'left-1 downto 0 generate
		gray(i) <= binario(i) xor binario(i+1);
	end generate;
	gray(n-1)<= binario(n-1);

end architecture;
