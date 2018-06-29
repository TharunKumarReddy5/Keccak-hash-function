`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:21 03/07/2017 
// Design Name: 
// Module Name:    permutationblock_pipelining 
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
module permutationblock_pipelining(
   input [575:0] pin,
	 input firstround,clk,rst,
    output [1599:0] pout
    );
wire [1599:0]r=1600'h0;
wire [1023:0]c=1024'h0;
wire [1599:0]msg,x1,ra1,ra2,ra3,ra4,ra5,ra6,ra7,ra8,ra9,ra10,ra11,ra12,ra13,ra14,ra15,ra16,ra17,ra18,ra19,ra20 ;
wire [1599:0]ra21,ra22,ra23,ra24;
wire [1599:0]u0,u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15,u16,u17,u18,u19,u20,u21,u22,u23 ;
assign msg={pin,c};
assign x1=msg^r;

mux_1600  q0(x1,r,firstround,ra1);
reg1 t0(.a(ra1),.clk(clk),.rst(rst),.b(u0));
round q1(u0,64'h0000000000000001,ra2);
reg1 t1(ra2,clk,rst,u1);
round q2(u1,64'h0000000000008082,ra3);
reg1 t2(ra3,clk,rst,u2);
round q3(u2,64'h800000000000808A,ra4);
reg1 t3(ra4,clk,rst,u3);
round q4(u3,64'h8000000080008000,ra5);
reg1 t4(ra5,clk,rst,u4);
round q5(u4,64'h000000000000808B,ra6);
reg1 t5(ra6,clk,rst,u5);
round q6(u5,64'h000000000000808B,ra7);
reg1 t6(ra7,clk,rst,u6);
round q7(ra7,64'h000000000000808B,ra8);
reg1 t7(ra8,clk,rst,u7);
round q8(ra8,64'h8000000000008009,ra9);
reg1 t8(ra9,clk,rst,u8);
round q9(u8,64'h000000000000008A,ra10);
reg1 t9(ra10,clk,rst,u9);
round q10(u9,64'h0000000000000088,ra11);
reg1 t10(ra11,clk,rst,u10);
round q11 (u10,64'h0000000080008009,ra12);
reg1 t11(ra12,clk,rst,u11);
round q12 (u11,64'h000000008000000A,ra13);
reg1 t12(ra13,clk,rst,u12);
round q13 (u12,64'h000000008000808B,ra14);
reg1 t13(ra14,clk,rst,u13);
round q14 (u13,64'h800000000000008B,ra15);
reg1 t14(ra15,clk,rst,u14);
round q15 (u14,64'h8000000000008089,ra16);
reg1 t15(ra16,clk,rst,u15);
round q16 (u15,64'h8000000000008003,ra17);
reg1 t16(ra17,clk,rst,u16);
round q17 (u16,64'h8000000000008002,ra18);
reg1 t17(ra18,clk,rst,u17);
round q18 (u17,64'h8000000000000080,ra19);
reg1 t18(ra19,clk,rst,u18);
round q19  (u18,64'h000000000000800A,ra20);
reg1 t19(ra20,clk,rst,u19);
round q20 (u19,64'h800000008000000A,ra21);
reg1 t20(ra21,clk,rst,u20);
round q21 (u20,64'h8000000080008081,ra22);
reg1 t21(ra22,clk,rst,u21);
round q22(u21,64'h8000000000008080,ra23);
reg1 t22(ra23,clk,rst,u22);
round q23(u22,64'h0000000080000001,ra24);
reg1 t23(ra24,clk,rst,u23);
round q24 (u23,64'h8000000080008008,pout);

endmodule
