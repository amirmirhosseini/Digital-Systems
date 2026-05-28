`timescale 1ns/1ns
module Dff ( input D, r , clk , output Q , q_bar);
    wire notD, notR, S, R1;
    not #6 (notD, D);       
    not #6 (notR, r);      

    nand #8 (S, notR, D);  
    nor #12 (R1, r, notD); 
    SRlatch sr1(S, R1, clk, Q, q_bar);

endmodule

