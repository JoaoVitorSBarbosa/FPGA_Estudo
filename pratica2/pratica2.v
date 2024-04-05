module pratica2 (
	input [4:0] SW,
	output [0:0] LEDR
);
	
	wire L1n, L2n, L3n, L4n, L1nL2nL3n, L1nL3nL4n, L2nL3nL4n, L1nL2nL4n;
	
	not(L1n, SW[0]);
	not(L2n, SW[1]);
	not(L3n, SW[2]);
	not(L4n, SW[3]);
	
	and P1(L1nL2nL3n, L1n, L2n, L3n);
	and P2(L1nL3nL4n, L1n, L3n, L4n);
	and P3(L2nL3nL4n, L2n, L3n, L4n);
	and P4(L1nL2nL4n, L1n, L2n, L4n);
	
	or P5(LEDR[0],  L1nL2nL3n, L1nL3nL4n, L2nL3nL4n, L1nL2nL4n);
	
endmodule