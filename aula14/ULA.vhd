library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is
generic(N : natural := 2);
	port
	(
		-- Input ports
		a : in std_logic_vector(N-1 downto 0);
		b: in std_logic_vector(N-1 downto 0);
		cin : in std_logic_vector(0 downto 0);
		opcode: in std_logic_vector(3 downto 0);

		-- Output ports
		y : out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture arch_ULA of ULA is
signal a_u: unsigned(N downto 0);
signal b_u: unsigned(N downto 0);
signal cin_u: unsigned(0 downto 0);

begin
a_u <= resize(unsigned(a),  N+1);
b_u <= resize(unsigned(b),  N+1);
cin_u <= unsigned(cin);

	selecao: with opcode select
	y <= not a when "0000",
				not b when "0001",
				a and b when "0010",
				a or b when "0011",
				a nand b when "0100",
				a nor b when "0101",
				a xor b when "0110",
				a xnor b when "0111",
				a when "1000",
				b when "1001",
				std_logic_vector(a_u+1) when "1010",
				std_logic_vector(b_u+1) when "1011",
				std_logic_vector(a_u-1) when "1100",
				std_logic_vector(b_u-1) when "1101",
				std_logic_vector(a_u+b_u) when "1110",
				std_logic_vector(a_u+b_u+cin_u) when others;


end architecture;

