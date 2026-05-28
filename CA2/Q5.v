`timescale 1ns/1ns
module C4B(input [3:0] a , b , output g5t , e5q);
	wire [1:0] eqi;
	wire [1:0] gti;
	C1B C1( a[3:2] , b[3:2] , gti[1] , eqi[1]);
	C1B C0(a[1:0] , b[1:0] , gti[0] , eqi[0]);
	GTEQ GEC(eqi[0] , eqi[1], gti[0], gti[1], g5t , e5q);
endmodule
