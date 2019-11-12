library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------
entity sinaleira is
	generic(
		timerRY : natural := 5;
		timerGR : natural := 45;
		timerYR : natural := 5;
		timerRG : natural := 30
	);
	port (
		clk, rst : in STD_LOGIC;
		r1, r2, g1, g2, y1, y2 : out STD_LOGIC);
end entity;
----------------------------------------------------------
architecture versao1 of sinaleira is
	type state is (RR, RY, GR, YR, RG);
	signal pr_state, nx_state : state;
	signal timer: integer range 0 to 45;
	--attribute ENUM_ENCODING : string; --optional attribute
	--attribute ENUM_ENCODING of state : type is "sequential";
begin
	------Lower section of FSM:------------
	process (clk, rst)
	variable count : integer range 0 to 45;
	begin
		if (rst = '1') then
			pr_state <= RR;
			count := 0;
		elsif (clk'EVENT and clk = '1') then
			count := count+1;
			if(count>=timer) then
				pr_state <= nx_state;
			end if;
		end if;
	end process;
	------Upper section of FSM:------------
	process (pr_state)
		begin
		r1 <= '0';
		r2 <= '0';
		g1 <= '0';
		g2 <= '0';
		y1 <= '0';
		y2 <= '0';
		
			case pr_state is
			
				when RR =>
					r1 <= '1';
					r2 <= '1';
					timer <= 1;
					nx_state <= RY;
				
				when RY	=>
					r1 <= '1';
					y2 <= '1';
					timer <= timerRY;
					nx_state <= GR;
					
				when GR =>
					g1 <= '1';
					r2 <= '1';
					timer <= timerGR;
					nx_state <= YR;
					
					
				when YR =>
					y1 <= '1';
					r2 <= '1';
					timer <= timerYR;
					nx_state <= RG;
					
				when RG =>
					r1 <= '1';
					g2 <= '1';
					timer <= timerRG;
					nx_state <= RY;
					
					
			end case;
		end process;
end ARChitecture ;
