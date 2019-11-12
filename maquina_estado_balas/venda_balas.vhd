library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------
entity venda_balas is
	port (
		clk, rst : in STD_LOGIC;
		E5C, E10C, E25C : in STD_LOGIC;
		D5C, D10C,BALA : out STD_LOGIC);
end entity;
----------------------------------------------------------
architecture versao1 of venda_balas is
	type state is (ST0, ST5, ST10, ST15, ST20, ST25, ST30, ST35, ST40, ST45);
	signal pr_state, nx_state : state;
	--attribute ENUM_ENCODING : string; --optional attribute
	--attribute ENUM_ENCODING of state : type is "sequential";
begin
	------Lower section of FSM:------------
	process (clk, rst)
	begin
		if (rst = '1') then
			pr_state <= ST0;
		elsif (clk'EVENT and clk = '1') then
			pr_state <= nx_state;
		end if;
	end process;
	------Upper section of FSM:------------
	process (pr_state, E5C, E10C, E25C)
		begin
		BALA <= '0';
		D5C <= '0';
		D10C <= '0';
			case pr_state is
			
				when ST0 =>
					if(E5C = '1') then
						nx_state <= ST5;
					elsif (E10C = '1') then
						nx_state <= ST10;
					elsif (E25C = '1') then
						nx_state <= ST25;
					else
						nx_state <= ST0;
					end if;
				
				when ST5 =>
					if(E5C = '1') then
						nx_state <= ST10;
					elsif (E10C = '1') then
						nx_state <= ST15;
					elsif (E25C = '1') then
						nx_state <= ST30;
					else
						nx_state <= ST5;
					end if;
					
				when ST10 =>
					if(E5C = '1') then
						nx_state <= ST15;
					elsif (E10C = '1') then
						nx_state <= ST20;
					elsif (E25C = '1') then
						nx_state <= ST35;
					else
						nx_state <= ST10;
					end if;
					
				when ST15 =>
					if(E5C = '1') then
						nx_state <= ST20;
					elsif (E10C = '1') then
						nx_state <= ST25;
					elsif (E25C = '1') then
						nx_state <= ST40;
					else
						nx_state <= ST15;
					end if;
					
				when ST20 =>
					if(E5C = '1') then
						nx_state <= ST25;
					elsif (E10C = '1') then
						nx_state <= ST30;
					elsif (E25C = '1') then
						nx_state <= ST45;
					else
						nx_state <= ST20;
					end if;
					
				when ST25 =>
					BALA <= '1';
					nx_state <= ST0;
					
				when ST30 =>
					D5C <= '1';
					nx_state <= ST25;
					
				when ST35 =>
					BALA <= '1';
					D10C <= '1';
					nx_state <= ST0;
				
				when ST40 =>
					D10C <= '1';
					nx_state <= ST30;
				
				when ST45 =>
					D10C <= '1';
					nx_state <= ST35;
					
			end case;
		end process;
end ARChitecture ;
