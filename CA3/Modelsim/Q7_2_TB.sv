`timescale 1ns/1ns
module M7SDRegisterTB();
	logic [7:0] pin ; 
	logic clk = 1 ;
	logic rst = 1;
	wire [7:0] pout;
	MSRegister8ALWS uut(pin , clk , rst , pout);
	initial begin 
	pin = 8'b01010101;
	#100 clk = 0;
	#60 rst = 0;
	#100 clk = 1;
	#80 clk = 0;
	#100 pin = 8'b00000101;
        #100 clk = 1;
	#100 clk = 0;
	#100 pin = 8'b11101011;
	#100 clk = 1;
	#80 clk = 0;
	#100 rst = 1;
	#100 clk = 1;
	#80 clk = 0;
	#100 pin = 8'b11111111;
        #50 rst = 0;
	#100 clk = 1;
	#80 clk = 0;
	#100 pin = 8'b11001100;
	#100 clk = 1;
	#150 clk = 0;
	#100 $stop;
	end
endmodule
