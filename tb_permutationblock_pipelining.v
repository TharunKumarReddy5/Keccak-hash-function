`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:59:38 03/07/2017
// Design Name:   permutationblock_pipelining
// Module Name:   D:/ashok/MVSR/KECCAK_HASHfunction/tb_permutationblock_pipelining.v
// Project Name:  KECCAK_HASHfunction
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: permutationblock_pipelining
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_permutationblock_pipelining;

	// Inputs
	reg [575:0] pin;
	reg firstround;
	reg clk;
	reg rst;

	// Outputs
	wire [1599:0] pout;

	// Instantiate the Unit Under Test (UUT)
	permutationblock_pipelining uut (
		.pin(pin), 
		.firstround(firstround), 
		.clk(clk), 
		.rst(rst), 
		.pout(pout)
	);
initial begin
rst = 1;
#5;
rst = 0;
end
	initial begin
		// Initialize Inputs
	pin = 576'h123456789012345678901234567890123456;
		firstround = 0;
		clk = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always #5 clk=~clk;
endmodule

