`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:17 05/24/2017 
// Design Name: 
// Module Name:    topmodule_pipelining 
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
module topmodule_pipelining(
  input [511:0] shain,
	 input [2:0]bytenum,
	 input in_ready,clk,rst,
    output [1599:0] shaout
    );
	wire [575:0]padout; 
paddingmodule w1(shain,bytenum,in_ready,padout);
permutationblock_pipelining w2(padout,1'b0,clk,rst,shaout);

endmodule
