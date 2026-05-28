`timescale 1ns/1ns
module myOAI(input a,b,c, output w);
	wire u; wire v;
	supply1 Vdd; supply0 Gnd;
	nmos #(3,4,5) T1(v,Gnd,a), T2(v,Gnd,b), T3(w,v,c);
	pmos #(5,6,7) T4(u,Vdd,a), T5(w,u,b), T6(w,Vdd,c);
endmodule