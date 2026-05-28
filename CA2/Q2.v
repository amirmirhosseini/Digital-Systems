`timescale 1ns/1ns
module EQ(input [1:0] a,b , output e);
	assign #33 e= (a==b);
endmodule
