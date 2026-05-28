`timescale 1ns/1ns
module GTEQ(input eq0 , eq1, gt0 , gt1 , output gt , eq);
	assign #21 eq = (eq0&eq1);
	assign #21 gt = (gt1|(eq1&gt0));
endmodule
