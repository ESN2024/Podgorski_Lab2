
module seven_seg_counter_sys (
	clk_clk,
	pio_digit_1_export,
	pio_digit_2_export,
	pio_digit_3_export,
	reset_reset_n);	

	input		clk_clk;
	output	[3:0]	pio_digit_1_export;
	output	[3:0]	pio_digit_2_export;
	output	[3:0]	pio_digit_3_export;
	input		reset_reset_n;
endmodule
