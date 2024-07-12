// priority_tb.v
`timescale 1ns/10ps

module priority_tb;
	reg [3:0] test_W;
	wire [1:0] test_Y;
	wire test_Z;
	
	priority uut (.W(test_W), .Y(test_Y), .Z(test_Z));

	integer i = 0;
	initial
	begin
		for(i = 0; i < 16; i = i + 1) 
    begin
			test_W = i;
			#200;
		end
		
		$stop;
	end

endmodule
