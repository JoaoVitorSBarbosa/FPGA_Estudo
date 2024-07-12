// compare.v
module compare
#(
	parameter N = 4
)
(
	input wire [N-1:0] A, B,
	output reg AeqB, AgtB, AltB
);

  always@*
  begin
  	AeqB = 0;
  	AgtB = 0;
  	AltB = 0;
  	if(A == B)
  		AeqB = 1;
  	else if(A > B)
  		AgtB = 1;
  	else
  		AltB = 1;
  end

endmodule
