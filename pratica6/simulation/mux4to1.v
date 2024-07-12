// mux4to1.v
module mux4to1
#(
	parameter N = 4
)
(
	input wire [N-1:0] A, B, C, D,
	input wire [1:0] S,
	output reg [N-1:0] Z
);

  always@*
  begin
	  case(S)
		  0: Z = A;
		  1: Z = B;
		  2: Z = C;
		  3: Z = D;
	  endcase	
  end
  
endmodule
