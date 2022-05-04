`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:23:07 07/09/2020 
// Design Name: 
// Module Name:    MP_store 
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
module MP_store(CLK,Trg,Min,Pin,i,M1,M2,M3,P1,P2,P3
    );
//
input CLK,Trg,Min,Pin,i;
output M1,M2,M3,P1,P2,P3;
wire signed [15:0] Min;
wire signed [15:0] Pin;
wire unsigned [4:0] i;
reg signed [19:0] M1,M2,M3,P1,P2,P3;

//
reg unsigned [4:0] j=0;//极值存储位置信息
reg signed [19:0] M [0:29];
reg signed [19:0] P [0:29];
reg signed [19:0] med;

initial
begin
	M[0]=0;
	P[0]=0;
end

always @(posedge Trg)//极值位置问题，存储长度问题
begin
	M[j]=Min;
	P[j]=Pin-2;
	j=j+1;
	if(j==30)j=0;
	M[j]=0;
	P[j]=0;
end


always @(CLK or i)//
begin
	if(((j-i+30)%30)>=2)//j-(i+2)>=1,三次样条或线性插值
	begin
		M1=M[i];
		P1=P[i];
		M2=M[(i+1)%30];
		P2=P[(i+1)%30];
		M3=M[(i+2)%30];
		P3=P[(i+2)%30];
	end
	if(((j-i+30)%30)==1)//j-i==2,线性插值
	begin
		M1=M[i];
		P1=P[i];
		M2=M[(i+1)%30];
		P2=P[(i+1)%30];
	end
	if(((j-i+30)%30)==0)//j-i==1,不插值
	begin
//		if(P[j]-P[i]==30)
		M1=0;
		P1=P[i];
		M2=0;
		P2=P2+30;
	end
end

endmodule
