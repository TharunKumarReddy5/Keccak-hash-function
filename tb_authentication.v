`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:28:32 03/21/2017
// Design Name:   authentication
// Module Name:   D:/ashok/MVSR/KECCAK_HASHfunction/tb_authentication.v
// Project Name:  KECCAK_HASHfunction
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: authentication
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_authentication;

	// Inputs
	reg [511:0] msg;
	reg [2:0] bytenum;
	reg in_ready;
	wire [79:0] rxout;

	// Instantiate the Unit Under Test (UUT)
	authentication uut (
		.msg(msg), 
		.bytenum(bytenum), 
		.in_ready(in_ready), 
		.rxout(rxout)
	);

	initial begin
		// Initialize Inputs

	
		msg = 512'h12345678901234567890123456789023;
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

