`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:48 07/05/2020 
// Design Name: 
// Module Name:    TDMA 
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
module TDMA(M1,M2,M3,P1,P2,P3,Kout
    );
input M1,M2,M3,P1,P2,P3;
output Kout;
wire signed [19:0] M1,M2,M3,P1,P2,P3;
wire signed [19:0] Kout;


//线性插值
assign Kout=16*(M2-M1)/(P2-P1);


/*
//CSI插值解法解kout
Kout=16*3/2/(P3-P1)*((M3-M2)/(P3-P2)-(M2-M1)/(P2-P1));
*/

endmodule
