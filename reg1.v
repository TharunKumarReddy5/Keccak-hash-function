`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:44:02 03/07/2017 
// Design Name: 
// Module Name:    reg1 
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
module reg1(
    input [1599:0] a,
    input clk,rst,
    output reg [1599:0] b
    );
always@(posedge clk)
begin
if(rst)
begin
b=1600'h0;
end
else
begin
b=a;
end
end

endmodule
