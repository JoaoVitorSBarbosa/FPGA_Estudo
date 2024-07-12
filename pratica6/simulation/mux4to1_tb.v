// mux4to1_tb.v
`timescale 1ns/10ps

module mux4to1_tb;
  // signal declaration
  reg [3:0] test_A;
  reg [3:0] test_B;
  reg [3:0] test_C;
  reg [3:0] test_D;
  reg [1:0] test_S;
  wire [3:0] test_Z;

  // instantiate the circuit under test
  mux4to1 #(.N(4)) uut (.A(test_A), .B(test_B), .C(test_C), .D(test_D), .S(test_S), .Z(test_Z));

  // test vector generator
  initial
  begin
	             
    test_A = 4'b1000;
    test_B = 4'b0100;
    test_C = 4'b0010;
    test_D = 4'b0001;
        
    test_S = 2'b00;
    #200;
    test_S = 2'b01;
    #200;
    test_S = 2'b10;
    #200;
    test_S = 2'b11;
    #200;
		  
    // stop simulation
    $stop;
  end

endmodule
