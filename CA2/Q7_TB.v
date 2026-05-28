`timescale 1ns/1ns
module CNB_TB();
	parameter nn = 32;
	reg [nn-1:0] aa;
	reg [nn-1:0] bb;
	wire gg7tt , ee7qq ;
	CNB CUT( aa , bb , gg7tt , ee7qq);
	initial begin
		aa=1;
		bb=0;
		#1103 bb=1;
		repeat(3) #1103 aa = $random;
		repeat(3) #1103 bb = $random;
		repeat(5) #1103 aa = $random;
		$stop;
	end
endmodule
