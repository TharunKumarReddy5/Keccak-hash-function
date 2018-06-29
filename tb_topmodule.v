`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:12:20 01/27/2017
// Design Name:   topmodule
// Module Name:   F:/MVSR/KECCAK_HASHfunction/tb_topmodule.v
// Project Name:  KECCAK_HASHfunction
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: topmodule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_topmodule;

	// Inputs
	reg [511:0] shain;
	reg [2:0]bytenum;
	reg in_ready;

	// Outputs
	wire [1599:0] shaout;

	// Instantiate the Unit Under Test (UUT)
	topmodule uut (
		.shain(shain), 
		.bytenum(bytenum),
		.in_ready(in_ready),
		.shaout(shaout)
	);

	initial begin
		// Initialize Inputs
		
		shain = 512'h12345678901234567890123456789023;
		bytenum = 3'b001;
		in_ready = 0;
#100;
bytenum = 3'b001;
#100;
bytenum = 3'b010;
#100;
bytenum = 3'b011;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

