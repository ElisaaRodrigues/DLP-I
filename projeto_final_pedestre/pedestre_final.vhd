library ieee;
use ieee.std_logic_1164.all;

entity pedestre_final is
	
	port(
	
-------------|Entradas
		clk_50MHz, rst_in: in std_logic;
		botao_in: in std_logic;
		sensor_escuro_in: in std_logic;
		
-------------|Saidas dos leds da sinalizacao
		vd_c_out, am_c_out, vm_c_out : out std_logic; --- leds para controle dos veiculos
		vd_p_out, vm_p_out: out std_logic; --- leds para controle dos pedestres
		iluminacao_out : out std_logic;
		
-------------|Saidas para display
		ssd_unidade, ssd_dezena: out std_logic_vector (6 downto 0)
		
	);
	
	
end entity;

architecture projeto of pedestre_final is
	
	signal tipo_s : std_logic;  --------------------| 0 => Catodo comum   / 1 => Anodo comum
	signal clk_semaforo : std_logic;
	signal saida_semaforo_pedestre: std_logic_vector(4 downto 0);
	signal display_unidade : std_logic_vector(3 downto 0);
	signal display_dezena: std_logic_vector(3 downto 0);
	signal controle_de_leds: std_logic;
	signal zera_tempo_Carro_aux: std_logic;
	signal entrada_tempo_carro_aux: std_logic;
	signal ssd_dezena_aux: std_logic_vector (6 downto 0);
	signal ssd_unidade_aux: std_logic_vector (6 downto 0);
	
-----------------------------------------|Declaracao dos componentes

component semaforo_pedestre is
	generic (tempo_min: natural := 60;
				tempo_ref: natural := 62;
				tempo_amarelo: natural := 4;
				tempo_verde: natural := 20);
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

end component;

component count_up is
	generic
	(Ncount : natural := 10; Nbit : natural := 4);
	port
	(
		clk, rst : in std_logic;
		q : out std_logic_vector (Nbit-1 downto 0);
		clk_out : out std_logic
	);

end component;

component bin2ssd is
	port
		(
			tipo : in std_logic;  --------------------| 0 => Catodo comum   / 1 => Anodo comum
			bin : in std_logic_vector(3 downto 0);
			ssd : out std_logic_vector (6 downto 0)
		);

end component;

component binTObcd is
	port(
		binario : in std_logic_vector(4 downto 0);
		dezena : out std_logic_vector(3 downto 0);
		unidade : out std_logic_vector(3 downto 0)
	);


end component;

component tempo_min_carro is

	generic(max_count : natural := 60);
	port
	(
		clk, rst : in std_logic;
		q : out std_logic;
		zera_contador: in std_logic
		
	);
end component;
-------------------------------------------|

begin
	
	tipo_s <= '0';
	
	timer_semaforo : count_up 
	generic map (Ncount => 2, Nbit => 4)
	port map(
		clk => clk_50MHz,
		rst => rst_in,
		clk_out => clk_semaforo,
		q => open
		);
	
	conta_tempo_min_carro : tempo_min_carro
	generic map (max_count => 80)
	port map(
		clk => clk_semaforo,
		rst => rst_in,
		q => entrada_tempo_carro_aux,
		zera_contador => zera_tempo_Carro_aux
	);

	comp_semaforo : semaforo_pedestre
	generic map(
		tempo_min => 60,
		tempo_ref => 62,
		tempo_amarelo => 4,
		tempo_verde => 20
	)
	port map(
		botao => botao_in,
		vd_c => vd_c_out,
		am_c => am_c_out, 
		vm_c => vm_c_out,
		vd_p => vd_p_out, 
		vm_p => vm_p_out,
		iluminacao => iluminacao_out,
		sensor_escuro => sensor_escuro_in,
		saida_display => saida_semaforo_pedestre,
		clk => clk_semaforo, 
		rst => rst_in,
		desliga_led => controle_de_leds,
		zera_tempo_carro => zera_tempo_Carro_aux,
		entrada_tempo_carro => entrada_tempo_carro_aux
	);
		
	conversor : binTObcd port map (
		binario => saida_semaforo_pedestre,
		dezena => display_dezena,
		unidade => display_unidade
		);
		
	ssd_dezena <= ssd_dezena_aux when controle_de_leds = '0' else (others => '0');
	ssd_unidade <= ssd_unidade_aux when controle_de_leds = '0' else (others => '0');
	
	mostra_unidade_display: bin2ssd 
		port map (tipo_s, display_unidade, ssd_unidade_aux);
	mostra_dezena_display: bin2ssd 
		port map (tipo_s, display_dezena, ssd_dezena_aux);
		
	
end architecture;