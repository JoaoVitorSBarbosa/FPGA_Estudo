// alu_tb.v
`timescale 1ns/10ps

module alu_tb;
	reg [3:0] test_A, test_B;
	reg [2:0] test_opcode;
	wire [3:0] test_S;
	
	alu uut (.A(test_A), .B(test_B), .opcode(test_opcode), .S(test_S));
	
	integer i = 0;
	
	initial
	begin
		test_A = 4'b1010;
		test_B = 4'b0011;
	
		for(i = 0; i < 8; i = i + 1)
		begin
			test_opcode = i;
			#200;
		end
	
		$stop;
	end

endmodule
