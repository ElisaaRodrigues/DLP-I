library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------
entity fig11_1 is
	port (
		clk, rst : in STD_LOGIC;
		x: in integer range 0 to 2;
		y: out bit);
		--input : in < data_type > ;
		--output : out < data_type >);
end entity ;
----------------------------------------------------------
architecture ifsc of fig11_1 is
	type state is (A, B, C);
	signal pr_state, nx_state : state;
	attribute ENUM_ENCODING : string; --optional attribute
	attribute ENUM_ENCODING of state : type is "sequential";
begin
	------Lower section of FSM:------------
	process (clk, rst)
	begin
		if (rst = '1') then
			pr_state <= A;
		elsif (rising_edge(clk)) then
			pr_state <= nx_state;
		end if;
	end process;
	------Upper section of FSM:------------
	process (pr_state, x)
		begin
		y <= '0';
			case pr_state is
				when A => 
					if (x = 2) then
						nx_state <= B;
					else
						nx_state <= A;
					end if;
				when B => 
					if (x = 1) then
						nx_state <= A;
					elsif (x = 0) then
						nx_state <= C;
					else
						nx_state <= B;
					end if;
				when C => 
					y <= '1';
					if (x = 1) then
						nx_state <= A;
					else
						nx_state <= C;
					end if;
			end case;
		end process;
end architecture ;