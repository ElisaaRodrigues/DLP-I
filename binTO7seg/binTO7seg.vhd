library ieee;
use ieee.std_logic_1164.all;

entity binTO7seg is

port(

    x: in std_logic_vector(3 downto 0);
    y: out std_logic_vector(6 downto 0)
);

end entity;

architecture ifsc1 of binTO7seg is

begin
l1: y <= 
	"0000001" when x = "0000" else
	"0110000" when x = "0001" else 
    "0010010" when x = "0010" else
    "0000110" when x = "0011" else
    "1001100" when x = "0100" else
    "0100100" when x = "0101" else
    "0100000" when x = "0110" else
    "0001111" when x = "0111" else
    "0000000" when x = "1000" else
    "0000100" when x = "1001" else
    "0001000" when x = "1010" else
    "1100000" when x = "1011" else
    "0110001" when x = "1100" else
    "1000010" when x = "1101" else
    "0110000" when x = "1110" else
    "0111000" when x = "1111" else
    "1111111";

end architecture;