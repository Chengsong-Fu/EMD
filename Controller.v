`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:51:12 07/05/2020 
// Design Name: 
// Module Name:    Controller 
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
module Controller(CSI_done,M1,M2,M3,P1,P2,P3,I,i,M1out,M2out,M3out,P1out,P2out,P3out
    );
//模块接口
input CSI_done,M1,P1,M2,P2,M3,P3;
output I,i,M1out,P1out,M2out,P2out,M3out,P3out;
wire signed [19:0] M1,P1,M2,P2,M3,P3;

reg I;
reg unsigned [4:0] i=0;
reg signed [19:0] M1out,P1out,M2out,P2out,M3out,P3out;

//


always @(posedge CSI_done)//启动问题
begin
	M1out<=M1;
	P1out<=P1;
	M2out<=M2;
	P2out<=P2;
	M3out<=M3;
	P3out<=P3;
	if(P2out-P2>29)
	begin
	end
	else
	begin
		i=i+1;
		i=i%30;
	end
end



endmodule
