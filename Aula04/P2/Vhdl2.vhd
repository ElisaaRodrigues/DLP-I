-- Declaração das bibliotecas e pacotes
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;
 
 -- Especificação de todas as entradas e saídas do circuito
 ENTITY flip_flop IS
  PORT (d, clk, rst: IN STD_LOGIC;
   q: OUT STD_LOGIC);
 END;
 
 -- Descrição de como o circuito deve funcionar
 ARCHITECTURE ifsc_v1 OF flip_flop IS
 BEGIN
  PROCESS (clk, rst)
  BEGIN
   IF (rst='1') THEN
    q <= '0';
   ELSIF (clk'EVENT AND clk='1') THEN
    q <= d;
   END IF;
  END PROCESS;
 END;