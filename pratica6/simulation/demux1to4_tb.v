// demux1to4_tb.v
`timescale 1ns/10ps

module demux1to4_tb;
	reg [3:0] test_I;
	reg [1:0] test_sel;
	wire [3:0] test_A, test_B, test_C, test_D;
	
	demux1to4 #(.N(4)) uut (.I(test_I), .sel(test_sel), .A(test_A), .B(test_B), .C(test_C), .D(test_D));

	initial
	begin
		test_I = 4'b1111;
		test_sel = 2'b00;
		#200;
		test_sel = 2'b01;
		#200;
		test_sel = 2'b10;
		#200;
		test_sel = 2'b11;
		#200;
		
		$stop;
	end

endmodule
