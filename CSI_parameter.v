`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:21:20 07/05/2020 
// Design Name: 
// Module Name:    CSI_parameter 
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
module CSI_parameter(A1,A2,A3,K,P1,P2,P3,B,C,D
    );
//ģ��ӿ�
input A1,A2,A3,K,P1,P2,P3;
output B,C,D;
wire signed [19:0] A1,A2,A3,K,P1,P2,P3;
wire signed [19:0] B,C,D;

//�ڲ�����
wire [19:0] H;

/*
//CSI��ֵ
C=K;
B=(A3-A2)/(P3-P2)-(P3-P2)*(2*K)/3;
D=(-K)/(3*H);
*/


//���Բ�ֵ
assign H=P2-P1;
assign B=K;
assign C=0;
assign D=0;



endmodule
