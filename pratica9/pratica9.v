module pratica9 (
	input MAX10_CLK1_50,
	input [9:0]SW,
	input [0:0]KEY,
	output [6:0]HEX0,
	output [6:0]HEX1


);

	wire CLK_1MHZ, keySync;
	wire [6:0]contagem;
	
	AsyncInputSynchronizer sinc (.clk(MAX10_CLK1_50), .asyncn(KEY[0]), .syncn(keySync));
	
	divisor div1(.clock_in(MAX10_CLK1_50), .reset_n(keySync), .enable(SW[0]), .clock_out(CLK_1MHZ));
	
	counter cont(.clk(MAX10_CLK1_50), .rstn(keySync), .en(CLK_1MHZ), .count(contagem));
	
	SEG7_LUT seg0 (.iDIG((contagem % 10)), .oSEG(HEX0));
	SEG7_LUT seg1 (.iDIG((contagem / 10)), .oSEG(HEX1));

endmodule