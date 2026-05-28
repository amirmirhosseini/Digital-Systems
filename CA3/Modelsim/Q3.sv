`timescale 1ns/1ns
module SRlatch(input S,R,clk, output q , output q_bar);
	wire j , k;

	nand #8 n1(j,clk,S) , n2(k,clk,R) , n3(q,k,q_bar), n4(q_bar, q,j);

endmodule
