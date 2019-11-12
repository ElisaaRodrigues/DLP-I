--File: mux1Dx1D.vhd
use work.meu_pkg.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux2D is
  generic (M : natural := 3; S: natural := 2; N : natural := 40);
  port (
    x   : in array2D(M-1 downto 0, N-1 downto 0);
    sel : in bit_vector(S-1 downto 0);
    y   : out bit_vector(N-1 downto 0)
  );
end entity;

architecture ifsc of mux2D is
	signal sel_slv : std_logic_vector(S-1 downto 0);
	signal sel_uns : unsigned(S-1 downto 0);
	signal sel_int : integer range 0 to M-1;
begin
	sel_slv <= to_stdlogicvector(sel);
	sel_uns <= unsigned(sel_slv);
	sel_int <= to_integer(sel_uns);
--  y(0) <= x(sel_int, 0);
--  y(1) <= x(sel_int, 1);
--  y(2) <= x(sel_int,2);

	eu : for i in 0 to N-1 generate
			y(i) <= x(sel_int, i);
			end generate;
  
end architecture;

	


