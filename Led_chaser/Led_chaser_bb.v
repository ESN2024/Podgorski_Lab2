
module Led_chaser (
	clk_clk,
	pio_bouton_poussoir_export,
	pio_digits_export,
	pio_switchs_export,
	reset_reset_n);	

	input		clk_clk;
	input		pio_bouton_poussoir_export;
	output	[31:0]	pio_digits_export;
	input	[7:0]	pio_switchs_export;
	input		reset_reset_n;
endmodule
