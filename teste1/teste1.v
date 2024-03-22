module teste1 (
	input [4:0] SW,
	output [0:0] LEDR
);

	wire AB, BCD;
	and P1(AB, SW[0], SW[1]);
	and P2(BCD, SW[1], SW[2], SW[3]);
	or P3(LEDR[0], AB, BCD);
	
endmodule
