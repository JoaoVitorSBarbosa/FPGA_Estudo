module pratica3 (
	input wire [9:0] SW,
	output wire [6:0]HEX0,
	output wire [6:0]HEX1
);
	
	wire [3:0]c; 
	contaUns contador (.d(SW), .q(c));
	SEG7_LUT disp0 (.iDIG((c % 10)), .oSEG(HEX0));
	SEG7_LUT disp1 (.iDIG((c / 10)), .oSEG(HEX1));
	
	
endmodule