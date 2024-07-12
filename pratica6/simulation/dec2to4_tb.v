// dec2to4_tb.v
`timescale 1ns/10ps

module dec2to4_tb;
  // signal declaration
  reg test_enable;
  reg [1:0] test_I;
  wire [3:0] test_Z;

  // instantiate the circuit under test
  dec2to4 uut (.enable(test_enable), .I(test_I), .Z(test_Z));

  // test vector generator
  initial
  begin
	            
    test_enable = 1'b1;
    test_I = 2'b00;
    #200;
    test_I = 2'b01;
    #200;
    test_I = 2'b10;
    #200;
    test_I = 2'b11;
    #200;
		  
    test_enable = 1'b0;
    test_I = 2'b00;
    #200;
    test_I = 2'b01;
    #200;
    test_I = 2'b10;
    #200;
    test_I = 2'b11;
    #200;
		  
    // stop simulation
    $stop;
  end
  
endmodule
