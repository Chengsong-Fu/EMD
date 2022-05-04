`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:50:19 07/03/2020 
// Design Name: 
// Module Name:    Lower_envelope 
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
module Lower_envelope(Xin_DELAY,start,CLK,Xin,Emin
    );
//模块接口
input Xin_DELAY,start,CLK,Xin;
output Emin;
wire [15:0] Xin;
wire [15:0] Emin;
//模块变量
reg [15:0] A=0,B=0,C=0;
wire Trg;
wire [19:0] M1,P1,M2,P2,M3,P3;
wire [19:0] M1out,P1out,M2out,P2out,M3out,P3out;
wire CSI_done;
wire I;
wire [4:0] i;
wire [15:0] x,Time;
wire follow_start;

always @(posedge CLK)
begin
	C=B;
	B=A;
	A=Xin;
end

//数值比较以及位置生成
EI_min EI_min(CLK,Time,A,B,C,Trg);//生成极值标志信号
CLK_count L_CLK_count(start,CLK,Time);
//缓冲区写、读
MP_store MP_store(CLK,Trg,B,Time,i,M1,M2,M3,P1,P2,P3);//存储极大值位置和大小
Controller Controller(CSI_done,M1,M2,M3,P1,P2,P3,I,i,M1out,M2out,M3out,P1out,P2out,P3out);
CSI CSI(Xin_DELAY,start,CLK,x,I,M1out,P1out,M2out,M3out,P2out,P3out,CSI_done,Emin,follow_start);//利用极大值进行插值
B_DELAY D(CLK,Time,x);
endmodule
