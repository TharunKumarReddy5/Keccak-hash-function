`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:14:39 03/21/2017 
// Design Name: 
// Module Name:    reciever 
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
module reciever(
    input [2111:0] rxin,
    input [2:0]bytenum,
	 input in_ready,
    output  reg[79:0] txout
    );
	 wire [1599:0] hashcode2,hashcode1;
topmodule q1(rxin[2111:1600],bytenum,in_ready,hashcode2);
assign hashcode1=rxin[1599:0];

always @(hashcode1,hashcode2)
begin
if(hashcode1==hashcode2)
txout<=80'h4d5347434f5252454354;
else
txout<=80'h4d20534757524f4e4720;
end

endmodule
