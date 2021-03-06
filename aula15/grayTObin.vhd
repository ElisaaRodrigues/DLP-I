library ieee;
use ieee.std_logic_1164.all;

entity grayTObin is

	generic (N : natural := 4);

	port
	(
		-- Input ports
		binario : buffer std_logic_vector(N-1 downto 0);
		-- Output ports
		gray : in std_logic_vector(N-1 downto 0)
	);
end entity;


architecture arch_grayTObin of grayTObin is

begin
seq: 
	for i in binario'left-1 downto 0 generate
		binario(i) <= gray(i) xor binario(i+1);
	end generate;
	binario(n-1)<= gray(n-1);

end architecture;