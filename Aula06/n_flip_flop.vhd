-- Declaração das bibliotecas e pacotes
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;
 
 -- Especificação de todas as entradas e saídas do circuito
 ENTITY n_flip_flop IS
	GENERIC(
		N: in natural :=8);
 
  PORT (
	d: IN STD_LOGIC_VECTOR(N-1 downto 0);
	clk, rst: IN STD_LOGIC;
   q: OUT STD_LOGIC_VECTOR(N-1 downto 0));
 END;
 
 -- Descrição de como o circuito deve funcionar
 ARCHITECTURE ifsc_v1 OF n_flip_flop IS
 BEGIN
  PROCESS (clk, rst)
  BEGIN
   IF (rst='1') THEN
    q <= (others => '0');
   ELSIF (clk'EVENT AND clk='1') THEN
    q <= d;
   END IF;
  END PROCESS;
 END;