`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:51:52 07/03/2020 
// Design Name: 
// Module Name:    Ht_generator 
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
module Ht_generator(CLK,start,Xin,Hout,follow_start
    );
//模块接口
input CLK,Xin,start;
output Hout,follow_start;
wire signed [15:0] Xin;
wire signed [15:0] Hout;


//模块变量
wire signed [15:0] Emax,Emin,Xin_DEALY;


Upper_envelope U1(Xin_DELAY,start,CLK,Xin,Emax,follow_start);
Lower_envelope L1(Xin_DELAY,start,CLK,Xin,Emin);
DELAY2 D2(CLK,Xin,Xin_DEALY);
assign Hout=Xin_DEALY-(Emax+Emin)/2;
endmodule
