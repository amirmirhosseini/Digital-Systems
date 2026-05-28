`timescale 1ns/1ns
module C1B_TB();
	reg [1:0] aa;
	reg [1:0] bb;
	wire ggtt , eeqq ;
	C1B CUT( aa , bb , ggtt , eeqq);
	initial begin
		aa=2'b01;
		bb=2'b00;
		#151 aa=2'b00;
		#151 bb=2'b11;
		repeat(3) #151 aa = $random;
		repeat(3) #151 bb = $random;
		repeat(5) #151 aa = $random;
		$stop;
	end
endmodule
