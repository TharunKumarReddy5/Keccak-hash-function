`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:21 01/27/2017 
// Design Name: 
// Module Name:    mux 
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
module mux(
    input [63:0] a,b,
	 input s,
    output reg [63:0] y
    );
	 
always@(a,b,s)
begin
if(s==0)
y=a;
else
y=b;
end

endmodule
