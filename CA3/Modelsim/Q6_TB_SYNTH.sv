`timescale 1ns/1ns
module SYNlatchREGISTERtb();
	reg [7:0] B;
	reg [1:0] m;
	reg Ci , clk , rst;
	wire [7:0] Count;
	wire Co;
	SYNlatchCounter uut(B , m , Ci , clk , rst , Count , Co);
	initial begin 
	B = 8'b0;
	m = 2'b11;
	clk = 1;
	Ci = 1;
	rst = 0;
	#20 clk = 0 ;
	#20 m = 2'b01;
	#60 ;
	repeat (60) #100 clk = ~clk;
	#120 rst = 1;
	#60 clk = 1;
	#60 rst = 0;
	repeat (50) #100 clk = ~clk;
	#50 Ci = 0;
	#120 m = 2'b10;
	repeat (30) #100 clk = ~clk;
	#40 clk = 0;
	#120 B = 8'b11111111;
	#50 m = 2'b11;
	#40 clk = 1;
	#60 clk = 0;
	#5 Ci = 1;
	#50 m = 2'b01;
	#50 clk = 1;
	#50 clk = 0;
	
	#150 clk=1;
	#60 rst=1;
	#60 rst=0;
	#300 $stop;  
	end
endmodule
