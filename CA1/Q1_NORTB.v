`timescale 1ns/1ns
module norTB();
	reg aa=0;
	reg bb=0;
	wire ww;
	mynor CUT(aa,bb,ww);
	initial begin
		#10 aa=1;
		#10 bb=1;
		#10 aa=0;
		#10 bb=0;
		#10 bb=1;
		#15 $stop;
	end
endmodule