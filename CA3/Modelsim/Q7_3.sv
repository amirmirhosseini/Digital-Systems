`timescale 1ns/1ns
module MSRegister8ALWS(input [7:0] Pi , input clk , R , output reg [7:0] Po);
	always @(negedge clk) begin 
	if(R)
 	    Po <= #50 8'b0;
	else 
	    Po<= #50 Pi;
	end
endmodule
