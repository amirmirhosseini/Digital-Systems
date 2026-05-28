`timescale 1ns/1ns
module CNB #(parameter n = 32)(input [n-1:0] a, input [n-1:0] b, output g7t, output e7q);
generate
	if (n > 2) begin 
	    wire [1:0] eqi; wire [1:0] gti; 
	    CNB #(n/2) C1(a[n-1:n/2], b[n-1:n/2], gti[1], eqi[1]);
 	   CNB #(n/2) C0(a[n/2-1:0], b[n/2-1:0], gti[0], eqi[0]);
	    GTEQ GEC(eqi[0], eqi[1], gti[0], gti[1], g7t, e7q);
	end
	else begin 
  		C1B CF(a, b, g7t, e7q); 
	end
endgenerate
endmodule

