`timescale 1ns/1ns
module oaiTB();
	reg aa=0;
	reg bb=0;
	reg cc=0;
	wire ww;
	myOAI CUT(aa,bb,cc,ww);
	initial begin
		#10 aa=1;
		#10 bb=1;
		#10 cc=1;
		#10 aa=0;
		#10 bb=0;
		#10 aa=1;
		#10 aa=0;
		#10 cc=0;
		#10 bb=1;
		#10 $stop;
	end
endmodule
