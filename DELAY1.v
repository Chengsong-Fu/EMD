`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:09:56 07/05/2020 
// Design Name: 
// Module Name:    DELAY1 
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
module DELAY1(CLK,Xin,Xin_DEALY
    );
//ģ��ӿ�
input CLK,Xin;
output Xin_DEALY;
wire signed [15:0] Xin;
wire signed [15:0] Xin_DEALY;

//ģ�����
//wire [15:0] shift;


//��λ�Ĵ������ʱ���
shift120 S1(CLK,Xin,Xin_DEALY);

endmodule
