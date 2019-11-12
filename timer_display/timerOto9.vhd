library ieee;
use ieee.std_logic_1164.all;

entity timerOto9 is
--generic (freq_clk : natural := 50000000 ); -- para implementaç~ao na placa
generic (freq_clk : natural := 10 ); --para fins de simulaç~ao
port(
		rst, clk, sl: in std_logic;
		ssd_out: out std_logic_vector(6 downto 0)
		--clk_out: out std_logic
	);

end entity;

architecture ifsc1 of timerOto9 is
signal q : integer range 0 to 9;
signal q_clk : integer range 0 to freq_clk-1;
signal clk_out : std_logic;
begin
conta:
	process(rst, clk) is
		variable count : integer range 0 to 9;
		begin
		
			if (rst='1') then	
				count := 0;
			elsif(rising_edge(clk)) then
				if count = (9) then
				--if count > 8 then    eh mais seguro, porem count=9 eh mais rapido
					count := 0;
				else	
					count := count + 1;
				end if;
			end if;
			q_clk <= count;
						
	end process;

div_clk:
		process(rst, clk_out) is
		variable count : integer range 0 to freq_clk-1;
		begin
		
			if (rst='1') then	
				count := 0;
			elsif(rising_edge(clk_out)) then
				if count = (freq_clk-1) then
				--if count > 8 then    eh mais seguro, porem count=9 eh mais rapido
					count := 0;
				else	
					count := count + 1;
				end if;
			end if;
			q <= count;
						
	end process;
	
	
	process (q_clk) is
	
	begin
	
		if (q_clk = 0) then
			clk_out <= '1';
		else
			clk_out <= '0';
		end if;
		
	end process;


	process (q) is  
	
		begin
			case q is
				when 0 => 
					ssd_out <= "0111111"; 
				when 1 =>
					ssd_out <= "0000110";
				when 2 =>
					ssd_out <= "1011011";
				when 3 =>
					ssd_out <= "1001111";
				when 4 => 
					ssd_out <= "1100110";
				when 5 => 
					ssd_out <= "1101101";
				when 6 => 
					ssd_out <= "0111100";
				when 7 => 
					ssd_out <= "0000111";
				when 8 =>
					ssd_out <= "1111111";
				when 9 =>
					ssd_out <= "1100111";
				when others => ssd_out <= "0000000";
			end case;
	
	end process;
end architecture;