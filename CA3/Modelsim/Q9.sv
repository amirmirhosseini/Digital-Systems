`timescale 1ns/1ns
module reg16(input [7:0] B0t7, B8t15 ,input [1:0] m ,input Ci ,input clk , rst, output [15:0] Count , output Co);
    wire co_cin;
    MSDffREG8 u1(B0t7 , m , Ci , clk , rst , Count[7:0] ,co_cin);
    MSDffREG8 u2(B8t15 , m , co_cin , clk , rst , Count[15:8] , Co);
endmodule
