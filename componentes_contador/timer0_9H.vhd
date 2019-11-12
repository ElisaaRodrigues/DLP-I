------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
------------------------------------------------
entity timer0_9H is
	port
	(
		clk_50MHz, rst : in std_logic;
		ssd_out : out std_logic_vector (6 downto 0)
	);
end entity;

architecture v1 of timer0_9H is

-----------------------------------------------------------------------|declaraçao de signal
	signal bin0_9 : std_logic_vector(3 downto 0);
	signal tipo_s : std_logic;  --------------------| 0 => Catodo comum   / 1 => Anodo comum
	signal clk_1sec : std_logic;
	signal bin_lixo_25 : std_logic_vector(25 downto 0);
	
-----------------------------------------------------------------------|declaraçao de component
	component bin2ssd is
		port
		(
			tipo : in std_logic;  --------------------| 0 => Catodo comum   / 1 => Anodo comum
			bin : in std_logic_vector(3 downto 0);
			ssd : out std_logic_vector (6 downto 0)
		);
	end component;	
	
	component count_up is
		generic
		(	Nbit : natural := 4;
			Ncount : natural := 10
		);
		port
		(
			clk, rst : in std_logic;
			q : out std_logic_vector (Nbit-1 downto 0);
			clk_out : out std_logic

		);
	end component;
	
-----------------------------------------------------------------------|codigo
begin
	tipo_s <= '0';
	c1: bin2ssd port map (tipo_s, bin0_9, ssd_out);
	
	c2: count_up 
	generic map (Nbit => 4, Ncount => 10)
	port map (
		clk => clk_1sec,
		rst => rst,
		q => bin0_9,
		clk_out => open
	);
	
	c3: count_up 
	generic map (Nbit => 26, Ncount => 50000000)
	port map (
		clk => clk_50MHz,
		rst => rst,
		q => bin_lixo_25,
		clk_out => clk_1sec
	);
--	clk_1sec <= not bin_lixo_25(25);
	
	
	

	
	
end architecture;