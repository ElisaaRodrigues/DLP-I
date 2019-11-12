library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binTObcd is
generic (N: natural := 14);
port(
	binario : in std_logic_vector(N-1 downto 0);
	milhar : out std_logic_vector(3 downto 0);
	centena : out std_logic_vector(3 downto 0);
	dezena : out std_logic_vector(3 downto 0);
	unidade : out std_logic_vector(3 downto 0)
);

end entity;


architecture arch_binTObcd of binTObcd is
signal inteiro : integer range 0 to 9999;
signal resto100 : integer range 0 to 999;
signal resto10 : integer range 0 to 99;

begin

	inteiro <= to_integer(unsigned(binario));
	milhar <= std_logic_vector(to_unsigned((inteiro/1000),4));
	resto100 <= inteiro rem 1000;
	centena <= std_logic_vector(to_unsigned((resto100/100),4));
	resto10 <= resto100 rem 100;
	dezena <= std_logic_vector(to_unsigned((resto10/10),4));
	unidade <= std_logic_vector(to_unsigned((resto10 rem 10),4));

end architecture;