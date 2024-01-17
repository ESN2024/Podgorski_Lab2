	component seven_seg_counter_sys is
		port (
			clk_clk            : in  std_logic                    := 'X'; -- clk
			pio_digit_1_export : out std_logic_vector(3 downto 0);        -- export
			pio_digit_2_export : out std_logic_vector(3 downto 0);        -- export
			pio_digit_3_export : out std_logic_vector(3 downto 0);        -- export
			reset_reset_n      : in  std_logic                    := 'X'  -- reset_n
		);
	end component seven_seg_counter_sys;

	u0 : component seven_seg_counter_sys
		port map (
			clk_clk            => CONNECTED_TO_clk_clk,            --         clk.clk
			pio_digit_1_export => CONNECTED_TO_pio_digit_1_export, -- pio_digit_1.export
			pio_digit_2_export => CONNECTED_TO_pio_digit_2_export, -- pio_digit_2.export
			pio_digit_3_export => CONNECTED_TO_pio_digit_3_export, -- pio_digit_3.export
			reset_reset_n      => CONNECTED_TO_reset_reset_n       --       reset.reset_n
		);

