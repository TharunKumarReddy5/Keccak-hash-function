`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:21 01/26/2017 
// Design Name: 
// Module Name:    padder 
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
module padder(
    input [63:0] pin,
    input [2:0] bytenum,
    output reg [63:0] pout
    );
always@(pin,bytenum)
begin
case(bytenum)
0:pout={1'b0,1'b1,62'b0};
1:pout={pin[63:56],1'b0,1'b1,54'b0};
2:pout={pin[63:48],1'b0,1'b1,46'b0};
3:pout={pin[63:40],1'b0,1'b1,38'b0};
4:pout={pin[63:32],1'b0,1'b1,30'b0};
5:pout={pin[63:24],1'b0,1'b1,22'b0};
6:pout={pin[63:16],1'b0,1'b1,14'b0};
7:pout={pin[63:8],1'b0,1'b1,6'b0};
endcase
end
endmodule
