`timescale 1ns/1ns
module TBSYNMSDffREG8();
	logic [7:0] B;
	logic [1:0] m;
	logic Ci , clk , rst;
	wire [7:0] Count;
	wire Co;
	SYNMSDffREG8 uut(B , m , Ci , clk , rst , Count , Co);
	initial begin 
	B = 8'b00000000;
	m = 2'b11;
	clk = 1;
	Ci = 1;
	rst = 0;
	#120 clk = 0 ;
	#120 m = 2'b01;
	#160 ;
	repeat (30) #150 clk = ~clk;
	#160 rst = 1;
	#130 clk = 1;
	#130 rst = 0;
	repeat (30) #150 clk = ~clk;
	#125 Ci = 0;
	#160 m = 2'b10;
	repeat (30) #150 clk = ~clk;
	#120 clk = 0;
	#160 B = 8'b11111111;
	#120 m = 2'b11;
	#110 clk = 1;
	#150 clk = 0;
	#15 Ci = 1;
	#120 m = 2'b01;
	#110 clk = 1;
	#150 clk = 0;
	#160 $stop;  
	end
endmodule
