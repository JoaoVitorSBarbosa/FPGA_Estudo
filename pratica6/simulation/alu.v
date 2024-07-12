// alu.v
module alu(
	input wire [3:0] A, B,
	input wire [2:0] opcode,
	output reg [3:0] S
);

  always@*
  	case(opcode)
  		0: S = 4'b0000;
  		1: S = B - A;
  		2: S = A - B;
  		3: S = A + B;
  		4: S = A ^ B;
  		5: S = A | B;
  		6: S = A & B;
  		7: S = 4'b1111;
  	endcase

endmodule
