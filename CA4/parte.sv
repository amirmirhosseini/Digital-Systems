`timescale 1ns/1ns
module parte();
    logic clk , rst , j ;
    logic w;
  //  logic clk0 , rst0 , j0 ;
    logic w0;
    partd CUT(clk , rst , j , w);
    partd1 CUT0(clk , rst , j , w0);
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end
    initial begin
        rst = 1;
        j   = 0;
        #12 rst = 0;
        #1 j = 1;
        #20 j = 0;
  #20 j = 0;
  #20 j = 0;
  #20 j = 0;
  #20 j = 0;
  #20 j = 0;
  #20 j = 1;
  #20 j = 1;
  #20 j = 0;
  #20 j = 1;
  #20 j = 0;
  #20 j = 0;
  #20 j = 0;
  #20 j = 0;
  #20 j = 0;
  #20 j = 0;
  #20 j = 1;
  #20 j = 1;
  #20 j = 0;
  #40
  $stop;
    end
endmodule
