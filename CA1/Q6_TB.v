`timescale 1ns/1ns
module gTB();
	reg aa1=0, aa0=0, bb1=0, bb0=0;
	wire gg;
	function_g CUT(aa1,aa0,bb1,bb0,gg);
	initial begin
	#5 aa0=1;
	#25 bb0=1;
	#25 aa1=1;
	#25 aa1=0;
	#25 bb1=1;
	#25 $stop;
	end
endmodule