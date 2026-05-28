`timescale 1ns/1ns
module norOAI(input a,b,c, output w);
	wire u; wire v ; wire y;
	mynor G1(a,b,u), G2(c,c,v), G3(u,v,y), G4(y,y,w);
endmodule
