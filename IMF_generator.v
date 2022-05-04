`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:35 07/03/2020 
// Design Name: 
// Module Name:    IMF_generator 
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
module IMF_generator(start,CLK,Xin,Cout,follow_start
    );
//模块接口
input start,CLK,Xin;
output Cout,follow_start;
wire signed [15:0] Xin;
wire signed [15:0] Cout;
//模块变量
wire signed [15:0] H [0:3];
wire signed sig0,sig1,sig2,sig3;

assign H[0]=Xin;


Ht_generator H1(CLK,start,H[0],H[1],sig0);
Ht_generator H2(CLK,sig0,H[1],H[2],sig1);
Ht_generator H3(CLK,sig1,H[2],H[3],sig2);
Ht_generator H4(CLK,sig2,H[3],Cout,follow_start);
endmodule
