`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:08:45 01/27/2017 
// Design Name: 
// Module Name:    topmodule 
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
module topmodule(
    input [511:0] shain,
	 input [2:0]bytenum,
	 input in_ready,
    output [1599:0] shaout
    );
	wire [575:0]padout; 
paddingmodule w1(shain,bytenum,in_ready,padout);
permutationblock w2(padout,1'b0,shaout);

endmodule
