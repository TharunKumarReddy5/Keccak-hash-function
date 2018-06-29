`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:09:37 01/27/2017
// Design Name:   paddingmodule
// Module Name:   F:/MVSR/KECCAK_HASHfunction/tb_paddingmodule.v
// Project Name:  KECCAK_HASHfunction
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: paddingmodule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_paddingmodule;

	// Inputs
	reg [511:0] padin;
	reg [2:0] bytenum;
	reg in_ready;

	// Outputs
	wire [575:0] padout;

	// Instantiate the Unit Under Test (UUT)
	paddingmodule uut (
		.padin(padin), 
		.bytenum(bytenum), 
		.in_ready(in_ready), 
		.padout(padout)
	);

	initial begin
		// Initialize Inputs
		padin = 512'h12345678901234567890123456789023;
		bytenum = 3'b000;
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

