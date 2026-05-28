`timescale 1ns/1ns
module MSDffREG8(input [7:0] B, input [1:0] m, input Ci, input clk, input rst, output [7:0] Count, output Co);
    wire [7:0] W;
    
    logicblock m1(Count , B , Ci , m , Co, W);
    MSRegister8ALWS m2(W , clk , rst , Count);
endmodule
