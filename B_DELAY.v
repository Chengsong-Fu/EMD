`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:48:24 09/11/2020 
// Design Name: 
// Module Name:    B_DELAY 
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
module B_DELAY(CLK,Xin,Xin_DEALY
    );
//ģ��ӿ�
input CLK,Xin;
output Xin_DEALY;
wire signed [15:0] Xin;
wire signed [15:0] Xin_DEALY;
//ģ�����


//��λ�Ĵ������ʱ���

shift30 S2(CLK,Xin,Xin_DEALY);

endmodule
