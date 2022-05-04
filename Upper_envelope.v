`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:46 07/03/2020 
// Design Name: 
// Module Name:    Upper_envelope 
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
module Upper_envelope(Xin_DELAY,start,CLK,Xin,Emax,follow_start
    );
//ģ��ӿ�
input Xin_DELAY,start,CLK,Xin;
output Emax,follow_start;
wire signed [15:0] Xin;
wire signed [15:0] Emax;

//ģ�����
reg signed [15:0] A=0,B=0,C=0;
wire Trg;
wire signed [19:0] M1,P1,M2,P2,M3,P3;
wire signed [19:0] M1out,P1out,M2out,P2out,M3out,P3out;
wire CSI_done;
wire I;
wire [4:0] i;
wire [15:0] x,Time;

always @(posedge CLK)
begin
	C=B;
	B=A;
	A=Xin;
end

//��ֵ�Ƚ��Լ�λ������
EI_max EI_max(CLK,Time,A,B,C,Trg);//���ɼ���ֵ��־�ź�
CLK_count U_CLK_count(start,CLK,Time);
//������д����
MP_store U_MP_store(CLK,Trg,B,Time,i,M1,M2,M3,P1,P2,P3);//�洢����ֵλ�úʹ�С
Controller U_Controller(CSI_done,M1,M2,M3,P1,P2,P3,I,i,M1out,M2out,M3out,P1out,P2out,P3out);
CSI U_CSI(Xin_DELAY,start,CLK,x,I,M1out,P1out,M2out,M3out,P2out,P3out,CSI_done,Emax,follow_start);//���ü���ֵ���в�ֵ
B_DELAY U_D(CLK,Time,x);
endmodule
