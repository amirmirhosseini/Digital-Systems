module register8(input [7:0] pin , input clk , r , output logic [7:0] pout , p_b_out);
	genvar i;
	generate
		for(i=0 ; i<8 ; i = i+1) begin
			Dff tt(pin[i],r,clk,pout[i],p_b_out[i]);
		end
	endgenerate
endmodule
