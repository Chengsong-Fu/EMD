`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:32 07/05/2020 
// Design Name: 
// Module Name:    CLK_count 
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
module CLK_count(start,CLK,Time
    );//Time��¼B��λ��
//ģ��ӿ�
input start,CLK;
output Time;
reg [15:0] Time=0;

//�ڲ�����


always @(posedge CLK)//ʱ���ѡ��
begin
	if(start==1)Time=Time+1;
end

endmodule
