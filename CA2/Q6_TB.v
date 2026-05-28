`timescale 1ns/1ns
module C16B_TB();
	reg [15:0] aa;
	reg [15:0] bb;
	wire gg6tt , ee6qq ;
	C16B CUT( aa , bb , gg6tt , ee6qq);
	initial begin
		aa=16'b0000000000000001;
		bb=16'b0000000000000000;
		#717 aa=16'b0000000000000000;
		#717 bb=16'b0000000000000101;
		repeat(3) #717 aa = $random;
		repeat(3) #717 bb = $random;
		repeat(5) #717 aa = $random;
		$stop;
	end
endmodule
