`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:22:02 07/05/2020 
// Design Name: 
// Module Name:    Spline_formulation 
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
module Spline_formulation(Xin_DELAY,start,CLK,A,B,C,D,P1,P2,x,I,CSI_done,Xout,follow_start
    );
input Xin_DELAY,start,CLK;
input A,B,C,D,P1,P2,x,I;
output CSI_done,Xout,follow_start;
wire signed [19:0] A,B,C,D,P1,P2;
wire signed [15:0] x;
reg CSI_done;
reg signed [19:0] Xout=0;
reg follow_start=0;

//
reg [5:0] num_clk=0;


always@(CLK)
begin
	if(CLK==1&&start==1)
	begin
		num_clk=num_clk+(num_clk!=31);
		CSI_done=(num_clk==30);
		if(num_clk==30)follow_start=1;
	end
	if(x==P2-1)CSI_done=~CLK;
end


always@(x)
begin
	//CSI插值
	
	
	//线性插值
	if(B==0)
	begin
		Xout=Xin_DELAY;
	end
	else
	begin
		Xout=(16*A+B*(x-P1))/16;
	end
end

endmodule
