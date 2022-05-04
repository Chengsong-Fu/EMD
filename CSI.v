`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:19:49 06/24/2020 
// Design Name: 
// Module Name:    CSI 
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
module CSI(Xin_DELAY,start,CLK,x,I,Min,Pin,M2,M3,P2,P3,CSI_done,Xout,follow_start
    );
//ģ��ӿ�
input Xin_DELAY,start,CLK,x,I,Min,Pin,M2,M3,P2,P3;
output Xout,CSI_done,follow_start;
wire signed [15:0] x;
wire signed [19:0] Min,Pin,M2,M3,P2,P3;
wire signed [19:0] Xout;
wire CSI_done;

//wire [19:0] K,P,A,B,C,D [16:0];
wire signed [19:0] K,B,C,D;


/*
TDMA TDMA(Min,Pin,A,K,P);//CSI��ʾP1�����׵���
CSI_parameter CSI_parameter(A,K,P,B,C,D);
Spline_formulation Spline_formulation(CLK,A,B,C,D,P,x,I,CSI_done,Xout);
*/

TDMA TDMA(Min,M2,M3,Pin,P2,P3,K);//���Բ�ֵ��ʾP1��P2֮���б��
CSI_parameter CSI_parameter(Min,M2,M3,K,Pin,P2,P3,B,C,D);
Spline_formulation Spline_formulation(Xin_DELAY,start,CLK,Min,B,C,D,Pin,P2,x,I,CSI_done,Xout,follow_start);

endmodule
