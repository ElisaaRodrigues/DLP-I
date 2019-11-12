entity andN is
	generic 
	(
		N : natural := 8
	);


	port
	(
		-- Input ports
		x	: in bit_vector (0 to N-1);

		-- Output ports
		y: out bit
	);
end entity;

architecture arch_andN_1 of andN is

signal fio : bit_vector(0 to N-1);

begin
	y <= not fio(N-1);
elisaloop:
	for i in 1 to N-1 generate
		fio(i) <= fio(i-1) and x(i);
	end generate;
	fio(0) <= x(0);

end architecture;

