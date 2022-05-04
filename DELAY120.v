`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:28 09/10/2020 
// Design Name: 
// Module Name:    DELAY120 
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
module DELAY120(CLK,Xin,Xout
    );
//
input CLK,Xin;
output Xout;
wire [15:0] Xin;
reg [15:0] Xout;

//
reg [15:0] X [0:119];

always@(posedge CLK)
begin

end
endmodule
