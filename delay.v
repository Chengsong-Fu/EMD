`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:37:42 07/03/2020 
// Design Name: 
// Module Name:    delay 
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
module delay(CLK,Xin,DELAY_TYPE,Xin_DEALY
    );
//模块接口
input CLK,Xin;
output Xin_DEALY;
wire [15:0] Xin;
reg [15:0] Xin_DEALY=0;

//模块变量
reg [15:0] shift1;

//移位寄存产生延时输出
shift S1(,Xin,shift1);


endmodule
