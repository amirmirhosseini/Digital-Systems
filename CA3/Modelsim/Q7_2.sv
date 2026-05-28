`timescale 1ns/1ns
module MSregister8 (input [7:0]pin,input R, clk, output [7:0] pout, pb_out);

	genvar q;
	generate
		for(q=0;q<8;q=q+1) begin
			DffMS uu(pin[q],clk,R,pout[q],pb_out[q]);
		end
	endgenerate
	
endmodule
