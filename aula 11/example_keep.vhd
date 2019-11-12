entity example_keep is
	port(x : in bit;
			y : out bit);
end entity;

architecture example_keep_arq OF example_keep is
	signal a, b, c : bit;
	attribute keep: boolean;
	attribute keep Of a, b: signal is true;
	--attribute keep Of a,b,c: signal is true;
	
	
begin	
--	a <= not x;
--	b <= not a;
--	c <= x;
--	y <= c and b;
	a <= not x;
	b <= not a;
	c <= x;
	y <= c xor b;
	
end architecture;