`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:45:32 07/03/2020 
// Design Name: 
// Module Name:    Rt_generator 
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
module Rt_generator(start,CLK,Xin,Rout,follow_start
    );
//模块接口
input start,CLK,Xin;
output Rout,follow_start;
wire signed [15:0] Xin;
wire signed [15:0] Rout;
//模块变量
wire signed [15:0] Cout;
wire signed [15:0] Xin_DELAY;



DELAY1 D1(CLK,Xin,Xin_DELAY);
IMF_generator IMF(start,CLK,Xin,Cout,follow_start);
assign Rout=Xin_DELAY-Cout;

endmodule
