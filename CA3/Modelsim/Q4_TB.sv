`timescale 1ns/1ns
module DffTB();
	logic dd, rr, cc;
	wire qq, qqb;

	Dff uut(dd, rr, cc, qq, qqb);

	initial begin
		cc = 1;
		rr = 1;
		dd = 0;
		#50;
		//forever #50 cc = ~cc;
		
		//rr = 0;
		#70;
	//	rr = 1;
		repeat(8) begin
			#50 dd = $random % 2;
			#50 rr = $random % 2;
			cc = ~cc;
			#50;
		end
		#50;
		$stop;
	end
endmodule

	
