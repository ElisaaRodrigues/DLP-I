library ieee;
use ieee.std_logic_1164.all;
-- serial para paralelo
entity registrador_deslocamento is
generic(N: natural := 8);
port(
	clk, rst: in std_logic;
	din: in std_logic;
	qout:out std_logic_vector(0 to N-1)
	);

end entity;

architecture arch_reg1 of registrador_deslocamento is
signal d, q: std_logic_vector(0 to N-1);
begin
l2:for i in d'range generate
	l1:
		process(rst, clk) is 
		
		begin 
			if (rst = '1') then
				q(i) <= '0';
				
			elsif(rising_edge(clk)) then
				q(i) <= d(i);
				
			end if;
		end process; 
end generate;

d(0)<= din;
l3:for i in 0 to N-2 generate
d(i+1) <= q(i);
end generate;
--dout <= q(N-1);
qout <= q;
--d(1)<= q(0);
--d(2)<= q(1);
--d(3)<= q(2);
--dout<= q(3);

end architecture;

architecture arch_reg2 of registrador_deslocamento is
signal d, q: std_logic_vector(0 to N-1);
begin
l1:
		process(rst, clk) is 
		
		begin 
			if (rst = '1') then
				
				q <= (others => '0');
			elsif(rising_edge(clk)) then
				
				q <= din & q(0 to N-2);
			end if;
		end process; 
		qout <= q;
end architecture;

configuration reg of registrador_deslocamento is 
	for arch_reg1 end for;
end configuration;