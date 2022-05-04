`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:22 06/27/2020 
// Design Name: 
// Module Name:    EMD 
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
module EMD(CLK,Xin,R1,R2,Rout
    );
//CLK=46.44MHz,k=30,d2=30个时钟周期,S=4
//d1=120个时钟周期,M和P深30、宽20
//模块接口
input CLK,Xin;
output Rout,R1,R2;
wire signed [15:0] Xin;
wire signed [15:0] Rout,R1,R2;
//模块变量
wire signed [15:0] R [0:4];
reg start=1;
wire follow_start;
wire signed sig0,sig1,sig2;

//去除IMF后信号
Rt_generator R11(start,CLK,Xin,R1,sig0);
Rt_generator R22(sig0,CLK,R1,R2,sig1);
Rt_generator R33(sig1,CLK,R2,R[3],sig2);
Rt_generator R44(sig2,CLK,R[3],Rout,follow_start);

endmodule
