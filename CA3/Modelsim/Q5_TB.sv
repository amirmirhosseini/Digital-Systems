`timescale 1ns/1ns
module register8TB();
	logic [7:0] pin;
	logic clk, r;
	wire [7:0] pout, p_b_out;

	register8 uut(pin, clk, r, pout, p_b_out);

	initial begin
		clk = 1;
		forever #40 clk = ~clk;
	end

	initial begin
		r = 1;
		pin = 8'b00000000;
		#60;
		r = 0;

		pin = 8'b10101010; #80;
		pin = 8'b11110000; #80;
		pin = 8'b00001111; #80;
		pin = 8'b11001100; #80;

		r = 1; #20;
		r = 0;

		pin = 8'b11111111; #80;

		#50;
		$stop;
	end
endmodule

