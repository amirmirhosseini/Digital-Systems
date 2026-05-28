`timescale 1ns/1ns
module C4B_TB();
	reg [3:0] aa;
	reg [3:0] bb;
	wire gg5tt , ee5qq ;
	C4B CUT( aa , bb , gg5tt , ee5qq);
	initial begin
		aa=4'b0001;
		bb=4'b0000;
		#151 aa=4'b0000;
		#151 bb=4'b0101;
		repeat(3) #151 aa = $random;
		repeat(3) #151 bb = $random;
		repeat(5) #151 aa = $random;
		$stop;
	end
endmodule
