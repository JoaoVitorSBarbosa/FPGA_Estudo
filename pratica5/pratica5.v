module pratica5 (
	input wire [9:0] SW,
	output wire [0:0] LEDR,
	output wire [6:0] HEX0,
	output wire [6:0] HEX1,
	output wire [6:0] HEX2,
	output wire [6:0] HEX3,
	output wire [6:0] HEX4,
	output wire [6:0] HEX5
	
);
	wire [3:0] A; 
	wire [3:0] B; 
	wire [3:0] S;
	assign A = SW[9:6];
	assign B = SW[5:2];
	
	disp7control disp0 (.iDIG((A % 10)), .oSEG(HEX4));
	disp7control disp1 (.iDIG((A / 10)), .oSEG(HEX5));
	disp7control disp2 (.iDIG((B % 10)), .oSEG(HEX2));
	disp7control disp3 (.iDIG((B / 10)), .oSEG(HEX3));
	
	somador #(.N(4)) som (.A(A), .B(B), .S(S), .cout(LEDR[0]));
	disp7control disp4 (.iDIG((S % 10)), .oSEG(HEX0));
	disp7control disp5 (.iDIG((S / 10)), .oSEG(HEX1));
	 


endmodule