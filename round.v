`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:02 01/27/2017 
// Design Name: 
// Module Name:    round 
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
module round(
   input [1599:0] a,
	 input[63:0]round_constant,
    output [1599:0] b
    );
wire [63 : 0]s00,s01,s02,s03,s04;
wire [63 : 0]s10,s11,s12,s13,s14;
wire [63 : 0]s20,s21,s22,s23,s24;
wire [63 : 0]s30,s31,s32,s33,s34;
wire [63 : 0]s40,s41,s42,s43,s44;
wire [63 : 0]x1,x2,x3,x4,x5;
wire [63 : 0]sht1,sht2,sht3,sht4,sht5;
wire [63 : 0]o1,o2,o3,o4,o5;
wire [63 : 0]t00,t01,t02,t03,t04,t10,t11,t12,t13,t14,t20,t21,t22,t23,t24,t30,t31,t32,t33,t34,t40,t41,t42,t43,t44;
wire [63 : 0]q00,q01,q02,q03,q04,q10,q11,q12,q13,q14,q20,q21,q22,q23,q24,q30,q31,q32,q33,q34,q40,q41,q42,q43,q44;
wire [63 : 0]u00,u01,u02,u03,u04,u10,u11,u12,u13,u14,u20,u21,u22,u23,u24,u30,u31,u32,u33,u34,u40,u41,u42,u43,u44;
wire [63 : 0]p00,p01,p02,p03,p04,p10,p11,p12,p13,p14,p20,p21,p22,p23,p24,p30,p31,p32,p33,p34,p40,p41,p42,p43,p44;
wire [63 : 0]r00,r01,r02,r03,r04,r10,r11,r12,r13,r14,r20,r21,r22,r23,r24,r30,r31,r32,r33,r34,r40,r41,r42,r43,r44;

function [63:0]rot1;
		input [63:0]in1;
		input [63:0]in2;
      reg [63:0]k;		

		begin
		  rot1 = in1;

          for(k=0;k<in2;k=k+1)
             rot1 = {rot1[0],rot1[63:1]};			 
          end
   endfunction

assign s00=a[63 :0];
assign s01=a[127 : 64];
assign s02=a[191 : 128];
assign s03=a[255 : 192];
assign s04=a[319 : 256];

assign s10=a[383 : 320];
assign s11=a[447 : 384];
assign s12=a[511 : 448];
assign s13=a[575 : 512];
assign s14=a[639 : 576];

assign s20=a[703 : 640];
assign s21=a[767 : 704];
assign s22=a[831 : 768];
assign s23=a[895 : 832];
assign s24=a[959 : 896];

assign s30=a[1023 : 960];
assign s31=a[1087 : 1024];
assign s32=a[1151 : 1088];
assign s33=a[1215 : 1152];
assign s34=a[1279 : 1216];

assign s40=a[1343 : 1280];
assign s41=a[1407 : 1344];
assign s42=a[1471 : 1408];
assign s43=a[1535 : 1472];
assign s44=a[1599 : 1536];

assign x1= (s00 ^ s10) ^ (s20 ^ s30)^ s40;
assign x2=(s01 ^ s11) ^ (s21 ^ s31) ^ s41;
assign x3=(s02 ^ s12) ^ (s22 ^ s32) ^ s42;
assign x4=(s03 ^ s13) ^ (s23 ^ s33) ^ s43;
assign x5=(s04 ^ s14) ^ (s24 ^ s34) ^ s44;

assign sht1=rot1(x1,1);
assign sht2=rot1(x2,1);
assign sht3=rot1(x3,1);
assign sht4=rot1(x4,1);
assign sht5=rot1(x5,1);

assign o1=x4 ^ sht1;
assign o2=x5 ^ sht2;
assign o3=x1 ^ sht3;
assign o4=x2 ^ sht4;
assign o5=x3 ^ sht5; 

assign r01=s01 ^ o3;
assign r03=s03 ^ o5;
assign r10=s10 ^ o2;
assign r12=s12 ^ o4;
assign r14=s14 ^ o1;
assign r21=s21 ^ o3;
assign r23=s23 ^ o5;
assign r30=s30 ^ o2;
assign r32=s32 ^ o4;
assign r34=s34 ^ o1;
assign r41=s41 ^ o3;
assign r43=s43 ^ o5; 

assign r00=s00 ^ o2;
assign r02=s02 ^ o4;
assign r04=s04 ^ o1;
assign r11=s11 ^ o3;
assign r13=s13 ^ o5;
assign r20=s20 ^ o2;
assign r22=s22 ^ o4;
assign r24=s24 ^ o1;
assign r31=s31 ^ o3;
assign r33=s33 ^ o5;
assign r40=s40 ^ o2;
assign r42=s42 ^ o4; 
assign r44=s44 ^ o1; 


assign t00=rot1(r00,0);
assign t01=rot1(r01,1);
assign t02=rot1(r02,62);
assign t03=rot1(r03,28);
assign t04=rot1(r04,27);

assign t10=rot1(r10,36);
assign t11=rot1(r11,44);
assign t12=rot1(r12,6);
assign t13=rot1(r13,55);
assign t14=rot1(r14,20);

assign t20=rot1(r20,3);
assign t21=rot1(r21,10);
assign t22=rot1(r22,43);
assign t23=rot1(r23,25);
assign t24=rot1(r24,39);

assign t30=rot1(r30,41);
assign t31=rot1(r31,45);
assign t32=rot1(r32,15);
assign t33=rot1(r33,21);
assign t34=rot1(r34,8);

assign t40=rot1(r40,18);
assign t41=rot1(r41,2);
assign t42=rot1(r42,61);
assign t43=rot1(r43,56);
assign t44=rot1(r44,14);


assign p00=t00;
assign p01=t11;
assign p02=t02;
assign p03=t33;
assign p04=t44;

assign p10=t03;
assign p11=t14;
assign p12=t20;
assign p13=t13;
assign p14=t42;

assign p20=t01;
assign p21=t12;
assign p22=t23;
assign p23=t34;
assign p24=t40;

assign p30=t04;
assign p31=t10;
assign p32=t21;
assign p33=t32;
assign p34=t43;

assign p40=t22;
assign p41=t31;
assign p42=t24;
assign p43=t30;
assign p44=t41;

assign q00= ((~ (p01) & p02) ^ p00);
assign q01= ((~ (p02) & p03) ^ p01);
assign q02= ((~ (p03) & p04) ^ p02);
assign q03= ((~ (p04) & p00) ^ p03);
assign q04= ((~ (p00) & p01) ^ p04);

assign q10= ((~ (p11) & p12) ^ p10);
assign q11= ((~ (p12) & p13) ^ p11);
assign q12= ((~ (p13) & p14) ^ p12);
assign q13= ((~ (p14) & p10) ^ p13);
assign q14= ((~ (p10) & p11) ^ p14);

assign q20= ((~ (p21) & p22) ^ p20);
assign q21= ((~ (p22) & p23) ^ p21);
assign q22= ((~ (p23) & p24) ^ p22);
assign q23= ((~ (p24) & p20) ^ p23);
assign q24= ((~ (p20) & p21) ^ p24);

assign q30= ((~ (p31) & p32) ^ p30);
assign q31= ((~ (p32) & p33) ^ p31);
assign q32= ((~ (p33) & p34) ^ p32);
assign q33= ((~ (p34) & p30) ^ p33);
assign q34= ((~ (p30) & p31) ^ p34);
assign q40= ((~ (p41) & p42) ^ p40);
assign q41= ((~ (p42) & p43) ^ p41);
assign q42= ((~ (p43) & p44) ^ p42);
assign q43= ((~ (p44) & p40) ^ p43);
assign q44= ((~ (p40) & p41) ^ p44);

assign u00=q00 ^ round_constant;
assign u01=q01;
assign u02=q02;
assign u03=q03;
assign u04=q04;

assign u10=q10;
assign u11=q11;
assign u12=q12;
assign u13=q13;
assign u14=q14;

assign u20=q20;
assign u21=q21;
assign u22=q22;
assign u23=q23;
assign u24=q24;

assign u30=q30;
assign u31=q31;
assign u32=q32;
assign u33=q33;
assign u34=q34;

assign u40=q40;
assign u41=q41;
assign u42=q42;
assign u43=q43;
assign u44=q44;



assign b={ u44, u43, u42, u41, u40, u34, u33, u32, u31, u30, u24, u23, u22, u21, u20, u14, u13, u12, u11, u10, u04, u03, u02, u01,u00};
 


endmodule


