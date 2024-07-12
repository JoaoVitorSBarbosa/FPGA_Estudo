// compare_tb.v
`timescale 1ns/10ps

module compare_tb;
	reg [3:0] test_A, test_B;
	wire test_AeqB, test_AgtB, test_AltB;
	
	compare #(.N(4)) uut (.A(test_A), .B(test_B), .AeqB(test_AeqB), .AgtB(test_AgtB), .AltB(test_AltB));
	
	initial
	begin
		test_A = 12;
		test_B = 12;
		#200;
		
		test_A = 8;
		test_B = 12;
		#200;
		
		test_A = 10;
		test_B = 5;
		#200;
		
		$stop;
	end

endmodule
