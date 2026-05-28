`timescale 1ns/1ns
module C1B(input [1:0] a,b , output g3t , e3q);
	GT gm( a , b , g3t);
	EQ em( a , b , e3q);
endmodule