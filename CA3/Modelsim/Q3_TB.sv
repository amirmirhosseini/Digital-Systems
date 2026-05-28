`timescale 1ns/1ns
module SRTB();
	logic ss,rr ,cc;
	wire qqb;
	wire qq;
	//assign qq=0;
	SRlatch uut(ss,rr,cc,qq,qqb);
	initial begin
		rr=1;
		cc=1;
		ss=0;
		#100 cc=0;
		#100 ss=1;
		#100 ss=0;
		#100 cc=1;
		#100 rr=0;
		#100 ss=1;
		#100 ss=0;
		#100 $stop;
	end
endmodule 
	
