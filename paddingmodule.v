`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:04:08 01/23/2017 
// Design Name: 
// Module Name:    paddingmodule 
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
module paddingmodule(
    input [511:0] padin,
	 input [2:0]bytenum,
	 input in_ready,
    output [575:0] padout
    );
	wire [63:0]p1,p2,p3,p4,p5,p6,p7,p8; 
	wire [63:0]s1,s2,s3,s4,s5,s6,s7,s8,s9;
	wire [575:0]buffer;
	 function [63:0]rot1;
		input [63:0]in1;
		input [63:0]in2;
      reg [63:0]k;		

		begin
		  rot1 = in1;

          for(k=0;k<in2;k=k+1)
             rot1 = {rot1[62:0],rot1[63]};			 
          end
   endfunction
padder t1(padin[63:0],bytenum,p1);
padder t2(padin[127:64],bytenum,p2);
padder t3(padin[191:128],bytenum,p3);
padder t4(padin[255:192],bytenum,p4);
padder t5(padin[319:256],bytenum,p5);
padder t6(padin[383:320],bytenum,p6);
padder t7(padin[447:384],bytenum,p7);
padder t8(padin[511:448],bytenum,p8);

assign s1=rot1(p1,64'd64);
assign s2=rot1(p2,64'd64);
assign s3=rot1(p3,64'd64);
assign s4=rot1(p4,64'd64);
assign s5=rot1(p5,64'd64);
assign s6=rot1(p6,64'd64);
assign s7=rot1(p7,64'd64);
assign s8=rot1(p8,64'd64);


mux u1(s1,64'h0,in_ready,buffer[575:512]);
mux u2(s2,buffer[575:512],in_ready,buffer[511:448]);
 mux u3(s3,buffer[511:448],in_ready,buffer[447:384]);
 mux u4(s4,buffer[447:384],in_ready,buffer[383:320]);
 mux u5(s5,buffer[383:320],in_ready,buffer[319:256]);
 mux u6(s6,buffer[319:256],in_ready,buffer[255:192]);
 mux u7(s7,buffer[255:192],in_ready,buffer[191:128]);
 mux u8(s8,buffer[191:128],in_ready,buffer[127:64]);
 
 assign s9=buffer[127:64]<<64;
 
  mux u9(s9,buffer[127:64],in_ready,buffer[63:0]);
 
assign padout=buffer;






endmodule
