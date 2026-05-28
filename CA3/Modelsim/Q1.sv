`timescale 1ns/1ns 
module logicblock(input [7:0] A , B , input Ci,input [1:0] m , output logic Co , output logic [7:0] W);
	always @ (A,B,Ci,m) begin
		W=8'b0;
		Co=1'b0;
		case (m)
			2'b00: W = A;
			2'b01: if(Ci==1)
					{Co,W}=A+Ci;
			2'b10: if(Ci==0)
					{Co,W}=A-1;
			2'b11: W = B;
		endcase
	end
endmodule
		