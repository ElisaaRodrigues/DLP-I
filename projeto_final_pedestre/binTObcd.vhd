library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binTObcd is

port(
	binario : in std_logic_vector(4 downto 0);
	dezena : out std_logic_vector(3 downto 0);
	unidade : out std_logic_vector(3 downto 0)
);

end entity;


architecture arch_binTObcd of binTObcd is
signal inteiro : integer range 0 to 20;

begin

	inteiro <= to_integer(unsigned(binario));
	dezena <= std_logic_vector(to_unsigned((inteiro/10),4));
	unidade <= std_logic_vector(to_unsigned((inteiro rem 10),4));

end architecture;