// demux1to4.v
module demux1to4
#(
	parameter N = 4
)
(
	input wire [N-1:0] I,
	input wire [1:0] sel,
	output reg [N-1:0] A, B, C, D
);

  always@*
  begin
	  A = 0; 	B = 0; 	C = 0; D = 0;
	  case(sel)
		  0: A = I;
		  1: B = I;
		  2: C = I;
      3: D = I;
	  endcase
  end
  
endmodule
