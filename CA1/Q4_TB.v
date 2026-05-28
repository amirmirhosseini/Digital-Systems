`timescale 1ns/1ns
module OAI3TB();
	reg aa=0;
	reg bb=0;
	reg cc=0;
	wire ww1,ww2,ww3;
	myOAI CUT1(aa,bb,cc,ww1);
	norOAI CUT2(aa,bb,cc,ww2);
	assignOAI CUT3(aa,bb,cc,ww3);
	initial begin
#50 aa = 1;
#50 cc = 1;
#50 bb = 1;
#50 cc = 0;
#50 aa = 0;
#50 cc = 1;
repeat (10) #20 cc=~cc;
	end
endmodule
