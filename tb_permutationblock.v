`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:07:43 01/27/2017
// Design Name:   permutationblock
// Module Name:   F:/MVSR/KECCAK_HASHfunction/tb_permutationblock.v
// Project Name:  KECCAK_HASHfunction
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: permutationblock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_permutationblock;

	// Inputs
	reg [575:0] pin;
	reg firstround;

	// Outputs
	wire [1599:0] pout;

	// Instantiate the Unit Under Test (UUT)
	permutationblock uut (
		.pin(pin), 
		.firstround(firstround), 
		.pout(pout)
	);

	initial begin
		// Initialize Inputs
		pin = 576'h123456789012345678901234567890123456;
		firstround = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

