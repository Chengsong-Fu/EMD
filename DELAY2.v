`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:11:59 07/05/2020 
// Design Name: 
// Module Name:    DELAY2 
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
module DELAY2(CLK,Xin,Xin_DEALY
    );
//模块接口
input CLK,Xin;
output Xin_DEALY;
wire [15:0] Xin;
wire [15:0] Xin_DEALY;
//模块变量

//移位寄存产生延时输出



shift30 S2(CLK,Xin,Xin_DEALY);

endmodule
