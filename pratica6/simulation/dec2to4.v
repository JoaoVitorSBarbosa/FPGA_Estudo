// dec2to4.v
module dec2to4(
  input wire enable,
	input wire [1:0] I,
	output reg [3:0] Z
);

always@*
	if(enable)
		case(I)
			0: Z = 4'b0001;
			1: Z = 4'b0010;
			2: Z = 4'b0100;
			3: Z = 4'b1000;
		endcase
	else
		Z = 4'b0000;
  
endmodule
