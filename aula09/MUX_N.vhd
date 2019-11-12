	Entity MUX_N is
		Generic(N: Natural := 4; S: Natural := 2);
		Port(
			X: IN bit_vector(N-1 Downto 0);
			Y : OUT bit;
			Sel: IN bit_vector(S-1 Downto 0)
		);
	End Entity;
	Architecture IFSC of MUX_N is
	begin
		Y <= X(0) when sel = "00" else
				X(1) when sel = "01" else
				X(2) when sel = "10" else
				X(3);
	End Architecture;
	Architecture IFSC_v2 of MUX_N is
	begin
		Y <= X(0) when sel = "00" else
				X(1) when sel = "01" else
				X(2) when sel = "10" else
				X(3);
	End Architecture;