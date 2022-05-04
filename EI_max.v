`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:28 07/05/2020 
// Design Name: 
// Module Name:    EI_max
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
module EI_max(CLK,Time,A,B,C,Trg
    );//双边界有问题，0和30
//
input CLK,Time,A,B,C;
output Trg;
wire signed [15:0] A,B,C;
wire [15:0] Time;
reg Trg=0;

//

always@(CLK)
begin
	Trg=0;
	if(Time==3)
	begin
		Trg=~CLK;
	end
	//if((Time%30)==0)Trg=CLK;
	if(B>A&&B>C)Trg=~CLK;
end
endmodule
