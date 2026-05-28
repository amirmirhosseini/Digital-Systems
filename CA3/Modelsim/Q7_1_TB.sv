`timescale 1ns/1ns 
module MSDffTB();
	logic DD = 0 , clk = 1 , rst = 1;
	wire qq , qq_bar ; 
	DffMS CUT4(DD , clk , rst , qq , qq_bar);
	initial begin 
	#30 clk = 0;
	#70 rst = 0;
	#50 DD = 1;
	#30 clk = 1;
	#30 clk = 0; 
	#50 DD = 0;
	#30 clk = 1;
	#30 clk = 0;
	#50 DD = 1;
	#30 clk = 1;
	#30 clk = 0; 
	#50 DD = 0;
	#30 clk = 1;
	#30 clk = 0;
	#50 DD = 1;
	#30 clk = 1;
	#30 clk = 0;
        #40 rst = 1;
	#30 clk = 1;
	#30 clk = 0;
	#100 $stop;
	end
endmodule

