-- FILE: semaforo_pedestre.vhd
-- ARCHITECTURE: semaforo
-- AUTORES:   	 Camilla Barreto de Sousa
--   		     	 Elisa Rodrigues
--   		  		 Sarom Torres
-- Curso de Engenharia de Telecomunicações
-- IFSC - Instituto Federal de Santa Catarina
-- DATA:  03 nov 2019


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity semaforo_pedestre is
	generic (tempo_min: natural := 60;
				tempo_ref: natural := 62;
				tempo_amarelo: natural := 4;
				tempo_verde: natural := 20
				);
	port(
		botao: in std_logic;
		vd_c, am_c, vm_c : out std_logic;
		vd_p, vm_p: out std_logic;
		iluminacao : out std_logic;
		sensor_escuro: in std_logic;
		saida_display: out std_logic_vector(4 downto 0);
		clk, rst: in std_logic;
		desliga_led: out std_logic;
		zera_tempo_carro: out std_logic;
		entrada_tempo_carro: in std_logic
	);


	
end entity;

architecture semaforo of semaforo_pedestre is
type state is (
		aberto, amarelo, fechado, wt
	);
signal timer : integer range 0 to tempo_ref;
signal pr_state, nx_state: state;

begin
	
	process(clk, rst)
		variable contador: integer range 0 to tempo_ref+1;
	begin
	
		if (rst = '1') then
			pr_state <= fechado;
			contador := 0;
			
		elsif (rising_edge(clk)) then
			contador := contador+1;
			
			if (contador >= timer) then
				pr_state <= nx_state;
				contador := 0;
			end if;		
			
		end if;
		
	end process;
	
	process (pr_state, botao, sensor_escuro, entrada_tempo_carro)
		
		begin
		
		iluminacao <= '0';
		vd_c <= '1';
		am_c <= '0';
		vm_c <= '0';
		vd_p <= '0';
		vm_p <= '1';
		desliga_led <= '1';
		zera_tempo_carro <= '0';
		
		
		case pr_state is
			
			when fechado =>
			
				timer <= 1;
							
				
				if botao = '1' then
					nx_state <= wt;
				else
					nx_state <= fechado;
				end if;
				
			when wt =>
				timer <= 1;
				if (botao = '0' and entrada_tempo_carro = '1') then
					nx_state <= amarelo;
				else	
					nx_state <= wt;
				end if;
					
			when amarelo =>
			
				timer <= tempo_amarelo;
				am_c <= '1';
				vd_c <= '0';
				
				if sensor_escuro = '1' then
					iluminacao <= '1';
				end if;
				
				nx_state <= aberto;
				
			when aberto =>
			
				zera_tempo_carro <= '1';
				timer <= tempo_verde;
				vm_c <= '1';
				vd_p <= '1';
				vm_p <= '0';
				desliga_led <= '0';
				vd_c <= '0';
				
				
				if sensor_escuro = '1' then
					iluminacao <= '1';
				end if;

				nx_state <= fechado;
				
			
		end case;
	
	end process;

	process(pr_state, clk, rst)
	variable incrementador: integer range  0 to 20;
	begin
		if (rst = '1') then
			incrementador := 0;
		
		elsif (rising_edge(clk)) then
		
			if pr_state = aberto then
				saida_display <= std_logic_vector(to_unsigned((20-incrementador), 5));
				incrementador := incrementador+1;
			end if;
			
		end if;
	end process;
		
end architecture;