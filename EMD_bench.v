`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:59 09/09/2020
// Design Name:   EMD
// Module Name:   E:/EMD/EMD_text/EMD_bench.v
// Project Name:  EMD_text
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EMD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module EMD_bench;

	// Inputs
	reg CLK;
	reg signed [15:0] Xin;

	// Outputs
	wire signed [15:0] Rout;
	wire signed [15:0] R1;
	wire signed [15:0] R2;

	// Instantiate the Unit Under Test (UUT)
	EMD uut (
		.CLK(CLK), 
		.Xin(Xin), 
		.R1(R1),
		.R2(R2),
		.Rout(Rout)
	);

	reg [15:0] i=0;
	reg signed [15:0] X [0:1999];


integer write_Xin;
integer write_R1;
integer write_R2;
	initial begin
		// Initialize Inputs
		CLK = 0;
		Xin = 0;
		$readmemh("E:/EMD/EMD_data/test.txt",X);
      write_Xin = $fopen("E:/EMD/EMD_data/Xin_out.txt","w");
		write_R1 = $fopen("E:/EMD/EMD_data/R1_out.txt","w");
		write_R2 = $fopen("E:/EMD/EMD_data/R2_out.txt","w");
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   
always #10 CLK=~CLK;


always@(posedge CLK)
begin
		Xin=X[i];
		if(i<=1999)
		begin
			$fwrite(write_Xin,"%d",Xin);//写数据
			$fwrite(write_Xin," ");//写
		end
		if(i>=120&&i<=2120)
		begin
			$fwrite(write_R1,"%d",R1);//写数据
			$fwrite(write_R1," ");//写
		end
		if(i>=240&&i<=2240)
		begin
			$fwrite(write_R2,"%d",R2);//写数据
			$fwrite(write_R2," ");//写
		end
		i=i+1;
end
	

endmodule

