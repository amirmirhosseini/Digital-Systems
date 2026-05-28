`timescale 1ns/1ns
module DffMS(input D,clk,r, output Q , q_bar);
	wire v,c,x;
	Dff UU(D,r,clk, v,c);
	not #6 SS(x,clk);
	SRlatch ZZ(c,v,x,Q,q_bar);
endmodule
