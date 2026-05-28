`timescale 1ns/1ns
module GT(input [1:0] a , b , output g);
	assign #35 g = (a>b) ;
endmodule
