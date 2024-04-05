module contaUns (
	input wire [9:0] d,
	output wire [3:0] q
);
	integer num_bits;
	always @ (d) begin
	integer i;
	num_bits = 0;
	for (i = 0; i < 10; i = i + 1) begin
		if (d[i] == 1)
			num_bits = num_bits + 1;
		end
	end
	assign q = num_bits;
 
endmodule