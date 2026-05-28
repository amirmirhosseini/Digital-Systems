`timescale 1ns/1ns
module function_g(input a1,b1,b0,a0,output g);
	wire j; wire k;
	assignOAI jj(a1,~b1,~b0,j);
	assignOAI kk(a1,a1,~b1,k);
	assignOAI jk(~a0,j,k,g);
endmodule
	
