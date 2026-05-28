`timescale 1ns/1ns
module SYNlatchCounter(input [7:0] B, input [1:0] m, input Ci, input clk, input rst, output [7:0] Count, output Co);
    wire [7:0] W,Count_bar;
    
    logicblock1 m1(Count , B , Ci , m , Co, W);
    register8 m2(W , clk , rst , Count,Count_bar);
endmodule
