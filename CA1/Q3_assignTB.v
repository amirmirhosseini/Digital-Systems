`timescale 1ns/1ns
module a_OAItb();
	reg aa=0;
	reg bb=0;
	reg cc=0;
	wire ww;
	assignOAI CUT(aa,bb,cc,ww);
	initial begin
	#25 aa=1;
	#25 bb=1;
	#25 cc=1;
	#25 bb=0;
	#25 cc=0;
	#20 $stop;
	end
endmodule
	
