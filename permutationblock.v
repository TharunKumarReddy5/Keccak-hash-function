`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:26 01/27/2017 
// Design Name: 
// Module Name:    permutationblock 
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
module permutationblock(
    input [575:0] pin,
	 input firstround,
    output [1599:0] pout
    );
wire [1599:0]r=1600'h0;
wire [1023:0]c=1024'h0;
wire [1599:0]msg,x1,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,ra10,ra11,ra12,ra13,ra14,ra15,ra16,ra17,ra18,ra19,ra20 ;
wire [1599:0]ra21,ra22,ra23,ra24;
assign msg={pin,c};
assign x1=msg^r;

mux_1600  q0(x1,r,firstround,ra1);

round q1(ra1,64'h0000000000000001,ra2);

round q2(ra2,64'h0000000000008082,ra3);
round q3(ra3,64'h800000000000808A,ra4);
round q4(ra4,64'h8000000080008000,ra5);
round q5(ra5,64'h000000000000808B,ra6);
round q6(ra6,64'h000000000000808B,ra7);
round q7(ra7,64'h000000000000808B,ra8);
round q8(ra8,64'h8000000000008009,ra9);
round q9(ra9,64'h000000000000008A,ra10);
round q10(ra10,64'h0000000000000088,ra11);
round q11 (ra11,64'h0000000080008009,ra12);
round q12 (ra12,64'h000000008000000A,ra13);
round q13 (ra13,64'h000000008000808B,ra14);
round q14 (ra14,64'h800000000000008B,ra15);
round q15 (ra15,64'h8000000000008089,ra16);
round q16 (ra16,64'h8000000000008003,ra17);
round q17 (ra17,64'h8000000000008002,ra18);
round q18 (ra18,64'h8000000000000080,ra19);
round q19  (ra19,64'h000000000000800A,ra20);
round q20 (ra20,64'h800000008000000A,ra21);
round q21 (ra21,64'h8000000080008081,ra22);
round q22(ra22,64'h8000000000008080,ra23);
round q23(ra23,64'h0000000080000001,ra24);
round q24 (ra24,64'h8000000080008008,pout);






endmodule
