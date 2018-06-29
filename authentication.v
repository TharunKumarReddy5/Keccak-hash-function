`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:58 03/21/2017 
// Design Name: 
// Module Name:    authentication 
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
module authentication( input [511:0] msg,
    input [2:0]bytenum,
	 input in_ready,
	 output [79:0] rxout);
	 wire[2111:0]txout;
transmitter t1(msg,bytenum,in_ready,txout);
reciever    t2(txout,bytenum,in_ready,rxout);

endmodule
