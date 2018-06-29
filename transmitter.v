`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:00 08/11/2014 
// Design Name: 
// Module Name:    transmitter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module transmitter(
    input [511:0] msg,
    input [2:0]bytenum,
	 input in_ready,
    input [2111:0] txout
    );
	 wire [1599:0] hashcode;
topmodule q1(msg,bytenum,in_ready,hashcode);
assign txout={msg,hashcode};
endmodule
