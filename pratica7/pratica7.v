module pratica7 (
	input MAX10_CLK1_50,
	input [9:0] SW,
	input [0:0] KEY,
	output [9:0] LEDR
);

	divisor #(.NUM_BITS(26))div1 (.clock_in(MAX10_CLK1_50), .reset_n(KEY[0]), .enable(SW[0]), .clock_out(LEDR[0]));

endmodule